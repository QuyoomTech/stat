import 'dart:core';
import 'package:flutter/material.dart';
import 'package:saathi/pages/contact_us.dart';
import 'package:url_launcher/url_launcher.dart';

class MobileLandingPage extends StatelessWidget {
  const MobileLandingPage({super.key});

  void _launchURL(String url) async {
    // ignore: deprecated_member_use
    if (await canLaunch(url)) {
      // ignore: deprecated_member_use
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: DefaultTextStyle(
        style: const TextStyle(fontFamily: 'Utendo'),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              //File download from FlutterViz- Drag and drop a tools. For more details visit https://flutterviz.io/
              Stack(
                alignment: Alignment.topLeft,
                children: [
                  ///***If you have exported images you must have to copy those images in assets/images directory.
                  Image(
                    image: const NetworkImage(
                        "https://images.pexels.com/photos/1448736/pexels-photo-1448736.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                    height: 800,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover,
                    colorBlendMode: BlendMode.dstOver, // or BlendMode.srcOver
                    color: Colors.black
                        .withOpacity(0.2), // adjust the opacity value
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(18, 18, 18, 0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            ///***If you have exported images you must have to copy those images in assets/images directory.
                            const Image(
                              image: AssetImage("assets/images/saathi.png"),
                              height: 50,
                              width: 90,
                              fit: BoxFit.fitWidth,
                            ),
                            const Expanded(
                              flex: 1,
                              child: SizedBox(
                                height: 16,
                                width: 16,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const ContactPage()),
                                );
                              },
                              child: Container(
                                margin: EdgeInsets.zero,
                                padding: EdgeInsets.zero,
                                width: 130,
                                height: 50,
                                decoration: BoxDecoration(
                                  //color: Color(0x1f000000),
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(25.0),
                                  border: Border.all(
                                      color: const Color(0xffb4f000), width: 1),
                                ),
                                child: const Align(
                                  alignment: Alignment(0.0, 0.0),
                                  child: Text(
                                    "Contact us",
                                    textAlign: TextAlign.start,
                                    overflow: TextOverflow.clip,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FontStyle.normal,
                                      fontSize: 16,
                                      color: Color(0xffb4f000),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 380,
                          width: 16,
                        ),
                        const Text(
                          "Explore heaven with Saathi Tour and Travels on earth",
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.clip,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontStyle: FontStyle.normal,
                            fontSize: 36,
                            color: Color(0xffffffff),
                          ),
                        ),
                        const SizedBox(
                          height: 22,
                          width: 16,
                        ),
                        const Text(
                          "“Your happiness is our promise”",
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.clip,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                            fontSize: 20,
                            color: Color(0xffffffff),
                          ),
                        ),
                        const SizedBox(
                          height: 22,
                          width: 16,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const ContactPage()),
                            );
                          },
                          child: Container(
                            margin: EdgeInsets.zero,
                            padding: EdgeInsets.zero,
                            width: 324,
                            height: 60,
                            decoration: BoxDecoration(
                              color: const Color(0xffb4f000),
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            child: const Align(
                              alignment: Alignment.center,
                              child: Text(
                                "Plan my trip",
                                textAlign: TextAlign.center,
                                overflow: TextOverflow.clip,
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 20,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 22,
                width: 16,
              ),
              const SizedBox(
                height: 22,
                width: 16,
              ),
              Container(
                margin: const EdgeInsets.all(18),
                padding:
                    const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: const Color(0xffb4f000),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      "Welcome to Saathi Tour and Travels",
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.clip,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.normal,
                        fontSize: 36,
                        color: Color(0xff000000),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                      width: 16,
                    ),
                    Text(
                      "Are you ready to explore one of the most breathtaking destinations on Earth? Nestled in the heart of the Himalayas, Kashmir is a paradise on earth, offering an unforgettable experience for every traveler. From serene lakes and lush valleys to majestic mountains and vibrant local culture, Kashmir has it all.",
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.clip,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        fontSize: 16,
                        color: Color(0xff525252),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 0, horizontal: 18),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    const Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 50, horizontal: 0),
                      child: Text(
                        "Why Choose Saathi Tour and Traveller",
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.clip,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontStyle: FontStyle.normal,
                          fontSize: 36,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),

                    Container(
                      // margin: EdgeInsets.all(18),
                      //padding: EdgeInsets.zero,
                      width: 324,
                      height: 364,
                      decoration: const BoxDecoration(
                        color: Color(0x00000000),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.zero,
                      ),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          ///***If you have exported images you must have to copy those images in assets/images directory.
                          Image(
                            image: AssetImage(
                                'assets/images/expert_local_guides.png'),
                            height: 100,
                            width: 100,
                            fit: BoxFit.cover,
                          ),

                          SizedBox(
                            height: 16,
                            width: 16,
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              "Expert Local Guides",
                              textAlign: TextAlign.center,
                              overflow: TextOverflow.clip,
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontStyle: FontStyle.normal,
                                fontSize: 36,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),

                          SizedBox(
                            height: 16,
                            width: 16,
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              "Our knowledgeable and friendly guides are passionate about Kashmir. They'll ensure you don't miss any hidden gems and provide you with an authentic experience.",
                              textAlign: TextAlign.center,
                              overflow: TextOverflow.clip,
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal,
                                fontSize: 14,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(
                      height: 16,
                      width: 16,
                    ),
                    Container(
                      // margin: EdgeInsets.all(18),
                      //padding: EdgeInsets.zero,
                      width: 324,
                      height: 364,
                      decoration: const BoxDecoration(
                        color: Color(0x00000000),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.zero,
                      ),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          ///***If you have exported images you must have to copy those images in assets/images directory.
                          Image(
                            image: AssetImage(
                                'assets/images/Comfortable Accommodations.png'),
                            height: 100,
                            width: 100,
                            fit: BoxFit.cover,
                          ),

                          SizedBox(
                            height: 16,
                            width: 16,
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              "Comfortable Accommodations",
                              textAlign: TextAlign.center,
                              overflow: TextOverflow.clip,
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontStyle: FontStyle.normal,
                                fontSize: 36,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),

                          SizedBox(
                            height: 16,
                            width: 16,
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              "Rest easy in our handpicked accommodations, ranging from cozy homestays to luxurious hotels, ensuring you have a comfortable stay after your day's adventures.",
                              textAlign: TextAlign.center,
                              overflow: TextOverflow.clip,
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal,
                                fontSize: 14,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(
                      height: 16,
                      width: 16,
                    ),
                    Container(
                      // margin: EdgeInsets.all(18),
                      //padding: EdgeInsets.zero,
                      width: 324,
                      height: 364,
                      decoration: const BoxDecoration(
                        color: Color(0x00000000),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.zero,
                      ),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          ///***If you have exported images you must have to copy those images in assets/images directory.
                          Image(
                            image: AssetImage(
                                'assets/images/Adventure Activities.png'),
                            height: 100,
                            width: 100,
                            fit: BoxFit.cover,
                          ),

                          SizedBox(
                            height: 16,
                            width: 16,
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              "Adventure Activities",
                              textAlign: TextAlign.center,
                              overflow: TextOverflow.clip,
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontStyle: FontStyle.normal,
                                fontSize: 36,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),

                          SizedBox(
                            height: 16,
                            width: 16,
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              "Thrill-seekers can indulge in trekking, skiing, paragliding, and more. Explore the stunning landscapes of Kashmir with activities that get your adrenaline pumping.",
                              textAlign: TextAlign.center,
                              overflow: TextOverflow.clip,
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal,
                                fontSize: 14,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(
                      height: 16,
                      width: 16,
                    ),
                    Container(
                      // margin: EdgeInsets.all(18),
                      //padding: EdgeInsets.zero,
                      width: 324,
                      height: 364,
                      decoration: const BoxDecoration(
                        color: Color(0x00000000),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.zero,
                      ),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          ///***If you have exported images you must have to copy those images in assets/images directory.
                          Image(
                            image: AssetImage(
                                'assets/images/Safety and Convenience.png'),
                            height: 100,
                            width: 100,
                            fit: BoxFit.cover,
                          ),

                          SizedBox(
                            height: 16,
                            width: 16,
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              "Safety and Convenience",
                              textAlign: TextAlign.center,
                              overflow: TextOverflow.clip,
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontStyle: FontStyle.normal,
                                fontSize: 36,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),

                          SizedBox(
                            height: 16,
                            width: 16,
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              "Your safety is our top priority. We offer reliable transportation and 24/7 support to ensure your trip is smooth and worry-free.",
                              textAlign: TextAlign.center,
                              overflow: TextOverflow.clip,
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal,
                                fontSize: 14,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(
                      height: 16,
                      width: 16,
                    ),
                    const Text(
                      "Top Destination for Your Next Vacation",
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.clip,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.normal,
                        fontSize: 36,
                        color: Color(0xff000000),
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                      width: 16,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          // card Destinatio 1
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: 300,
                                height: 300,
                                decoration: ShapeDecoration(
                                  image: const DecorationImage(
                                    image: NetworkImage(
                                        "https://images.pexels.com/photos/9689915/pexels-photo-9689915.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                                    fit: BoxFit.fill,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 16,
                                width: 16,
                              ),
                              const Text(
                                "Bangus Valley",
                                textAlign: TextAlign.start,
                                overflow: TextOverflow.clip,
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 24,
                                  color: Color(0xff000000),
                                ),
                              ),
                              const SizedBox(
                                height: 4,
                                width: 16,
                              ),
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Icon(
                                    Icons.location_on,
                                    color: Color(0xff696969),
                                    size: 24,
                                  ),
                                  SizedBox(
                                    height: 16,
                                    width: 16,
                                  ),
                                  Text(
                                    "Kupwara, Jammu and Kashmir",
                                    textAlign: TextAlign.start,
                                    overflow: TextOverflow.clip,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontStyle: FontStyle.normal,
                                      fontSize: 14,
                                      color: Color(0xff696969),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          //Card Destination End
                          const SizedBox(width: 10),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: 300,
                                height: 300,
                                decoration: ShapeDecoration(
                                  image: const DecorationImage(
                                    image: NetworkImage(
                                        "https://images.pexels.com/photos/24513295/pexels-photo-24513295/free-photo-of-hotel-in-the-jammu-and-kashmir-valley-in-summer.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                                    fit: BoxFit.fill,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 16,
                                width: 16,
                              ),
                              const Text(
                                "Gulmarg",
                                textAlign: TextAlign.start,
                                overflow: TextOverflow.clip,
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 24,
                                  color: Color(0xff000000),
                                ),
                              ),
                              const SizedBox(
                                height: 4,
                                width: 16,
                              ),
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Icon(
                                    Icons.location_on,
                                    color: Color(0xff696969),
                                    size: 24,
                                  ),
                                  SizedBox(
                                    height: 16,
                                    width: 16,
                                  ),
                                  Text(
                                    "Baramulla, Jammu and Kashmir",
                                    textAlign: TextAlign.start,
                                    overflow: TextOverflow.clip,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontStyle: FontStyle.normal,
                                      fontSize: 14,
                                      color: Color(0xff696969),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(width: 10),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: 300,
                                height: 300,
                                decoration: ShapeDecoration(
                                  image: const DecorationImage(
                                    image: NetworkImage(
                                        "https://images.pexels.com/photos/14691405/pexels-photo-14691405.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                                    fit: BoxFit.fill,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 16,
                                width: 16,
                              ),
                              const Text(
                                "Sonamarg",
                                textAlign: TextAlign.start,
                                overflow: TextOverflow.clip,
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 24,
                                  color: Color(0xff000000),
                                ),
                              ),
                              const SizedBox(
                                height: 4,
                                width: 16,
                              ),
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Icon(
                                    Icons.location_on,
                                    color: Color(0xff696969),
                                    size: 24,
                                  ),
                                  SizedBox(
                                    height: 16,
                                    width: 16,
                                  ),
                                  Text(
                                    "Ganderbal, Jammu and Kashmir",
                                    textAlign: TextAlign.start,
                                    overflow: TextOverflow.clip,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontStyle: FontStyle.normal,
                                      fontSize: 14,
                                      color: Color(0xff696969),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(width: 10),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: 300,
                                height: 300,
                                decoration: ShapeDecoration(
                                  image: const DecorationImage(
                                    image: NetworkImage(
                                        "https://images.pexels.com/photos/16930780/pexels-photo-16930780/free-photo-of-shalimar-bagh-mughal-garden-in-srinagar-india.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                                    fit: BoxFit.fill,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 16,
                                width: 16,
                              ),
                              const Text(
                                "Shalimar Bagh",
                                textAlign: TextAlign.start,
                                overflow: TextOverflow.clip,
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 24,
                                  color: Color(0xff000000),
                                ),
                              ),
                              const SizedBox(
                                height: 4,
                                width: 16,
                              ),
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Icon(
                                    Icons.location_on,
                                    color: Color(0xff696969),
                                    size: 24,
                                  ),
                                  SizedBox(
                                    height: 16,
                                    width: 16,
                                  ),
                                  Text(
                                    "Srinagar, Jammu and Kashmir",
                                    textAlign: TextAlign.start,
                                    overflow: TextOverflow.clip,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontStyle: FontStyle.normal,
                                      fontSize: 14,
                                      color: Color(0xff696969),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(width: 10),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: 300,
                                height: 300,
                                decoration: ShapeDecoration(
                                  image: const DecorationImage(
                                    image: NetworkImage(
                                        "https://images.pexels.com/photos/27497828/pexels-photo-27497828/free-photo-of-gulmarg.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                                    fit: BoxFit.fill,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 16,
                                width: 16,
                              ),
                              const Text(
                                "Doodhpathri",
                                textAlign: TextAlign.start,
                                overflow: TextOverflow.clip,
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 24,
                                  color: Color(0xff000000),
                                ),
                              ),
                              const SizedBox(
                                height: 4,
                                width: 16,
                              ),
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Icon(
                                    Icons.location_on,
                                    color: Color(0xff696969),
                                    size: 24,
                                  ),
                                  SizedBox(
                                    height: 16,
                                    width: 16,
                                  ),
                                  Text(
                                    "Budgam, Jammu and Kashmir",
                                    textAlign: TextAlign.start,
                                    overflow: TextOverflow.clip,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontStyle: FontStyle.normal,
                                      fontSize: 14,
                                      color: Color(0xff696969),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ), //Card Destination End
                        ],
                      ),
                    ),
                    //Explore our Popular Packages

                    const SizedBox(
                      height: 50,
                      width: 16,
                    ),

                    const Text(
                      "Explore our Popular Packages",
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.clip,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.normal,
                        fontSize: 36,
                        color: Color(0xff000000),
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                      width: 16,
                    ),
                    // row
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          ///File download from FlutterViz- Drag and drop a tools. For more details visit https://flutterviz.io/
                          // Package card
                          Container(
                            margin: EdgeInsets.zero,
                            padding: EdgeInsets.zero,
                            width: 324,
                            height: 520,
                            decoration: const BoxDecoration(
                              color: Color(0x00000000),
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.zero,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                ///***If you have exported images you must have to copy those images in assets/images directory.
                                Container(
                                  width: 324,
                                  height: 324,
                                  decoration: ShapeDecoration(
                                    image: const DecorationImage(
                                      image: NetworkImage(
                                          "https://images.pexels.com/photos/24778701/pexels-photo-24778701/free-photo-of-rocks-in-stream-in-a-mountain-valley.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                                      fit: BoxFit.fill,
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),

                                const SizedBox(
                                  height: 16,
                                  width: 16,
                                ),
                                const Text(
                                  "Bangus valley",
                                  textAlign: TextAlign.start,
                                  overflow: TextOverflow.clip,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FontStyle.normal,
                                    fontSize: 24,
                                    color: Color(0xff000000),
                                  ),
                                ),

                                const SizedBox(
                                  height: 16,
                                  width: 16,
                                ),
                                const Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      "₹29000 /",
                                      textAlign: TextAlign.start,
                                      overflow: TextOverflow.clip,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontStyle: FontStyle.normal,
                                        fontSize: 20,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                    Text(
                                      "3 days 2 nights",
                                      textAlign: TextAlign.start,
                                      overflow: TextOverflow.clip,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontStyle: FontStyle.normal,
                                        fontSize: 14,
                                        color: Color(0xff696969),
                                      ),
                                    ),
                                  ],
                                ),

                                const SizedBox(
                                  height: 16,
                                  width: 16,
                                ),
                                Container(
                                  margin: EdgeInsets.zero,
                                  padding: EdgeInsets.zero,
                                  width: 324,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: const Color(0xffb4f000),
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: const Align(
                                    alignment: Alignment(0.0, 0.0),
                                    child: Text(
                                      "Get Quote",
                                      textAlign: TextAlign.start,
                                      overflow: TextOverflow.clip,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontStyle: FontStyle.normal,
                                        fontSize: 16,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // package card end
                          const SizedBox(width: 10),
                          // Package card
                          Container(
                            margin: EdgeInsets.zero,
                            padding: EdgeInsets.zero,
                            width: 324,
                            height: 520,
                            decoration: const BoxDecoration(
                              color: Color(0x00000000),
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.zero,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                ///***If you have exported images you must have to copy those images in assets/images directory.
                                Container(
                                  width: 324,
                                  height: 324,
                                  decoration: ShapeDecoration(
                                    image: const DecorationImage(
                                      image: NetworkImage(
                                          "https://images.pexels.com/photos/24513295/pexels-photo-24513295/free-photo-of-hotel-in-the-jammu-and-kashmir-valley-in-summer.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                                      fit: BoxFit.fill,
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),

                                const SizedBox(
                                  height: 16,
                                  width: 16,
                                ),
                                const Text(
                                  "Gulmarg",
                                  textAlign: TextAlign.start,
                                  overflow: TextOverflow.clip,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FontStyle.normal,
                                    fontSize: 24,
                                    color: Color(0xff000000),
                                  ),
                                ),

                                const SizedBox(
                                  height: 16,
                                  width: 16,
                                ),
                                const Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      "₹29000 /",
                                      textAlign: TextAlign.start,
                                      overflow: TextOverflow.clip,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontStyle: FontStyle.normal,
                                        fontSize: 20,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                    Text(
                                      "3 days 2 nights",
                                      textAlign: TextAlign.start,
                                      overflow: TextOverflow.clip,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontStyle: FontStyle.normal,
                                        fontSize: 14,
                                        color: Color(0xff696969),
                                      ),
                                    ),
                                  ],
                                ),

                                const SizedBox(
                                  height: 16,
                                  width: 16,
                                ),
                                Container(
                                  margin: EdgeInsets.zero,
                                  padding: EdgeInsets.zero,
                                  width: 324,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: const Color(0xffb4f000),
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: const Align(
                                    alignment: Alignment(0.0, 0.0),
                                    child: Text(
                                      "Get Quote",
                                      textAlign: TextAlign.start,
                                      overflow: TextOverflow.clip,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontStyle: FontStyle.normal,
                                        fontSize: 16,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 10),
                          // Package card
                          Container(
                            margin: EdgeInsets.zero,
                            padding: EdgeInsets.zero,
                            width: 324,
                            height: 520,
                            decoration: const BoxDecoration(
                              color: Color(0x00000000),
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.zero,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                ///***If you have exported images you must have to copy those images in assets/images directory.
                                Container(
                                  width: 324,
                                  height: 324,
                                  decoration: ShapeDecoration(
                                    image: const DecorationImage(
                                      image: NetworkImage(
                                          "https://images.pexels.com/photos/1574843/pexels-photo-1574843.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                                      fit: BoxFit.fill,
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),

                                const SizedBox(
                                  height: 16,
                                  width: 16,
                                ),
                                const Text(
                                  "Sonamarg",
                                  textAlign: TextAlign.start,
                                  overflow: TextOverflow.clip,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FontStyle.normal,
                                    fontSize: 24,
                                    color: Color(0xff000000),
                                  ),
                                ),

                                const SizedBox(
                                  height: 16,
                                  width: 16,
                                ),
                                const Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      "₹29000 /",
                                      textAlign: TextAlign.start,
                                      overflow: TextOverflow.clip,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontStyle: FontStyle.normal,
                                        fontSize: 20,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                    Text(
                                      "3 days 2 nights",
                                      textAlign: TextAlign.start,
                                      overflow: TextOverflow.clip,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontStyle: FontStyle.normal,
                                        fontSize: 14,
                                        color: Color(0xff696969),
                                      ),
                                    ),
                                  ],
                                ),

                                const SizedBox(
                                  height: 16,
                                  width: 16,
                                ),
                                Container(
                                  margin: EdgeInsets.zero,
                                  padding: EdgeInsets.zero,
                                  width: 324,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: const Color(0xffb4f000),
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: const Align(
                                    alignment: Alignment(0.0, 0.0),
                                    child: Text(
                                      "Get Quote",
                                      textAlign: TextAlign.start,
                                      overflow: TextOverflow.clip,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontStyle: FontStyle.normal,
                                        fontSize: 16,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 10),
                          // Package card
                          Container(
                            margin: EdgeInsets.zero,
                            padding: EdgeInsets.zero,
                            width: 324,
                            height: 520,
                            decoration: const BoxDecoration(
                              color: Color(0x00000000),
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.zero,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                ///***If you have exported images you must have to copy those images in assets/images directory.
                                Container(
                                  width: 324,
                                  height: 324,
                                  decoration: ShapeDecoration(
                                    image: const DecorationImage(
                                      image: NetworkImage(
                                          "https://images.pexels.com/photos/16930780/pexels-photo-16930780/free-photo-of-shalimar-bagh-mughal-garden-in-srinagar-india.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                                      fit: BoxFit.fill,
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),

                                const SizedBox(
                                  height: 16,
                                  width: 16,
                                ),
                                const Text(
                                  "Shalimar Bagh",
                                  textAlign: TextAlign.start,
                                  overflow: TextOverflow.clip,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FontStyle.normal,
                                    fontSize: 24,
                                    color: Color(0xff000000),
                                  ),
                                ),

                                const SizedBox(
                                  height: 16,
                                  width: 16,
                                ),
                                const Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      "₹29000 /",
                                      textAlign: TextAlign.start,
                                      overflow: TextOverflow.clip,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontStyle: FontStyle.normal,
                                        fontSize: 20,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                    Text(
                                      "3 days 2 nights",
                                      textAlign: TextAlign.start,
                                      overflow: TextOverflow.clip,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontStyle: FontStyle.normal,
                                        fontSize: 14,
                                        color: Color(0xff696969),
                                      ),
                                    ),
                                  ],
                                ),

                                const SizedBox(
                                  height: 16,
                                  width: 16,
                                ),
                                Container(
                                  margin: EdgeInsets.zero,
                                  padding: EdgeInsets.zero,
                                  width: 324,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: const Color(0xffb4f000),
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: const Align(
                                    alignment: Alignment(0.0, 0.0),
                                    child: Text(
                                      "Get Quote",
                                      textAlign: TextAlign.start,
                                      overflow: TextOverflow.clip,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontStyle: FontStyle.normal,
                                        fontSize: 16,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 10),
                          // Package card
                          Container(
                            margin: EdgeInsets.zero,
                            padding: EdgeInsets.zero,
                            width: 324,
                            height: 520,
                            decoration: const BoxDecoration(
                              color: Color(0x00000000),
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.zero,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                ///***If you have exported images you must have to copy those images in assets/images directory.
                                Container(
                                  width: 324,
                                  height: 324,
                                  decoration: ShapeDecoration(
                                    image: const DecorationImage(
                                      image: NetworkImage(
                                          "https://images.pexels.com/photos/745242/pexels-photo-745242.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                                      fit: BoxFit.fill,
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),

                                const SizedBox(
                                  height: 16,
                                  width: 16,
                                ),
                                const Text(
                                  "Doodhpathari",
                                  textAlign: TextAlign.start,
                                  overflow: TextOverflow.clip,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FontStyle.normal,
                                    fontSize: 24,
                                    color: Color(0xff000000),
                                  ),
                                ),

                                const SizedBox(
                                  height: 16,
                                  width: 16,
                                ),
                                const Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      "₹29000 /",
                                      textAlign: TextAlign.start,
                                      overflow: TextOverflow.clip,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontStyle: FontStyle.normal,
                                        fontSize: 20,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                    Text(
                                      "3 days 2 nights",
                                      textAlign: TextAlign.start,
                                      overflow: TextOverflow.clip,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontStyle: FontStyle.normal,
                                        fontSize: 14,
                                        color: Color(0xff696969),
                                      ),
                                    ),
                                  ],
                                ),

                                const SizedBox(
                                  height: 16,
                                  width: 16,
                                ),
                                Container(
                                  margin: EdgeInsets.zero,
                                  padding: EdgeInsets.zero,
                                  width: 324,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: const Color(0xffb4f000),
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: const Align(
                                    alignment: Alignment(0.0, 0.0),
                                    child: Text(
                                      "Get Quote",
                                      textAlign: TextAlign.start,
                                      overflow: TextOverflow.clip,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontStyle: FontStyle.normal,
                                        fontSize: 16,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          //here will go the cards of packages
                        ],
                      ),
                    ),
                    // Row end
                    //End Explore our Popular Packages

                    const SizedBox(
                      height: 50,
                      width: 16,
                    ),

                    const Text(
                      "Explore our popular Hotels",
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.clip,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.normal,
                        fontSize: 36,
                        color: Color(0xff000000),
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                      width: 16,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          // Your cards will display here

                          Container(
                            margin: EdgeInsets.zero,
                            padding: EdgeInsets.zero,
                            width: 324,
                            height: 410,
                            decoration: const BoxDecoration(
                              color: Color(0x00000000),
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.zero,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                ///***If you have exported images you must have to copy those images in assets/images directory.
                                Container(
                                  width: 324,
                                  height: 270,
                                  decoration: ShapeDecoration(
                                    image: const DecorationImage(
                                      image: NetworkImage(
                                          "https://images.pexels.com/photos/279746/pexels-photo-279746.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                                      fit: BoxFit.fill,
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),

                                const SizedBox(
                                  height: 16,
                                  width: 16,
                                ),
                                const Text(
                                  "Bangus Valley Hotel",
                                  textAlign: TextAlign.start,
                                  overflow: TextOverflow.clip,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FontStyle.normal,
                                    fontSize: 24,
                                    color: Color(0xff000000),
                                  ),
                                ),
                                const Text(
                                  "Kupwara, Jammu and Kashmir",
                                  textAlign: TextAlign.start,
                                  overflow: TextOverflow.clip,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontStyle: FontStyle.normal,
                                    fontSize: 14,
                                    color: Color(0xff696969),
                                  ),
                                ),

                                const SizedBox(
                                  height: 16,
                                  width: 16,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    const Text(
                                      "₹3,880",
                                      textAlign: TextAlign.start,
                                      overflow: TextOverflow.clip,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontStyle: FontStyle.normal,
                                        fontSize: 24,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                    const Text(
                                      "night",
                                      textAlign: TextAlign.start,
                                      overflow: TextOverflow.clip,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontStyle: FontStyle.normal,
                                        fontSize: 14,
                                        color: Color(0xfd696969),
                                      ),
                                    ),
                                    const Expanded(
                                      flex: 1,
                                      child: SizedBox(
                                        height: 16,
                                        width: 16,
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.zero,
                                      padding: EdgeInsets.zero,
                                      width: 110,
                                      height: 44,
                                      decoration: BoxDecoration(
                                        color: const Color(0xffb4f000),
                                        shape: BoxShape.rectangle,
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        border: Border.all(
                                            color: const Color(0x4d9e9e9e),
                                            width: 0),
                                      ),
                                      child: const Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          "Get Quote",
                                          textAlign: TextAlign.start,
                                          overflow: TextOverflow.clip,
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontStyle: FontStyle.normal,
                                            fontSize: 16,
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 10),
                          // Card end
                          Container(
                            margin: EdgeInsets.zero,
                            padding: EdgeInsets.zero,
                            width: 300,
                            height: 410,
                            decoration: const BoxDecoration(
                              color: Color(0x00000000),
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.zero,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                ///***If you have exported images you must have to copy those images in assets/images directory.
                                Container(
                                  width: 300,
                                  height: 270,
                                  decoration: ShapeDecoration(
                                    image: const DecorationImage(
                                      image: NetworkImage(
                                          "https://images.pexels.com/photos/271618/pexels-photo-271618.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                                      fit: BoxFit.fill,
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),

                                const SizedBox(
                                  height: 16,
                                  width: 16,
                                ),
                                const Text(
                                  "Hotel Gulamarg",
                                  textAlign: TextAlign.start,
                                  overflow: TextOverflow.clip,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FontStyle.normal,
                                    fontSize: 24,
                                    color: Color(0xff000000),
                                  ),
                                ),
                                const Text(
                                  "Baramulla, Jammu and Kashmir",
                                  textAlign: TextAlign.start,
                                  overflow: TextOverflow.clip,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontStyle: FontStyle.normal,
                                    fontSize: 14,
                                    color: Color(0xff696969),
                                  ),
                                ),

                                const SizedBox(
                                  height: 16,
                                  width: 16,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    const Text(
                                      "₹3,880",
                                      textAlign: TextAlign.start,
                                      overflow: TextOverflow.clip,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontStyle: FontStyle.normal,
                                        fontSize: 24,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                    const Text(
                                      "night",
                                      textAlign: TextAlign.start,
                                      overflow: TextOverflow.clip,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontStyle: FontStyle.normal,
                                        fontSize: 14,
                                        color: Color(0xfd696969),
                                      ),
                                    ),
                                    const Expanded(
                                      flex: 1,
                                      child: SizedBox(
                                        height: 16,
                                        width: 16,
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.zero,
                                      padding: EdgeInsets.zero,
                                      width: 110,
                                      height: 44,
                                      decoration: BoxDecoration(
                                        color: const Color(0xffb4f000),
                                        shape: BoxShape.rectangle,
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      child: const Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          "Get Quote",
                                          textAlign: TextAlign.start,
                                          overflow: TextOverflow.clip,
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontStyle: FontStyle.normal,
                                            fontSize: 16,
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 10),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 10),
                          // Card end
                          Container(
                            margin: EdgeInsets.zero,
                            padding: EdgeInsets.zero,
                            width: 300,
                            height: 410,
                            decoration: const BoxDecoration(
                              color: Color(0x00000000),
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.zero,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                ///***If you have exported images you must have to copy those images in assets/images directory.
                                Container(
                                  width: 300,
                                  height: 270,
                                  decoration: ShapeDecoration(
                                    image: const DecorationImage(
                                      image: NetworkImage(
                                          "https://images.pexels.com/photos/164595/pexels-photo-164595.jpeg?auto=compress&cs=tinysrgb&w=600"),
                                      fit: BoxFit.fill,
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),

                                const SizedBox(
                                  height: 16,
                                  width: 16,
                                ),
                                const Text(
                                  "Maharaja Hotel",
                                  textAlign: TextAlign.start,
                                  overflow: TextOverflow.clip,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FontStyle.normal,
                                    fontSize: 24,
                                    color: Color(0xff000000),
                                  ),
                                ),
                                const Text(
                                  "Srinagar, Jammu and Kashmir",
                                  textAlign: TextAlign.start,
                                  overflow: TextOverflow.clip,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontStyle: FontStyle.normal,
                                    fontSize: 14,
                                    color: Color(0xff696969),
                                  ),
                                ),

                                const SizedBox(
                                  height: 16,
                                  width: 16,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    const Text(
                                      "₹3,880",
                                      textAlign: TextAlign.start,
                                      overflow: TextOverflow.clip,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontStyle: FontStyle.normal,
                                        fontSize: 24,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                    const Text(
                                      "night",
                                      textAlign: TextAlign.start,
                                      overflow: TextOverflow.clip,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontStyle: FontStyle.normal,
                                        fontSize: 14,
                                        color: Color(0xfd696969),
                                      ),
                                    ),
                                    const Expanded(
                                      flex: 1,
                                      child: SizedBox(
                                        height: 16,
                                        width: 16,
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.zero,
                                      padding: EdgeInsets.zero,
                                      width: 110,
                                      height: 44,
                                      decoration: BoxDecoration(
                                        color: const Color(0xffb4f000),
                                        shape: BoxShape.rectangle,
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      child: const Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          "Get Quote",
                                          textAlign: TextAlign.start,
                                          overflow: TextOverflow.clip,
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontStyle: FontStyle.normal,
                                            fontSize: 16,
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 10),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 10),
                          // Card end

                          Container(
                            margin: EdgeInsets.zero,
                            padding: EdgeInsets.zero,
                            width: 300,
                            height: 410,
                            decoration: const BoxDecoration(
                              color: Color(0x00000000),
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.zero,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                ///***If you have exported images you must have to copy those images in assets/images directory.
                                Container(
                                  width: 300,
                                  height: 270,
                                  decoration: ShapeDecoration(
                                    image: const DecorationImage(
                                      image: NetworkImage(
                                          "https://images.pexels.com/photos/1743231/pexels-photo-1743231.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                                      fit: BoxFit.fill,
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),

                                const SizedBox(
                                  height: 16,
                                  width: 16,
                                ),
                                const Text(
                                  "Mughal Darbar Hotel",
                                  textAlign: TextAlign.start,
                                  overflow: TextOverflow.clip,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FontStyle.normal,
                                    fontSize: 24,
                                    color: Color(0xff000000),
                                  ),
                                ),
                                const Text(
                                  "Srinagar, Jammu and Kashmir",
                                  textAlign: TextAlign.start,
                                  overflow: TextOverflow.clip,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontStyle: FontStyle.normal,
                                    fontSize: 14,
                                    color: Color(0xff696969),
                                  ),
                                ),

                                const SizedBox(
                                  height: 16,
                                  width: 16,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    const Text(
                                      "₹3,880",
                                      textAlign: TextAlign.start,
                                      overflow: TextOverflow.clip,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontStyle: FontStyle.normal,
                                        fontSize: 24,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                    const Text(
                                      "night",
                                      textAlign: TextAlign.start,
                                      overflow: TextOverflow.clip,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontStyle: FontStyle.normal,
                                        fontSize: 14,
                                        color: Color(0xfd696969),
                                      ),
                                    ),
                                    const Expanded(
                                      flex: 1,
                                      child: SizedBox(
                                        height: 16,
                                        width: 16,
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.zero,
                                      padding: EdgeInsets.zero,
                                      width: 110,
                                      height: 44,
                                      decoration: BoxDecoration(
                                        color: const Color(0xffb4f000),
                                        shape: BoxShape.rectangle,
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      child: const Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          "Get Quote",
                                          textAlign: TextAlign.start,
                                          overflow: TextOverflow.clip,
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontStyle: FontStyle.normal,
                                            fontSize: 16,
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 16,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 10),
                          // Card end
                          Container(
                            margin: EdgeInsets.zero,
                            padding: EdgeInsets.zero,
                            width: 300,
                            height: 410,
                            decoration: const BoxDecoration(
                              color: Color(0x00000000),
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.zero,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                ///***If you have exported images you must have to copy those images in assets/images directory.
                                Container(
                                  width: 300,
                                  height: 270,
                                  decoration: ShapeDecoration(
                                    image: const DecorationImage(
                                      image: NetworkImage(
                                          "https://images.pexels.com/photos/7710005/pexels-photo-7710005.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                                      fit: BoxFit.fill,
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),

                                const SizedBox(
                                  height: 16,
                                  width: 16,
                                ),
                                const Text(
                                  "Zeenat Hotel",
                                  textAlign: TextAlign.start,
                                  overflow: TextOverflow.clip,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FontStyle.normal,
                                    fontSize: 24,
                                    color: Color(0xff000000),
                                  ),
                                ),
                                const Text(
                                  "Srinagar, Jammu and Kashmir",
                                  textAlign: TextAlign.start,
                                  overflow: TextOverflow.clip,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontStyle: FontStyle.normal,
                                    fontSize: 14,
                                    color: Color(0xff696969),
                                  ),
                                ),

                                const SizedBox(
                                  height: 16,
                                  width: 16,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    const Text(
                                      "₹3,880",
                                      textAlign: TextAlign.start,
                                      overflow: TextOverflow.clip,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontStyle: FontStyle.normal,
                                        fontSize: 24,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                    const Text(
                                      "night",
                                      textAlign: TextAlign.start,
                                      overflow: TextOverflow.clip,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontStyle: FontStyle.normal,
                                        fontSize: 14,
                                        color: Color(0xfd696969),
                                      ),
                                    ),
                                    const Expanded(
                                      flex: 1,
                                      child: SizedBox(
                                        height: 16,
                                        width: 16,
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.zero,
                                      padding: EdgeInsets.zero,
                                      width: 110,
                                      height: 44,
                                      decoration: BoxDecoration(
                                        color: const Color(0xffb4f000),
                                        shape: BoxShape.rectangle,
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      child: const Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          "Get Quote",
                                          textAlign: TextAlign.start,
                                          overflow: TextOverflow.clip,
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontStyle: FontStyle.normal,
                                            fontSize: 16,
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 10),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 10),
                          // Card end
                          //
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                      width: 16,
                    ),
                    const Text(
                      "Choose your favorite vehicle",
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.clip,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.normal,
                        fontSize: 36,
                        color: Color(0xff000000),
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                      width: 16,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          // Your cards will display here
                          ///File download from FlutterViz- Drag and drop a tools. For more details visit https://flutterviz.io/

                          Container(
                            margin: EdgeInsets.zero,
                            padding: EdgeInsets.zero,
                            width: 324,
                            height: 410,
                            decoration: const BoxDecoration(
                              color: Color(0x00000000),
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.zero,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                ///***If you have exported images you must have to copy those images in assets/images directory.
                                Container(
                                  width: 324,
                                  height: 270,
                                  decoration: ShapeDecoration(
                                    image: const DecorationImage(
                                      image: AssetImage(
                                          'assets/images/Etiosdesire.jpg'),
                                      fit: BoxFit.fill,
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),

                                const SizedBox(
                                  height: 16,
                                  width: 16,
                                ),
                                const Text(
                                  "Etios / desire",
                                  textAlign: TextAlign.start,
                                  overflow: TextOverflow.clip,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FontStyle.normal,
                                    fontSize: 24,
                                    color: Color(0xff000000),
                                  ),
                                ),
                                const Text(
                                  "4 seater",
                                  textAlign: TextAlign.start,
                                  overflow: TextOverflow.clip,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontStyle: FontStyle.normal,
                                    fontSize: 14,
                                    color: Color(0xff696969),
                                  ),
                                ),

                                const SizedBox(
                                  height: 16,
                                  width: 16,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    const Text(
                                      "₹250/",
                                      textAlign: TextAlign.start,
                                      overflow: TextOverflow.clip,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontStyle: FontStyle.normal,
                                        fontSize: 24,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                    const Text(
                                      "10km",
                                      textAlign: TextAlign.start,
                                      overflow: TextOverflow.clip,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontStyle: FontStyle.normal,
                                        fontSize: 14,
                                        color: Color(0xfd696969),
                                      ),
                                    ),
                                    const Expanded(
                                      flex: 1,
                                      child: SizedBox(
                                        height: 16,
                                        width: 16,
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.zero,
                                      padding: EdgeInsets.zero,
                                      width: 110,
                                      height: 44,
                                      decoration: BoxDecoration(
                                        color: const Color(0xffb4f000),
                                        shape: BoxShape.rectangle,
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        border: Border.all(
                                            color: const Color(0x4d9e9e9e),
                                            width: 0),
                                      ),
                                      child: const Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          "Get Quote",
                                          textAlign: TextAlign.start,
                                          overflow: TextOverflow.clip,
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontStyle: FontStyle.normal,
                                            fontSize: 16,
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 10),
                          // Card end
                          Container(
                            margin: EdgeInsets.zero,
                            padding: EdgeInsets.zero,
                            width: 300,
                            height: 410,
                            decoration: const BoxDecoration(
                              color: Color(0x00000000),
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.zero,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                ///***If you have exported images you must have to copy those images in assets/images directory.
                                Container(
                                  width: 300,
                                  height: 270,
                                  decoration: ShapeDecoration(
                                    image: const DecorationImage(
                                      image: AssetImage(
                                          'assets/images/Tempo Traveler.jpg'),
                                      fit: BoxFit.fill,
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),

                                const SizedBox(
                                  height: 16,
                                  width: 16,
                                ),
                                const Text(
                                  "Tempo Traveler",
                                  textAlign: TextAlign.start,
                                  overflow: TextOverflow.clip,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FontStyle.normal,
                                    fontSize: 24,
                                    color: Color(0xff000000),
                                  ),
                                ),
                                const Text(
                                  "15 seater",
                                  textAlign: TextAlign.start,
                                  overflow: TextOverflow.clip,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontStyle: FontStyle.normal,
                                    fontSize: 14,
                                    color: Color(0xff696969),
                                  ),
                                ),

                                const SizedBox(
                                  height: 16,
                                  width: 16,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    const Text(
                                      "₹599/",
                                      textAlign: TextAlign.start,
                                      overflow: TextOverflow.clip,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontStyle: FontStyle.normal,
                                        fontSize: 24,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                    const Text(
                                      "10km",
                                      textAlign: TextAlign.start,
                                      overflow: TextOverflow.clip,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontStyle: FontStyle.normal,
                                        fontSize: 14,
                                        color: Color(0xfd696969),
                                      ),
                                    ),
                                    const Expanded(
                                      flex: 1,
                                      child: SizedBox(
                                        height: 16,
                                        width: 16,
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.zero,
                                      padding: EdgeInsets.zero,
                                      width: 110,
                                      height: 44,
                                      decoration: BoxDecoration(
                                        color: const Color(0xffb4f000),
                                        shape: BoxShape.rectangle,
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      child: const Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          "Get Quote",
                                          textAlign: TextAlign.start,
                                          overflow: TextOverflow.clip,
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontStyle: FontStyle.normal,
                                            fontSize: 16,
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 10),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          // card 3 for car
                          const SizedBox(width: 10),
                          // Card end
                          Container(
                            margin: EdgeInsets.zero,
                            padding: EdgeInsets.zero,
                            width: 300,
                            height: 410,
                            decoration: const BoxDecoration(
                              color: Color(0x00000000),
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.zero,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                ///***If you have exported images you must have to copy those images in assets/images directory.
                                Container(
                                  width: 300,
                                  height: 270,
                                  decoration: ShapeDecoration(
                                    image: const DecorationImage(
                                      image: AssetImage(
                                          'assets/images/Innova.jpg'),
                                      fit: BoxFit.fill,
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),

                                const SizedBox(
                                  height: 16,
                                  width: 16,
                                ),
                                const Text(
                                  "Innova",
                                  textAlign: TextAlign.start,
                                  overflow: TextOverflow.clip,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FontStyle.normal,
                                    fontSize: 24,
                                    color: Color(0xff000000),
                                  ),
                                ),
                                const Text(
                                  "7 Seater ",
                                  textAlign: TextAlign.start,
                                  overflow: TextOverflow.clip,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontStyle: FontStyle.normal,
                                    fontSize: 14,
                                    color: Color(0xff696969),
                                  ),
                                ),

                                const SizedBox(
                                  height: 16,
                                  width: 16,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    const Text(
                                      "₹399/",
                                      textAlign: TextAlign.start,
                                      overflow: TextOverflow.clip,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontStyle: FontStyle.normal,
                                        fontSize: 24,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                    const Text(
                                      "10km",
                                      textAlign: TextAlign.start,
                                      overflow: TextOverflow.clip,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontStyle: FontStyle.normal,
                                        fontSize: 14,
                                        color: Color(0xfd696969),
                                      ),
                                    ),
                                    const Expanded(
                                      flex: 1,
                                      child: SizedBox(
                                        height: 16,
                                        width: 16,
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.zero,
                                      padding: EdgeInsets.zero,
                                      width: 110,
                                      height: 44,
                                      decoration: BoxDecoration(
                                        color: const Color(0xffb4f000),
                                        shape: BoxShape.rectangle,
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      child: const Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          "Get Quote",
                                          textAlign: TextAlign.start,
                                          overflow: TextOverflow.clip,
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontStyle: FontStyle.normal,
                                            fontSize: 16,
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 10),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          // card end
                          // card 3 for car
                          const SizedBox(width: 10),
                          // Card end
                          Container(
                            margin: EdgeInsets.zero,
                            padding: EdgeInsets.zero,
                            width: 300,
                            height: 410,
                            decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                ///***If you have exported images you must have to copy those images in assets/images directory.
                                Container(
                                  width: 300,
                                  height: 270,
                                  decoration: ShapeDecoration(
                                    image: const DecorationImage(
                                      image: AssetImage(
                                          'assets/images/Scorpio.jpg'),
                                      fit: BoxFit.fill,
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),

                                const SizedBox(
                                  height: 16,
                                  width: 16,
                                ),
                                const Text(
                                  "Scorpio",
                                  textAlign: TextAlign.start,
                                  overflow: TextOverflow.clip,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FontStyle.normal,
                                    fontSize: 24,
                                    color: Color(0xff000000),
                                  ),
                                ),
                                const Text(
                                  "8 seater",
                                  textAlign: TextAlign.start,
                                  overflow: TextOverflow.clip,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontStyle: FontStyle.normal,
                                    fontSize: 14,
                                    color: Color(0xff696969),
                                  ),
                                ),

                                const SizedBox(
                                  height: 16,
                                  width: 16,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    const Text(
                                      "₹499/",
                                      textAlign: TextAlign.start,
                                      overflow: TextOverflow.clip,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontStyle: FontStyle.normal,
                                        fontSize: 24,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                    const Text(
                                      "10km",
                                      textAlign: TextAlign.start,
                                      overflow: TextOverflow.clip,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontStyle: FontStyle.normal,
                                        fontSize: 14,
                                        color: Color(0xfd696969),
                                      ),
                                    ),
                                    const Expanded(
                                      flex: 1,
                                      child: SizedBox(
                                        height: 16,
                                        width: 16,
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.zero,
                                      padding: EdgeInsets.zero,
                                      width: 110,
                                      height: 44,
                                      decoration: BoxDecoration(
                                        color: const Color(0xffb4f000),
                                        shape: BoxShape.rectangle,
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      child: const Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          "Get Quote",
                                          textAlign: TextAlign.start,
                                          overflow: TextOverflow.clip,
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontStyle: FontStyle.normal,
                                            fontSize: 16,
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 10),
                                  ],
                                ),
                              ],
                            ),
                          ),

                          // card end
                          //
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
                width: 16,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 18, right: 18),
                child: Text(
                  "What our customers are saying",
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.clip,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.normal,
                    fontSize: 36,
                    color: Color(0xff000000),
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
                width: 16,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    const SizedBox(width: 18),
                    Container(
                      margin: const EdgeInsets.all(0),
                      padding: const EdgeInsets.all(18),
                      width: 324,
                      height: 324,
                      decoration: BoxDecoration(
                        color: const Color(0x00ffffff),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(
                            color: const Color(0xff696969), width: 1),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                height: 40,
                                width: 40,
                                clipBehavior: Clip.antiAlias,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: Image.asset(
                                  'assets/images/profilepreview.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const SizedBox(
                                height: 16,
                                width: 16,
                              ),
                              const Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    "Nithya Arunachalam",
                                    textAlign: TextAlign.start,
                                    overflow: TextOverflow.clip,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FontStyle.normal,
                                      fontSize: 20,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                  Text(
                                    "⭐️⭐️⭐️⭐️⭐️",
                                    textAlign: TextAlign.start,
                                    overflow: TextOverflow.clip,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontStyle: FontStyle.normal,
                                      fontSize: 14,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 16,
                                    width: 16,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const Text(
                            "I had a good experience with Saathi tour and travels! The accommodations were good, providing a comfortable place to relax after our daily adventures. Our local guide supported us well, offering valuable insights and assistance throughout the trip. Their efforts truly made our trip memorable. Highly recommend!",
                            textAlign: TextAlign.start,
                            overflow: TextOverflow.clip,
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal,
                              fontSize: 14,
                              color: Color(0xff000000),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      margin: const EdgeInsets.all(0),
                      padding: const EdgeInsets.all(18),
                      width: 324,
                      height: 324,
                      decoration: BoxDecoration(
                        color: const Color(0x00ffffff),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(
                            color: const Color(0xff696969), width: 1),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                height: 40,
                                width: 40,
                                clipBehavior: Clip.antiAlias,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: Image.asset(
                                  'assets/images/profilepreview.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const SizedBox(
                                height: 16,
                                width: 16,
                              ),
                              const Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    "War Javid",
                                    textAlign: TextAlign.start,
                                    overflow: TextOverflow.clip,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FontStyle.normal,
                                      fontSize: 20,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                  Text(
                                    "⭐️⭐️⭐️⭐️⭐️",
                                    textAlign: TextAlign.start,
                                    overflow: TextOverflow.clip,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontStyle: FontStyle.normal,
                                      fontSize: 14,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 16,
                            width: 16,
                          ),
                          const Text(
                            "Very happy with the service we received, Everything was sorted and made the holiday easy and stress-free. Love the way they treated us.",
                            textAlign: TextAlign.start,
                            overflow: TextOverflow.clip,
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal,
                              fontSize: 14,
                              color: Color(0xff000000),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      margin: const EdgeInsets.all(0),
                      padding: const EdgeInsets.all(18),
                      width: 324,
                      height: 324,
                      decoration: BoxDecoration(
                        color: const Color(0x00ffffff),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(
                            color: const Color(0xff696969), width: 1),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                height: 40,
                                width: 40,
                                clipBehavior: Clip.antiAlias,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: Image.asset(
                                  'assets/images/profilepreview.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const SizedBox(
                                height: 16,
                                width: 16,
                              ),
                              const Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    "Sushil Kumar",
                                    textAlign: TextAlign.start,
                                    overflow: TextOverflow.clip,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FontStyle.normal,
                                      fontSize: 20,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                  Text(
                                    "⭐️⭐️⭐️⭐️⭐️",
                                    textAlign: TextAlign.start,
                                    overflow: TextOverflow.clip,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontStyle: FontStyle.normal,
                                      fontSize: 14,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 16,
                            width: 16,
                          ),
                          const Text(
                            "Beautiful and outstanding experiece with saathi tour and travels.A company that holds the name of trust exactly got as they claimed permanent customer  of this company ",
                            textAlign: TextAlign.start,
                            overflow: TextOverflow.clip,
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal,
                              fontSize: 14,
                              color: Color(0xff000000),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      margin: const EdgeInsets.all(0),
                      padding: const EdgeInsets.all(18),
                      width: 324,
                      height: 324,
                      decoration: BoxDecoration(
                        color: const Color(0x00ffffff),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(
                            color: const Color(0xff696969), width: 1),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                height: 40,
                                width: 40,
                                clipBehavior: Clip.antiAlias,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: Image.asset(
                                  'assets/images/profilepreview.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const SizedBox(
                                height: 16,
                                width: 16,
                              ),
                              const Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    "Aiza Jan",
                                    textAlign: TextAlign.start,
                                    overflow: TextOverflow.clip,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FontStyle.normal,
                                      fontSize: 20,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                  Text(
                                    "⭐️⭐️⭐️⭐️⭐️",
                                    textAlign: TextAlign.start,
                                    overflow: TextOverflow.clip,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontStyle: FontStyle.normal,
                                      fontSize: 14,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 16,
                            width: 16,
                          ),
                          const Text(
                            "Fantastic experience with saathi tour and travels. My Guests are happy and next time I also prefer saathi tour and travels ",
                            textAlign: TextAlign.start,
                            overflow: TextOverflow.clip,
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal,
                              fontSize: 14,
                              color: Color(0xff000000),
                            ),
                          ),
                        ],
                      ),
                    ),
                    //Review card
                  ],
                ),
              ),
              const SizedBox(height: 50),
              Container(
                margin: const EdgeInsets.all(18),
                padding:
                    const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: const Color(0xffb4f000),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    const Text(
                      "Book Your Dream Trip Today!",
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.clip,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.normal,
                        fontSize: 36,
                        color: Color(0xff000000),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                      width: 16,
                    ),
                    const Text(
                      "Don’t miss the chance to experience the unparalleled beauty and charm of Kashmir. Let Kashmir Tour and Travellers be your guide to an extraordinary journey. Contact us now to plan your dream vacation.",
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.clip,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        fontSize: 16,
                        color: Color(0xff525252),
                      ),
                    ),
                    const SizedBox(height: 50),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ContactPage()),
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.zero,
                        padding: EdgeInsets.zero,
                        width: 160,
                        height: 50,
                        decoration: BoxDecoration(
                          color: const Color(0xffffffff),
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        child: const Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Plan my Trip",
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.clip,
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontStyle: FontStyle.normal,
                              fontSize: 16,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 50),
//
              Container(
                margin: const EdgeInsets.all(0),
                padding: const EdgeInsets.all(18),
                width: MediaQuery.of(context).size.width,
                height: 1500,
                decoration: BoxDecoration(
                  color: const Color(0xff000000),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.zero,
                  border: Border.all(color: const Color(0x4d9e9e9e), width: 1),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      SizedBox(
                        width: 324, // adjust the width as needed
                        height: 300,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 200, // adjust the width as needed
                              height: 36,
                              alignment: Alignment
                                  .centerLeft, // adjust the height as needed
                              child: Image.asset(
                                'assets/images/saathi.png',
                              ), // similar to TextAlign.start
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              "Your happiness is our promise",
                              textAlign: TextAlign.start,
                              overflow: TextOverflow.clip,
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontStyle: FontStyle.normal,
                                fontSize: 16,
                                color: Color(0xff696969),
                              ),
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              "-----------------------",
                              textAlign: TextAlign.start,
                              overflow: TextOverflow.clip,
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontStyle: FontStyle.normal,
                                fontSize: 16,
                                color: Color(0xff696969),
                              ),
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              "© Saathi Tour and Travels Private Limited 2024.",
                              textAlign: TextAlign.start,
                              overflow: TextOverflow.clip,
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontStyle: FontStyle.normal,
                                fontSize: 16,
                                color: Color(0xff696969),
                              ),
                            ),
                            const SizedBox(height: 20),
                            const Text(
                              "Follow us on",
                              textAlign: TextAlign.start,
                              overflow: TextOverflow.clip,
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontStyle: FontStyle.normal,
                                fontSize: 36,
                                color: Color(0xffffffff),
                              ),
                            ),
                            const SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    _launchURL(
                                        'https://www.instagram.com/saathitt1?igsh=MXFnNG1lZThscnR2dQ==');
                                  },
                                  child: Container(
                                    width: 50,
                                    height: 50,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/instagram.png'),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 36),
                                GestureDetector(
                                  onTap: () {
                                    _launchURL(
                                        'https://x.com/SaathiTTravels?t=2QVLv_5nupJBRwlr_ewhJQ&s=09');
                                  },
                                  child: Container(
                                    width: 50,
                                    height: 50,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/twitter.png'),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 36),
                                GestureDetector(
                                  onTap: () {
                                    _launchURL(
                                        'https://www.facebook.com/saathitourandtravels?mibextid=ZbWKwL');
                                  },
                                  child: Container(
                                    width: 50,
                                    height: 50,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/facebook.png'),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      const SizedBox(width: 50),
                      const SizedBox(
                        width: 324, // adjust the width as needed
                        height: 324,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 50),
                            Text(
                              "About Us",
                              textAlign: TextAlign.start,
                              overflow: TextOverflow.clip,
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontStyle: FontStyle.normal,
                                fontSize: 36,
                                color: Color(0xffffffff),
                              ),
                            ),
                            SizedBox(height: 16),
                            Text(
                              "Home",
                              textAlign: TextAlign.start,
                              overflow: TextOverflow.clip,
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontStyle: FontStyle.normal,
                                fontSize: 16,
                                color: Color(0xff696969),
                              ),
                            ),
                            SizedBox(height: 16),
                            Text(
                              "Destinations",
                              textAlign: TextAlign.start,
                              overflow: TextOverflow.clip,
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontStyle: FontStyle.normal,
                                fontSize: 16,
                                color: Color(0xff696969),
                              ),
                            ),
                            SizedBox(height: 16),
                            Text(
                              "Packages",
                              textAlign: TextAlign.start,
                              overflow: TextOverflow.clip,
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontStyle: FontStyle.normal,
                                fontSize: 16,
                                color: Color(0xff696969),
                              ),
                            ),
                            SizedBox(height: 16),
                            Text(
                              "Hotels",
                              textAlign: TextAlign.start,
                              overflow: TextOverflow.clip,
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontStyle: FontStyle.normal,
                                fontSize: 16,
                                color: Color(0xff696969),
                              ),
                            ),
                            SizedBox(height: 16),
                            Text(
                              "Vehicles",
                              textAlign: TextAlign.start,
                              overflow: TextOverflow.clip,
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontStyle: FontStyle.normal,
                                fontSize: 16,
                                color: Color(0xff696969),
                              ),
                            ),
                            SizedBox(height: 16),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 324, // adjust the width as needed
                        height: 324,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 0),
                            Text(
                              "Useful Links",
                              textAlign: TextAlign.start,
                              overflow: TextOverflow.clip,
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontStyle: FontStyle.normal,
                                fontSize: 36,
                                color: Color(0xffffffff),
                              ),
                            ),
                            SizedBox(height: 16),
                            Text(
                              "About us",
                              textAlign: TextAlign.start,
                              overflow: TextOverflow.clip,
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontStyle: FontStyle.normal,
                                fontSize: 16,
                                color: Color(0xff696969),
                              ),
                            ),
                            SizedBox(height: 16),
                            Text(
                              "Privacy Policy",
                              textAlign: TextAlign.start,
                              overflow: TextOverflow.clip,
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontStyle: FontStyle.normal,
                                fontSize: 16,
                                color: Color(0xff696969),
                              ),
                            ),
                            SizedBox(height: 16),
                            Text(
                              "Terms and Conditions",
                              textAlign: TextAlign.start,
                              overflow: TextOverflow.clip,
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontStyle: FontStyle.normal,
                                fontSize: 16,
                                color: Color(0xff696969),
                              ),
                            ),
                            SizedBox(height: 16),
                            Text(
                              "Cookie Policy",
                              textAlign: TextAlign.start,
                              overflow: TextOverflow.clip,
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontStyle: FontStyle.normal,
                                fontSize: 16,
                                color: Color(0xff696969),
                              ),
                            ),
                            SizedBox(height: 16),
                            Text(
                              "Refund  Policy",
                              textAlign: TextAlign.start,
                              overflow: TextOverflow.clip,
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontStyle: FontStyle.normal,
                                fontSize: 16,
                                color: Color(0xff696969),
                              ),
                            ),
                            SizedBox(height: 16),
                            Text(
                              "Contact us",
                              textAlign: TextAlign.start,
                              overflow: TextOverflow.clip,
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontStyle: FontStyle.normal,
                                fontSize: 16,
                                color: Color(0xff696969),
                              ),
                            ),
                            SizedBox(height: 16),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 324, // adjust the width as needed
                        height: 324,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 0),
                            Text(
                              "Get in Touch",
                              textAlign: TextAlign.start,
                              overflow: TextOverflow.clip,
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontStyle: FontStyle.normal,
                                fontSize: 36,
                                color: Color(0xffffffff),
                              ),
                            ),
                            SizedBox(height: 16),
                            Text(
                              "Reddi Chowkibal,Kupwara,193224,Jammu and kashmir ,india.",
                              textAlign: TextAlign.start,
                              overflow: TextOverflow.clip,
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontStyle: FontStyle.normal,
                                fontSize: 16,
                                color: Color(0xff696969),
                              ),
                            ),
                            SizedBox(height: 16),
                            Text(
                              "conatct@saathitourandtravells.com",
                              textAlign: TextAlign.start,
                              overflow: TextOverflow.clip,
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontStyle: FontStyle.normal,
                                fontSize: 16,
                                color: Color(0xff696969),
                              ),
                            ),
                            SizedBox(height: 16),
                            Text(
                              "+91023456789",
                              textAlign: TextAlign.start,
                              overflow: TextOverflow.clip,
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontStyle: FontStyle.normal,
                                fontSize: 16,
                                color: Color(0xff696969),
                              ),
                            ),
                            SizedBox(height: 16),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
// Footer end
              //

              Container(
                height: 60, // fixed height
                width:
                    double.infinity, // width takes up 100% of available space
                padding: const EdgeInsets.all(18),
                color: const Color(0xffB4F000), // set background color to black
                child: const Text(
                  'Designed by Quyoom Technologies',
                  style: TextStyle(
                    color: Colors.black, // set text color to white
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.center, // center the text
                  overflow: TextOverflow.ellipsis, // ellipsis for long text
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
