import 'package:flutter/material.dart';
import 'package:riverpod_providers/changenotifierprovider/ChangeNotifierProviderExample.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_providers/stateprovider/StateProviderExample.dart';
import 'package:riverpod_providers/statenotifierprovider/StateNotifierProviderExample.dart';
import 'package:riverpod_providers/futureprovider/FutureProviderExample.dart';
import 'package:riverpod_providers/streamprovider/StreamProviderExample.dart';

void main() => runApp(ProviderScope(child: StreamProviderExample()));


