import 'package:grinder/grinder.dart';

main(args) => grind(args);

@Task()
test() => new TestRunner().testAsync();

@DefaultTask()
@Depends(test)
build() {
  Pub.build();
}

@Task()
gen() {
  Pub.runAsync("build_runner",
      arguments: ["watch", "--delete-conflicting-outputs"]);
}

@Task()
clean() => defaultClean();
