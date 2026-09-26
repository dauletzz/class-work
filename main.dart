double processOrder({
  required int orderId,
  required double itemPrice,
  String? promoCode,
  double? deliveryFee,
}) {
  double discount = 0;
  if (promoCode == 'SAVE10'){
    discount = itemPrice * 0.1;
  }
  double deliveryFee1 = deliveryFee ?? 500.0;
  double total = (itemPrice - discount) + deliveryFee1;
  print('Total: $total ₸\n');
  return total;
}

void main() {
  processOrder(
    orderId: 1,
    itemPrice: 10000.0,
    promoCode: 'SAVE10',
  );
}
