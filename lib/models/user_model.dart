class UserModel {
  final String name;
  final String image;

  UserModel({required this.name, required this.image});

  static List<UserModel> users() {
    return [
      UserModel(name: 'Yousef Shaban', image: 'https://picsum.photos/500/500'),
      UserModel(
          name: 'Yousef Elboghdady', image: 'https://picsum.photos/400/400'),
      UserModel(name: 'Ahmed Marwan', image: 'https://picsum.photos/600/500'),
      UserModel(name: 'Mahmoud Hafiz', image: 'https://picsum.photos/500/600'),
      UserModel(name: 'Reda Mahmoud', image: 'https://picsum.photos/400/600'),
      UserModel(
          name: 'Mohamed Abdullah', image: 'https://picsum.photos/600/400'),
      UserModel(name: 'Eslam Adel', image: 'https://picsum.photos/600/600'),
    ];
  }
}
