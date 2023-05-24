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
        Schema::create('products', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->text('description');
            $table->string('image')->nullable();
            $table->integer('cost')->unsigned();

            $table->unsignedBigInteger('id_category')->nullable();
            $table->foreign('id_category')->references('id')->on('categories');

            $table->unsignedBigInteger('id_brand')->nullable();
            $table->foreign('id_brand')->references('id')->on('brands');

            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('products');
    }
};
