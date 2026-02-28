<nav class="navbar navbar-expand-md navbar-dark bg-dark" id="headerNav">
    <div class="container-fluid">
        <a class="navbar-brand" href="{{ url('/') }}">
            Dreadfarer
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="{{ __('Toggle navigation') }}">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <!-- Left Side Of Navbar -->
            <ul class="navbar-nav mr-auto">
                @if(Auth::check())
                    <li class="nav-item dropdown">
                        <a id="inventoryDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                            Home
                        </a>

                        <div class="dropdown-menu" aria-labelledby="inventoryDropdown">
                            <a class="dropdown-item" href="{{ url('characters') }}">My Characters</a>
                            <a class="dropdown-item" href="{{ url('characters/myos') }}">My MYO Slots</a>
                            <a class="dropdown-item" href="{{ url('inventory') }}">Inventory</a>
                            <a class="dropdown-item" href="{{ url('bank') }}">Bank</a>
                            <a class="dropdown-item" href="{{ url('awardcase') }}">{{ ucfirst(__('awards.awards')) }}</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="{{ url('designs') }}">Design Approvals</a>
                            <a class="dropdown-item" href="{{ url('characters/transfers/incoming') }}">Character Transfers</a>
                        </div>
                    </li>
                @endif
                <li class="nav-item">
                    @if(Auth::check() && Auth::user()->is_news_unread && Config::get('lorekeeper.extensions.navbar_news_notif'))
                        <a class="nav-link d-flex text-warning" href="{{ url('news') }}"><strong>News</strong><i class="fas fa-bell ml-1"></i></a>
                    @else
                        <a class="nav-link" href="{{ url('news') }}">News</a>
                    @endif
                </li>
                <li class="nav-item dropdown">
                    <a id="eventsDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                        Events
                    </a>

                    <div class="dropdown-menu" aria-labelledby="eventsDropdown">
                        <a class="dropdown-item" href="{{ url('monthly-event') }}">Monthly Event</a>
                        <a class="dropdown-item" href="{{ url('contracts') }}">Contracts</a>
                        <a class="dropdown-item" href="{{ url('expeditions') }}">Expeditions</a>
                        <a class="dropdown-item" href="{{ url('featured-planet') }}">Featured Planet</a>
                        <a class="dropdown-item" href="{{ url('current-galaxy') }}">Current Galaxy</a>
                        <a class="dropdown-item" href="{{ url(__('dailies.dailies')) }}">{{__('dailies.dailies')}}</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="{{ url('crafting') }}">Crafting</a>
                        <a class="dropdown-item" href="{{ url('trades/listings') }}">Trade Terminal</a>
                        <a class="dropdown-item" href="{{ url('trades/open') }}">My Trades</a>
                    </div>
                </li>
                <li class="nav-item dropdown">
                    <a id="worldDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                        World
                    </a>

                    <div class="dropdown-menu" aria-labelledby="worldDropdown">
                        <a class="dropdown-item" href="{{ url('info/rules') }}">ARPG Rules</a>
                        <a class="dropdown-item" href="{{ url('info/getting-started') }}">Getting Started</a>
                        <a class="dropdown-item" href="{{ url('info/currency') }}">Credits & Reputation</a>
                        <a class="dropdown-item" href="{{ url('world/gallery') }}">Gallery</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="{{ url('info/homeworld') }}">Homeworld</a>
                        <a class="dropdown-item" href="{{ url('info/species') }}">Species Info</a>
                        <a class="dropdown-item" href="{{ url('info/history') }}">History</a>
                        <a class="dropdown-item" href="{{ url('world/factions') }}">Factions</a>
                        <a class="dropdown-item" href="{{ url('world/faunas') }}">Known Fauna</a>
                        <a class="dropdown-item" href="{{ url('world/floras') }}">Known Flora</a>
                        <a class="dropdown-item" href="{{ url('world/locations') }}">Known Coordinates</a>
                    </div>
                </li>
                <li class="nav-item dropdown">
                    <a id="browseDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                        Browse
                    </a>

                    <div class="dropdown-menu" aria-labelledby="browseDropdown">
                        <a class="dropdown-item" href="{{ url('users') }}">Users</a>
                        <a class="dropdown-item" href="{{ url('masterlist') }}">Character Masterlist</a>
                        <a class="dropdown-item" href="{{ url('myos') }}">MYO Slot Masterlist</a>
                        @if(Auth::check() && Auth::user()->is_sales_unread && Config::get('lorekeeper.extensions.navbar_news_notif'))
                            <a class="dropdown-item d-flex text-warning" href="{{ url('sales') }}"><strong>Sales</strong><i class="fas fa-bell ml-1"></i></a>
                        @else
                            <a class="dropdown-item" href="{{ url('sales') }}">Sales</a>
                        @endif
                        <a class="dropdown-item" href="{{ url('raffles') }}">Raffles</a>
                        <a class="dropdown-item" href="{{ url('forum') }}">Forums</a>
                    </div>
                </li>
            </ul>

            <!-- Right Side Of Navbar -->
            <ul class="navbar-nav ml-auto">
                <!-- Authentication Links -->
                @guest
                    <li class="nav-item">
                        <a class="nav-link" href="{{ route('login') }}">{{ __('Login') }}</a>
                    </li>
                    @if (Route::has('register'))
                        <li class="nav-item">
                            <a class="nav-link" href="{{ route('register') }}">{{ __('Register') }}</a>
                        </li>
                    @endif
                @else
                    @if(Auth::user()->isStaff)
                        <li class="nav-item d-flex">
                            <a class="nav-link position-relative display-inline-block" href="{{ url('admin') }}"><i class="fas fa-crown"></i>
                              @if (Auth::user()->hasAdminNotification(Auth::user()))
                                <span class="position-absolute rounded-circle bg-danger text-light" style="top: -2px; right: -5px; padding: 1px 6px 1px 6px; font-weight:bold; font-size: 0.8em; box-shadow: 1px 1px 1px rgba(0,0,0,.25);">
                                  {{ Auth::user()->hasAdminNotification(Auth::user()) }}
                                </span>
                              @endif
                            </a>
                        </li>
                    @endif
                    @if(Auth::user()->notifications_unread)
                        <li class="nav-item">
                            <a class="nav-link btn btn-secondary btn-sm" href="{{ url('notifications') }}"><span class="fas fa-envelope"></span> {{ Auth::user()->notifications_unread }}</a>
                        </li>
                    @endif

                    <li class="nav-item dropdown">
                        <a id="helpDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                            Help
                        </a>

                        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="helpDropdown">
                            <a class="dropdown-item" href="{{ url('reports/new?type=question') }}">General Question</a>
                            <a class="dropdown-item" href="{{ url('reports/new?type=bug') }}">Report a Bug</a>
                            <a class="dropdown-item" href="{{ url('reports/new?type=owner') }}">Speak to the Owner</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="{{ url('reports/new?type=user') }}">Report a User</a>
                            <a class="dropdown-item" href="{{ url('reports/new') }}">Report a Submission</a>
                        </div>
                    </li>

                    <li class="nav-item dropdown">
                        <a id="navbarDropdown" class="nav-link dropdown-toggle" href="{{ Auth::user()->url }}" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                            {{ Auth::user()->name }} <span class="caret"></span>
                        </a>

                        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="{{ Auth::user()->url }}">Profile</a>
                            <a class="dropdown-item" href="{{ url('notifications') }}">Notifications</a>
                            <a class="dropdown-item" href="{{ url('account/bookmarks') }}">Bookmarks</a>
                            <a class="dropdown-item" href="{{ url('account/settings') }}">Settings</a>
                            <a class="dropdown-item" href="{{ route('logout') }}"
                                onclick="event.preventDefault();
                                                document.getElementById('logout-form').submit();">
                                {{ __('Logout') }}
                            </a>

                            <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                @csrf
                            </form>
                        </div>
                    </li>
                @endguest
            </ul>
        </div>
    </div>
</nav>
