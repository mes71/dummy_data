library dummy_data;

import 'package:dummy_data/data/constants.dart';

class Dummy {
  Dummy._();

  late int word;

  static String getWord(int word) {
    StringBuffer buffer = StringBuffer();
    for (int i = 0; i < word; i++) {
      buffer.write(wordEn.elementAt(i));
      if(i < word - 1){
        buffer.write(" ");
      }

    }
    return buffer.toString();
  }
}
