<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class ProductInfoRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'customer_name'    => 'required|alpha_dash|max:255',
            'customer_address' => 'nullable|string|max:250',
            'customer_phone'   => 'required|numeric|digits_between:8,16',
            'customer_email'   => 'nullable|email|:max:150',
            'product_name'     => 'required|max:255',
            'serial_number'    => 'nullable|string|max:255',
            'purchased_at'     => 'nullable|date',
            'expired_at'       => 'nullable|date',
            'notes'            => 'nullable',
        ];
    }
}
