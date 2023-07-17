import 'dart:typed_data';


class HashKey {
  static Map<String, String> keyMap = {};

  static String hashStr(String text) {
    int hash = 5381;
    int index = text.length;

    while (index > 0) {
      hash = (hash * 33) ^ text.codeUnitAt(--index);
    }

    final int hash32 = hash >>> 0;
    final Uint32List buffer = Uint32List.fromList([hash32]);
    final String base36Str = "0000${buffer.map((num) => num.toRadixString(36)).join("")}";
    final key = "k_${(base36Str).substring(base36Str.length - 7)}";

    return key;
  }

  static String getHashKey(String value) {
    String key = keyMap[value] ?? hashStr(value.replaceAll(RegExp(r'\s+'), ''));
    keyMap[value] = key;
    return key;
  }
}