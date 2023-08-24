import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_providers/changenotifierprovider/ChangeProvider.dart';

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
  Widget build(BuildContext context,WidgetRef ref) {

    final counter=ref.watch(counterprovider);

    return Scaffold(
      appBar: AppBar(backgroundColor: Color(0xff152943),title: Text("ChangeNotifierProviderExample")),
      floatingActionButton: 
      FloatingActionButton(
        onPressed: (){
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
            Text('${counter.count}',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500,fontSize: 30))
          ],
        ),
      )
    );
  }
}

