@extends('master')
@section('title', 'List')
@section('content')
    <a href="{{ route('create') }}" class="btn btn-success mb-3">Add New</a>
    <form action="{{ route('list') }}" method="GET">
        <div class="mb-2 d-flex align-items-center">
            <input class="form-control w-100 me-2 bg-white" name="q" placeholder="Search by name, phone, email..." value="{{ request()->get('q') }}" />
            <button type="submit" class="btn btn-primary">Search</button>
        </div>
    </form>
    <div class="table-responsive">
        <table class="table table-striped table-hover align-middle">
        <thead>
            <th class="tbl-col-1 tbl-checkbox">#</th>
            <th class="text-nowrap">Customer name</th>
            <th class="text-nowrap">Customer phone</th>
{{--            <th class="text-nowrap">Customer email</th>--}}
            <th class="text-nowrap">Product name</th>
{{--            <th class="text-nowrap">Serial number</th>--}}
            <th class="text-nowrap">Purchased</th>
            <th class="text-nowrap">Expired</th>
            <th></th>
        </thead>
        <tbody>
        @if ((is_array($productInfo) || is_object($productInfo)) && count($productInfo) > 0)
            @foreach ($productInfo as $pi)
                <tr class="tbl-row">
                    <td class="small">{{ $pi->id }}</td>
                    <td class="">{{ $pi->customer_name }} </td>
                    <td class="text-nowrap fw-bolder">{{ $pi->customer_phone }}</td>
{{--                    <td class="fw-light">{{ $pi->customer_email }}</td>--}}
                    <td class="">{{ $pi->product_name }}</td>
{{--                    <td class="">{{ $pi->serial_number }}</td>--}}
                    <td class="text-nowrap">{{ $pi->purchased_at ? $pi->purchased_at->format('d-m-Y') : '' }}</td>
                    <td class="text-nowrap">{{ $pi->expired_at ? $pi->expired_at->format('d-m-Y') : '' }}</td>
                    <td class="text-nowrap text-center" style="width: 180px;">
                        <button class="btn btn-secondary btn-sm">Details</button>
                        <a class="btn btn-outline-secondary btn-sm" href="{{ route('edit', ['id' => $pi->id]) }}">Edit</a>
                        <form action="{{ route('destroy', $pi->id) }}" method="POST" class="d-inline-flex">
                            @csrf
                            @method('DELETE')
                            <button type="submit" class="btn btn-outline-danger btn-sm">Delete</button>
                        </form>
                    </td>
                </tr>
            @endforeach
        @endif
        </tbody>
        </table>
    </div>
    {{ $productInfo->links() }}
@endsection
