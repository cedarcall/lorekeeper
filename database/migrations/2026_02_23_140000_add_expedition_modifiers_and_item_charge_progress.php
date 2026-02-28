<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddExpeditionModifiersAndItemChargeProgress extends Migration
{
    public function up()
    {
        if (Schema::hasTable('planets')) {
            Schema::table('planets', function (Blueprint $table) {
                if (!Schema::hasColumn('planets', 'has_hazard')) {
                    $table->boolean('has_hazard')->default(false)->after('is_active');
                }
                if (!Schema::hasColumn('planets', 'hazard_name')) {
                    $table->string('hazard_name')->nullable()->after('has_hazard');
                }
                if (!Schema::hasColumn('planets', 'hazard_penalty')) {
                    $table->text('hazard_penalty')->nullable()->after('hazard_name');
                }
                if (!Schema::hasColumn('planets', 'hidden_item_id')) {
                    $table->unsignedBigInteger('hidden_item_id')->nullable()->after('hazard_penalty');
                }
            });
        }

        if (!Schema::hasTable('user_item_charge_progress')) {
            Schema::create('user_item_charge_progress', function (Blueprint $table) {
                $table->id();
                $table->unsignedBigInteger('user_id')->index();
                $table->unsignedBigInteger('item_id')->index();
                $table->unsignedInteger('charges_used')->default(0);
                $table->timestamps();
                $table->unique(['user_id', 'item_id']);
            });
        }
    }

    public function down()
    {
        if (Schema::hasTable('planets')) {
            Schema::table('planets', function (Blueprint $table) {
                if (Schema::hasColumn('planets', 'hidden_item_id')) {
                    $table->dropColumn('hidden_item_id');
                }
                if (Schema::hasColumn('planets', 'hazard_penalty')) {
                    $table->dropColumn('hazard_penalty');
                }
                if (Schema::hasColumn('planets', 'hazard_name')) {
                    $table->dropColumn('hazard_name');
                }
                if (Schema::hasColumn('planets', 'has_hazard')) {
                    $table->dropColumn('has_hazard');
                }
            });
        }

        Schema::dropIfExists('user_item_charge_progress');
    }
}
