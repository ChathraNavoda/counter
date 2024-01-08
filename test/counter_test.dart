import 'package:counter/counter.dart';
import 'package:flutter_test/flutter_test.dart';
void main(){

  late Counter counter;
  //pretest
  setUp((){
    counter = Counter();
  });
  //setUpAll(() => null);

  //setup is called before every test
  //setupall is called before all the test

  //setup -> test -> setup -> test -> setup -> test
  //setupall -> test -> test -> test

//testing
//given counter class when it is installed, then the value of counter should be 0
group('Counter class -', () { 
  
 test('given counter class when it is installed, then the value of counter should be 0 ', () 
  {
    //create an instance of counter class
    //Arrange
    final Counter counter = Counter();
    //Act
    final val = counter.count;
    //Assert
    expect(val, 0);
  }
  );

  test('given counter class when it is incremented then the value of the count should be 1', () {
    //Arrange
    final Counter counter = Counter();
    //Act
    counter.incrementCounter();
    final val = counter.count;
    //Assert
    expect(val, 1);

  });

  test('given counter class when it is decremented then the value of the count should be -1', (){
    //Arrannge
    final Counter counter = Counter();
    //Act
    counter.decrementCounter();
    final val = counter.count;
    //Assert
    expect(val, -1);
  });

  test('given counter class when it is reset then the value of count should be 0', (){
    counter.reset();
    expect(counter.count, 0);
  });
});



  //posttest
  tearDown(() => null);
  tearDownAll(() => null);

}