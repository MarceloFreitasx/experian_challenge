import 'dart:convert';

import 'package:crypto/crypto.dart' as crypto;

class Crypto {
  static String toMD5(String value) => crypto.md5.convert(utf8.encode(value)).toString();
}
