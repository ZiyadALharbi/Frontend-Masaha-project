class Api with ConstApi, AuthEndpoint, CustomerEndPoint, OwnerEndPoint {}

mixin ConstApi {
  String url = "10.0.2.2:8080";
}

mixin AuthEndpoint {
  String createAccount = "/auth/create-account";
  String loginAccount = "/auth/login";
}

mixin CustomerEndPoint {
  String productType = "/customer/product-type";
  String displayType = '/customer/display-type/';
}

mixin OwnerEndPoint {
  String addProduct = "/owner/add-product";
  String addProductImage = '/owner/add-product-image/';
  String cancelReservationOwner = '/owner/cancel-reservation-owner';
}
