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
  String addToBookmark = "/customer/add-to-bookmark";
  String deleteBookmark = "/customer/remove-from-bookmark";
  String displayProduct = "/customer/display-product";
  String displayBookmark = "/customer/display-bookmark";
  String displayReservationCustomer = '/customer/display-customer-reservations';
  String addReservationCustomer = '/customer/add-reservation';
}
mixin OwnerEndPoint {
  String displayReservationOwner = '/owner/display-owner-reservations';
  String addProduct = "/owner/add-product";
  String addProductImage = '/owner/add-product-image/';
  String cancelReservationOwner = '/owner/cancel-reservation-owner';
  String displayOwnerProduct = '/owner/display-owner-product';
  String deleteProduct = "/owner/delete-product/";
}
