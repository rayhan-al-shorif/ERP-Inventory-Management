<?php

namespace App\Imports;

use Maatwebsite\Excel\Concerns\WithMultipleSheets;

class CashCollectionImport implements WithMultipleSheets
{
    public function sheets(): array
    {
        return [
            'FA Kabita'    => new FAKabitaSheetImport(),
            'Emon Hossain' => new EmonHossainSheetImport(),
            'Md Imran Ali' => new MdImranAliSheetImport(),
            'Anisur Rahman' => new AnisurRahmanSheetImport(),
            'Diganta Ahamed' => new DigantaAhamedSheetImport(),
            'Mir Sumaiya' => new MirSumaiyaSheetImport(),
            'Sonia' => new SoniaSheetImport(),
            'Shishir' => new ShishirSheetImport(),
            'Mehedis Care' => new MehedisCareSheetImport(),
            'Mosaraf' => new MosarafSheetImport(),
            'Masum hossain' => new MasumHossainSheetImport(),
            'Shamim' => new ShamimSheetImport(),
            'MD Shawon' => new MDShawonSheetImport(),
            'Sabbir' => new SabbirSheetImport(),
            'Noman Faysal' => new NomanFaysalSheetImport(),
            'Rafiqul Islam' => new RafiqulIslamSheetImport(),
            'Sumya islam' => new SumyaIslamSheetImport(),
            'Akram Hossain' => new AkramHossainSheetImport(),
            'Nurul Azim' => new NurulAzimSheetImport(),
            'Shibli Sadik Anik' => new ShibliSadikAnikSheetImport(),
            'Helal Ahmed' => new HelalAhmedSheetImport(),
            'MD Sohel' => new MDSohelSheetImport(),
        ];
    }
}