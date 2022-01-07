<?php

namespace App\Http\Controllers\api\v1;

use App\Http\Controllers\Api\v1\MainController as MainController;
use App\Http\Controllers\Controller;
use App\Http\Requests\StoreCustomer;
use App\Models\User;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;

class CustomerController extends MainController
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function index()
    {
        $customers = User::where('is_customer',1)->get();
        return $this->successResponse($customers, 'Customer list viewed Successfully', Response::HTTP_OK);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function store(StoreCustomer $request)
    {
        $input = $request->only('name', 'email', 'password','address');
        $input['password'] = bcrypt($input['password']);
        $input['is_customer'] = true;
        $input['created_by'] = auth()->user()->id;
        $data['customer'] = User::create($input);
        return $this->successResponse($data, 'Customer Created Successfully', Response::HTTP_OK);
    }

    /**
     * Display the specified resource.
     *
     * @param User $customer
     * @return \Illuminate\Http\JsonResponse
     */
    public function show(User $customer)
    {
        return $this->successResponse($customer, 'Customer Viewed Successfully', Response::HTTP_OK);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param StoreCustomer $request
     * @param User $customer
     * @return \Illuminate\Http\JsonResponse
     */
    public function update(StoreCustomer $request, User $customer)
    {
        $input = $request->only('name', 'email', 'password','address');
        $input['password'] = bcrypt($input['password']);
        $customer->update($input);
        $data['customer'] =  $customer;
        return $this->successResponse($data, 'Customer Updated Successfully', Response::HTTP_OK);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param User $customer
     * @return \Illuminate\Http\JsonResponse
     */
    public function destroy(User $customer)
    {
        $customer->delete();
        return $this->successResponse('Deleted', 'Customer Deleted Successfully', Response::HTTP_OK);
    }
}
