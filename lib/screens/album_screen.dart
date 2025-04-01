import 'package:flutter/material.dart';
import '../models/album.dart';
import '../models/image_item.dart';

class AlbumScreen extends StatelessWidget {
  const AlbumScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Retrieve The Album That Passed As An Argument
    final Album album = ModalRoute
        .of(context)!
        .settings
        .arguments as Album;

    return Scaffold(
      appBar: AppBar(
        title: Text(album.name),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Show 2 Items Per Row
          childAspectRatio: 1, // Square Cells
        ),
        itemCount: album.images.length,
        itemBuilder: (context, index) {
          ImageItem imageItem = album.images[index];
          return Card(
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.blueAccent,
                    child: Center(child: Text('Photo ${index + 1}')),
                  ),
                ),
                Text('Taken on: ${imageItem.timestamp}'),
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add Functionality To Capture New Image Then Add To Album
        },
        child: Icon(Icons.camera_alt),
      ),
    );
  }
}