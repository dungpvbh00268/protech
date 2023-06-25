@extends('layouts/dashboard')

@section('contentDashboard')
    <div class="col-lg-9">

        <div class="users-table table-wrapper">
            <table class="posts-table">
                <thead>
                    <tr class="users-table-info">
                        <th>
                            <label class="users-table__checkbox ms-20">
                                {{-- <input type="checkbox" class="check-all"> --}}
                                <a title="Add a product" style="margin-right: 20px;" class="check-all" href="{{ route('add-Product') }}"><i class="fa-solid fa-plus"></i></a>
                                Thumbnail
                            </label>
                        </th>
                        <th style="min-width: 390px;">Name</th>
                        <th style="    min-width: 120px;">Des-Brand</th>
                        <th style="    min-width: 100px;">Cost</th>
                        <th style="    min-width: 100px;">Cost Old</th>
                        <th style="    min-width: 100px;">CPU</th>
                        <th style="    min-width: 100px;">GPU</th>
                        <th style="    min-width: 100px;">RAM</th>
                        <th style="    min-width: 100px;">Storage</th>
                        <th style="    min-width: 100px;">Screen Size</th>
                        <th style="    min-width: 140px;">Warranty Period</th>
                        <th style="    min-width: 140px;">OS</th>
                        <th style="    min-width: 165px;">Keyboard</th>
                        <th style="    min-width: 160px;">Pin</th>
                        <th style="    min-width: 350px;">Connector</th>
                        <th style="    min-width: 100px;">id_typeProduct</th>
                        <th style="    min-width: 100px;">id_category</th>
                        <th style="    min-width: 100px;">id_brand</th>
                        <th style="    min-width: 100px;">Action</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($products as $product)
                        <tr>
                            <td>
                                <label class="users-table__checkbox">
                                    {{-- <input type="checkbox" class="check"> --}}
                                    <div style="margin-right: 27px;" class="check">{{ $product->id }}</div>
                                    <div class="categories-table-img">
                                        <picture>
                                            <source srcset="{{ asset('images/' . $product->image) }}" type="image/webp"><img
                                                src="{{ asset('images/' . $product->image) }}" alt="category">
                                        </picture>
                                    </div>
                                </label>
                            </td>
                            <td>
                                @if ($product->name == null)
                                    <i>NULL</i>
                                @else
                                    {{ $product->name }}
                                @endif
                            </td>
                            <td>
                                @if ($product->description == null)
                                    <i>NULL</i>
                                @else
                                    {{ $product->description }}
                                @endif
                            </td>
                            <td>
                                @if ($product->cost == null)
                                    <i>NULL</i>
                                @else
                                    {{ number_format($product->cost, 0, ',', ',') }}
                                    <u>đ</u>
                                @endif
                            </td>
                            <td>
                                @if ($product->cost_old == null)
                                    <i>NULL</i>
                                @else
                                    {{ number_format($product->cost_old, 0, ',', ',') }}
                                    <u>đ</u>
                                @endif
                            </td>
                            <td>
                                @if ($product->cpu == null)
                                    <i>NULL</i>
                                @else
                                    {{ $product->cpu }}
                                @endif
                            </td>
                            <td>
                                @if ($product->gpu == null)
                                    <i>NULL</i>
                                @else
                                    {{ $product->gpu }}
                                @endif
                            </td>
                            <td>
                                @if ($product->ram == null)
                                    <i>NULL</i>
                                @else
                                    {{ $product->ram }}
                                @endif
                            </td>
                            <td>
                                @if ($product->storage == null)
                                    <i>NULL</i>
                                @else
                                    {{ $product->storage }}
                                @endif
                            </td>
                            <td>
                                @if ($product->screen_size == null)
                                    <i>NULL</i>
                                @else
                                    {{ $product->screen_size }}
                                @endif
                            </td>
                            <td>
                                @if ($product->warranty_period == null)
                                    <i>NULL</i>
                                @else
                                    {{ $product->warranty_period }}
                                @endif
                            </td>
                            <td>
                                @if ($product->os == null)
                                    <i>NULL</i>
                                @else
                                    {{ $product->os }}
                                @endif
                            </td>
                            <td>
                                @if ($product->keyboard == null)
                                    <i>NULL</i>
                                @else
                                    {{ $product->keyboard }}
                                @endif
                            </td>
                            <td>
                                @if ($product->pin == null)
                                    <i>NULL</i>
                                @else
                                    {{ $product->pin }}
                                @endif
                            </td>
                            <td>
                                @if ($product->connector == null)
                                    <i>NULL</i>
                                @else
                                    {{ $product->connector }}
                                @endif
                            </td>
                            <td>
                                @if ($product->id_typeProduct == null)
                                    <i>NULL</i>
                                @else
                                    {{ $product->id_typeProduct }}
                                @endif
                            </td>
                            <td>
                                @if ($product->id_category == null)
                                    <i>NULL</i>
                                @else
                                    {{ $product->id_category }}
                                @endif
                            </td>
                            <td>
                                @if ($product->id_brand == null)
                                    <i>NULL</i>
                                @else
                                    {{ $product->id_brand }}
                                @endif
                            </td>
                            <td>
                                <span class="p-relative">
                                    <button class="dropdown-btn transparent-btn" type="button" title="More info">
                                        <div class="sr-only">More info</div>
                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                            viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                                            stroke-linecap="round" stroke-linejoin="round"
                                            class="feather feather-more-horizontal" aria-hidden="true">
                                            <circle cx="12" cy="12" r="1"></circle>
                                            <circle cx="19" cy="12" r="1"></circle>
                                            <circle cx="5" cy="12" r="1"></circle>
                                        </svg>
                                    </button>
                                    <ul class="users-item-dropdown dropdown">
                                        <li><a href="update-product/{{ $product->id }}/{{ str_replace('/', '-', $product->name) }}">Edit</a></li>
                                        <li><a href="##">Quick edit</a></li>
                                        <li><a href="##">Trash</a></li>
                                    </ul>
                                </span>
                            </td>
                        </tr>
                    @endforeach

                    {{-- <tr>
                        <td>
                            <label class="users-table__checkbox">
                                <input type="checkbox" class="check">
                                <div class="categories-table-img">
                                    <picture>
                                        <source srcset="{{ asset('./img/categories/02.webp') }}" type="image/webp"><img
                                            src="{{ asset('img/categories/02.jpg') }}" alt="category">
                                    </picture>
                                </div>
                            </label>
                        </td>
                        <td>
                            Start a blog to reach your creative peak
                        </td>
                        <td>
                            <div class="pages-table-img">
                                <picture>
                                    <source srcset="{{ asset('img/avatar/avatar-face-03.webp') }}" type="image/webp"><img
                                        src="{{ asset('img/avatar/avatar-face-03.png') }}" alt="User Name">
                                </picture>
                                Annette Black
                            </div>
                        </td>
                        <td><span class="badge-pending">Pending</span></td>
                        <td>23.04.2021</td>
                        <td>
                            <span class="p-relative">
                                <button class="dropdown-btn transparent-btn" type="button" title="More info">
                                    <div class="sr-only">More info</div>
                                    <i data-feather="more-horizontal" aria-hidden="true"></i>
                                </button>
                                <ul class="users-item-dropdown dropdown">
                                    <li><a href="##">Edit</a></li>
                                    <li><a href="##">Quick edit</a></li>
                                    <li><a href="##">Trash</a></li>
                                </ul>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label class="users-table__checkbox">
                                <input type="checkbox" class="check">
                                <div class="categories-table-img">
                                    <picture>
                                        <source srcset="{{ asset('./img/categories/03.webp') }}" type="image/webp"><img
                                            src="{{ asset('./img/categories/03.jpg') }}" alt="category">
                                    </picture>
                                </div>
                            </label>
                        </td>
                        <td>
                            Helping a local business reinvent itself
                        </td>
                        <td>
                            <div class="pages-table-img">
                                <picture>
                                    <source srcset="{{ asset('./img/avatar/avatar-face-02.web') }}p" type="image/webp"><img
                                        src="{{ asset('./img/avatar/avatar-face-02.png') }}" alt="User Name">
                                </picture>
                                Kathryn Murphy
                            </div>
                        </td>
                        <td><span class="badge-active">Active</span></td>
                        <td>17.04.2021</td>
                        <td>
                            <span class="p-relative">
                                <button class="dropdown-btn transparent-btn" type="button" title="More info">
                                    <div class="sr-only">More info</div>
                                    <i data-feather="more-horizontal" aria-hidden="true"></i>
                                </button>
                                <ul class="users-item-dropdown dropdown">
                                    <li><a href="##">Edit</a></li>
                                    <li><a href="##">Quick edit</a></li>
                                    <li><a href="##">Trash</a></li>
                                </ul>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label class="users-table__checkbox">
                                <input type="checkbox" class="check">
                                <div class="categories-table-img">
                                    <picture>
                                        <source srcset="{{ asset('./img/categories/04.webp') }}" type="image/webp"><img
                                            src="{{ asset('./img/categories/04.jpg') }}" alt="category">
                                    </picture>
                                </div>
                            </label>
                        </td>
                        <td>
                            Caring is the new marketing
                        </td>
                        <td>
                            <div class="pages-table-img">
                                <picture>
                                    <source srcset="{{ asset('./img/avatar/avatar-face-05.webp') }}" type="image/webp"><img
                                        src="{{ asset('./img/avatar/avatar-face-05.png') }}" alt="User Name">
                                </picture>
                                Guy Hawkins
                            </div>
                        </td>
                        <td><span class="badge-active">Active</span></td>
                        <td>17.04.2021</td>
                        <td>
                            <span class="p-relative">
                                <button class="dropdown-btn transparent-btn" type="button" title="More info">
                                    <div class="sr-only">More info</div>
                                    <i data-feather="more-horizontal" aria-hidden="true"></i>
                                </button>
                                <ul class="users-item-dropdown dropdown">
                                    <li><a href="##">Edit</a></li>
                                    <li><a href="##">Quick edit</a></li>
                                    <li><a href="##">Trash</a></li>
                                </ul>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label class="users-table__checkbox">
                                <input type="checkbox" class="check">
                                <div class="categories-table-img">
                                    <picture>
                                        <source srcset="{{ asset('./img/categories/01.webp') }}" type="image/webp"><img
                                            src="{{ asset('./img/categories/01.jpg') }}" alt="category">
                                    </picture>
                                </div>
                            </label>
                        </td>
                        <td>
                            How to build a loyal community online and offline
                        </td>
                        <td>
                            <div class="pages-table-img">
                                <picture>
                                    <source srcset="{{ asset('./img/avatar/avatar-face-03.webp') }}" type="image/webp">
                                    <img src="{{ asset('./img/avatar/avatar-face-03.png') }}" alt="User Name">
                                </picture>
                                Robert Fox
                            </div>
                        </td>
                        <td><span class="badge-active">Active</span></td>
                        <td>17.04.2021</td>
                        <td>
                            <span class="p-relative">
                                <button class="dropdown-btn transparent-btn" type="button" title="More info">
                                    <div class="sr-only">More info</div>
                                    <i data-feather="more-horizontal" aria-hidden="true"></i>
                                </button>
                                <ul class="users-item-dropdown dropdown">
                                    <li><a href="##">Edit</a></li>
                                    <li><a href="##">Quick edit</a></li>
                                    <li><a href="##">Trash</a></li>
                                </ul>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label class="users-table__checkbox">
                                <input type="checkbox" class="check">
                                <div class="categories-table-img">
                                    <picture>
                                        <source srcset="{{ asset('./img/categories/03.webp') }}" type="image/webp"><img
                                            src="{{ asset('./img/categories/03.jpg') }}" alt="category">
                                    </picture>
                                </div>
                            </label>
                        </td>
                        <td>
                            How to build a loyal community online and offline
                        </td>
                        <td>
                            <div class="pages-table-img">
                                <picture>
                                    <source srcset="{{ asset('./img/avatar/avatar-face-03.webp') }}" type="image/webp">
                                    <img src="{{ asset('./img/avatar/avatar-face-03.png') }}" alt="User Name">
                                </picture>
                                Robert Fox
                            </div>
                        </td>
                        <td><span class="badge-active">Active</span></td>
                        <td>17.04.2021</td>
                        <td>
                            <span class="p-relative">
                                <button class="dropdown-btn transparent-btn" type="button" title="More info">
                                    <div class="sr-only">More info</div>
                                    <i data-feather="more-horizontal" aria-hidden="true"></i>
                                </button>
                                <ul class="users-item-dropdown dropdown">
                                    <li><a href="##">Edit</a></li>
                                    <li><a href="##">Quick edit</a></li>
                                    <li><a href="##">Trash</a></li>
                                </ul>
                            </span>
                        </td>
                    </tr> --}}
                </tbody>
            </table>
        </div>
    </div>
@endsection
