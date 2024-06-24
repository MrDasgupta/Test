// Defining the base class Media
class Media {
  String media;
//Adding method play
  void play() {
    print('Playing $media');
  }
  // Constructor to initialize the media attribute
  Media(this.media);
}

// Defining the derived class Song that inherits from the Media
class Song extends Media {
  //Adding an attribute called artist
  String artist;

  // Override the play method
  @override
  void play() {
    print('$media by $artist...');
  }
  // Constructor to initialize the media and artist attributes
  Song(String media, this.artist) : super(media);

}

// Main function for creating one instance of Media and one of Song
void main() {
  // Create an instance of Media and call its play method
  Media mediaInstance = Media('Mockingbird');
  mediaInstance.play();

  // Create an instance of Song and call its play method
  Song songInstance = Song('Mockingbird', 'Eminem');
  songInstance.play();
}
