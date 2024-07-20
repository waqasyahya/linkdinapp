// lib/models/post_model.dart
class PostModel {
  final String userName;
  final String userPosition;
  final String postedTime;
  final String imageUrl;
  final String logoUrl;
  final String textContent;
  final String likes;
  final int comments;
  final int shares;
  final int saves;

  PostModel({
    required this.userName,
    required this.userPosition,
    required this.postedTime,
    required this.imageUrl,
    required this.logoUrl,
    required this.textContent,
    required this.likes,
    required this.comments,
    required this.shares,
    required this.saves,
  });

}
final List<PostModel> posts = [
  PostModel(
    userName: 'waqas',
    userPosition: 'Full Stack devloper',
    postedTime: 'Posted 3 hours',
    imageUrl: 'assets/image/1699293785.png',
    logoUrl: 'assets/image/waqasimage.jpg',
    textContent: 'This is additional content inside the Column after the Row.',
    likes: '345',
    comments: 15,
    shares: 16,
    saves: 10,
  ),
  PostModel(
    userName: 'usman',
    userPosition: 'Python Developer',
    postedTime: 'posted 2 days ago',
    imageUrl: 'assets/image/1699293828.png',
    logoUrl: 'assets/image/waqasimage.jpg',
    textContent: 'This is additional content inside the Column after the Row.',
    likes: '20K',
    comments: 123,
    shares: 54,
    saves: 20,
  ),
  PostModel(
    userName: 'islame',
    userPosition: 'SOFTWARE COMPANY',
    postedTime: 'Posted 5 months ago',
    imageUrl: 'assets/image/1699293922.png',
    logoUrl: 'assets/image/logo3.png',
    textContent: 'islame is web and app application with the help of A.I.',
    likes: '12M',
    comments: 456,
    shares: 30,
    saves: 998,
  ),
  PostModel(
    userName: 'ZIA ILYAS',
    userPosition: 'Project Manager',
    postedTime: 'Posted 3 hours',
    imageUrl: 'assets/image/what.png',
    logoUrl: 'assets/image/ZIA ILYAS.jpg',
    textContent: '#manager #project #islamapp #flutter #dart #taleeme',
    likes: '55K',
    comments: 506,
    shares: 453,
    saves: 567,
  ),
  PostModel(
    userName: 'Islame',
    userPosition: 'Software company',
    postedTime: 'Posted 15 Days ago',
    imageUrl: 'assets/image/1699293785.png',
    logoUrl: 'assets/image/QAMER CHISHTI.jpg',
    textContent: '"Today, the crescent of Muharram has been sighted. Heartfelt.....#Quran  #laravel hashtag#fyp',
    likes: '345k',
    comments: 897,
    shares: 4657,
    saves: 345,
  ),
  PostModel(
    userName: 'waqas',
    userPosition: 'Full Stack devloper',
    postedTime: 'Posted 3 hours',
    imageUrl: 'assets/image/waqasimage.jpg',
    logoUrl: 'assets/image/waqasimage.jpg',
    textContent: '#Laravel  #HamiGroups #PHP #Livewire #MySQL #Dart  #Firebase #Git #Docker #FullStackDeveloper',
    likes: '2M',
    comments: 44,
    shares: 345,
    saves: 45,
  ),

  // Add more posts here
];

