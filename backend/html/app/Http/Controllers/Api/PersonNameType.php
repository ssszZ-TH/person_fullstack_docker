<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Validation\ValidationException;

use App\Models\PersonNameType as Model;

class PersonNameType extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //
        try {
            $datas = Model::all();
            return response()->json($datas, 200);
        } catch (\Exception $e) {
            return response()->json([
                'error' => 'Failed to retrieve products',
                'message' => $e->getMessage(),
            ], 500);
        }
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
        try {
            $request->validate([
                'description' => 'required|string|max:64',
            ]);

            $data = Model::create($request->all());
            return response()->json($data, 201);
        } catch (ValidationException $e) {
            return response()->json([
                'error' => 'Validation failed',
                'messages' => $e->errors(),
            ], 422);
        }
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
        try {
            $data = Model::findOrFail($id);
            return response()->json($data, 200);
        } catch (\Illuminate\Database\Eloquent\ModelNotFoundException $e) {
            return response()->json([
                'error' => 'data not found'
            ], 404);
        } catch (\Exception $e) {
            return response()->json([
                'error' => 'Failed to retrieve data',
                'message' => $e->getMessage(),
            ], 500);
        }
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
        $data = Model::find($id);
        if (!$data) {
            return response()->json(['error' => 'Product not found'], 404);
        }

        $originalData = $data->toArray();

        try {
            $request->validate([
                'description' => 'required|string|max:64',
            ]);

            $data->update($request->all());

            return response()->json([
                'original_data' => $originalData,
                'updated_data' => $data
            ], 200);
        } catch (ValidationException $e) {
            return response()->json([
                'error' => 'Validation failed',
                'messages' => $e->errors(),
            ], 422);
        }
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
        try {
            $data = Model::findOrFail($id);

            // เก็บข้อมูลก่อนลบ
            $deletedData = $data->toArray();

            // ลบข้อมูล
            $data->delete();

            // ส่งข้อมูลที่ถูกลบกลับไป
            return response()->json([
                'deleted_data' => $deletedData
            ], 200);
        } catch (\Illuminate\Database\Eloquent\ModelNotFoundException $e) {
            return response()->json([
                'error' => 'Product not found'
            ], 404);
        } catch (\Exception $e) {
            return response()->json([
                'error' => 'Failed to delete product',
                'message' => $e->getMessage(),
            ], 500);
        }
    }
}
