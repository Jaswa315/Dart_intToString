// test/failing_cases_test.dart
import 'package:test/test.dart';
import 'package:integer_to_string/integer_to_string.dart';

void main() {
  group('Failing Cases Test', () {
    test('Test with negative number -1', () {
      expect(() => IntegerToStringConverter.convertIntToString(-1),
          throwsArgumentError);
    });

    test('Test with another negative number -1000', () {
      expect(() => IntegerToStringConverter.convertIntToString(-1000),
          throwsArgumentError);
    });

    test('Test with negative of max 32-bit integer (-2147483647)', () {
      expect(() => IntegerToStringConverter.convertIntToString(-2147483647),
          throwsArgumentError);
    });
  });
}
