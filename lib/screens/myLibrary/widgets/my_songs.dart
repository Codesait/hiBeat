import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hi_beat/screens/myLibrary/viewmodel/local_songs_viewmodel.dart';
import 'package:hi_beat/src/components.dart';

class MySongs extends ConsumerStatefulWidget {
  const MySongs({super.key});

  @override
  MySongsState createState() => MySongsState();
}

class MySongsState extends ConsumerState<MySongs> {
  @override
  void initState() {
    ref.read(localSongsViewModel).fetchLocalSongs();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final provider = ref.watch(localSongsViewModel);
    return provider.loading
        ? const SongListLoader()
        : ViewsParentContainer(
            padding: const EdgeInsets.only(bottom: 190),
            notFound: provider.localSongs.isEmpty,
            child: ListView.builder(
              itemCount: provider.localSongs.length,
              shrinkWrap: true,
              padding: EdgeInsets.zero,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return const MusicTileStyleOne();
              },
            ),
          );
  }
}
