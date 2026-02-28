@extends('admin.layout')

@section('admin-title') Contracts @endsection

@section('admin-content')
{!! breadcrumbs(['Admin Panel' => 'admin', 'Contracts' => 'admin/contracts']) !!}

<h1>Contracts</h1>

<div class="text-right mb-3">
    <a class="btn btn-primary" href="{{ url('admin/contracts/create') }}"><i class="fas fa-plus mr-2"></i> Create New Contract</a>
</div>
@if(!count($contracts))
    <p>No contracts found.</p>
@else
    <table class="table table-sm type-table">
        <thead>
            <tr>
            <td class="font-weight-bold" style="width:25%;">
                Name
            </td>
            <td class="font-weight-bold">
                Summary
            </td>
            <td class="font-weight-bold" style="width:10%;">
                Start
            </td>
            <td class="font-weight-bold" style="width:10%;">
                End
            </td>
            <td></td>
            </tr>
        </thead>
        <tbody id="sortable" class="sortable">
            @foreach($contracts as $contract)
                <tr class="sort-item" data-id="{{ $contract->id }}">
                    <td>
                        <a class="fas fa-arrows-alt-v handle mr-3" href="#"></a>
                        <a href="{{ $contract->url }}" @if($contract->thumb_extension) data-toggle="tooltip" title="<img src='{{$contract->thumbUrl}}' style='max-width:100px;' class='my-1'/><br> {{ucfirst($contract->name)}} " @endif>{{ $contract->name }}</a>
                    </td>
                    <td>
                        {{ $contract->summary ? $contract->summary : '' }}
                    </td>
                    <td>
                        {!! $contract->occur_start ? format_date($contract->occur_start, false) : '' !!}
                    </td>
                    <td>
                        {!! $contract->occur_end ? format_date($contract->occur_end, false) : '' !!}
                    </td>
                    <td class="text-right">
                        <a href="{{ url('admin/contracts/edit/'.$contract->id) }}" class="btn btn-primary btn-sm">Edit</a>
                    </td>
                </tr>
            @endforeach
        </tbody>

    </table>
    <div class="mb-4">
        {!! Form::open(['url' => 'admin/contracts/sort']) !!}
        {!! Form::hidden('sort', '', ['id' => 'sortableOrder']) !!}
        {!! Form::submit('Save Order', ['class' => 'btn btn-primary']) !!}
        {!! Form::close() !!}
    </div>
    {!! $contracts->render() !!}
@endif

@endsection

@section('scripts')
@parent
<script>

$( document ).ready(function() {
    $('.handle').on('click', function(e) {
        e.preventDefault();
    });
    $( "#sortable" ).sortable({
        items: '.sort-item',
        handle: ".handle",
        placeholder: "sortable-placeholder",
        stop: function( event, ui ) {
            $('#sortableOrder').val($(this).sortable("toArray", {attribute:"data-id"}));
        },
        create: function() {
            $('#sortableOrder').val($(this).sortable("toArray", {attribute:"data-id"}));
        }
    });
    $( "#sortable" ).disableSelection();
});
</script>
@endsection
