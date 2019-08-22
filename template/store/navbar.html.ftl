<nav class="navbar navbar-expand-md navbar-dark bg-dark">
    <div class="d-flex flex-column moqui-navbar">
        <div class="container d-flex flex-row main-navbar">
            <a class="navbar-brand d-none d-sm-block"  href="/store">
                <img height="60px" class="moqui-logo moqui-logo1" src="/store/assets/moqui-logo.svg" alt="">
                <span class="font-italic navbar-title">MoquiCon</span>
            </a>
            <a class="navbar-brand d-block d-sm-none" href="/store">
                <span class="font-italic navbar-title">POP Shop</span>
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#nav_collapse1" 
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="navbar-collapse collapse">

                <!-- Right aligned nav items -->
                <ul class="navbar-nav ml-auto">
                    <div class="text-secondary">
                        <span class="navbar-pop-title">Official MoquiCon 2019</span>
                    </div>
                </ul>
            </div>
        </div>
        <div id="nav_collapse1" class="container navbar-collapse collapse">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" href="/store/tickets">
                        Tickets
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/store/venue">
                        Venue
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/store/schedule">
                        Schedule
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/store/sponsors">
                        Sponsors
                    </a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="/store/contact">
                        Contact
                    </a>
                </li>
            </ul>

            <!-- Right aligned nav items -->
            <ul class="navbar-nav ml-auto">


                 <#assign cartCount = 0>
                    <#if cartInfo.orderItemList??>
                        <#list cartInfo.orderItemList as item>
                            <#if item.itemTypeEnumId == "ItemProduct">
                                <#assign cartCount = cartCount + (item.quantity!1)>
                            </#if>
                        </#list>
                    </#if>
                <li class="nav-item">
                    <#if cartCount gt 0>
                        <a class="nav-link" href="/store/d#/checkout">
                    <#else>
                        <a class="nav-link pointer" data-toggle="modal" data-target="#emptyCartModal">
                    </#if>
                        <span class="cart-quantity" id="cart-quantity">

                            ${cartCount}
                        </span>
                        <i class="fa fa-shopping-cart"></i>  
                        Cart
                    </a>
                </li>
                <li class="nav-item d-block d-sm-block d-md-none">
                    <div class="search-input">
                        <input type="text" placeholder="Search...">
                        <button class="search-button">
                            <i class="fa fa-search"></i>
                        </button>
                    </div>
                </li>
            </ul>
        </div>
    </div>
</nav>
<div class="modal fade" id="emptyCartModal" tabindex="-1" role="dialog" aria-labelledby="emptyCartModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title justify-content-center" id="emptyCartModalLabel">Your cart is empty.</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
                </button>
            </div>
        <div class="modal-body">
            Add a product to your cart (or a few!) before going to the check out.
        </div>
        <div class="modal-footer">
            <button type="button" class="btn btn-info" data-dismiss="modal">Close</button>
        </div>
        </div>
    </div>
</div>
</div>
