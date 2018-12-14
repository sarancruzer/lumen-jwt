<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class RatingResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {

      print_r($request);
      print_r($this);

      return [
        'id' => $this->user_id,
        'user_id' => $this->user_id,
        'product_name' => $this->product_name,
        'product_price' => $this->product_price,
        'created_at' => (string) $this->created_at,
        'updated_at' => (string) $this->updated_at,
        'user' => $this->user,
      ];
    }
}
