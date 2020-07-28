import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';


enum CounterEvents{
  //User events -- Button clicks
  increment,decrement
}

class CounterBloc extends Bloc<CounterEvents,int>{
  CounterBloc() : super(0);
  @override
  Stream<int> mapEventToState(CounterEvents event) async* {
    switch(event){
      case CounterEvents.increment:
        yield state+1;
        break;
      case CounterEvents.decrement:
        yield state-1;
        break;
    }
  }




  


}