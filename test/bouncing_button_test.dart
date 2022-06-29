import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:bouncing_button/bouncing_button.dart';

void main() {
  test('adds one to input values', () {
    final bouncingButton = BouncingButton(
      child: const Icon(Icons.favorite),
      onPressed: () {
        debugPrint("pressed!");
      },
    );
  });
}
