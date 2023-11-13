import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:netflix_app/presantation/profile/widgets/share_images.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../core/constants/constants.dart';

const copytext = 'netflix.shuhaib.share';

class CenterShareWidget extends StatelessWidget {
  const CenterShareWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[900],
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              children: [
                Icon(Icons.message),
                kwidth,
                Text(
                  "Tell Friends About Netflix.",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
            kheight,
            const Text(
              'Share this link so your friends can join the conversation around all the favorite TV shows and movies.',
              style: TextStyle(fontSize: 13),
            ),
            kheight,
            InkWell(
              child: Text(
                'Terms & Conditions',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  color: Colors.grey[500],
                  fontSize: 14,
                  letterSpacing: .3,
                ),
              ),
              onTap: () => launchUrl(
                Uri.parse('https://help.netflix.com/legal/termsofuse'),
              ),
            ),
            kheight,
            Container(
              height: 50,
              color: Colors.black,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Text(
                      copytext,
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  kwidth2,
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 2.0,
                    ),
                    child: TextButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white),
                      ),
                      onPressed: () {
                        Clipboard.setData(const ClipboardData(text: copytext))
                            .then(
                          (_) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('Copied to your clipboard !'),
                              ),
                            );
                          },
                        );
                      },
                      child: const Text(
                        "Copy Link",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),

            // share images

            kheight2,

            const Padding(
              padding: EdgeInsets.only(
                bottom: 8,
              ),
              child: ShareImageButtons(),
            ),
          ],
        ),
      ),
    );
  }
}
