<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProductInfoTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        if (!Schema::hasTable('product_info')) {
            Schema::create('product_info', function (Blueprint $table) {
                $table->id();
                $table->string('customer_name');
                $table->string('customer_phone', 20)->nullable()->index();
                $table->string('customer_email', 150)->nullable()->index();
                $table->string('customer_address')->nullable();
                $table->string('product_name')->index();
                $table->string('serial_number')->nullable();
                $table->timestamp('purchased_at')->nullable();
                $table->timestamp('expired_at')->nullable();
                $table->timestamps();
            });
        }
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('product_info');
    }
}
