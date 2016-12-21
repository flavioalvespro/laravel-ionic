<?php

namespace App\Http\Controllers;
use App\Repositories\ProductRepository;
use App\Repositories\CategoryRepository;

use Illuminate\Http\Request;
use App\Http\Requests\AdminCategoryRequest;
use App\Http\Requests\AdminProductRequest;
use App\Models\Category;
use App\Http\Requests;
use App\Http\Controllers\Controller;

class ProductsController extends Controller
{	

	private $repository;
    private $categoryRepository;

	public function __construct(ProductRepository $repository, CategoryRepository $categoryRepository){

		$this->repository = $repository;
        $this->categoryRepository = $categoryRepository;

	}
    
    public function index(){

    	$products = $this->repository->paginate();

    	return view('admin.products.index', compact('products'));

    }

    public function create(){

        $categories = Category::all();

    	return view('admin.products.create', compact('categories'));
    }

    public function store(AdminProductRequest $request){

    	$data = $request->all();
    	$this->repository->create($data);

    	return redirect()->route('admin.products.index');

    }

    public function edit($id){

        $product = $this->repository->find($id);
        
        $categories = Category::all();

    	return view('admin.products.edit', compact('product', 'categories'));
    }

    public function update(AdminProductRequest $request, $id){

    	$data = $request->all();
    	$this->repository->update($data, $id);

    	return redirect()->route('admin.products.index');	

    }

    public function destroy($id){

        $this->repository->delete($id);

        return redirect()->route('admin.products.index');   
    }

}
