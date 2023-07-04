<?php

namespace App\Http\Controllers\admin\images;

use App\Http\Controllers\Controller;
use App\Models\accountModel;
use App\Models\imagesModel;
use App\Models\productsModel;
use Illuminate\Http\Request;

class manageImage_controller extends Controller
{
    public function index()
    {
        $accounts = accountModel::all();
        $products = productsModel::all();
        $images = imagesModel::all();
        return view('pages/admin/images/manageImages', compact('accounts', 'products', 'images'));
    }

    public function addImageView(){
        return view('pages.admin.images.add');
    }
}
