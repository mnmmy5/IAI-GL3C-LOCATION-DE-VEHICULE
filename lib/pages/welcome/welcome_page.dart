
import 'package:carrent/colors.dart';
import 'package:carrent/pages/home/home_page.dart';
import 'package:carrent/pages/welcome/widgets/background_image.dart';
import 'package:flutter/material.dart';
import 'package:carrent/pages/welcome/widgets/car_description.dart';
class WelcomePage extends StatelessWidget{
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context){
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          const BackgroundImage(),
          const SizedBox(
            height: 16,
          ), 
          Expanded(
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: size.width,
                  padding: const EdgeInsets.all(16),
                  decoration: const BoxDecoration(color: backgroundColor,
                   borderRadius: BorderRadius.vertical(
                    top: Radius.circular(30),
                    ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          height: size.height*0.5*0.2,
                          ),
                        const CarDescription(),
                        ElevatedButton(onPressed: () =>
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context)=>const HomePage()
                        ),
                        ), 
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(size.width, size.height*0.08),
                          backgroundColor: yellowColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)
                          ),
                        ),
                         child: Text(
                          "Demmarrer",
                          style: Theme.of(context)
                          .textTheme
                          .headlineSmall!
                          .copyWith(
                            color: backgroundColor,
                          ),
                          ),
                         ),
                    ],
                    ),
                ),
                Positioned(
                  top: size.height*0.5*0.7,
                  left: size.height*0.5*0.55,
                  child: SizedBox(
                    height: size.height*0.5,
                    child: Image.asset("assets/welcome.png", fit: BoxFit.fitHeight,),
                  ),
                  )
              ],
            ),
          ),
        ],
        ),
    );
  }
}


  