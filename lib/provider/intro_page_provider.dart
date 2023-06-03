import 'package:flutter/foundation.dart';

class ListenCurrentPage with ChangeNotifier{

  String _text = 'Next';
  String get text => _text;

  void listenPage(int currentPage){
    // print(currentPage);
    if (currentPage>1) {
      _text = 'Get Start';
    }
    notifyListeners();
  }
}