import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    showBottomSheet(
                      context: context,
                      builder: (context){
                        return Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ListTile(
                              leading: const Icon(CupertinoIcons.camera),
                              title: const Text("Camera"),
                              trailing: const Icon(Icons.arrow_forward_ios),
                              onTap: (){
                                Navigator.pop(context);
                              },
                            ),
                            ListTile(
                              leading: const Icon(CupertinoIcons.photo),
                              title: const Text("Gallery"),
                              trailing: const Icon(Icons.arrow_forward_ios),
                              onTap: (){
                                Navigator.pop(context);
                              },
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: Icon(Icons.edit),
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              /// user name card
              Card(
                child: ListTile(
                  leading: Icon(Icons.person),
                  title: Text("Shahab Mustafa"),
                  trailing: IconButton(
                    onPressed: (){
                      showDialog(
                        context: context,
                        builder: (context){
                          return AlertDialog(
                            title: Text("Update UserName"),
                            content: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                TextFormField(
                                  decoration: InputDecoration(
                                    hintText: "User Name",
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                ElevatedButton(
                                  onPressed: (){

                                  },
                                  child: Text("Update"),
                                )
                              ],
                            ),
                          );
                        },
                      );
                    },
                    icon: Icon(Icons.edit),
                  ),
                ),
              ),
              /// email card
              Card(
                child: ListTile(
                  leading: Icon(Icons.email),
                  title: Text("shahabmustafa57@gmail.com"),
                  trailing: IconButton(
                    onPressed: (){
                      showDialog(
                        context: context,
                        builder: (context){
                          return AlertDialog(
                            title: Text("Update Email"),
                            content: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                TextFormField(
                                  decoration: InputDecoration(
                                    hintText: "Email",
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                ElevatedButton(
                                  onPressed: (){

                                  },
                                  child: Text("Update"),
                                )
                              ],
                            ),
                          );
                        },
                      );
                    },
                    icon: Icon(Icons.edit),
                  ),
                ),
              ),
              /// location card
              Card(
                child: ListTile(
                  leading: Icon(Icons.location_pin),
                  title: Text("Peshawar"),
                  trailing: IconButton(
                    onPressed: (){
                      showDialog(
                        context: context,
                        builder: (context){
                          return AlertDialog(
                            title: Text("Update Location"),
                            content: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                TextFormField(
                                  decoration: InputDecoration(
                                    hintText: "Location",
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                ElevatedButton(
                                  onPressed: (){

                                  },
                                  child: Text("Update"),
                                )
                              ],
                            ),
                          );
                        },
                      );
                    },
                    icon: Icon(Icons.edit),
                  ),
                ),
              ),
              /// phone number card
              Card(
                child: ListTile(
                  leading: Icon(Icons.phone),
                  title: Text("03***********"),
                  trailing: IconButton(
                    onPressed: (){
                      showDialog(
                        context: context,
                        builder: (context){
                          return AlertDialog(
                            title: Text("Update Phone Number"),
                            content: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                TextFormField(
                                  decoration: InputDecoration(
                                    hintText: "Phone Number",
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                ElevatedButton(
                                    onPressed: (){

                                    },
                                    child: Text("Update"),
                                )
                              ],
                            ),
                          );
                        },
                      );
                    },
                    icon: Icon(Icons.edit),
                  ),
                ),
              ),
              /// cnic card
              Card(
                child: ListTile(
                  leading: Icon(Icons.contact_mail),
                  title: Text("17**-*******-*"),
                  trailing: IconButton(
                    onPressed: (){
                      showDialog(
                        context: context,
                        builder: (context){
                          return AlertDialog(
                            title: Text("Update CNIC Number"),
                            content: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                TextFormField(
                                  decoration: InputDecoration(
                                    hintText: "CNIC Number",
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                ElevatedButton(
                                  onPressed: (){

                                  },
                                  child: Text("Update"),
                                )
                              ],
                            ),
                          );
                        },
                      );
                    },
                    icon: Icon(Icons.edit),
                  ),
                ),
              ),
              /// cnic card
              Card(
                child: ListTile(
                  leading: Icon(Icons.person),
                  title: Text("Shahab Mustafa"),
                  trailing: IconButton(
                    onPressed: (){
                      showDialog(
                        context: context,
                        builder: (context){
                          return AlertDialog(
                            title: Text("Update Phone Number"),
                            content: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                TextFormField(
                                  decoration: InputDecoration(
                                    hintText: "User Name",
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                ElevatedButton(
                                  onPressed: (){

                                  },
                                  child: Text("Update"),
                                )
                              ],
                            ),
                          );
                        },
                      );
                    },
                    icon: Icon(Icons.edit),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
