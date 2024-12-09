<?php

namespace App\Http\Controllers;

use App\Http\Requests\StorePropertyRequest;
use App\Http\Requests\UpdatePropertyRequest;
use App\Models\Property;
use App\Interfaces\PropertyRepositoryInterface;
use App\Classes\ApiResponseClass;
use App\Http\Resources\PropertyResource;
use Illuminate\Support\Facades\DB;

class PropertyController extends Controller
{

    private PropertyRepositoryInterface $propertyRepositoryInterface;
    
    public function __construct(PropertyRepositoryInterface $propertyRepositoryInterface)
    {
        $this->propertyRepositoryInterface = $propertyRepositoryInterface;
    }
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $data = $this->propertyRepositoryInterface->get();

        return ApiResponseClass::sendResponse(PropertyResource::collection($data),'',200);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(StorePropertyRequest $request)
    {
        $imagepath = null;
        


        if ($request->hasFile('property_image')) {
            $request->validate([
                'property_image' => 'nullable|image|mimes:jpeg,png,jpg,gif|max:2048',
            ]);
    
            $imagepath = $request->file('property_image')->store('images', 'public');
        }

        $details =[
            'property_name' => $request->property_name,
            'property_type' => $request->property_type,
            'property_description' => $request->property_description,
            'property_price' => $request->property_price,
            'property_status' => $request->property_status,
            'property_image' => $imagepath,
            'property_location' => $request->property_location,
            'property_contact' => $request->property_contact,
        ];


        DB::beginTransaction();
        try{
             $property = $this->propertyRepositoryInterface->add($details);

             DB::commit();
             return ApiResponseClass::sendResponse(new PropertyResource($property),'Property Create Successful',201);

        }catch(\Exception $ex){
            return ApiResponseClass::rollback($ex);
        }
    }

    /**
     * Display the specified resource.
     */
    public function show($id)
    {
        $property = $this->propertyRepositoryInterface->getById($id);

        if($property == null){
            return ApiResponseClass::sendResponse('Property Not Found','',404);
        }else{
            return ApiResponseClass::sendResponse(new PropertyResource($property),'',200);
        }

    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(UpdatePropertyRequest $request, $id)
    {
       
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(UpdatePropertyRequest $request, $id)
    {
        $property = $this->propertyRepositoryInterface->getById($id);

        if($property == null){
            return ApiResponseClass::sendResponse('Property Not Found','',404);
        }
        $imagepath = null;
        


        if ($request->hasFile('property_image')) {
            $request->validate([
                'property_image' => 'nullable|image|mimes:jpeg,png,jpg,gif|max:2048',
            ]);
    
            $imagepath = $request->file('property_image')->store('images', 'public');
        }
        $updateDetails =[
            'property_name' => $request->property_name ?? $property->property_name,
            'property_type' => $request->property_type ?? $property->property_type,
            'property_description' => $request->property_description ?? $property->property_description,
            'property_price' => $request->property_price ?? $property->property_price,
            'property_status' => $request->property_status ?? $property->property_status,
            'property_image' => $imagepath ?? $property->property_image,
            'property_location' => $request->property_location ?? $property->property_location,
            'property_contact' => $request->property_contact ?? $property->property_contact,
        ];
        DB::beginTransaction();
        try{
            $property = $this->propertyRepositoryInterface->edit($updateDetails,$id);

            DB::commit();
            return ApiResponseClass::sendResponse($property,'Property Update Successful',201);

        }catch(\Exception $ex){
            return ApiResponseClass::rollback($ex);
        }
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {
        $this->propertyRepositoryInterface->delete($id);

        return ApiResponseClass::sendResponse('Property Delete Successful','',204);
    }
}
