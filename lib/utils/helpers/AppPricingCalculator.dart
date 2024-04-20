class AppPricingCalculator {
  // CALCULATE PRICE BASED ON TAX AND SHIPPING
  static double calculateTotalPrice({required double productPrice, required String location}){
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;

    double shippingCost = getShippingCost(location);

    double totalPrice = productPrice + taxAmount + shippingCost;
    return totalPrice;
  }


  // CALCULATE SHIPPING COST
  static String calculateShippingCost({required double productPrice,required String location}){
    double shippingCost = getShippingCost(location);
    return shippingCost.toStringAsFixed(2);
  }

  // CALCULATE TAX
  static String calculateTax({required double productPrice, required String location}){
     double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;
    return taxAmount.toStringAsFixed(2);

  }

  static double getTaxRateForLocation(String location){
    return 0.10;
  }
  static double getShippingCost(String location){
    return 5.10;
  }

  // static double calculateCartTotal(CartModel cart){
  //   return cart.items.map((e) => e.price).fold(0, (previousPrice, currentPrice) => previousPrice+ (currentPrice ?? 0));
  // }
}