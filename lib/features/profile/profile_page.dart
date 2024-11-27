import 'package:flutter/material.dart';
import 'package:penaura/utils/data.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text("Profile"),
            actions: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: IconButton(
                    onPressed: () {}, icon: const Icon(Icons.settings)),
              )
            ],
            elevation: 0),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                profileHeader(),
                 profileSubHeader(),
                 SizedBox(height: 10,),
                 Text("About", style: TextStyle(fontWeight: FontWeight.bold),),
                 SizedBox(height: 10,),
                 Text('Description'),
                 Text(user.description, overflow: TextOverflow.clip,),
                 SizedBox(height: 10,),
                 Divider(color: Colors.grey,),
                 SizedBox(height: 10,),
                 Text("Social Media"),
                 SizedBox(height: 10,),
                 socialMediaWidget("Facebook", Icons.facebook),
                 SizedBox(height: 3,),
                 socialMediaWidget("Whatsapp", Icons.message),
                 SizedBox(height: 3,),
                 socialMediaWidget("Instagram", Icons.camera),
                 SizedBox(height: 10,),
                 Divider(color: Colors.grey,),
                 SizedBox(height: 10,),
                 Text("More Info"),
                 moreWidget("New york", Icons.location_on),
                 moreWidget("Joined Since March, 2024", Icons.help_outline),
                 
                 ],
            ),
          ),
        ));
  }

  Row moreWidget(String name, IconData icon) {
    return Row(

            children: [
              Icon(icon, ),
              SizedBox(width: 3,),
              Text(name, )
              
            ],
           );
  }

  Row socialMediaWidget(String name, IconData icon) {
    return Row(

              children: [
                Icon(icon, color: Colors.brown,),
                SizedBox(width: 3,),
                Text(name, style: TextStyle(color: Colors.brown,),)
                
              ],
             );
  }

  Column profileSubHeader() {
    return Column(
      children: [
        const Divider(
          color: Colors.grey,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              customBox(user.articlesCount.toString(), "Articles"),
              const VerticalDivider(
                color: Colors.grey,
                width: 5,
              ),
              customBox(user.followingsCount.toString(), "Followings"),
              const VerticalDivider(
                color: Colors.grey,
              ),
              customBox(user.followersCount.toString(), "Follwers")
            ],
          ),
        ),
        const Divider(
          color: Colors.grey,
        )
      ],
    );
  }

  Column customBox(String num, name) {
    return Column(
      children: [
        Text(num),
        Text(
          name,
          style: const TextStyle(color: Colors.brown),
        )
      ],
    );
  }

  Padding profileHeader() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Colors.grey[300])),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [Text(user.name), Text(user.username)],
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: MaterialButton(
              color: Colors.white,
              elevation: 0,
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
              shape: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.brown),
                  borderRadius: BorderRadius.circular(20)),
              onPressed: () {},
              child: const Row(
                children: [
                  Icon(Icons.edit, color: Colors.brown),
                  Text(
                    "Edit",
                    style: TextStyle(
                      color: Colors.brown,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
