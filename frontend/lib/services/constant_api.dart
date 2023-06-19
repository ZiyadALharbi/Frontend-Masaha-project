class Api with ConstApi, AuthEndpoint, CustomerEndPoint, OwnerEndPoint {}

mixin ConstApi {
  String url = "localhost:8080";
}
mixin AuthEndpoint {
  String createAccount = "/auth/create-account";
  String loginAccount = "/auth/login";
  String resetPassword = "/auth/reset-password";
  String confirmPassword = "/auth/confirm-password";
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