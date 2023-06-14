import 'package:flutter/material.dart';
import 'package:gmail/gmail.model.dart';
import 'package:gmail/raw_data.dart';

class GmailHomeScreen extends StatelessWidget {
  GmailHomeScreen({super.key});
  final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    for (var element in drawerApi) {
      drawerData.add(
        DrawerDetails.fromJson(element),
      );
    }

    for (var element in allEmailsApi) {
      allEmailsData.add(
        AllEmailsDetails.fromJson(element),
      );
    }

    return Scaffold(
      key: _key,
      backgroundColor: Colors.cyan[50],
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 30,
                right: 30,
                top: 10,
              ),
              child: Row(
                children: [
                  Container(
                    height: 50,
                    width: 450,
                    decoration: BoxDecoration(
                      color: Colors.cyan[100],
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: IconButton(
                            onPressed: () {
                              _key.currentState!.openDrawer();
                            },
                            icon: const Icon(
                              Icons.menu,
                            ),
                          ),
                        ),
                        const Expanded(
                          flex: 4,
                          child: Text('Search in media'),
                        ),
                        const Expanded(
                          child: CircleAvatar(
                            radius: 18,
                            backgroundImage: NetworkImage(
                                'https://thumbnailer.mixcloud.com/unsafe/160x160/tmp/a/a/5/0/84c3-1e68-44ec-b8aa-58a2389edc13'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15, top: 15),
              child: Text(
                'Inbox',
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
            ),
            ...List.generate(
              allEmailsData.length,
              (index) => InkWell(
                onTap: () {},
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: allEmailsData[index].circleAvtarColor!,
                    child: Text(
                      allEmailsData[index]
                          .senderName!
                          .characters
                          .first
                          .toUpperCase(),
                      style: const TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  title: Text(
                    allEmailsData[index].senderName!,
                  ),
                  subtitle: Text(
                    allEmailsData[index].emailSubject!,
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    ),
                  ),
                  isThreeLine: true,
                  trailing: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        allEmailsData[index].emailRecieveTime!,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Icon(
                        allEmailsData[index].icon!,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.cyan[50],
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Gmail',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.red,
                  ),
                ),
              ),
              const Divider(
                thickness: 2,
              ),
              ...List.generate(
                drawerData.length,
                (index) {
                  if (drawerData[index].iconName == null) {
                    return const Divider(
                      thickness: 2,
                    );
                  } else if (drawerData[index].icon == null) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 16, top: 10),
                      child: Text(
                        drawerData[index].iconName!,
                        style: const TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    );
                  } else if (drawerData[index].emailsCount == null) {
                    return InkWell(
                      onTap: () {},
                      child: ListTile(
                        leading: Icon(drawerData[index].icon!),
                        title: Text(drawerData[index].iconName!),
                      ),
                    );
                  } else {
                    return InkWell(
                      onTap: () {},
                      child: ListTile(
                        leading: Icon(drawerData[index].icon!),
                        title: Text(drawerData[index].iconName!),
                        trailing: Text(
                          drawerData[index].emailsCount!.toString(),
                        ),
                      ),
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.cyan[50],
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.mail),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.videocam_outlined),
            label: '',
          ),
        ],
      ),
      floatingActionButton: InkWell(
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 50,
            width: 125,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.cyan[50],
              border: Border.all(),
            ),
            child: const Row(
              children: [
                Expanded(
                  child: Icon(
                    Icons.edit,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Text('Compose'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
