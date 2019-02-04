<?php

use Illuminate\Database\Seeder;

class KelasSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $data = [
		'nama_kelas'=> 'XII-RPL1',
		'jurusan'   => 'Rekayasa perangkat Lunak'
		];
		
		DB::table('table_kelas')->insert($data);
		
		$data = [
		'nama_kelas'=> 'XII-RPL2',
		'jurusan'   => 'Rekayasa perangkat Lunak'
		];
		
		DB::table('table_kelas')->insert($data);
    }
}
