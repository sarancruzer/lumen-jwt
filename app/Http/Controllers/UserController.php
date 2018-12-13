<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;


class UserController extends Controller
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
        $users = User::paginate(10);
        
        return response()->json(['success' => '','data' => $users], 200);

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
        
        $user = new User();
        $user->name = $request->name;
        $user->email = $request->email;
        $user->password = app('hash')->make($request->password);
        $user->save();
        
        if($user->save())
        {
            $response = response()->json(
                [
                    'response' => [
                        'created' => true,
                        'userId' => $user
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

        echo "user update";

        try{
            $user = User::find($id);
            return $response = response()->json([
                            'response' => [
                                'success' => true,
                                'message' => "User record!",
                                'data' => $user
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

            $user = User::find($id);
            $user->name = $request->name;
            $user->email = $request->email;
            $user->save();

            return $response = response()->json([
                'response' => [
                    'success' => true,
                    'message' => "User udpated successfully!",
                    'data' => $user
                ]
            ], 200
        );
        } 
        catch(\Exception $e){
            // catch code

            return $response = response()->json([
                'response' => [
                    'success' => false,
                    'message' => "User udpated failed!"
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
            $user = User::find($id);
            $user->is_deleted = 0;
            $user->save();

            return $response = response()->json([
                'response' => [
                    'success' => true,
                    'message' => "User deleted successfully!"
                ]
            ], 200
        );
        } 
        catch(\Exception $e){
            // catch code

            return $response = response()->json([
                'response' => [
                    'success' => false,
                    'message' => "User deleted failed!"
                ]
            ], 400
        );
        }
    }
}
