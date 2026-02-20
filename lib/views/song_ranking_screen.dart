import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../viewmodels/karaoke_view_model.dart';

class SongRankingScreen extends ConsumerStatefulWidget {
  const SongRankingScreen({super.key});

  @override
  ConsumerState<SongRankingScreen> createState() => _SongRankingScreenState();
}

class _SongRankingScreenState extends ConsumerState<SongRankingScreen> {
  bool _hideLowCount = false;
  bool _onlyLowCount = false;

  @override
  Widget build(BuildContext context) {
    final rankingAsync = ref.watch(songRankingViewModelProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('노래 부른 순위'), centerTitle: true),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Text('1회 이하 생략', style: TextStyle(fontSize: 11)),
                Checkbox(
                  visualDensity: VisualDensity.compact,
                  value: _hideLowCount,
                  onChanged: (v) => setState(() {
                    _hideLowCount = v ?? false;
                    if (_hideLowCount) _onlyLowCount = false;
                  }),
                ),
                const SizedBox(width: 10),
                const Text('1회 이하만 보기', style: TextStyle(fontSize: 11)),
                Checkbox(
                  visualDensity: VisualDensity.compact,
                  value: _onlyLowCount,
                  onChanged: (v) => setState(() {
                    _onlyLowCount = v ?? false;
                    if (_onlyLowCount) _hideLowCount = false;
                  }),
                ),
              ],
            ),
          ),
          const Divider(height: 1),
          Expanded(
            child: rankingAsync.when(
              data: (list) {
                final filtered = list.where((item) {
                  final count = item['count'] as int;
                  if (_hideLowCount) return count > 1;
                  if (_onlyLowCount) return count <= 1;
                  return true;
                }).toList();

                if (filtered.isEmpty) return const Center(child: Text('표시할 데이터가 없어!'));

                return ListView.builder(
                  itemCount: filtered.length,
                  itemBuilder: (context, index) {
                    final item = filtered[index];
                    return Container(
                      decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey.shade200))),
                      child: ListTile(
                        leading: CircleAvatar(
                          radius: 14,
                          backgroundColor: index < 3 ? Colors.amber : Colors.grey.shade300,
                          child: Text('${index + 1}', style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.white)),
                        ),
                        title: Text(item['title'], style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                        subtitle: Text(item['singer'], style: const TextStyle(fontSize: 12, color: Colors.blueGrey)),
                        trailing: Text('${item['count']}회', style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.indigo)),
                      ),
                    );
                  },
                );
              },
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (e, s) => Center(child: Text('에러: $e')),
            ),
          ),
        ],
      ),
    );
  }
}