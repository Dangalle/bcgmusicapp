import 'package:bcgmusicapp/models/song.dart';
import 'package:bcgmusicapp/services/remote_services.dart';
import 'package:get/state_manager.dart';

class SongController extends GetxController {
  var isLoading = true.obs;
  var songList = List<Song>().obs;

  @override
  void onInit() {
    fetchProducts();
    super.onInit();
  }

  void fetchProducts() async {
    try {
      isLoading(true);
      var songs = await RemoteServices.fetchProducts();
      if (songs != null) {
        songList.value = songs.results;
      }
    } finally {
      isLoading(false);
    }
  }
}
