void main() {
  Item product = Item(
    'Cola',
    10,
    1200,
  );
  product.calculateTotal();
  product.printReceipt();

  PhysicalProduct sugar = PhysicalProduct('Sugar', 0, 100, 20);
  sugar.printReceipt();
  DigitalProduct eBook =
      DigitalProduct('Professional Webdeveloper', 1, 50000, 'www.download.com');
  eBook.printReceipt();
}

abstract class Receipt {
  void printReceipt();
} // abstract class for printing Receipt for each sales

mixin DiscountCalculator {
  double discountCalculator(double price, double discount, int quantity) {
    double discountPrice = price * discount / 100;
    double totalCost = price * quantity;
    return totalCost - discountPrice;
  }
}

class Item extends Receipt with DiscountCalculator {
  String productName;
  int quantity;
  double price;
  double? discountPercentage;
  Item(this.productName, this.quantity, this.price, [this.discountPercentage]);
  double calculateTotal() {
    return (discountPercentage != null)
        ? discountCalculator(price, discountPercentage!, quantity)
        : price * quantity;
  }

  @override
  void printReceipt() {
    double total = calculateTotal();
    (discountPercentage != null)
        ? print(
            '$quantity $productName * $price (Discount $discountPercentage %) = $total ks')
        : print('$quantity $productName * $price = $total ks');
  }
}

class DigitalProduct extends Item {
  String? downloadLink;

  DigitalProduct(super.productName, super.quantity, super.price,
      [this.downloadLink]);

  @override
  void printReceipt() {
    if (downloadLink != null) {
      print('Download from $downloadLink');
    }
  }
}

class PhysicalProduct extends DigitalProduct {
  double? weight;
  PhysicalProduct(super.productName, super.quantity, super.price,
      [this.weight]);
  @override
  void printReceipt() {
    if (weight != null) {
      print('net weight : $weight g');
    }
  }
}
