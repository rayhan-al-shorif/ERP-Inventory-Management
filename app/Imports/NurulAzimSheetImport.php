<?php

namespace App\Imports;

use Illuminate\Support\Collection;
use Maatwebsite\Excel\Concerns\ToCollection;
use Illuminate\Support\Facades\DB;

class NurulAzimSheetImport implements ToCollection
{
   public function collection(Collection $rows)
    {
        cclb($rows,55);
     }
}
