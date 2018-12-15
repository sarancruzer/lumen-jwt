<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\Resource;

class UserResource extends Resource
{

    public function toArray($request)
    {
      return [
        'id' => $this->id,
        'name' => $this->name,
        'email' => $this->email,
        'product' => $this->product,
        'created_at' => (string) $this->created_at,
        'updated_at' => (string) $this->updated_at        
      ];
    }

    public function with($request)
    {
        return [
            'version' => '1.0',
            'success' => true,
        ];
    }

}
