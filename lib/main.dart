import 'package:flutter/material.dart';
import 'package:riverpod_providers/changenotifierprovider/ChangeNotifierProviderExample.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_providers/stateprovider/StateProviderExample.dart';
import 'package:riverpod_providers/statenotifierprovider/StateNotifierProviderExample.dart';
import 'package:riverpod_providers/futureprovider/FutureProviderExample.dart';
import 'package:riverpod_providers/streamprovider/StreamProviderExample.dart';


// The above line will open the screen which displays the counter application using StreamProvider
//void main() => runApp(ProviderScope(child: StreamProviderExample()));

// The above line will open the screen which displays the counter application using FutureProvider
void main() => runApp(ProviderScope(child: FutureProviderExample()));

// The above line will open the screen which displays the counter application using StateNotifierProvider
//void main() => runApp(ProviderScope(child: StateNotifierProviderExample()));

// The above line will open the screen which displays the counter application using StateProvider
// void main() => runApp(ProviderScope(child: StateProviderExample()));

// The above line will open the screen which displays the counter application using ChangeNotifierProviderProvider
// void main() => runApp(ProviderScope(child: ChangeNotifierProviderExample()));


