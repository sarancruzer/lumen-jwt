<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;


use App\Product;

class ProductController extends Controller
{
  
    /**
     * The request instance.
     *
     * @var \Illuminate\Http\Request
     */
    private $request;
    /**
     * Create a new controller instance.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return void
     */
    public function __construct(Request $request) {
        $this->request = $request;
    }
    /**
     * Create a new token.
     * 
     * @param  \App\User   $user
     * @return string
     */


    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $products = Product::paginate(10);
        return response()->json(['success' => '','data' => $products], 200);

    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
        $response = $this->validate(
            $request, [
                'name' => 'required',
                'email' => 'required|email|unique:users',
                'password' => 'required'
            ]
        );
        
        $product = new Product();
        $product->name = $request->name;
        $product->email = $request->email;
        $product->password = app('hash')->make($request->password);
        $product->save();
        
        if($product->save())
        {
            $response = response()->json(
                [
                    'response' => [
                        'created' => true,
                        'message' => 'Product created successfully!',
                        'product' => $product
                    ]
                ], 201
            );
        }
        return $response;
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //

        
        try{
            $product = Product::find($id);
            return $response = response()->json([
                            'response' => [
                                'success' => true,
                                'message' => "Product record!",
                                'data' => $product
                            ]
                        ], 200
                    );

        } 
        catch(\Exception $e){
            // catch code
        }
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request , $id)
    {
        //
        try{

            $response = $this->validate(
                $request, [
                    'name' => 'required',
                    'email' => 'required'
                ]
            );

            $product = Product::find($id);
            $product->name = $request->name;
            $product->email = $request->email;
            $product->save();

            return $response = response()->json([
                'response' => [
                    'success' => true,
                    'message' => "Product udpated successfully!",
                    'data' => $product
                ]
            ], 200
        );
        } 
        catch(\Exception $e){
            // catch code

            return $response = response()->json([
                'response' => [
                    'success' => false,
                    'message' => "Product udpated failed!"
                ]
            ], 400
        );
        }
        
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //

        try{
            $product = Product::find($id);
            $product->is_deleted = 0;
            $product->save();

            return $response = response()->json([
                'response' => [
                    'success' => true,
                    'message' => "Product deleted successfully!"
                ]
            ], 200
        );
        } 
        catch(\Exception $e){
            // catch code

            return $response = response()->json([
                'response' => [
                    'success' => false,
                    'message' => "Product deleted failed!"
                ]
            ], 400
        );
        }
    }

}
