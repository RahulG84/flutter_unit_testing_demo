import 'package:flutter_test/flutter_test.dart';
import 'package:unit_testing_flutter/counter.dart';

void main() {
  //arrange
  Counter counter = Counter();

  //Test
  group(
    'Counter Class - ',
    () {
      test(
        // Given When Then
        'Given Counter Class When is initially render the value of counter should be zero ',
        () {
          //act
          int value = counter.counter;
          //assert
          expect(value, 0);
        },
      );
      test(
        'Given counter class when the increment function called the counter should be increase by 1',
        () {
          counter.increment();
          int value = counter.counter;
          expect(value, 1);
        },
      );
      test(
        'Given Counter class when the decrement method is called the counter value should be decrease by 0',
        () {
          counter.decrement();
          expect(counter.counter, 0);
        },
      );
      test(
        'Given Counter Class when the rest method is called then counter value is zero',
        () {
          counter.reset();
          expect(counter.counter, 0);
        },
      );
      // test(
      //   'Given counter class when the decrement function called the value should be 0',
      //   () {
      //     expect(counter.counter, 0);
      //   },
      // );
    },
  );
}

//preTest
// setUp(() => null);
// setUpAll(() => null);

//Setup ===>  Setup -> test -> SetUp -> test -> Setup -> test (setup is called the before every test)
//SetupAll ===> SetupAll -> test -> test -> test -> test -> test (setupAll called before all the test)

//postTest

// tearDown(() => null);
// tearDownAll(() => null);

// test -> tearDown -> test -> tearDown
// test -> test -> test -> test -> tearDownAll

// teardown called after very test is done
// teardownAll is called after all test is done
