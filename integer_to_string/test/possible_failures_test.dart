// test/probable_failures_test.dart
import 'package:test/test.dart';
import 'package:integer_to_string/integer_to_string.dart';

void main() {
  group('Probable Failure Cases Test', () {
    test('Test with 9999', () {
      expect(IntegerToStringConverter.convertIntToString(9999),
          equals('Nine Thousand Nine Hundred Ninety Nine'));
    });

    test('Test with 99999', () {
      expect(IntegerToStringConverter.convertIntToString(99999),
          equals('Ninety Nine Thousand Nine Hundred Ninety Nine'));
    });

    test('Test with 100000 (One Hundred Thousand)', () {
      expect(IntegerToStringConverter.convertIntToString(100000),
          equals('One Hundred Thousand'));
    });

    test(
        'Test with 1234567 (One Million Two Hundred Thirty Four Thousand Five Hundred Sixty Seven)',
        () {
      expect(
        IntegerToStringConverter.convertIntToString(1234567),
        equals(
            'One Million Two Hundred Thirty Four Thousand Five Hundred Sixty Seven'),
      );
    });
  });
}
