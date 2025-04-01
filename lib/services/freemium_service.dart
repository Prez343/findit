import '../models/album.dart';
import '../models/image_item.dart';

class FreemiumService {
  static final FreemiumService instance = FreemiumService._internal();

  // This Is Determined By Users Account
  bool get hasFreePlan => true; // For Now, Assume Free Plan

  FreemiumService._internal();

  // Return Default Albums For Free Users, 2 Albums W/ 2 Photos Each
  List<Album> getDefaultAlbums() {
    return [
      Album(name: 'Album1', images: [
        ImageItem(
          imagePath: 'assets/images/photo1.jpg',
          timestamp: DateTime.now(),
        ),
        ImageItem(
          imagePath: 'assets/images/photo2.jpg',
          timestamp: DateTime.now(),
        ),
      ]),
      Album(name: 'Album2', images: [
        ImageItem(
          imagePath: 'assets/images/photo3.jpg',
          timestamp: DateTime.now(),
        ),
        ImageItem(
          imagePath: 'assets/images/photo4.jpg',
          timestamp: DateTime.now(),
        ),
      ]),
    ];
  }

  // For Premium Users Fetch The Users  Albums From Database
  List<Album> getUserAlbums() {
    // Placeholder For Premium Logic
    return [];
  }
}