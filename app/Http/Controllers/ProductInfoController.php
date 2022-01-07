<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests\ProductInfoRequest;
use App\Models\ProductInfo;

class ProductInfoController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @param Request $request
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        // Get list with paginate
        $productInfo = ProductInfo::orderBy('id', 'desc');
        if ($q = $request->input('q')) {
            $productInfo->where('customer_phone', '=', $q)
                ->orWhere('customer_email', '=', $q)
                ->orWhere('serial_number', '=', $q);
        }
        $productInfo = $productInfo->paginate(20);
        // Return view listing of the resource
        return view('list', compact('productInfo'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        // Return view create
        return view('form', ['productInfo' => null]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param ProductInfoRequest $request
     *
     * @return \Illuminate\Http\Response
     */
    public function store(ProductInfoRequest $request)
    {
        try {
            $productInfo = ProductInfo::create($request->all());
            if ($productInfo) {
                if ($request->input('create')) {
                    return redirect()->route('create')->with('success', 'Created successfully.');
                }
                return redirect()->route('edit', $productInfo)->with('success', 'Created successfully.');
            }
            return redirect()->route('index');
        } catch (\Exception $e) {
            return $e->getMessage();
        }
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param integer $id
     *
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        // Get data without soft deleted
        $productInfo = ProductInfo::find($id);
        // Check exists the specified resource
        if ($productInfo) {
            // Return view if data exist
            return view('form', ['productInfo' => $productInfo]);
        }
        // Redirect to index if data does not exist
        return redirect()->route('index');
    }

    /**
     * Update the specified resource in storage.
     *
     * @param ProductInfoRequest $request
     * @param integer $id
     *
     * @return \Illuminate\Http\Response
     */
    public function update(ProductInfoRequest $request, $id)
    {
        try {
            $productInfo = ProductInfo::findOrFail($id);
            $productInfo = $productInfo->update($request->all());
            if ($productInfo) {
                return redirect()->back()->with('success', 'Updated successfully.');
            }
            return redirect()->route('index');
        } catch (\Exception $e) {
            echo $e->getMessage();
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param integer $id
     *
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        try {
            $productInfo = ProductInfo::find($id);
            if ($productInfo) {
                $productInfo->delete();
            }
            return redirect()->route('index')->with('success', 'Deleted successfully');
        } catch (\Exception $e) {
            echo $e->getMessage();
        }
    }
}
