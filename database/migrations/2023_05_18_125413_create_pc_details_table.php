<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('pc_details', function (Blueprint $table) {
            $table->id();
            $table->string('cpu')->nullable();
            $table->string('gpu')->nullable();
            $table->string('ram')->nullable();
            $table->string('storage')->nullable();
            $table->string('screen-size')->nullable();
            $table->string('warranty_period')->nullable();
            $table->string('os')->nullable();
            $table->string('keyvoard')->nullable();
            $table->string('pin')->nullable();
            $table->string('connnector')->nullable();

            $table->unsignedBigInteger('id_product')->nullable();
            $table->foreign('id_product')->references('id')->on('products');

            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('pc_details');
    }
};
