import 'package:hive_flutter/hive_flutter.dart';

class FavoriteLocalDataSource {
  static const String boxName = 'favorites';

  Future<bool> toggleFavorite(int id) async {
    final box = Hive.box(boxName);

    if (box.containsKey(id)) {
      await box.delete(id);
      print('Removed: $id');
      print(box.keys.toList());

      return false;
    } else {
      await box.put(id, true);
      print('Saved: $id');
      print(box.keys.toList());
      return true;
    }
  }

  bool isFavorite(int id) {
    final box = Hive.box(boxName);
    final result = box.get(id, defaultValue: false);

    print('Product $id => $result');
    return result;
  }
}
