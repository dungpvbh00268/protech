@extends('layouts/dashboard')

@section('contentDashboard')
    <div class="col-lg-9">
        <div class="chart">
            <canvas id="myChart" aria-label="Site statistics" role="img"></canvas>
        </div>
        <div class="users-table table-wrapper">
            <table class="posts-table">
                <thead>
                    <tr class="users-table-info">
                        <th>
                            <label class="users-table__checkbox ms-20">
                                <input type="checkbox" class="check-all">Thumbnail
                            </label>
                        </th>
                        <th>Title</th>
                        <th>Author</th>
                        <th>Status</th>
                        <th>Date</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>
                            <label class="users-table__checkbox">
                                <input type="checkbox" class="check">
                                <div class="categories-table-img">
                                    <picture>
                                        <source srcset="{{ asset('./img/categories/01.webp') }}" type="image/webp"><img
                                            src="{{ url('./img/categories/01.jpg') }}" alt="category">
                                    </picture>
                                </div>
                            </label>
                        </td>
                        <td>
                            Starting your traveling blog with Vasco
                        </td>
                        <td>
                            <div class="pages-table-img">
                                <picture>
                                    <source srcset="{{ asset('./img/avatar/avatar-face-04.webp') }}" type="image/webp"><img
                                        src="{{ asset('./img/avatar/avatar-face-04.png') }}" alt="User Name">
                                </picture>
                                Jenny Wilson
                            </div>
                        </td>
                        <td><span class="badge-pending">Pending</span></td>
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
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
@endsection
