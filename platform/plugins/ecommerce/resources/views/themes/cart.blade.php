<div class="container mb-80">
    <div class="row">
        <div class="col-sm-12">
            <article class="post-8">
                <meta
                    name="csrf-token"
                    content="{{ csrf_token() }}"
                >
                <div class="container mb-80">
                    <div class="row">
                        <div class="col-sm-12">
                            <article class="post-8">
                                @if (session()->has('success_msg'))
                                    <div class="alert alert-success">
                                        <span>{{ session('success_msg') }}</span>
                                    </div>
                                @endif

                                @if (session()->has('error_msg'))
                                    <div class="alert alert-warning">
                                        <span>{{ session('error_msg') }}</span>
                                    </div>
                                @endif

                                @if (isset($errors) && count($errors->all()) > 0)
                                    <div class="alert alert-warning">
                                        @foreach ($errors->all() as $error)
                                            <p>{{ $error }}</p>
                                        @endforeach
                                    </div>
                                @endif

                                @if (Cart::instance('cart')->isNotEmpty())
                                    <form
                                        class="cart-form"
                                        method="post"
                                        action="{{ route('public.cart.update') }}"
                                    >
                                        @csrf
                                        <div class="cart-product-table-wrap responsive-table">
                                            <table>
                                                <thead>
                                                    <tr>
                                                        <th class="product-remove"></th>
                                                        <th class="product-thumbnail"></th>
                                                        <th class="product-name">{{ __('Product') }}</th>
                                                        <th class="product-price">{{ __('Price') }}</th>
                                                        <th class="product-quantity">{{ __('Quantity') }}</th>
                                                        <th class="product-subtotal">{{ __('Total') }}</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    @if (isset($products) && $products)

                                                        @foreach (Cart::instance('cart')->content() as $key => $cartItem)
                                                            @php
                                                                $product = $products->where('id', $cartItem->id)->first();
                                                            @endphp

                                                            @if ($product)
                                                                <tr>
                                                                    <td
                                                                        data-title="{{ trans('plugins/ecommerce::products.delete') }}">
                                                                        <a
                                                                            class="remove text-danger"
                                                                            href="{{ route('public.cart.remove', $cartItem->rowId) }}"
                                                                            title="{{ __('Delete product') }}"
                                                                        >
                                                                            <i
                                                                                class="fa fa-times-circle"
                                                                                aria-hidden="true"
                                                                            ></i>
                                                                        </a>
                                                                    </td>
                                                                    <td class="product-thumbnail">
                                                                        <a
                                                                            href="{{ $product->original_product->url }}">
                                                                            <img
                                                                                src="{{ $cartItem->options['image'] }}"
                                                                                alt="{{ $product->original_product->name }}"
                                                                            />
                                                                        </a>
                                                                    </td>

                                                                    <td
                                                                        class="product-name"
                                                                        data-title="{{ __('Product Name') }}"
                                                                    >
                                                                        <a
                                                                            href="{{ $product->original_product->url }}">{{ $product->original_product->name }}
                                                                            @if ($product->isOutOfStock())
                                                                                <span
                                                                                    class="stock-status-label">({!! $product->stock_status_html !!})</span>
                                                                            @endif
                                                                        </a>
                                                                        <p class="mb-0">
                                                                            <span
                                                                                class="text-muted">{{ $cartItem->options['attributes'] ?? '' }}</span>
                                                                        </p>

                                                                        @if (!empty($cartItem->options['options']))
                                                                            {!! render_product_options_html(
                                                                                $cartItem->options['options'],
                                                                                $product->original_product->front_sale_price_with_taxes,
                                                                            ) !!}
                                                                        @endif

                                                                        @include(
                                                                            'plugins/ecommerce::themes.includes.cart-item-options-extras',
                                                                            ['options' => $cartItem->options]
                                                                        )
                                                                    </td>
                                                                    <td
                                                                        class="product-price"
                                                                        data-title="{{ __('Unit Price') }}"
                                                                    >
                                                                        <div
                                                                            class="product__price @if ($product->front_sale_price != $product->price) sale @endif">
                                                                            <span>{{ format_price($cartItem->price) }}</span>
                                                                            @if ($product->front_sale_price != $product->price)
                                                                                <small><del>{{ format_price($product->price) }}</del></small>
                                                                            @endif
                                                                        </div>
                                                                        <input
                                                                            name="items[{{ $key }}][rowId]"
                                                                            type="hidden"
                                                                            value="{{ $cartItem->rowId }}"
                                                                        >
                                                                    </td>
                                                                    <td
                                                                        class="product-quantity"
                                                                        data-title="{{ __('Qty') }}"
                                                                    >
                                                                        <div class="product-quantity">
                                                                            <span
                                                                                class="quantity-btn quantityPlus"
                                                                                data-value="+"
                                                                            ></span>
                                                                            <input
                                                                                class="quantity input-lg"
                                                                                name="items[{{ $key }}][values][qty]"
                                                                                type="number"
                                                                                value="{{ $cartItem->qty }}"
                                                                                title="{{ __('Qty') }}"
                                                                                step="1"
                                                                                min="1"
                                                                                max="9"
                                                                            />
                                                                            <span
                                                                                class="quantity-btn quantityMinus"
                                                                                data-value="-"
                                                                            ></span>
                                                                        </div>
                                                                    </td>
                                                                    <td
                                                                        class="product-subtotal"
                                                                        data-title="{{ __('Subtotal') }}"
                                                                    >
                                                                        <span
                                                                            class="amount">{{ format_price($cartItem->price * $cartItem->qty) }}</span>
                                                                    </td>
                                                                </tr>
                                                            @endif
                                                        @endforeach
                                                    @endif
                                                </tbody>
                                            </table>
                                        </div>

                                        <div class="row cart-actions">
                                            <div class="col-md-6">
                                                <div class="coupon">
                                                    @include('plugins/ecommerce::themes.discounts.partials.form')
                                                </div>
                                            </div>
                                            <div class="col-md-6 text-end">
                                                <button
                                                    class="btn btn-md btn-gray"
                                                    type="submit"
                                                >{{ __('Update cart') }}</button>
                                                <button
                                                    class="button-default"
                                                    id="checkout"
                                                    name="checkout"
                                                    type="submit"
                                                >{{ __('Checkout') }}</button>
                                            </div>
                                        </div>

                                    </form>
                                    <div class="cart-collateral">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="relate-product-block row">
                                                    <h3 style="text-align: center; width: 100%;">
                                                        {{ __('Cross-selling products') }}</h3>
                                                    @if (count($crossSellProducts) > 0)
                                                        <div class="container product-carousel mt-3">
                                                            <div class="product-item-4 owl-carousel owl-theme nf-carousel-theme">
                                                                @include('plugins/ecommerce::themes.includes.product-items', ['products' => $crossSellProducts])
                                                            </div>
                                                        </div>
                                                    @endif
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="cart_totals">
                                                    <h3>{{ __('Total') }}</h3>
                                                    <div class="responsive-table">
                                                        <table>
                                                            <tbody>
                                                                <tr class="cart-subtotal">
                                                                    <th>{{ __('Subtotal') }}</th>
                                                                    <td>
                                                                        <span
                                                                            class="product-price-amount amount sub-total-text"
                                                                        >
                                                                            {{ format_price(Cart::instance('cart')->rawSubTotal()) }}
                                                                        </span>
                                                                    </td>
                                                                </tr>

                                                                <tr
                                                                    class="coupon-information @if (session('applied_coupon_code') == null) hidden @endif">
                                                                    <th>{{ __('Coupon code') }}</th>
                                                                    <td>
                                                                        <span
                                                                            class="coupon-code-text">{{ session('applied_coupon_code') }}</span>
                                                                    </td>
                                                                </tr>

                                                                <tr
                                                                    class="discount-amount @if ($couponDiscountAmount == 0) hidden @endif">
                                                                    <th>{{ __('Discount') }}</th>
                                                                    <td>
                                                                        <span
                                                                            class="product-price-amount amount total-discount-amount-text">{{ format_price($couponDiscountAmount) }}</span>
                                                                    </td>
                                                                </tr>

                                                                @if ($promotionDiscountAmount)
                                                                    <tr class="discount-amount">
                                                                        <th>{{ __('Discount promotion') }}</th>
                                                                        <td>
                                                                            <span
                                                                                class="product-price-amount amount promotion-discount-amount-text">{{ format_price($promotionDiscountAmount) }}</span>
                                                                        </td>
                                                                    </tr>
                                                                @endif

                                                                <tr class="order-total">
                                                                    <th>{{ __('Total') }}</th>
                                                                    <td>
                                                                        <span
                                                                            class="product-price-amount amount raw-total-text"
                                                                        >
                                                                            {{ format_price(Cart::instance('cart')->rawTotal() - $promotionDiscountAmount - $couponDiscountAmount) }}
                                                                        </span>
                                                                    </td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                @endif
                            </article>
                        </div>
                    </div>
                </div>
            </article>
        </div>
    </div>
</div>
