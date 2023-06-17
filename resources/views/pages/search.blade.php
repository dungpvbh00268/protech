@extends('layouts/master')

@section('contents')
    <main>
        
        <div class="main">
            <h1 style="text-align: center; color: #333; font-weight: 500;">Search Results For: </h1>
            <div class="notify__wrapper">
                <div class="notify__wrapper-count">Showing 1-10 of 48 results</div>
                <form class="notify__wrapper-select" method="get" class="">
                    <select name="" id="">
                        <option class="notify__wrapper-select--option" value="">Order by price: from low to high</option>
                        <option class="notify__wrapper-select--option" value="">Order by price: from high to low</option>
                        <option class="notify__wrapper-select--option" value="">Order by popularity</option>
                        <option class="notify__wrapper-select--option" value="">Order by rating</option>
                        <option class="notify__wrapper-select--option" value="">Latest</option>
                    </select>
                </form>
            </div>
            <!-- Show product -->
            <div class="body__banner-product">
                <div class="body__title-product">
                    <div class="title__product-laptop">
                        laptop
                    </div>

                    <div class="title__product-laptop-sub">
                        <a href="" class="title__product-laptop-link">
                            TUF Gaming
                        </a>

                        <a href="" class="title__product-laptop-link">
                            Nitro 5
                        </a>

                        <a href="" class="title__product-laptop-link">
                            GF Series
                        </a>

                        <a href="" class="title__product-laptop-link">
                            Legion
                        </a>

                        <a href="" class="title__product-laptop-link">
                            Ideapad gaming
                        </a>

                        <a href="" class="title__product-laptop-link">
                            Strix G
                        </a>
                    </div>
                </div>

                <!-- element product -->
                <div class="element__product">
                    <a href="details" class="list__product">
                        <span class="inner__text">-14%</span>
                        <span class="excerpt">Refund 1,000,000 VND</span>
                        <div class="element__product-info">
                            <div class="element__product-info--img">
                                <img src="{{ asset('images/laptop.png') }}" alt="" class="element__product-img">
                            </div>
                            <div class="element__product-title">
                                Laptop Gaming MSI Cyborg 15 A12VE 240VN Geforce RTX…
                            </div>

                            <div class="star-rating">
                                <i class="fa-sharp fa-solid fa-star"></i>
                                <i class="fa-sharp fa-solid fa-star"></i>
                                <i class="fa-sharp fa-solid fa-star"></i>
                                <i class="fa-sharp fa-solid fa-star"></i>
                                <i class="fa-sharp fa-solid fa-star"></i>
                            </div>

                            <div class="element__product-costs">
                                <!-- format cost -->
                                {{-- <!-- {{ number_format($number, 0, ',', '.') }} --> --}}
                                <del class="element__product-costs--old">30,490,000 <u>đ</u></del>
                                <div class="element__product-costs--new">26,890,000 <u>đ</u></div>
                            </div>
                        </div>

                        <div class="element__product-details">
                            <div>
                                <img src="{{ asset('images/cpu.png') }}" alt="">
                                <span>i5 13500HX</span>
                            </div>

                            <div>
                                <img src="{{ asset('images/vga.png') }}" alt="">
                                <span>RTX 4060</span>
                            </div>

                            <div>
                                <img src="{{ asset('images/ram.png') }}" alt="">
                                <span>DDR5 16GB</span>
                            </div>

                            <div>
                                <img src="{{ asset('images/storage.png') }}" alt="">
                                <span>512GB</span>
                            </div>

                            <div>
                                <img src="{{ asset('images/baohanh.png') }}" alt="">
                                <span>12 months 3s1</span>
                            </div>

                            <div>
                                <img src="{{ asset('images/screen.png') }}" alt="">
                                <span>16" 2K+ 165Hz</span>
                            </div>
                        </div>
                    </a>

                    <a href="details.html" class="list__product">
                        <span class="inner__text">-12%</span>
                        <div class="element__product-info">
                            <div class="element__product-info--img">
                                <img src="{{ asset('images/laptop2.png') }}" alt=""
                                    class="element__product-img">
                            </div>
                            <div class="element__product-title">
                                Laptop Gaming MSI Cyborg 15 A12VE 240VN Geforce RTX…
                            </div>

                            <div class="star-rating">
                                <i class="fa-sharp fa-solid fa-star"></i>
                                <i class="fa-sharp fa-solid fa-star"></i>
                                <i class="fa-sharp fa-solid fa-star"></i>
                                <i class="fa-sharp fa-solid fa-star"></i>
                                <i class="fa-sharp fa-solid fa-star"></i>
                            </div>

                            <div class="element__product-costs">
                                <del class="element__product-costs--old">30,490,000 <u>đ</u></del>
                                <div class="element__product-costs--new">26,890,000 <u>đ</u></div>
                            </div>
                        </div>

                        <div class="element__product-details">
                            <div>
                                <img src="{{ asset('images/cpu.png') }}" alt="">
                                <span>i5 13500HX</span>
                            </div>

                            <div>
                                <img src="{{ asset('images/vga.png') }}" alt="">
                                <span>RTX 4060</span>
                            </div>

                            <div>
                                <img src="{{ asset('images/ram.png') }}" alt="">
                                <span>DDR5 16GB</span>
                            </div>

                            <div>
                                <img src="{{ asset('images/storage.png') }}" alt="">
                                <span>512GB</span>
                            </div>

                            <div>
                                <img src="{{ asset('images/baohanh.png') }}" alt="">
                                <span>12 months 3s1</span>
                            </div>

                            <div>
                                <img src="{{ asset('images/screen.png') }}" alt="">
                                <span>16" 2K+ 165Hz</span>
                            </div>
                        </div>
                    </a>

                    <a href="details.html" class="list__product">
                        <span class="excerpt">FREE 8GB DDR5 RAM</span>
                        <div class="element__product-info">
                            <div class="element__product-info--img">
                                <img src="{{ asset('images/laptop3.png') }}" alt=""
                                    class="element__product-img">
                            </div>
                            <div class="element__product-title">
                                Laptop Gaming MSI Cyborg 15 A12VE 240VN Geforce RTX…
                            </div>

                            <div class="star-rating">
                                <i class="fa-sharp fa-solid fa-star"></i>
                                <i class="fa-sharp fa-solid fa-star"></i>
                                <i class="fa-sharp fa-solid fa-star"></i>
                                <i class="fa-sharp fa-solid fa-star"></i>
                                <i class="fa-sharp fa-solid fa-star"></i>
                            </div>

                            <div class="element__product-costs">
                                <del class="element__product-costs--old">30,490,000 <u>đ</u></del>
                                <div class="element__product-costs--new">26,890,000 <u>đ</u></div>
                            </div>
                        </div>

                        <div class="element__product-details">
                            <div>
                                <img src="{{ asset('images/cpu.png') }}" alt="">
                                <span>i5 13500HX</span>
                            </div>

                            <div>
                                <img src="{{ asset('images/vga.png') }}" alt="">
                                <span>RTX 4060</span>
                            </div>

                            <div>
                                <img src="{{ asset('images/ram.png') }}" alt="">
                                <span>DDR5 16GB</span>
                            </div>

                            <div>
                                <img src="{{ asset('images/storage.png') }}" alt="">
                                <span>512GB</span>
                            </div>

                            <div>
                                <img src="{{ asset('images/baohanh.png') }}" alt="">
                                <span>12 months 3s1</span>
                            </div>

                            <div>
                                <img src="{{ asset('images/screen.png') }}" alt="">
                                <span>16" 2K+ 165Hz</span>
                            </div>
                        </div>
                    </a>

                    <a href="details.html" class="list__product">
                        <span class="excerpt">Free 8GB RAM</span>
                        <span class="inner__text">-14%</span>
                        <div class="element__product-info">
                            <div class="element__product-info--img">
                                <img src="{{ asset('images/laptop.png') }}" alt="" class="element__product-img">
                            </div>
                            <div class="element__product-title">
                                Laptop Gaming MSI Cyborg 15 A12VE 240VN Geforce RTX…
                            </div>

                            <div class="star-rating">
                                <i class="fa-sharp fa-solid fa-star"></i>
                                <i class="fa-sharp fa-solid fa-star"></i>
                                <i class="fa-sharp fa-solid fa-star"></i>
                                <i class="fa-sharp fa-solid fa-star"></i>
                                <i class="fa-sharp fa-solid fa-star"></i>
                            </div>

                            <div class="element__product-costs">
                                <del class="element__product-costs--old">30,490,000 <u>đ</u></del>
                                <div class="element__product-costs--new">26,890,000 <u>đ</u></div>
                            </div>
                        </div>

                        <div class="element__product-details">
                            <div>
                                <img src="{{ asset('images/cpu.png') }}" alt="">
                                <span>i5 13500HX</span>
                            </div>

                            <div>
                                <img src="{{ asset('images/vga.png') }}" alt="">
                                <span>RTX 4060</span>
                            </div>

                            <div>
                                <img src="{{ asset('images/ram.png') }}" alt="">
                                <span>DDR5 16GB</span>
                            </div>

                            <div>
                                <img src="{{ asset('images/storage.png') }}" alt="">
                                <span>512GB</span>
                            </div>

                            <div>
                                <img src="{{ asset('images/baohanh.png') }}" alt="">
                                <span>12 months 3s1</span>
                            </div>

                            <div>
                                <img src="{{ asset('images/screen.png') }}" alt="">
                                <span>16" 2K+ 165Hz</span>
                            </div>
                        </div>
                    </a>

                    <a href="details.html" class="list__product">
                        <span class="inner__text">-14%</span>
                        <span class="excerpt">VOUCHER 1.000.000 VNĐ</span>
                        <div class="element__product-info">
                            <div class="element__product-info--img">
                                <img src="{{ asset('images/laptop4.png') }}" alt=""
                                    class="element__product-img">
                            </div>

                            <div class="element__product-title">
                                Laptop Gaming MSI Cyborg 15 A12VE 240VN Geforce RTX…
                            </div>

                            <div class="star-rating">
                                <i class="fa-sharp fa-solid fa-star"></i>
                                <i class="fa-sharp fa-solid fa-star"></i>
                                <i class="fa-sharp fa-solid fa-star"></i>
                                <i class="fa-sharp fa-solid fa-star"></i>
                                <i class="fa-sharp fa-solid fa-star"></i>
                            </div>

                            <div class="element__product-costs">
                                <del class="element__product-costs--old">30,490,000 <u>đ</u></del>
                                <div class="element__product-costs--new">26,890,000 <u>đ</u></div>
                            </div>
                        </div>

                        <div class="element__product-details">
                            <div>
                                <img src="{{ asset('images/cpu.png') }}" alt="">
                                <span>i5 13500HX</span>
                            </div>

                            <div>
                                <img src="{{ asset('images/vga.png') }}" alt="">
                                <span>RTX 4060</span>
                            </div>

                            <div>
                                <img src="{{ asset('images/ram.png') }}" alt="">
                                <span>DDR5 16GB</span>
                            </div>

                            <div>
                                <img src="{{ asset('images/storage.png') }}" alt="">
                                <span>512GB</span>
                            </div>

                            <div>
                                <img src="{{ asset('images/baohanh.png') }}" alt="">
                                <span>12 months 3s1</span>
                            </div>

                            <div>
                                <img src="{{ asset('images/screen.png') }}" alt="">
                                <span>16" 2K+ 165Hz</span>
                            </div>
                        </div>
                    </a>

                    <a href="details.html" class="list__product">
                        <span class="excerpt">FREE 8GB DDR5 RAM</span>
                        <span class="inner__text">-10%</span>
                        <div class="element__product-info">
                            <div class="element__product-info--img">
                                <img src="{{ asset('images/laptop1.png') }}" alt=""
                                    class="element__product-img">
                            </div>
                            <div class="element__product-title">
                                Laptop Gaming MSI Cyborg 15 A12VE 240VN Geforce RTX…
                            </div>

                            <div class="star-rating">
                                <i class="fa-sharp fa-solid fa-star"></i>
                                <i class="fa-sharp fa-solid fa-star"></i>
                                <i class="fa-sharp fa-solid fa-star"></i>
                                <i class="fa-sharp fa-solid fa-star"></i>
                                <i class="fa-sharp fa-solid fa-star"></i>
                            </div>

                            <div class="element__product-costs">
                                <del class="element__product-costs--old">30,490,000 <u>đ</u></del>
                                <div class="element__product-costs--new">26,890,000 <u>đ</u></div>
                            </div>
                        </div>

                        <div class="element__product-details">
                            <div>
                                <img src="{{ asset('images/cpu.png') }}" alt="">
                                <span>i5 13500HX</span>
                            </div>

                            <div>
                                <img src="{{ asset('images/vga.png') }}" alt="">
                                <span>RTX 4060</span>
                            </div>

                            <div>
                                <img src="{{ asset('images/ram.png') }}" alt="">
                                <span>DDR5 16GB</span>
                            </div>

                            <div>
                                <img src="{{ asset('images/storage.png') }}" alt="">
                                <span>512GB</span>
                            </div>

                            <div>
                                <img src="{{ asset('images/baohanh.png') }}" alt="">
                                <span>12 months 3s1</span>
                            </div>

                            <div>
                                <img src="{{ asset('images/screen.png') }}" alt="">
                                <span>16" 2K+ 165Hz</span>
                            </div>
                        </div>
                    </a>

                    @foreach ($products as $product)
                        @if ($product->id_typeProduct == 1)
                            <a href="details/{{ $product->id }}/{{ $product -> name }}" class="list__product">
                                <span class="excerpt">FREE 8GB DDR5 RAM</span>
                                <span class="inner__text">-10%</span>
                                <div class="element__product-info">
                                    <div class="element__product-info--img">
                                        <img src="{{asset('images/' . $product -> image)}}" alt="" class="element__product-img">
                                    </div>
                                    <div class="element__product-title">
                                        {{ Str::limit($product->name, $limit = 51, $end = '...') }}

                                    </div>

                                    <div class="star-rating">
                                        <i class="fa-sharp fa-solid fa-star"></i>
                                        <i class="fa-sharp fa-solid fa-star"></i>
                                        <i class="fa-sharp fa-solid fa-star"></i>
                                        <i class="fa-sharp fa-solid fa-star"></i>
                                        <i class="fa-sharp fa-solid fa-star"></i>
                                    </div>

                                    <div class="element__product-costs">
                                        <del class="element__product-costs--old">30,490,000 <u>đ</u></del>
                                        <div class="element__product-costs--new">
                                            {{ number_format($product->cost, 0, ',', ',') }}
                                            <u>đ</u>
                                        </div>
                                    </div>
                                </div>

                                <div class="element__product-details">
                                    <div>
                                        <img src="{{ asset('images/cpu.png') }}" alt="">
                                        <span>{{ $product->cpu }}</span>
                                    </div>

                                    <div>
                                        <img src="{{ asset('images/vga.png') }}" alt="">
                                        <span>{{ $product->gpu }}</span>
                                    </div>

                                    <div>
                                        <img src="{{ asset('images/ram.png') }}" alt="">
                                        <span>{{ $product->ram }}</span>
                                    </div>

                                    <div>
                                        <img src="{{ asset('images/storage.png') }}" alt="">
                                        <span>{{ $product->storage }}</span>
                                    </div>

                                    <div>
                                        <img src="{{ asset('images/baohanh.png') }}" alt="">
                                        <span>{{ $product->warranty_period }}</span>
                                    </div>

                                    <div>
                                        <img src="{{ asset('images/screen.png') }}" alt="">
                                        <span>{{ $product->screen_size }}</span>
                                    </div>
                                </div>
                            </a>
                        @endif
                    @endforeach

                </div>

                <div class="view__all-products">
                    <a href="$$" class="view__all-products-link">
                        <i class="far fa-eye fa-bounce "></i>
                        <span> View all products >></span>
                    </a>
                </div>
            </div>
        </div>
    </main>
@endsection
