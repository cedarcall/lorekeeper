<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Models\ExpeditionSubmission;
use App\Http\Controllers\Controller;
use Symfony\Component\HttpFoundation\BinaryFileResponse;

class ExpeditionFileController extends Controller
{
    /**
     * Securely download an expedition submission file.
     */
    public function download($submissionId)
    {
        $submission = ExpeditionSubmission::findOrFail($submissionId);
        
        if (!$submission->image_name) {
            abort(404, 'File not found');
        }
        
        $path = storage_path('app/public/expeditions/' . $submission->image_name);
        
        if (!file_exists($path)) {
            abort(404, 'File not found');
        }
        
        // Force download with secure headers
        return response()->download($path, 'expedition_' . $submission->id . '.' . $submission->image_extension, [
            'Content-Type' => $this->getSecureMimeType($submission->image_extension),
            'Content-Disposition' => 'attachment',
            'X-Content-Type-Options' => 'nosniff',
            'X-Frame-Options' => 'DENY'
        ]);
    }
    
    /**
     * View file in browser (for images and PDFs).
     */
    public function view($submissionId)
    {
        $submission = ExpeditionSubmission::findOrFail($submissionId);
        
        if (!$submission->image_name) {
            abort(404, 'File not found');
        }
        
        $path = storage_path('app/public/expeditions/' . $submission->image_name);
        
        if (!file_exists($path)) {
            abort(404, 'File not found');
        }
        
        // Serve with secure headers
        return response()->file($path, [
            'Content-Type' => $this->getSecureMimeType($submission->image_extension),
            'X-Content-Type-Options' => 'nosniff',
            'Content-Security-Policy' => "default-src 'none'; style-src 'unsafe-inline';"
        ]);
    }
    
    /**
     * Get secure MIME type for file extension.
     */
    private function getSecureMimeType($extension)
    {
        $mimes = [
            'jpg' => 'image/jpeg',
            'jpeg' => 'image/jpeg',
            'png' => 'image/png',
            'gif' => 'image/gif',
            'pdf' => 'application/pdf'
        ];
        
        return $mimes[strtolower($extension)] ?? 'application/octet-stream';
    }
}
