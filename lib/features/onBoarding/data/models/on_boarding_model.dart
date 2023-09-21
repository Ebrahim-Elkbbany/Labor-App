import 'package:labor_app/core/utils/assets.dart';

class OnBoardingModel {
  final String image;
  final String text;
  final String subText;

  OnBoardingModel({required this.image, required this.text,required this.subText});

  static List<OnBoardingModel> boarding = [
    OnBoardingModel(
      image: AssetsData.onBoarding1,
      text: 'Easy Process',
      subText: 'Find all your house needs in one place. \nWe provide every service to make your \nhome experience smooth.',
    ),
    OnBoardingModel(
      image: AssetsData.onBoarding2,
      text: 'Expert People',
      subText: 'We have the best in class individuals \nworking just for you. They are well  \ntrained and capable of handling \nanything you need.',
    ),
    OnBoardingModel(
      image: AssetsData.onBoarding3,
      text: 'All In One Place',
      subText: 'We have all the household services \nyou need on a daily basis with \neasy access',
    ),
  ];
}