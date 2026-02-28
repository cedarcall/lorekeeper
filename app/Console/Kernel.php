<?php

namespace App\Console;

use Illuminate\Support\Facades\File;
use Illuminate\Console\Scheduling\Schedule;
use Illuminate\Foundation\Console\Kernel as ConsoleKernel;

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
        $schedule->command('check-news')
                ->everyMinute();
        $schedule->call(function () {
            foreach (glob(public_path('images/avatars/*.tmp')) as $tempAvatarPath) {
                File::delete($tempAvatarPath);
            }
        })
                ->daily();
        $schedule->command('check-sales')
                ->everyMinute();
        $schedule->command('update-timed-daily')
                ->everyMinute();          

    }

    /**
     * Register the commands for the application.
     *
     * @return void
     */
    protected function commands()
    {
        $this->load(__DIR__.'/Commands');

        require base_path('routes/console.php');
    }
}
