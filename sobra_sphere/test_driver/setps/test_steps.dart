
/*
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:flutter_driver/flutter_driver.dart';
import 'package:gherkin/gherkin.dart';


class GivenImOnTheHomePage extends GivenWithWorld<FlutterWorld> {
  @override
  Future<void> executeStep() async {
    // Assume the home page is the first screen after app launch
    await world.driver.waitFor(find.byType('Scaffold'));
  }

  @override
  RegExp get pattern => RegExp(r"I am on the home page");
}


class WhenITapTheRestaurantWidget extends WhenWithWorld<FlutterWorld> {
  @override
  Future<void> executeStep() async {
    final surplusWidget = find.byValueKey('surplusFoodWidget');
    await FlutterDriverUtils.tap(world.driver, surplusWidget);
  }

  @override
  RegExp get pattern => RegExp(r"I tap the surplus food widget");
}


class ThenICanSeeTheRestaurantInfo extends ThenWithWorld<FlutterWorld> {
  @override
  Future<void> executeStep() async {
    final restaurantInfo = find.byValueKey('restaurantInfo');
    var exists = await FlutterDriverUtils.isPresent(world.driver, restaurantInfo);
    expectMatch(true, exists);
  }

  @override
  RegExp get pattern => RegExp(r"I can see the restaurant info");
}
*/