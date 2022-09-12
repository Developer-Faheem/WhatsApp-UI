import 'package:flutter/material.dart';
import 'package:whatsapp/info.dart';
import 'package:whatsapp/colors.dart';
import 'package:whatsapp/responsive/mobile_chat_Screen.dart';

class ContactsList extends StatelessWidget {
  const ContactsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: info.length,
      itemBuilder: (BuildContext context, int index) {
        //index represents the currents item of the list info
        return Column(
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MobileChatScreen(),
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  title: Text(
                    info[index]['name'].toString(),
                    style: TextStyle(fontSize: 18),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 6),
                    child: Text(
                      info[index]['message'].toString(),
                      style: TextStyle(fontSize: 15, color: Colors.grey),
                    ),
                  ),
                  trailing: Text(
                    info[index]['time'].toString(),
                    style: TextStyle(fontSize: 13, color: Colors.grey),
                  ),
                  leading: CircleAvatar(
                    radius: 33,
                    backgroundImage: NetworkImage(
                      info[index]['profilePic'].toString(),
                    ),
                  ),
                ),
              ),
            ),
            const Divider(
              // color: Colors.orange,
              indent: 85.0,
              // thickness: 3,
            ),
          ],
        );
      },
    );
  }
}
