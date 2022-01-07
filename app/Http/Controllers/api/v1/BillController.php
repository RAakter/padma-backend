<?php

namespace App\Http\Controllers\api\v1;

use App\Events\SendMail;
use App\Http\Controllers\Api\v1\MainController as MainController;

use App\Models\Bill;
use App\Http\Requests\StoreBillRequest;
use App\Http\Requests\UpdateBillRequest;
use App\Models\User;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;

class BillController extends MainController
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function index(Request $request)
    {
        $data['bills'] = Bill::where('customer_id', $request->id)->get();
        return $this->successResponse($data, 'Bill list', Response::HTTP_OK);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\StoreBillRequest  $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function store(StoreBillRequest $request)
    {
        $input = $request->only('customer_id', 'bill_month', 'year', 'amount', 'status', 'created_by');
        $data['bill'] = Bill::create($input);
        SendMail::dispatch($request->customer_id);
        return $this->successResponse($data, 'Bill Created Successfully', Response::HTTP_OK);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Bill  $bill
     * @return \Illuminate\Http\Response
     */
    public function show(Bill $bill)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdateBillRequest  $request
     * @param  \App\Models\Bill  $bill
     * @return \Illuminate\Http\JsonResponse
     */
    public function update(UpdateBillRequest $request, Bill $bill)
    {
        $bill->update($request->only('status'));
        $data['bill'] =  $bill;
        return $this->successResponse($bill, 'Bill Status Updated Successfully');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Bill  $bill
     * @return \Illuminate\Http\Response
     */
    public function destroy(Bill $bill)
    {
        //
    }

    public function filterBill(Request $request, Bill $bill)
    {
        $filter = $bill->newQuery();
        if ($request->has('status')) {
            $filter->where('status', $request->status);
        }
        return $this->successResponse($filter->get(), 'Bill filtered Successfully', Response::HTTP_OK);
    }
}
