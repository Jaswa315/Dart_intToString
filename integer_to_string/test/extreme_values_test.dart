// test/extreme_values_test.dart
import 'package:test/test.dart';
import 'package:integer_to_string/integer_to_string.dart';

void main() {
  group('Extreme Values Test', () {
    test('Test with zero', () {
      expect(IntegerToStringConverter.convertIntToString(0), equals('Zero'));
    });

    test('Test with maximum 32-bit integer value (2^31 - 1)', () {
      expect(
        IntegerToStringConverter.convertIntToString(2147483647),
        equals(
            'Two Billion One Hundred Forty Seven Million Four Hundred Eighty Three Thousand Six Hundred Forty Seven'),
      );
    });
  });
}
