import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final List<IconData> iconList = [Icons.home, Icons.person];

  int _bottomNavIndex = 0;

  final _numberController = TextEditingController();

  final _nameController = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          toolbarHeight: 90,
          backgroundColor: Colors.indigo,
          centerTitle: true,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(13.0),
              bottomRight: Radius.circular(13.0),
            ),
          ),
          title: const Text(
            'Profile',
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
          leading: IconButton(
            icon: Icon(Icons.exit_to_app,),
            onPressed: () {},
          )),
      body: Container(
        padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.02),
        color: Colors.white,
        child: ListView(
          children: [
            Container(
              padding: const EdgeInsets.only(
                  top: 30, left: 22, right: 24, bottom: 21),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                  const BorderRadius.all(Radius.circular(10.0)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 1,
                      blurRadius: 3,
                      offset: const Offset(0, 3),
                    ),
                  ]),
              child: Form(
                child: Column(
                  children: [
                    const Align(
                      alignment: Alignment.topLeft,
                      child: Text('Имя'),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
                        color: const Color(0xFFEFF2F7),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: TextFormField(
                        controller: _nameController,
                        decoration: InputDecoration(
                            fillColor: Colors.red,
                            border: InputBorder.none,
                            suffix: TextButton(
                              child: const Text('изменить'),
                              onPressed: () {
                                setState(() {});
                              },
                            )),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Align(
                      alignment: Alignment.topLeft,
                      child: Text('Телефон'),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
                        color: const Color(0xFFEFF2F7),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: TextFormField(
                        controller: _numberController,
                        decoration: const InputDecoration(
                          fillColor: Colors.red,
                          border: InputBorder.none,
                        ),
                        keyboardType: TextInputType.phone,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              margin: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.02,
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.135,
                    vertical: MediaQuery.of(context).size.height * 0.02,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  primary: Colors.indigo,
                ),
                child: const Text(
                  'История добавления товара',
                  style: TextStyle(fontSize: 19.0),
                ),
                onPressed: () {
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton:floatinActionButton(context),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        activeColor: Colors.indigo,
        inactiveColor: Colors.blueAccent,
        icons: iconList,
        activeIndex: _bottomNavIndex,
        gapLocation: GapLocation.center,
        onTap: (index) => setState(() => _bottomNavIndex = index),
      ),
    );
  }
}
