// test/basic_test.dart
import 'package:test/test.dart';
import 'package:integer_to_string/integer_to_string.dart';

/// Runs tests to verify that [IntegerToStringConverter.convertIntToString]
/// performs the following:
/// * Successfully converts a basic number (3) to a string ('Three').

void main() {
  group('Basic Functionality Test', () {
    test('Test with a basic number 3', () {
      expect(IntegerToStringConverter.convertIntToString(3), equals('Three'));
    });
  });
}
