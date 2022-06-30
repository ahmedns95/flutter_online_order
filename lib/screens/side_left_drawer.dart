import 'package:flutter/material.dart';

class SideLeftDrawer extends StatelessWidget {
  const SideLeftDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            child: CircleAvatar(
              radius: 15.0,
              child: Icon(
                Icons.person,
                size: 60.0,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () {
              /*   Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MyHomePage(
                        title: 'Ahmed tech',
                      )) //change it to Details
              );*/
            },
          ),
          ListTile(
            leading: const Icon(Icons.favorite),
            title: const Text('Favorite'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.shopping_cart_outlined),
            title: const Text('Shopping bag'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.music_note),
            title: const Text('Play a game'),
            onTap: () {
              /*  Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Game(),
                ),
              );*/
            },
          ),
          const Divider(color: Colors.purple),
          ListTile(
            leading: const Icon(Icons.login),
            title: const Text('Login'),
            onTap: () {
              /*  Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LogInPage(),
                ),
              );*/
            },
          ),
          ListTile(
            leading: const Icon(Icons.app_registration),
            title: const Text('Register'),
            onTap: () {
              /*Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => RegisterPage(),
                ),
              );*/
            },
          ),
        ],
      ),
    );
  }
}
