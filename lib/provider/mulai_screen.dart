import 'package:flutter/foundation.dart';

class MulaiScreen with ChangeNotifier {
  bool _tipeTanya = true; // tipe teks = true, tipe gambar = false
  bool get tipeTanya => _tipeTanya;
  set tipeTanya(bool value) {
    _tipeTanya = value;
    notifyListeners();
  }

  bool _tipeJawab = true; // tipe teks = true, tipe gambar = false
  bool get tipeJawab => _tipeJawab;
  set tipeJawab(bool value) {
    _tipeJawab = value;
    notifyListeners();
  }

  bool _tipePenjelasan = true; // tipe teks = true, tipe gambar = false
  bool get tipePenjelasan => _tipePenjelasan;
  set tipePenjelasan(bool value) {
    _tipePenjelasan = value;
    notifyListeners();
  }

}
