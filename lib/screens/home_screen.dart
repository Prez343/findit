import 'package:flutter/material.dart';
import '../models/album.dart';
import '../services/freemium_service.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
  }

class _HomeScreenState extends State<HomeScreen> {
  // A list of albums - fetch these from storage or backend
  List<Album> albums = [];

  @override
  void initState() {
    super.initState();
    // Freemium service to determine what items to show
    if (FreemiumService.instance.hasFreePlan) {
      albums = FreemiumService.instance.getDefaultAlbums();
    } else {
      albums = FreemiumService.instance.getUserAlbums();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Find It - Home'),
      ),
      body: ListView.builder(
        itemCount: albums.length,
        itemBuilder: (context, index) {
          Album album = albums[index];
          return ListTile(
            title: Text(album.name),
            subtitle: Text('${album.images.length} photos'),
            onTap: () {
              // Navigate to the album screen, passing the album as an argument
              Navigator.pushNamed(context, '/album', arguments: album);
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add Album Creation Functionality
        },
        child: Icon(Icons.add),
      ),
    );
  }
}