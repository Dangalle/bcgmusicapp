import 'package:bcgmusicapp/models/song.dart';
import 'package:flutter/material.dart';

class SongTile extends StatelessWidget {
  final Song song;
  const SongTile(this.song);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: InkWell(
        onTap: () {
          showModalBottomSheet(
              context: context,
              builder: (context) {
                return Container(
                  height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      IconButton(
                        padding: new EdgeInsets.all(0.0),
                        color: Colors.blue,
                        icon: new Icon(Icons.fast_rewind, size: 50.0),
                        onPressed: () {},
                      ),
                      IconButton(
                        padding: new EdgeInsets.all(0.0),
                        color: Colors.blue,
                        icon: new Icon(Icons.play_arrow, size: 50.0),
                        onPressed: () {},
                      ),
                      IconButton(
                        padding: new EdgeInsets.all(0.0),
                        color: Colors.blue,
                        icon: new Icon(Icons.fast_forward, size: 50.0),
                        onPressed: () {},
                      ),
                    ],
                  ),
                );
              });
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.network(song.artworkUrl60),
                  SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        song.trackName,
                        style: TextStyle(
                            fontFamily: 'avenir',
                            fontWeight: FontWeight.w900,
                            fontSize: 15),
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        song.artistName,
                        style: TextStyle(
                            fontFamily: 'avenir', fontWeight: FontWeight.w600),
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        song.country.toString(),
                        style: TextStyle(
                            fontFamily: 'avenir', fontWeight: FontWeight.w600),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ],
              ),
              Icon(Icons.signal_cellular_alt),
            ],
          ),
        ),
      ),
    );
  }
}
