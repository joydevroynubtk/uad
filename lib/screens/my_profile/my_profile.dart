import 'package:brain_school_starter/constants.dart';
import 'package:flutter/material.dart';

class MyProfileScreen extends StatelessWidget {
  const MyProfileScreen({Key? key}) : super(key: key);
  static String routeName = 'MyProfileScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Profile'),
        actions: [
          InkWell(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.only(right: kDefaultPadding / 2),
              child: Row(
                children: [
                  Icon(Icons.report_gmailerrorred_outlined),
                  kHalfWidthSizedBox,
                  Text(
                    'Report',
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      body: Container(
        color: kOtherColor,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 150,
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(kDefaultPadding * 2),
                  bottomLeft: Radius.circular(kDefaultPadding * 2),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    maxRadius: 50.0,
                    minRadius: 50.0,
                    backgroundColor: kSecondaryColor,
                    backgroundImage: AssetImage('assets/images/my_pic2.jpeg'),
                  ),
                  kWidthsizedBox,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Joydev Roy',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      Text(
                        'Hons 3rd years | 7th semester',
                        style: Theme.of(context).textTheme.titleSmall!.copyWith(
                              fontSize: 14.0,
                            ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            sizedBox,
            Container(
              padding: EdgeInsets.only(right: kDefaultPadding / 4, left: kDefaultPadding / 4,
              top: kDefaultPadding / 2),
              width: MediaQuery.of(context).size.width / 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Registration Number',
                        style:
                            Theme.of(context).textTheme.titleMedium!.copyWith(
                                  color: kTextLightColor,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15.0,
                                ),
                      ),
                      Text(
                        '11200120554',
                        style:
                            Theme.of(context).textTheme.titleMedium!.copyWith(
                                  color: kTextBlackColor,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15.0,
                                ),
                      ),
                      kHalfSizedBox,
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 3,
                        child: Divider(
                          thickness: 1.0,
                        ),
                      ),
                    ],
                  ),
                  Icon(Icons.lock_outline,size: 20.0,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
