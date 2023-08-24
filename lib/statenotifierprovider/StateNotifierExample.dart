import 'package:flutter_riverpod/flutter_riverpod.dart';

class StateNotifierExample extends StateNotifier<int>
{
  StateNotifierExample() : super(0);

  void increment()
  {
    state++;
  }
}