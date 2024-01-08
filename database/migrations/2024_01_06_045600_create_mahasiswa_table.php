<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;

class CreateMahasiswaTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */

    public function up()
    {
        Schema::create('mahasiswa', function (Blueprint $table) {
            $table->id('id_mahasiswa');
            $table->string('nama');
            $table->string('nim');
            $table->string('prodi');
            $table->string('alamat');
            $table->timestamps();
        });

        DB::table('mahasiswa')->insert([
            'nama' => 'Raihan S.I',
            'nim' => '20110348',
            'prodi' => 'Sistem Informasi',
            'alamat' => 'Majalengka',
        ]);

        DB::table('mahasiswa')->insert([
            'nama' => 'Raihan A F',
            'nim' => '20110348',
            'prodi' => 'Sistem Informasi',
            'alamat' => 'Kuningan',
        ]);
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('mahasiswa');
    }
}
