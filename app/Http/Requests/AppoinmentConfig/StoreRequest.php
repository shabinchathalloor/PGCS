<?php

namespace App\Http\Requests\AppoinmentConfig;

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
           
            
            // 'services' => 'bail|required|unique:service_details,service_id,NULL,id,location_id,'.\Auth::user()->location_id,
            'details' => 'required',
            'details.*.info.name' => 'required_with:details.*.info|max:255',
            'details.*.info.values.*' => 'required_if:details.*.info.type,select,radio,checkbox|max:255',
        ];
    }
}
