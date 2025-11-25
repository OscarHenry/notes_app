import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'assets/assets.gen.dart';
import 'managers/managers.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notes'),
        actions: [
          FloatingActionButton.small(
            onPressed: () {},
            heroTag: 'search',
            elevation: 0,
            // backgroundColor: const Color(0xff3B3B3B),
            // foregroundColor: Colors.white,
            child: const Icon(Icons.search_rounded),
          ),
          FloatingActionButton.small(
            onPressed: () {
              showAdaptiveDialog(
                context: context,
                barrierDismissible: true,
                builder: (context) => const SimpleDialog(
                  // backgroundColor: Color(0xff252525),
                  title: Center(child: Text('Info')),
                  contentPadding: EdgeInsets.all(24),
                  children: [
                    Text('Designed By:'),
                    SizedBox(height: 8),
                    Text('Redesigned By:'),
                    SizedBox(height: 8),
                    Text('Illustration:'),
                    SizedBox(height: 8),
                    Text('Icon:'),
                    SizedBox(height: 8),
                    Text('Font:'),
                    SizedBox(height: 8),
                    Center(
                      child: Text(
                        'Made By: Oscar Henry Torres Caballero',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              );
            },
            heroTag: 'info',
            elevation: 0,
            // backgroundColor: const Color(0xff3B3B3B),
            // foregroundColor: Colors.white,
            child: const Icon(Icons.info_outlined),
          ),
        ],
      ),
      body: buildEmptyContentWidget(context),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<ThemeManagerCubit>().toggleTheme();
        },
        heroTag: 'add_note',
        // backgroundColor: const Color(0xff3B3B3B),
        // foregroundColor: Colors.white,
        shape: const CircleBorder(),
        child: const Icon(Icons.add_rounded),
      ),
    );
  }

  Widget buildEmptyContentWidget(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Assets.illustrations.emptyNotes.image(),
          const SizedBox(height: 12),
          Text(
            'Create your first note!',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ],
      ),
    );
  }
}
