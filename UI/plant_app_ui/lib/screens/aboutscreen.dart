
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../widget.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key});

  @override
  AboutScreenState createState() => AboutScreenState();
}

class AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      appBar: customAppBar(title: 'About Us'),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            ClipOval(
              child: Image.asset(
                'assets/1.png',
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Center(
                child: ClipOval(
                  child: Container(
                    alignment: Alignment.center,
                    height: 90,
                    padding: const EdgeInsets.all(5),
                    color: const Color.fromRGBO(118, 152, 75, 1),
                    child: Text(
                      'Welcome to Plantify',
                      style: textStyleHeadingData(
                          color: const Color.fromRGBO(255, 255, 255, 1)),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child:Text(
  'We\'re a team of green-thumbed enthusiasts dedicated to bringing you the best plants and gardening essentials. Our mission is to help you grow your love for nature, one plant at a time. We strive to make your plant shopping experience seamless, enjoyable, and rooted in excellence.',
  textAlign: TextAlign.center,
  style: textStyleData16(),
),
            ),
            sizedBox20(),
            sizedBox20(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.phone,
                    size: 24, color: Color.fromRGBO(118, 152, 75, 1)),
                sizedBoxWidth10(),
                Text(
                  '+91 9356176691',
                  style: textStyleData18(),
                ),
                sizedBoxWidth20(),
                GestureDetector(
                  onTap: () async {
                    await launch('tel:+919356176691');
                  },
                  child: const Text(
                    'Call us',
                    style: TextStyle(
                        fontSize: 18, color: Color.fromRGBO(118, 152, 75, 1)),
                  ),
                ),
              ],
            ),
            sizedBox10(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.email,
                    size: 24, color: Color.fromRGBO(118, 152, 75, 1)),
                sizedBoxWidth10(),
                Text(
                  'kshirsanika27@gmail.com',
                  style: textStyleData18(),
                ),
                sizedBoxWidth20(),
                GestureDetector(
                  onTap: () async {
                    await launch('mailto:kshirsanika27@gmail.com');
                  },
                  child: const Text(
                    'Email us',
                    style: TextStyle(
                        fontSize: 18, color: Color.fromRGBO(118, 152, 75, 1)),
                  ),
                ),
              ],
            ),
            sizedBox10(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.location_on,
                    size: 24, color: Color.fromRGBO(118, 152, 75, 1)),
                sizedBoxWidth10(),
                Text(
                  '123 Main St, Anytown, Pune',
                  style: textStyleData18(),
                ),
              ],
            ),
            sizedBox20(),
            Container(
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Image.network(
                      'https://cdn3.iconfinder.com/data/icons/2018-social-media-logotypes/1000/2018_social_media_popular_app_logo_facebook-256.png',
                      height: 30,
                      width: 30,
                    ),
                    onPressed: () async {
                      await launchUrl(Uri.parse('https://facebook.com/'));
                    },
                  ),
                  const SizedBox(width: 16),
                  IconButton(
                    icon: Image.network(
                      'https://cdn3.iconfinder.com/data/icons/2018-social-media-logotypes/1000/2018_social_media_popular_app_logo_instagram-512.png',
                      height: 30,
                      width: 30,
                    ),
                    onPressed: () async {
                      await launchUrl(Uri.parse('https://instagram.com/'));
                    },
                  ),
                  const SizedBox(width: 16),
                  IconButton(
                    icon: Image.network(
                      'https://cdn4.iconfinder.com/data/icons/social-media-black-white-2/1227/X-512.png',
                      height: 30,
                      width: 30,
                    ),
                    onPressed: () async {
                      await launchUrl(Uri.parse(
                          'https://twitter.com/')); 
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
