import 'package:dummy_data/data/constants.dart';
import 'package:dummy_data/dummy_data.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group(" Word generator Test", () {
    test('Test getWord method', () {
      int numberOfWords = 150;
      String result = Dummy.getWord(numberOfWords);
      expect(result.split(" ").length, numberOfWords);
    });

    test('Test getWord method', () {
      // Arrange
      int numberOfWords = 5;
      String expectedWords =
          List.from(wordEn).sublist(0, numberOfWords).join(" ");
      // Act
      String result = Dummy.getWord(numberOfWords);
      // Assert
      expect(result, expectedWords);
    });
  });
}
