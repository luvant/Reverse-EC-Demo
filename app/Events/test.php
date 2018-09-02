<?php

namespace App\Events;

use App\Events\Event;
use Illuminate\Queue\SerializesModels;
use Illuminate\Contracts\Broadcasting\ShouldBroadcast;
 use Illuminate\Broadcasting\Channel;
class test extends Event implements ShouldBroadcast
{
    use SerializesModels;

    /**
     * Create a new event instance.
     *
     * @return void
     */
    public $message1;
     public $message2;
    public function __construct($mes1,$mes2)
    {
        //
        $this->message1 = $mes1;
        $this->message2 = $mes2;

        //
    }

    /**
     * Get the channels the event should be broadcast on.
     *
     * @return array
     */
    public function broadcastOn()
    {
        return  ['my-channel'];
    }
}
