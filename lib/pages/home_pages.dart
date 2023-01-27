import 'package:cozy/models/city.dart';
import 'package:cozy/models/space.dart';
import 'package:cozy/models/tips.dart';
import 'package:cozy/theme.dart';
import 'package:cozy/widgets/bottom_navbar_item.dart';
import 'package:cozy/widgets/city_card.dart';
import 'package:cozy/widgets/space_card.dart';
import 'package:cozy/widgets/tips_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        bottom: false,
        child: ListView(
          children: [
            SizedBox(
              height: edge,
            ),
            // NOTE: TITLE/HEADER
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Explore Now',
                style: blackTextStyle.copyWith(
                  fontSize: 24,
                ),
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Mencari kosan yang Cozy',
                style: greyTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            // NOTE: POPULAR CITIES
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Popular Cities',
                style: regularTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const SizedBox(
                    width: 24,
                  ),
                  CityCard(City(
                    1,
                    'Jakarta',
                    'assets/city1.png',
                    false,
                  )),
                  const SizedBox(
                    width: 24,
                  ),
                  CityCard(City(
                    2,
                    'Bandung',
                    'assets/city2.png',
                    true,
                  )),
                  const SizedBox(
                    width: 20,
                  ),
                  CityCard(City(
                    3,
                    'Surabaya',
                    'assets/city3.png',
                    false,
                  )),
                  const SizedBox(
                    width: 20,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            // NOTE: RECOMENDED SPACE
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Recomended Space',
                style: regularTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: edge,
              ),
              child: Column(
                children: [
                  SpaceCard(
                    Space(
                      1,
                      'Kuretakeso Hott',
                      'assets/space1.png',
                      52,
                      'Bandung',
                      'Germany',
                      4,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  SpaceCard(Space(
                    2,
                    'Roemah Nenek',
                    'assets/space2.png',
                    11,
                    'Seattle',
                    'Bogor',
                    5,
                  )),
                  const SizedBox(
                    height: 30,
                  ),
                  SpaceCard(
                    Space(
                      3,
                      'Darrling How',
                      'assets/space3.png',
                      20,
                      'Jakarta',
                      'Indonesia',
                      3,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            // NOTE: TIPS & GUIDANCE
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Tips & Guidance',
                style: regularTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: edge),
              child: Column(
                children: [
                  TipsCard(
                    Tips(
                      1,
                      'City Guidelines',
                      'assets/tips1.png',
                      '10 Sep',
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TipsCard(
                    Tips(
                      2,
                      'Jakarta Fairship',
                      'assets/tips2.png',
                      '09 Sep',
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 80 + edge,
            ),
            // Container(
            //   height: 65,
            //   width: MediaQuery.of(context).size.width - (2 * edge),
            //   margin: EdgeInsets.symmetric(
            //     horizontal: edge,
            //   ),
            //   decoration: BoxDecoration(
            //     color: const Color(0xffF6F7F8),
            //     borderRadius: BorderRadius.circular(23),
            //   ),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceAround,
            //     // ignore: prefer_const_literals_to_create_immutables
            //     children: [
            //       const BottomNavbarItem(
            //         'assets/icon_home.png',
            //         true,
            //       ),
            //       const BottomNavbarItem(
            //         'assets/icon_email.png',
            //         false,
            //       ),
            //       const BottomNavbarItem(
            //         'assets/icon_card.png',
            //         false,
            //       ),
            //       const BottomNavbarItem(
            //         'assets/icon_fav.png',
            //         false,
            //       ),
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
      floatingActionButton: Container(
        height: 65,
        width: MediaQuery.of(context).size.width - (2 * edge),
        margin: EdgeInsets.symmetric(
          horizontal: edge,
        ),
        decoration: BoxDecoration(
          color: const Color(0xffF6F7F8),
          borderRadius: BorderRadius.circular(23),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const BottomNavbarItem(
              'assets/icon_home.png',
              true,
            ),
            const BottomNavbarItem(
              'assets/icon_email.png',
              false,
            ),
            const BottomNavbarItem(
              'assets/icon_card.png',
              false,
            ),
            const BottomNavbarItem(
              'assets/icon_fav.png',
              false,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
