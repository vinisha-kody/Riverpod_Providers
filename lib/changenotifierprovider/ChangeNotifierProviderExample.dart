import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_providers/changenotifierprovider/ChangeProvider.dart';


// conterprovider is the object of the ChangeNotifierProvider
/// [ChangeProvider] is a provider class which extends the ChangeNotifier class
final counterprovider=ChangeNotifierProvider<ChangeProvider>((ref) => ChangeProvider());


class ChangeNotifierProviderExample extends StatelessWidget {
  const ChangeNotifierProviderExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChangeNotifierProviderExamplePage(),
    );
  }
}


class ChangeNotifierProviderExamplePage extends ConsumerWidget {

  @override
  /// [WidgetRef ref] is used to access any provider
  Widget build(BuildContext context,WidgetRef ref) {

    // whenever the values changes in the provider class the watch method will track those changes and provides that value to counter variable
    final counter=ref.watch(counterprovider);

    return Scaffold(
      appBar: AppBar(backgroundColor: Color(0xff152943),title: Text("ChangeNotifierProviderExample")),
      floatingActionButton: 
      FloatingActionButton(
        onPressed: (){

          /// it will call the [incrementCounter()] method of the [ChangeProvider] class
          // this method increments the value of the count variable
          counter.incrementCounter();
        },
        child: Icon(Icons.add),
        backgroundColor: Color(0xff152943),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Text("You have pushed the button this many times:",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500,fontSize: 17),),
            ),

            /// [count] is the variable of the [ChangeProvider] class which will be incremented
            Text('${counter.count}',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500,fontSize: 30))
          ],
        ),
      )
    );
  }
}

