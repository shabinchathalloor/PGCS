<?php

namespace App\Http\Requests\Location;

use Illuminate\Foundation\Http\FormRequest;

class StoreRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return $this->user();
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        
        return [
           
            
            'username' => 'bail|required|max:255|unique:users,username,NULL,id,location_id,'.\Auth::user()->location_id,
            'email' => 'bail|email|max:255|unique:users,email,NULL,id,location_id,'.\Auth::user()->location_id,
            'phone' =>'bail|required|unique:users,phone,NULL,id,location_id,'.\Auth::user()->location_id,
            'location' =>'bail|required|unique:locations,location,NULL,id,id,'.\Auth::user()->location_id,
           
           
        ];
    }
}
