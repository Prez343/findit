class ImageItem {
  String imagePath; // Path To The Image File
  DateTime timestamp;
  // Include Location MetaData:
  double? latitude;
  double? longitude;

  ImageItem({
    required this.imagePath,
    required this.timestamp,
    this.latitude,
    this.longitude,
  });
}