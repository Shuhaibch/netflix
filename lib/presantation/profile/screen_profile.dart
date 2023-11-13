import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_app/core/constants/constants.dart';
import 'package:netflix_app/presantation/profile/widgets/center_share_part.dart';
import 'package:netflix_app/presantation/profile/widgets/profile_pic_widget.dart';
import 'package:netflix_app/presantation/profile/widgets/screen_mylist.dart';

import '../widgets/back_button_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const BackButtonWidget(),
                kheight2,

                //profile pic

                const ProfilePictureWidget(),

                // manage profile
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton.icon(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.edit,
                        color: Colors.grey,
                      ),
                      label: Text(
                        'Manage Profile',
                        style: TextStyle(
                          color: Colors.grey[50],
                        ),
                      ),
                    ),
                  ],
                ),

                //Tell Friends

                const CenterShareWidget(),

                //rest of settings

                InkWell(
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const ScreenMyList(),
                  )),
                  child: const RestOfSettings(
                    title: 'My List',
                  ),
                ),
                const RestOfSettings(
                  title: 'App Settings',
                ),
                const RestOfSettings(
                  title: 'Accounts',
                ),
                const RestOfSettings(
                  title: 'Help',
                ),
                const RestOfSettings(
                  title: 'Sign Out',
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class RestOfSettings extends StatelessWidget {
  final String title;
  const RestOfSettings({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 15,
        top: 12,
      ),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 18,
          fontFamily: GoogleFonts.nunitoSans().fontFamily,
          letterSpacing: 1,
        ),
      ),
    );
  }
}
