<?php

namespace App\Notifications;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Notifications\Messages\MailMessage;
use Illuminate\Notifications\Notification;

class OrderCreateNotifications extends Notification
{
    use Queueable;

    public $order;
    /**
     * Create a new notification instance.
     *
     * @return void
     */
    public function __construct($order)
    {
        return $this->order = $order;
    }

    /**
     * Get the notification's delivery channels.
     *
     * @param  mixed  $notifiable
     * @return array
     */
    public function via($notifiable)
    {
        return ['database'];
    }

    /**
     * Get the array representation of the notification.
     *
     * @param  mixed  $notifiable
     * @return array
     */
    public function toArray($notifiable)
    {
        $message = $this->order->sales_executive->name . ' has created a new order for ' . $this->order->customer->name;
        if($this->order->order_assign_sales_executive_id != $this->order->sales_executive_id){
            $message .= " (assign to ".$this->order->orderAssignSalesExecutive->name.")";
        }
        return [
            'message' => $message,
            'order_id' => $this->order->id,
         ];
    }
}
