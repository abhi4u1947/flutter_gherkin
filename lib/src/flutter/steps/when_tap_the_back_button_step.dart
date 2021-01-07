import 'package:flutter_gherkin/src/flutter/adapters/app_driver_adapter.dart';
import 'package:flutter_gherkin/src/flutter/flutter_world.dart';
import 'package:gherkin/gherkin.dart';

/// Taps the back button widget
///
/// Examples:
///
///   `When I tap the back button"`
///   `When I tap the back element"`
///   `When I tap the back widget"`
StepDefinitionGeneric WhenTapBackButtonWidget() {
  return when<FlutterWorld>(
    RegExp(r'I tap the back (?:button|element|widget|icon|text)$'),
    (context) async {
      await context.world.appDriver.tap(
        context.world.appDriver.findBy(null, FindType.pageBack),
      );
    },
  );
}