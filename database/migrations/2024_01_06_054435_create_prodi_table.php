<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;

class CreateProdiTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('prodi', function (Blueprint $table) {
            $table->id();
            $table->string('prodi');
            $table->string('semester');
            $table->timestamps();
        });

        DB::table('prodi')->insert([
            'prodi' => 'Teknik Informatika',
            'semester' => '8 Semester',
        ]);

        DB::table('prodi')->insert([
            'prodi' => 'Manajemen Akutansi',
            'semester' => '6 Semester',
        ]);
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('prodi');
    }
}
