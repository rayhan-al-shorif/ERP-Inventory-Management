<?php

namespace App\Console;

use Illuminate\Console\Scheduling\Schedule;
use Illuminate\Foundation\Console\Kernel as ConsoleKernel;
use App\Models\Task;

class Kernel extends ConsoleKernel
{
    /**
     * The Artisan commands provided by your application.
     *
     * @var array
     */
    protected $commands = [
        //
    ];

    /**
     * Define the application's command schedule.
     *
     * @param  \Illuminate\Console\Scheduling\Schedule  $schedule
     * @return void
     */
    protected function schedule(Schedule $schedule)
    {
        $task = Task::select()->first();
        /* This task for Sales table transefer */
        $schedule->command('mytask:sales-move')
            ->timezone('Asia/Dhaka')
            ->dailyAt($task->sales_time);

        /* This task for Requirement table */
        $schedule->command('mytask:requirements-move')
            ->timezone('Asia/Dhaka')
            ->dailyAt($task->purchase_time);

        /* This task for Price table */
        $schedule->command('mytask:price-move')
            ->timezone('Asia/Dhaka')
            ->dailyAt($task->price_time);
    }

    /**
     * Register the commands for the application.
     *
     * @return void
     */
    protected function commands()
    {
        $this->load(__DIR__ . '/Commands');

        require base_path('routes/console.php');
    }
}
