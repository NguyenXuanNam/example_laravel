@extends('master')
@section('title', 'List')
@section('content')
    @if (Auth::check())
    <a href="{{ route('create') }}" class="btn btn-success mb-3">Add New</a>
    @endif
    <form action="{{ route('index') }}" method="GET">
        <div class="mb-2 d-flex align-items-center">
            <input class="form-control w-100 me-2 bg-white" name="q" placeholder="Search by phone, email, serial number" value="{{ request()->get('q') }}" />
            <button type="submit" class="btn btn-primary">Search</button>
        </div>
    </form>
    @if(session()->has('success'))
        <div class="alert alert-success mt-4">
            {{ session()->get('success') }}
        </div>
    @endif
    @if (request()->get('q') || Auth::check())
        @if ((is_array($productInfo) || is_object($productInfo)) && count($productInfo) > 0)
        <div class="table-responsive">
            <table class="table table-striped table-hover align-middle">
            <thead>
                @if (Auth::check())
                <th class="tbl-col-1 tbl-checkbox">#</th>
                @endif
                <th class="text-nowrap">Name</th>
                <th class="text-nowrap">Phone</th>
                <th class="text-nowrap">Product name</th>
                <th class="text-nowrap">Serial number</th>
                <th></th>
            </thead>
            <tbody>
                @foreach ($productInfo as $pi)
                    <tr class="tbl-row">
                        @if (Auth::check())
                        <td class="small">{{ $pi->id }}</td>
                        @endif
                        <td class="">{{ $pi->customer_name }}</td>
                        <td class="text-nowrap fw-bolder">{{ $pi->customer_phone }}</td>
                        <td class="">{{ $pi->product_name }}</td>
                        <td class="">{{ $pi->serial_number }}</td>
                        <td class="text-nowrap text-center" style="{{ Auth::check() ? 'width: 180px;' : 'width: 75px;' }}">
                            <button class="btn btn-secondary btn-sm" data-bs-toggle="modal" data-bs-target="#exampleModal-{{ $pi->id }}">Details</button>
                            <!-- Modal -->
                            <div class="modal fade" id="exampleModal-{{ $pi->id }}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="exampleModalLabel">Details</h5>
                                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                        </div>
                                        <div class="modal-body">
                                            <div class="row mb-2">
                                                <div class="col-md-4 text-start text-md-end fw-bold">Name:</div>
                                                <div class="col-md-8 text-start text-md-start">{{ $pi->customer_name }}</div>
                                            </div>
                                            <div class="row mb-2">
                                                <div class="col-md-4 text-start text-md-end fw-bold">Phone:</div>
                                                <div class="col-md-8 text-start text-md-start">{{ $pi->customer_phone }}</div>
                                            </div>
                                            <div class="row mb-2">
                                                <div class="col-md-4 text-start text-md-end fw-bold">Email:</div>
                                                <div class="col-md-8 text-start text-md-start">{{ $pi->customer_email }}</div>
                                            </div>
                                            <div class="row mb-2">
                                                <div class="col-md-4 text-start text-md-end fw-bold">Address:</div>
                                                <div class="col-md-8 text-start text-md-start">{{ $pi->customer_address }}</div>
                                            </div>
                                            <div class="row mb-2">
                                                <div class="col-md-4 text-start text-md-end fw-bold">Product name:</div>
                                                <div class="col-md-8 text-start text-md-start">{{ $pi->product_name }}</div>
                                            </div>
                                            <div class="row mb-2">
                                                <div class="col-md-4 text-start text-md-end fw-bold">Serial number:</div>
                                                <div class="col-md-8 text-start text-md-start">{{ $pi->serial_number }}</div>
                                            </div>
                                            <div class="row mb-2">
                                                <div class="col-md-4 text-start text-md-end fw-bold">Purchased:</div>
                                                <div class="col-md-8 text-start text-md-start">{{ $pi->purchased_at }}</div>
                                            </div>
                                            <div class="row mb-2">
                                                <div class="col-md-4 text-start text-md-end fw-bold">Expired:</div>
                                                <div class="col-md-8 text-start text-md-start">{{ $pi->expired_at }}</div>
                                            </div>
                                            @if (Auth::check() && $pi->notes)
                                            <div class="row mb-2">
                                                <div class="col-md-4 text-start text-md-end fw-bold">Notes:</div>
                                                <div class="col-md-8 text-start text-md-start">{!! nl2br(e($pi->notes)) !!}</div>
                                            </div>
                                            @endif
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            @if (Auth::check())
                            <a class="btn btn-outline-secondary btn-sm" href="{{ route('edit', ['id' => $pi->id]) }}">Edit</a>
                            <form action="{{ route('destroy', $pi->id) }}" method="POST" class="d-inline-flex">
                                @csrf
                                @method('DELETE')
                                <button type="submit" class="btn btn-outline-danger btn-sm">Delete</button>
                            </form>
                            @endif
                        </td>
                    </tr>
                @endforeach
            </tbody>
            </table>
        </div>
        {{ $productInfo->links() }}
        @else
        <div class="text-center mt-4">
            <h3>Sorry, no result found</h3>
            <p>What you searched was unfortunately not found or doesn't exist.</p>
        </div>
        @endif
    @endif
@endsection
