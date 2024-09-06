import 'package:ecommerce_app/themes/theme_provider.dart';
import 'package:ecommerce_app/utils/my_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // drawer header
          Column(
            children: [
              Theme(
                data: Theme.of(context).copyWith(
                  dividerTheme:
                      const DividerThemeData(color: Colors.transparent),
                ),
                child: DrawerHeader(
                  child: Icon(
                    Icons.shopping_bag,
                    size: 72,
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
              ),

              const SizedBox(height: 25),

              // shop tile

              MyListTile(
                text: "Shop",
                icon: Icons.home,
                onTap: () => Navigator.pop(context),
              ),

              // cart tile
              MyListTile(
                text: "Cart",
                icon: Icons.shopping_cart,
                onTap: () {
                  Navigator.pop(context);

                  Navigator.pushNamed(context, '/cart_page');
                },
              ),
            ],
          ),

          Column(
            children: [
              MyListTile(
                text: "Dark Theme",
                icon: Icons.dark_mode,
                onTap: () {
                  Provider.of<ThemeProvider>(context, listen: false)
                      .toggleTheme();
                },
              ),

              // logout button
              Padding(
                padding: const EdgeInsets.only(bottom: 25),
                child: MyListTile(
                  text: "Logout",
                  icon: Icons.logout,
                  onTap: () => Navigator.pushNamedAndRemoveUntil(
                      context, '/intro_page', (route) => false),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
