<?php

namespace App\Listeners;

use App\Events\SendMail;
use App\Models\User;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Support\Facades\Mail;

class SendMailFired
{
    /**
     * Create the event listener.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }

    /**
     * Handle the event.
     *
     * @param  \App\Events\SendMail  $event
     * @return void
     */
    public function handle(SendMail $event)
    {
        try {
            $customer = User::find($event->customerId)->toArray();
            if (isset($customer) && $customer['email'] != ''){
                Mail::send('email.mail', $customer, function($message) use ($customer) {
                    $message->to($customer['email']);
                    $message->subject('Sending Email');
                });
            }
        } catch (\Exception $exception) {
            \Log::error("Sending Email Error : " . $exception->getMessage());
            \Log::info(json_encode(Mail::failures()));
        }
    }
}
