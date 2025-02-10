<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Requests\API\StoreProductRequest;
use App\Http\Requests\API\UpdateProductRequest;
use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Routing\Controllers\HasMiddleware;
use Illuminate\Routing\Controllers\Middleware;

class ProductController extends Controller implements HasMiddleware
{
    /**
     * Get the middleware that should be assigned to the controller.
     */
    public static function middleware(): array
    {
        return [
            new Middleware('auth:sanctum', except: ['index', 'show']),
        ];
    }

    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $paginatedProducts = Product::paginate(5);

        // Add _links for each product
        $productsWithLinks = $paginatedProducts->getCollection()->map(function ($product) {
            return [
                'id' => $product->id,
                'name' => $product->name,
                'description' => $product->description,
                'price' => $product->price,
                'category' => $product->category,
                'image_url' => $product->image_url,
                'created_at' => $product->created_at,
                'updated_at' => $product->updated_at,
                '_links' => [
                    'self' => [
                        'href' => route('products.show', ['product' => $product->id]),
                    ],
                    'update' => [
                        'href' => route('products.update', ['product' => $product->id]),
                        'method' => 'PUT',
                    ],
                    'delete' => [
                        'href' => route('products.destroy', ['product' => $product->id]),
                        'method' => 'DELETE',
                    ],
                ],
            ];
        });

        // Replace the original collection with a new one with _links
        $paginatedProducts->setCollection($productsWithLinks);

        return response()->json($paginatedProducts, Response::HTTP_OK)
            ->header('Cache-Control', 'private, max-age=600');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(StoreProductRequest $request)
    {
        $validated = $request->validated();

        $product = Product::create($validated);

        return response()->json([
            'product' => [
                'id' => $product->id,
                'name' => $product->name,
                'description' => $product->description,
                'price' => $product->price,
                'category' => $product->category,
                'image_url' => $product->image_url,
                'created_at' => $product->created_at,
                'updated_at' => $product->updated_at,
                '_links' => [
                    'self' => [
                        'href' => route('products.show', ['product' => $product->id]),
                    ],
                    'update' => [
                        'href' => route('products.update', ['product' => $product->id]),
                        'method' => 'PUT',
                    ],
                    'delete' => [
                        'href' => route('products.destroy', ['product' => $product->id]),
                        'method' => 'DELETE',
                    ],
                ],
            ],
        ], Response::HTTP_CREATED)->header('Cache-Control', 'private, max-age=600');
    }

    /**
     * Display the specified resource.
     */
    public function show(Product $product)
    {
        return response()->json([
            'id' => $product->id,
            'name' => $product->name,
            'description' => $product->description,
            'price' => $product->price,
            'category' => $product->category,
            'image_url' => $product->image_url,
            'created_at' => $product->created_at,
            'updated_at' => $product->updated_at,
            '_links' => [
                'self' => [
                    'href' => route('products.show', ['product' => $product->id]),
                ],
                'update' => [
                    'href' => route('products.update', ['product' => $product->id]),
                    'method' => 'PUT',
                ],
                'delete' => [
                    'href' => route('products.destroy', ['product' => $product->id]),
                    'method' => 'DELETE',
                ],
            ],
        ], Response::HTTP_OK)->header('Cache-Control', 'private, max-age=600');
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(UpdateProductRequest $request, Product $product)
    {
        $validated = $request->validated();

        $product->update($validated);
        
        return response()->json([
            'product' => [
                'id' => $product->id,
                'name' => $product->name,
                'description' => $product->description,
                'price' => $product->price,
                'category' => $product->category,
                'image_url' => $product->image_url,
                'created_at' => $product->created_at,
                'updated_at' => $product->updated_at,
                '_links' => [
                    'self' => [
                        'href' => route('products.show', ['product' => $product->id]),
                    ],
                    'update' => [
                        'href' => route('products.update', ['product' => $product->id]),
                        'method' => 'PUT',
                    ],
                    'delete' => [
                        'href' => route('products.destroy', ['product' => $product->id]),
                        'method' => 'DELETE',
                    ],
                ],
            ],
        ], Response::HTTP_OK)->header('Cache-Control', 'private, max-age=600');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Product $product)
    {
        $product->delete();
        return response()->json(null, Response::HTTP_NO_CONTENT);
    }
}
