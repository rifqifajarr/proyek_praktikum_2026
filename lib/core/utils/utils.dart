import 'dart:math';

import 'package:flutter/material.dart';

/// Returns the size of the media in the given [BuildContext].
///
/// This function uses the [MediaQuery] widget to obtain the size of the
/// screen or parent widget in the provided [context].
///
/// Example usage:
/// ```dart
/// Size screenSize = size(context);
/// ```
///
/// - Parameter context: The [BuildContext] from which to obtain the media size.
/// - Returns: A [Size] object representing the width and height of the media.
Size size(BuildContext context) => MediaQuery.of(context).size;

/// Generates a random string of the specified length.
///
/// The generated string will contain a mix of uppercase and lowercase
/// letters, as well as digits.
///
/// [length] specifies the length of the generated string. It must be a
/// positive integer.
///
/// Returns a random string of the specified length.
///
/// Example:
/// ```dart
/// String result = randomString(10);
/// print(result); // Output: a random string of 10 characters
/// ```
String randomString(int length) {
  const chars =
      'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
  Random rnd = Random();
  return String.fromCharCodes(
    Iterable.generate(
      length,
      (_) => chars.codeUnitAt(rnd.nextInt(chars.length)),
    ),
  );
}
