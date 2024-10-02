# Dart_intToStr
# Integer to String Conversion in Dart

This project is a demonstration of **Test-Driven Development (TDD)** using Dart. The main objective is to create a Dart program that converts integer values into their English word representation. This project showcases the TDD approach by developing the functionality step-by-step, writing tests before implementing the code, and ensuring the tests pass before moving on.

## Project Overview

The project implements a function that converts an integer to its English word equivalent. This is accomplished using a structured and modular approach. Each aspect of the conversion (ones, tens, hundreds, thousands, millions, billions) is handled separately, and the results are combined to produce a complete word representation of the given number.

For example:

- **Input**: `123456789`
- **Output**: `One Hundred Twenty Three Million Four Hundred Fifty Six Thousand Seven Hundred Eighty Nine`

The implementation considers:
- Basic numbers like 0 through 19.
- Tens like Twenty, Thirty, etc.
- Larger scales like Hundred, Thousand, Million, and Billion.

### Key Features
1. **Positive Integers Only**: The code is designed to handle only positive integers. Any negative inputs will throw an error.
2. **Test-Driven Development**: The project follows the TDD methodology, where test cases are written first, and the code is developed to satisfy these tests.
3. **Unit Tests**: The project includes multiple unit test files, each targeting different scenarios, such as basic functionality, extreme values, probable failure cases, and expected failures.

## Project Structure

The project is organized as follows:

