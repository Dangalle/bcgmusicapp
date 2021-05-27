// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));

String welcomeToJson(Welcome data) => json.encode(data.toJson());

class Welcome {
  Welcome({
    this.resultCount,
    this.results,
  });

  int resultCount;
  List<Song> results;

  factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
        resultCount: json["resultCount"],
        results: List<Song>.from(json["results"].map((x) => Song.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "resultCount": resultCount,
        "results": List<dynamic>.from(results.map((x) => x.toJson())),
      };
}

class Song {
  Song({
    this.wrapperType,
    this.kind,
    this.artistId,
    this.collectionId,
    this.trackId,
    this.artistName,
    this.collectionName,
    this.trackName,
    this.collectionCensoredName,
    this.trackCensoredName,
    this.artistViewUrl,
    this.collectionViewUrl,
    this.trackViewUrl,
    this.previewUrl,
    this.artworkUrl30,
    this.artworkUrl60,
    this.artworkUrl100,
    this.collectionPrice,
    this.trackPrice,
    this.releaseDate,
    this.collectionExplicitness,
    this.trackExplicitness,
    this.discCount,
    this.discNumber,
    this.trackCount,
    this.trackNumber,
    this.trackTimeMillis,
    this.country,
    this.currency,
    this.primaryGenreName,
    this.isStreamable,
    this.collectionArtistName,
    this.collectionArtistId,
    this.collectionArtistViewUrl,
    this.trackRentalPrice,
    this.collectionHdPrice,
    this.trackHdPrice,
    this.trackHdRentalPrice,
    this.contentAdvisoryRating,
    this.shortDescription,
    this.longDescription,
    this.hasITunesExtras,
  });

  WrapperType wrapperType;
  Kind kind;
  int artistId;
  int collectionId;
  int trackId;
  String artistName;
  String collectionName;
  String trackName;
  String collectionCensoredName;
  String trackCensoredName;
  String artistViewUrl;
  String collectionViewUrl;
  String trackViewUrl;
  String previewUrl;
  String artworkUrl30;
  String artworkUrl60;
  String artworkUrl100;
  double collectionPrice;
  double trackPrice;
  DateTime releaseDate;
  Explicitness collectionExplicitness;
  Explicitness trackExplicitness;
  int discCount;
  int discNumber;
  int trackCount;
  int trackNumber;
  int trackTimeMillis;
  Country country;
  Currency currency;
  String primaryGenreName;
  bool isStreamable;
  CollectionArtistName collectionArtistName;
  int collectionArtistId;
  String collectionArtistViewUrl;
  double trackRentalPrice;
  double collectionHdPrice;
  double trackHdPrice;
  double trackHdRentalPrice;
  ContentAdvisoryRating contentAdvisoryRating;
  String shortDescription;
  String longDescription;
  bool hasITunesExtras;

  factory Song.fromJson(Map<String, dynamic> json) => Song(
        wrapperType: wrapperTypeValues.map[json["wrapperType"]],
        kind: kindValues.map[json["kind"]],
        artistId: json["artistId"] == null ? null : json["artistId"],
        collectionId:
            json["collectionId"] == null ? null : json["collectionId"],
        trackId: json["trackId"],
        artistName: json["artistName"],
        collectionName:
            json["collectionName"] == null ? null : json["collectionName"],
        trackName: json["trackName"],
        collectionCensoredName: json["collectionCensoredName"] == null
            ? null
            : json["collectionCensoredName"],
        trackCensoredName: json["trackCensoredName"],
        artistViewUrl:
            json["artistViewUrl"] == null ? null : json["artistViewUrl"],
        collectionViewUrl: json["collectionViewUrl"] == null
            ? null
            : json["collectionViewUrl"],
        trackViewUrl: json["trackViewUrl"],
        previewUrl: json["previewUrl"],
        artworkUrl30: json["artworkUrl30"],
        artworkUrl60: json["artworkUrl60"],
        artworkUrl100: json["artworkUrl100"],
        collectionPrice: json["collectionPrice"].toDouble(),
        trackPrice: json["trackPrice"].toDouble(),
        releaseDate: DateTime.parse(json["releaseDate"]),
        collectionExplicitness:
            explicitnessValues.map[json["collectionExplicitness"]],
        trackExplicitness: explicitnessValues.map[json["trackExplicitness"]],
        discCount: json["discCount"] == null ? null : json["discCount"],
        discNumber: json["discNumber"] == null ? null : json["discNumber"],
        trackCount: json["trackCount"] == null ? null : json["trackCount"],
        trackNumber: json["trackNumber"] == null ? null : json["trackNumber"],
        trackTimeMillis: json["trackTimeMillis"],
        country: countryValues.map[json["country"]],
        currency: currencyValues.map[json["currency"]],
        primaryGenreName: json["primaryGenreName"],
        isStreamable:
            json["isStreamable"] == null ? null : json["isStreamable"],
        collectionArtistName: json["collectionArtistName"] == null
            ? null
            : collectionArtistNameValues.map[json["collectionArtistName"]],
        collectionArtistId: json["collectionArtistId"] == null
            ? null
            : json["collectionArtistId"],
        collectionArtistViewUrl: json["collectionArtistViewUrl"] == null
            ? null
            : json["collectionArtistViewUrl"],
        trackRentalPrice: json["trackRentalPrice"] == null
            ? null
            : json["trackRentalPrice"].toDouble(),
        collectionHdPrice: json["collectionHdPrice"] == null
            ? null
            : json["collectionHdPrice"].toDouble(),
        trackHdPrice: json["trackHdPrice"] == null
            ? null
            : json["trackHdPrice"].toDouble(),
        trackHdRentalPrice: json["trackHdRentalPrice"] == null
            ? null
            : json["trackHdRentalPrice"].toDouble(),
        contentAdvisoryRating: json["contentAdvisoryRating"] == null
            ? null
            : contentAdvisoryRatingValues.map[json["contentAdvisoryRating"]],
        shortDescription:
            json["shortDescription"] == null ? null : json["shortDescription"],
        longDescription:
            json["longDescription"] == null ? null : json["longDescription"],
        hasITunesExtras:
            json["hasITunesExtras"] == null ? null : json["hasITunesExtras"],
      );

  Map<String, dynamic> toJson() => {
        "wrapperType": wrapperTypeValues.reverse[wrapperType],
        "kind": kindValues.reverse[kind],
        "artistId": artistId == null ? null : artistId,
        "collectionId": collectionId == null ? null : collectionId,
        "trackId": trackId,
        "artistName": artistName,
        "collectionName": collectionName == null ? null : collectionName,
        "trackName": trackName,
        "collectionCensoredName":
            collectionCensoredName == null ? null : collectionCensoredName,
        "trackCensoredName": trackCensoredName,
        "artistViewUrl": artistViewUrl == null ? null : artistViewUrl,
        "collectionViewUrl":
            collectionViewUrl == null ? null : collectionViewUrl,
        "trackViewUrl": trackViewUrl,
        "previewUrl": previewUrl,
        "artworkUrl30": artworkUrl30,
        "artworkUrl60": artworkUrl60,
        "artworkUrl100": artworkUrl100,
        "collectionPrice": collectionPrice,
        "trackPrice": trackPrice,
        "releaseDate": releaseDate.toIso8601String(),
        "collectionExplicitness":
            explicitnessValues.reverse[collectionExplicitness],
        "trackExplicitness": explicitnessValues.reverse[trackExplicitness],
        "discCount": discCount == null ? null : discCount,
        "discNumber": discNumber == null ? null : discNumber,
        "trackCount": trackCount == null ? null : trackCount,
        "trackNumber": trackNumber == null ? null : trackNumber,
        "trackTimeMillis": trackTimeMillis,
        "country": countryValues.reverse[country],
        "currency": currencyValues.reverse[currency],
        "primaryGenreName": primaryGenreName,
        "isStreamable": isStreamable == null ? null : isStreamable,
        "collectionArtistName": collectionArtistName == null
            ? null
            : collectionArtistNameValues.reverse[collectionArtistName],
        "collectionArtistId":
            collectionArtistId == null ? null : collectionArtistId,
        "collectionArtistViewUrl":
            collectionArtistViewUrl == null ? null : collectionArtistViewUrl,
        "trackRentalPrice": trackRentalPrice == null ? null : trackRentalPrice,
        "collectionHdPrice":
            collectionHdPrice == null ? null : collectionHdPrice,
        "trackHdPrice": trackHdPrice == null ? null : trackHdPrice,
        "trackHdRentalPrice":
            trackHdRentalPrice == null ? null : trackHdRentalPrice,
        "contentAdvisoryRating": contentAdvisoryRating == null
            ? null
            : contentAdvisoryRatingValues.reverse[contentAdvisoryRating],
        "shortDescription": shortDescription == null ? null : shortDescription,
        "longDescription": longDescription == null ? null : longDescription,
        "hasITunesExtras": hasITunesExtras == null ? null : hasITunesExtras,
      };
}

enum CollectionArtistName { JACK_JOHNSON }

final collectionArtistNameValues =
    EnumValues({"Jack Johnson": CollectionArtistName.JACK_JOHNSON});

enum Explicitness { NOT_EXPLICIT, EXPLICIT }

final explicitnessValues = EnumValues({
  "explicit": Explicitness.EXPLICIT,
  "notExplicit": Explicitness.NOT_EXPLICIT
});

enum ContentAdvisoryRating { PG_13, R, PG }

final contentAdvisoryRatingValues = EnumValues({
  "PG": ContentAdvisoryRating.PG,
  "PG-13": ContentAdvisoryRating.PG_13,
  "R": ContentAdvisoryRating.R
});

enum Country { USA }

final countryValues = EnumValues({"USA": Country.USA});

enum Currency { USD }

final currencyValues = EnumValues({"USD": Currency.USD});

enum Kind { SONG, FEATURE_MOVIE }

final kindValues =
    EnumValues({"feature-movie": Kind.FEATURE_MOVIE, "song": Kind.SONG});

enum WrapperType { TRACK }

final wrapperTypeValues = EnumValues({"track": WrapperType.TRACK});

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
