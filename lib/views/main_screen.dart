import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../viewmodels/ui_state.dart';
import 'tabs/date_list_tab.dart';
import 'tabs/add_song_tab.dart';
import 'tabs/extra_tab.dart';

class MainScreen extends ConsumerWidget {
  const MainScreen({super.key});

  Future<void> _showExitDialog(BuildContext context) async {
    final quit = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('앱 종료', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        content: const Text('정말 종료할 거야? 딱히 널 붙잡으려는 건 아니라고!'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: const Text('아니'),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, true),
            child: const Text('응', style: TextStyle(color: Colors.red)),
          ),
        ],
      ),
    );

    if (quit == true) {
      SystemNavigator.pop();
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedIndex = ref.watch(tabIndexProvider);

    final tabs = [
      const DateListTab(key: ValueKey(0)),
      const AddSongTab(key: ValueKey(1)),
      const ExtraTab(key: ValueKey(2)),
    ];

    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) async {
        if (didPop) return;

        if (selectedIndex != 1) {
          ref.read(tabIndexProvider.notifier).setTab(1);
        } else {
          await _showExitDialog(context);
        }
      },
      child: Scaffold(
        body: AnimatedSwitcher(
          duration: const Duration(milliseconds: 300),
          transitionBuilder: (Widget child, Animation<double> animation) {
            return FadeTransition(opacity: animation, child: child);
          },
          child: tabs[selectedIndex],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (index) => ref.read(tabIndexProvider.notifier).setTab(index),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.calendar_month), label: '날짜'),
            BottomNavigationBarItem(icon: Icon(Icons.library_music), label: '기록'),
            BottomNavigationBarItem(icon: Icon(Icons.more_horiz), label: '부가정보'),
          ],
        ),
      ),
    );
  }
}