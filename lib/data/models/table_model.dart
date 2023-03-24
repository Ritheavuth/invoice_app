class RestaurantTable {
  int id;
  int tableNumber;

  RestaurantTable({required this.id, required this.tableNumber});

  Map<String, dynamic> toMap() {
    ;

    return {
      'id': id,
      'table_number': tableNumber,
    };
  }

  factory RestaurantTable.fromMap(Map<String, dynamic> map) {
    return RestaurantTable(
      id: map['id'],
      tableNumber: map['table_number'],
    );
  }
}
