<?php

namespace App\Http\Requests\Company;

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
           
            
            'username' => 'bail|required|max:255|unique:users,username',
            'email' => 'bail|email|max:255|unique:users,email',
            'phone' =>'bail|required|unique:users,phone',
           
           
        ];
    }
}
