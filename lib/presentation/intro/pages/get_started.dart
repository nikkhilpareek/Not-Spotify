import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:notspotify/common/widgets/button/basic_app_button.dart';
import 'package:notspotify/core/config/assets/app_images.dart';
import 'package:notspotify/core/config/assets/app_vectors.dart';
import 'package:notspotify/core/config/theme/app_colors.dart';
import 'package:notspotify/presentation/choose_mode/pages/choose_mode.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              vertical: 40,
              horizontal: 40,
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(AppImages.introBg),
                )
            ),
          ),
          Container(
            // ignore: deprecated_member_use
            color: Colors.black.withOpacity(0.15),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 40,
              horizontal: 40,
            ),
            child: Column(
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: SvgPicture.asset(
                      AppVectors.logo,
                    ),
                  ),
                  Spacer(),
                  Text(
                    'Enjoy Listening to Music',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: 21,),
                  Text(
                    'Dive into the unimaginable world of Music',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: AppColors.grey,
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20,),
                  BasicAppButton(
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (BuildContext context) => const ChooseMode()),
                      );
                    },
                    title: 'Get Started')
                ],
              ),
          ),
        ],
      )
    );
  }
}