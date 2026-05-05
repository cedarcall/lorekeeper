<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Support\Facades\DB;

class BackfillSpeciesAndFixDreadfarerLinks extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        $this->fixGettingStartedLinks();
        $this->backfillSpeciesPageText();
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        // Content backfills are intentionally non-reversible.
    }

    /**
     * Normalize known broken Getting Started links.
     *
     * @return void
     */
    protected function fixGettingStartedLinks()
    {
        $page = DB::table('site_pages')->where('key', 'getting-started')->first();
        if (!$page) {
            return;
        }

        $canonicalHermescasp = 'https://www.deviantart.com/hermescasp';

        $replace = function ($value) use ($canonicalHermescasp) {
            if (!$value) {
                return $value;
            }

            $value = preg_replace(
                '/https?:\/\/(?:127\.0\.0\.1(?::\d+)?|localhost(?::\d+)?)\/user\/Hermescasp/i',
                $canonicalHermescasp,
                $value
            );
            $value = preg_replace(
                '/https?:\/\/(?:www\.)?deviantart\.com\/user\/hermescasp/i',
                $canonicalHermescasp,
                $value
            );

            return $value;
        };

        $newText = $replace($page->text);
        $newParsedText = $replace($page->parsed_text);

        if ($newText !== $page->text || $newParsedText !== $page->parsed_text) {
            DB::table('site_pages')
                ->where('key', 'getting-started')
                ->update([
                    'text' => $newText,
                    'parsed_text' => $newParsedText,
                    'updated_at' => now(),
                ]);
        }
    }

    /**
     * Backfill species page text from description for existing records.
     *
     * @return void
     */
    protected function backfillSpeciesPageText()
    {
        DB::table('specieses')
            ->where(function ($query) {
                $query->whereNull('page_text')->orWhere('page_text', '');
            })
            ->whereNotNull('description')
            ->where('description', '!=', '')
            ->update([
                'page_text' => DB::raw('description'),
            ]);

        DB::table('specieses')
            ->where(function ($query) {
                $query->whereNull('parsed_page_text')->orWhere('parsed_page_text', '');
            })
            ->whereNotNull('parsed_description')
            ->where('parsed_description', '!=', '')
            ->update([
                'parsed_page_text' => DB::raw('parsed_description'),
            ]);
    }
}
