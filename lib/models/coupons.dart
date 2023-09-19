class Coupons {
  final String id;
  final String name;
  final int value;

  Coupons({
    required this.id,
    required this.name,
    required this.value,
  });
}

List<Coupons> coupons = [
  Coupons(
    id: '1',
    name: 'Employee coupons',
    value: 1,
  ),
  Coupons(
    id: '2',
    name: 'Tariq coupons',
    value: 2,
  ),
];
