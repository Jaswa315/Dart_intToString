// lib/integer_to_string.dart
class IntegerToStringConverter {
  static final Map<int, String> ones = {
    0: 'Zero',
    1: 'One',
    2: 'Two',
    3: 'Three',
    4: 'Four',
    5: 'Five',
    6: 'Six',
    7: 'Seven',
    8: 'Eight',
    9: 'Nine',
    10: 'Ten',
    11: 'Eleven',
    12: 'Twelve',
    13: 'Thirteen',
    14: 'Fourteen',
    15: 'Fifteen',
    16: 'Sixteen',
    17: 'Seventeen',
    18: 'Eighteen',
    19: 'Nineteen'
  };

  static final Map<int, String> tens = {
    20: 'Twenty',
    30: 'Thirty',
    40: 'Forty',
    50: 'Fifty',
    60: 'Sixty',
    70: 'Seventy',
    80: 'Eighty',
    90: 'Ninety'
  };

  /// Method to convert integer value to words, only accepts positive integers.
  static String convertIntToString(int value) {
    if (value < 0) {
      throw ArgumentError('Negative numbers are not allowed.');
    }

    if (value == 0) return ones[0]!;

    final StringBuffer result = StringBuffer();

    value = _processScale(result, value, 1000000000, 'Billion');
    value = _processScale(result, value, 1000000, 'Million');
    value = _processScale(result, value, 1000, 'Thousand');
    value = _processScale(result, value, 100, 'Hundred');

    // Handle values less than 100 (tens and ones)
    if (value >= 20) {
      result.write('${tens[value - value % 10]} ');
      value %= 10; // Remove the tens place
    }

    // Append remaining value (ones place)
    if (value > 0) {
      result.write('${ones[value]} ');
    }

    return result.toString().trim();
  }

  static int _processScale(
      StringBuffer result, int value, int scale, String scaleName) {
    if (value >= scale) {
      result.write('${convertIntToString(value ~/ scale)} $scaleName ');
      value %= scale;
    }
    return value;
  }
}
