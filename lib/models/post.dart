class Post{
  final String profileImage;
  final String username;
  final String time;
  final String content;
  final String likes;
  final String comments;
  final String location;
  final String Postimage;


  Post({
    required this.profileImage,
    required this.username,
    required this.time,
    required this.content,
    required this.likes,
    required this.comments,
    required this.location,
    required this.Postimage
  });
}
List<Post> posts = [
  new Post(profileImage: 'assets/dp1.jfif', username: '@Mekrisha', time: '1 hour and 31min ago', content: 'Looking for good animal doctor in chandkheda,anybody can suggest ??', likes: '20', comments: '10',location: 'Chandkheda',Postimage: 'assets/golden.jfif'),
  new Post(profileImage: 'assets/dp2.jfif', username: '@dhruv_20', time: '10 mins ago', content: 'me and my few friends are going for food kit distribution to poor child tomorrow,if anybody want to join us. Do let me know.Tomorrow at 09:30 am.We all will meet at GNK Ground.', likes: '15', comments: '13',location: 'Jantanagar',Postimage: 'assets/no image.jpg'),
];