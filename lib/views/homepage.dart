import 'package:bcgmusicapp/controllers/songcontroller.dart';
import 'package:bcgmusicapp/views/song_tile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';

class HomePage extends StatelessWidget {
  final SongController songController = Get.put(SongController());
  final searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            TextField(
                controller: searchController,
                decoration: InputDecoration(
                    icon: Icon(Icons.search),
                    hintText: "jack johnson",
                    helperText: "Type artist name",
                    hintStyle: TextStyle(
                        fontWeight: FontWeight.w300, color: Colors.red)),
                onSubmitted: (value) {
                  songController.fetchProducts(searchController.text);
                }),
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
      ),
    );
  }
}
