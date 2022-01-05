@extends('master')
@section('title', request()->route()->id ? 'Edit' : 'Create')
@section('content')
@php
    function old_value($name = null, $data = null, $value = null)
    {
        if (!$name) {
            return;
        }
        if (!$data || !$value) {
            return old($name);
        } else {
            if (is_array($data)) {
                return isset($data[$value]) ? old($name, $data[$value]) : '';
            } else {
                return isset($data->$value) ? old($name, $data->$value) : '';
            }
        }
    }
@endphp
<h3 class="fw-bold mb-3">{{ request()->route()->id ? 'Edit' : 'Create' }}</h3>
<form action="{{ request()->route()->id ? route('update', ['id' => request()->route()->id]) : route('store') }}" method="post" accept-charset="utf-8">
    <div class="bg-light p-3 border mb-4">
        <div class="row">
            <div class="col-md-4">
                <div class="mb-3">
                    <label for="customer_name" class="form-label">Customer name</label>
                    <input type="text" name="customer_name" id="customer_name" class="form-control bg-white{{ $errors->has('name') ? ' is-invalid' : '' }}" value="{{ old_value('customer_name', $productInfo, 'customer_name') }}" />
                    @if ($errors->has('customer_name')) <div class="invalid-feedback">{{ $errors->first('customer_name') }}</div> @endif
                </div>
            </div>
            <div class="col-md-4">
                <div class="mb-3">
                    <label for="customer_phone" class="form-label">Customer phone</label>
                    <input type="text" name="customer_phone" id="customer_phone" class="form-control bg-white{{ $errors->has('customer_phone') ? ' is-invalid' : '' }}" value="{{ old_value('customer_phone', $productInfo, 'customer_phone') }}" />
                    @if ($errors->has('customer_phone')) <div class="invalid-feedback">{{ $errors->first('customer_phone') }}</div> @endif
                </div>
            </div>
            <div class="col-md-4">
                <div class="mb-3">
                    <label for="customer_email" class="form-label">Customer email</label>
                    <input type="email" name="customer_email" id="customer_email" class="form-control bg-white{{ $errors->has('customer_email') ? ' is-invalid' : '' }}" value="{{ old_value('customer_email', $productInfo, 'customer_email') }}" />
                    @if ($errors->has('customer_email')) <div class="invalid-feedback">{{ $errors->first('customer_email') }}</div> @endif
                </div>
            </div>
        </div>
        <div class="mb-2">
            <label for="customer_address" class="form-label">Customer address</label>
            <input type="text" name="customer_address" id="customer_address" class="form-control bg-white{{ $errors->has('customer_address') ? ' is-invalid' : '' }}" value="{{ old_value('customer_address', $productInfo, 'customer_address') }}" />
            @if ($errors->has('customer_address')) <div class="invalid-feedback">{{ $errors->first('customer_address') }}</div> @endif
        </div>
    </div>
    <div class="row">
        <div class="col-md-6">
            <div class="mb-3">
                <label for="product_name" class="form-label">Product name</label>
                <input type="text" name="product_name" id="product_name" class="form-control bg-white{{ $errors->has('product_name') ? ' is-invalid' : '' }}" value="{{ old_value('product_name', $productInfo, 'product_name') }}" />
                @if ($errors->has('product_name')) <div class="invalid-feedback">{{ $errors->first('product_name') }}</div> @endif
            </div>
        </div>
        <div class="col-md-6">
            <div class="mb-3">
                <label for="serial_number" class="form-label">Serial number</label>
                <input type="text" name="serial_number" id="serial_number" class="form-control bg-white{{ $errors->has('serial_number') ? ' is-invalid' : '' }}" value="{{ old_value('serial_number', $productInfo, 'serial_number') }}" />
                @if ($errors->has('serial_number')) <div class="invalid-feedback">{{ $errors->first('serial_number') }}</div> @endif
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-6">
            <div class="mb-3">
                <label for="purchased_at" class="form-label">Purchased</label>
                <input type="text" name="purchased_at" id="purchased_at" class="form-control bg-white{{ $errors->has('purchased_at') ? ' is-invalid' : '' }}" value="{{ old_value('purchased_at', $productInfo, 'purchased_at') }}" />
                @if ($errors->has('purchased_at')) <div class="invalid-feedback">{{ $errors->first('purchased_at') }}</div> @endif
            </div>
        </div>
        <div class="col-md-6">
            <div class="mb-3">
                <label for="expired_at" class="form-label">Expired</label>
                <input type="text" name="expired_at" id="expired_at" class="form-control bg-white{{ $errors->has('expired_at') ? ' is-invalid' : '' }}" value="{{ old_value('expired_at', $productInfo, 'expired_at') }}" />
                @if ($errors->has('expired_at')) <div class="invalid-feedback">{{ $errors->first('expired_at') }}</div> @endif
            </div>
        </div>
    </div>
    <div class="mt-2">
    @if (request()->route()->id)
        <button type="submit" class="btn btn-primary">Update</button>
        <a href="{{ route('list') }}" class="btn btn-light">Cancel</a>
    @else
        <button type="submit" class="btn btn-primary">Create</button>
        <button type="submit" class="btn btn-secondary">Create and continue</button>
        <a href="{{ route('list') }}" class="btn btn-light">Back</a>
    @endif
    </div>
</form>
@endsection
