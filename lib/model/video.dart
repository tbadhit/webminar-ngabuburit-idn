class Video {
  int id;
  String image;

  Video({this.id, this.image});
}

List<Video> mockVideo = [
  Video(id: 1, image: "assets/video1.jpg"),
  Video(id: 2, image: 'assets/video2.jpg'),
  Video(id: 3, image: 'assets/video3.jpg')
];
