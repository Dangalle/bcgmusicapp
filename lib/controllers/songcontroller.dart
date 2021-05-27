import 'package:bcgmusicapp/models/song.dart';
import 'package:bcgmusicapp/services/remote_services.dart';
import 'package:get/state_manager.dart';

class SongController extends GetxController {
  var isLoading = true.obs;
  var songList = List<Song>().obs;

  @override
  void onInit() {
    fetchProducts("jackjohnson");
    super.onInit();
  }

  void fetchProducts(String artistName) async {
    try {
      isLoading(true);
      var songs = await RemoteServices.fetchProducts(artistName);
      if (songs != null) {
        songList.value = songs.results;
      }
    } finally {
      isLoading(false);
    }
  }
}
