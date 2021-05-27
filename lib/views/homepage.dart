import 'package:bcgmusicapp/controllers/songcontroller.dart';
import 'package:bcgmusicapp/views/song_tile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';

class HomePage extends StatelessWidget {
  final SongController songController = Get.put(SongController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("Search"),
          Expanded(
            child: Obx(() {
              if (songController.isLoading.value)
                return Center(child: CircularProgressIndicator());
              else
                return ListView.builder(
                  itemCount: songController.songList.length,
                  itemBuilder: (context, index) {
                    return SongTile(songController.songList[index]);
                  },
                );
            }),
          )
        ],
      ),
    );
  }
}
