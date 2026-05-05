<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\DB;

class FixPageLinks extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        // Fix Getting Started page - replace hermescasp link
        $gettingStartedPage = DB::table('site_pages')->where('key', 'getting-started')->first();
        if ($gettingStartedPage) {
            $updatedText = str_replace(
                'hermescasp',
                '<a href="https://www.deviantart.com/hermescasp">Hermescasp</a>',
                $gettingStartedPage->text
            );
            
            // Also update parsed_text if it exists
            $updatedParsedText = str_replace(
                'hermescasp',
                '<a href="https://www.deviantart.com/hermescasp">Hermescasp</a>',
                $gettingStartedPage->parsed_text
            );
            
            DB::table('site_pages')
                ->where('key', 'getting-started')
                ->update([
                    'text' => $updatedText,
                    'parsed_text' => $updatedParsedText,
                    'updated_at' => now(),
                ]);
        }

        // Fix Contracts page - add link to Expeditions journal
        $contractsPage = DB::table('site_pages')->where('key', 'contracts')->first();
        if ($contractsPage) {
            // If the page says something about learning about contracts on getting-started,
            // keep that but ensure the expeditions link is available
            // For now, we'll just ensure any references to expeditions info link to the journal
            
            $updatedText = $contractsPage->text;
            $updatedParsedText = $contractsPage->parsed_text;
            
            // Check if it needs the expeditions journal link added
            if (strpos($updatedText, 'Expeditions') !== false && 
                strpos($updatedText, 'hermescasp/journal') === false) {
                // Add a note about the Expeditions journal if it doesn't already have it
                $expeditionsNote = '<p><strong>For more information about Expeditions:</strong> See the <a href="https://www.deviantart.com/hermescasp/journal/Expeditions-1283254552">Expeditions Journal</a></p>';
                
                if (!empty($updatedText)) {
                    $updatedText = $updatedText . "\n\n" . $expeditionsNote;
                    $updatedParsedText = $updatedParsedText . "\n\n" . $expeditionsNote;
                }
            }
            
            if ($updatedText !== $contractsPage->text) {
                DB::table('site_pages')
                    ->where('key', 'contracts')
                    ->update([
                        'text' => $updatedText,
                        'parsed_text' => $updatedParsedText,
                        'updated_at' => now(),
                    ]);
            }
        }
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        // This migration modifies content, so reversing would be complex.
        // Consider manually reverting changes if needed.
    }
}
