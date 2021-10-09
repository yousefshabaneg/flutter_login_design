import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class MessengerScreen extends StatelessWidget {
  List<UserModel> users = [...UserModel.users()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leadingWidth: 50,
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(
          //Todo --> Padding (20) With Body
          icon: CircleAvatar(
            radius: 15,
            backgroundImage: NetworkImage(
                'https://avatars.githubusercontent.com/u/80194057?s=400&u=bcc713793df78006577030854a2ab40ca571c9e2&v=4'),
          ),
          onPressed: () {},
        ),
        title: Text(
          'Chats',
          style: TextStyle(
            color: Colors.black,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: CircleAvatar(
              radius: 15,
              backgroundColor: Colors.blue,
              child: Icon(
                Icons.edit,
                color: Colors.white,
                size: 20,
              ),
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey.withOpacity(0.2),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                      size: 24,
                      color: Colors.black.withOpacity(0.5),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Search',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black.withOpacity(0.5),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 130,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    if (index == 0) return BuildVideoItem();
                    return BuildUserItem(users[index - 1]);
                  },
                  separatorBuilder: (context, index) => SizedBox(
                    width: 25,
                  ),
                  itemCount: users.length,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) =>
                    BuildUserChatItem(users[index]),
                separatorBuilder: (context, index) => SizedBox(
                  height: 20,
                ),
                itemCount: users.length,
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget BuildOnlineItem() => Container(
        width: 70,
        child: Column(
          children: [
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: const [
                CircleAvatar(
                  radius: 35,
                  backgroundImage: NetworkImage(
                    'https://avatars.githubusercontent.com/u/80194057?s=400&u=bcc713793df78006577030854a2ab40ca571c9e2&v=4',
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.only(
                    bottom: 3,
                    end: 3,
                  ),
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 8.5,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.only(
                    bottom: 3,
                    end: 3,
                  ),
                  child: CircleAvatar(
                    backgroundColor: Colors.green,
                    radius: 7,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            const Text(
              'Yousef Shaban',
              maxLines: 2,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      );
  Widget BuildChatItem() => Row(
        children: [
          CircleAvatar(
            radius: 35,
            backgroundImage: NetworkImage(
              'https://avatars.githubusercontent.com/u/80194057?s=400&u=bcc713793df78006577030854a2ab40ca571c9e2&v=4',
            ),
          ),
          SizedBox(
            width: 15,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Yousef Shaban',
                  maxLines: 1,
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Neque porro quisquam est qui dolorem est qui dolorem',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Container(
                        width: 7,
                        height: 7,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    Text('2.00 pm'),
                  ],
                ),
              ],
            ),
          ),
        ],
      );
  Widget BuildVideoItem() => Container(
        width: 70,
        child: Column(
          children: [
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: const [
                CircleAvatar(
                  radius: 35,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.video_call_rounded,
                    color: Colors.black,
                    size: 40,
                  ),
                )
              ],
            ),
            SizedBox(height: 10),
            Text(
              'Create Room',
              maxLines: 2,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      );
  Widget BuildUserChatItem(UserModel user) => Row(
        children: [
          CircleAvatar(
            radius: 35,
            backgroundImage: NetworkImage(user.image),
          ),
          SizedBox(
            width: 15,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  user.name,
                  maxLines: 1,
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Neque porro quisquam est qui dolorem est qui dolorem',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Container(
                        width: 7,
                        height: 7,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    Text('2.00 pm'),
                  ],
                ),
              ],
            ),
          ),
        ],
      );
  Widget BuildUserItem(UserModel user) => Container(
        width: 70,
        child: Column(
          children: [
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                CircleAvatar(
                  radius: 35,
                  backgroundImage: NetworkImage(user.image),
                ),
                const Padding(
                  padding: EdgeInsetsDirectional.only(
                    bottom: 3,
                    end: 3,
                  ),
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 8.5,
                  ),
                ),
                const Padding(
                  padding: EdgeInsetsDirectional.only(
                    bottom: 3,
                    end: 3,
                  ),
                  child: CircleAvatar(
                    backgroundColor: Colors.green,
                    radius: 7,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Text(
              user.name,
              maxLines: 2,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      );
}

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
