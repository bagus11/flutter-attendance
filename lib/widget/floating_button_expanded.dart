import 'package:attendance_frontend/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_expandable_fab/flutter_expandable_fab.dart';

class FloatingButtonExpanded extends StatelessWidget {
  final _counter = ValueNotifier(0);

  FloatingButtonExpanded({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final key = GlobalObjectKey<ExpandableFabState>(context);
    // ignore: avoid_unnecessary_containers
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You have pushed the button this many times:',
              style: blackTextStyle,
            ),
            ValueListenableBuilder(
              valueListenable: _counter,
              builder: (context, counter, _) {
                return Text(
                  '$counter',
                  style: Theme.of(context).textTheme.displayMedium,
                );
              },
            ),
            ElevatedButton.icon(
              icon: const Icon(Icons.add),
              label: const Text('add'),
              onPressed: () => _counter.value++,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: ExpandableFab.location,
      floatingActionButton: ExpandableFab(
        key: key,
        // duration: const Duration(seconds: 1),
        distance: 60.0,
        type: ExpandableFabType.up,
        // fanAngle: 70,
        // child: const Icon(Icons.account_box),
        // foregroundColor: Colors.amber,
        // backgroundColor: Colors.green,
        // closeButtonStyle: const ExpandableFabCloseButtonStyle(
        //   child: Icon(Icons.abc),
        //   foregroundColor: Colors.deepOrangeAccent,
        //   backgroundColor: Colors.lightGreen,
        // ),
        overlayStyle: ExpandableFabOverlayStyle(
          // color: Colors.black.withOpacity(0.5),
          blur: 5,
        ),
        onOpen: () {
          debugPrint('onOpen');
        },
        afterOpen: () {
          debugPrint('afterOpen');
        },
        onClose: () {
          debugPrint('onClose');
        },
        afterClose: () {
          debugPrint('afterClose');
        },
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const FloatingActionButton.extended(
            onPressed: null,
            heroTag: null,
            icon: Icon(Icons.edit),
            label: Text('Sick'),
          ),
          FloatingActionButton.extended(
            heroTag: null,
            label: const Text('Absent'),
            icon: const Icon(Icons.search),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: ((context) => const NextPage()),
                ),
              );
            },
            // onPressed: null,
          ),
          FloatingActionButton.extended(
            heroTag: null,
            label: const Text('Permit'),
            icon: const Icon(Icons.share),
            onPressed: () {
              final state = key.currentState;
              if (state != null) {
                debugPrint('isOpen:${state.isOpen}');
                state.toggle();
              }
            },
          ),
        ],
      ),
    );
  }
}

class NextPage extends StatelessWidget {
  const NextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Next'),
      ),
      body: const Center(
        child: Text('Next'),
      ),
    );
  }
}
