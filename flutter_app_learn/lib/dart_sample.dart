import 'package:flutter/material.dart';

class Meta {
  double price;
  String name;

  Meta(this.name, this.price);
}

class Item extends Meta {
  Item(name, price) : super(name, price);

  Item operator +(Item item) => Item(name + item.name, price + item.price);
}

abstract class PrintHelper {
  printInfo() => print(getInfo());

  getInfo();
}

class ShoppingCart extends Meta with PrintHelper {
  DateTime date;
  String code;
  List<Item> bookings;

  double get price =>
      bookings.reduce((value, element) => value + element).price;

  ShoppingCart({name}) : this.withCode(name: name, code: null);

  ShoppingCart.withCode({name, this.code})
      : date = DateTime.now(),
        super(name, 0);

  @override
  getInfo() => '''
购物车信息:
-----------------------------
  用户名: $name
  优惠码: ${code??"没有"}
  总价: $price
  Date: $date
-----------------------------
''';
}

void main() {
  ShoppingCart.withCode(name: "zhangsan",code: "12345")
      ..bookings = [Item("pingguo", 10.0)]
      ..printInfo();

}