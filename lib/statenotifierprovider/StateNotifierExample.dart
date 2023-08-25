import 'package:flutter_riverpod/flutter_riverpod.dart';


class StateNotifierExample extends StateNotifier<int>
{
  /// the below line will create the new instance of the [StateNotifierExample] class and initialize it wil value 0
  StateNotifierExample() : super(0);


  /// [increment] method will increment the value of the new instance
  void increment()
  {
    state++;
  }
}