import '../../../../allpackages.dart';

class AboutUi extends StatefulWidget {
  const AboutUi({Key? key}) : super(key: key);

  @override
  State<AboutUi> createState() => _AboutUiState();
}

class _AboutUiState extends State<AboutUi> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          bottom: 120,
          child: Container(
            height: 200.h,
            width: 180.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Constants.outerpurple),
          ),
        ),
        Positioned(
          bottom: 100,
          child: Container(
            margin: const EdgeInsets.all(10),
            height: 200.h,
            width: 160.w,
            //color: Color.fromARGB(255, 136, 62, 150),
            child: Column(
              children: [
                Container(
                  height: 50.h,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(5),
                        topRight: Radius.circular(5)),
                    color: Constants.yolet,
                  ),
                  padding: const EdgeInsets.only(top: 10, left: 10),
                  child: Row(
                    children: [
                      Container(
                        height: 40.h,
                        width: 30.w,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage('assets/images/crown.png')),
                        ),
                      ),
                      SizedBox(
                        width: 50.w,
                      ),
                      // ignore: avoid_unnecessary_containers
                      Container(
                        child: Text(
                          '75%',
                          style: commonFunction.buildTextStyle(
                              15,
                              FontWeight.bold,
                              Constants.primaryColor,
                              FontStyle.normal),
                        ),
                      )
                    ],
                  ),
                ),
                Image.asset('assets/images/kk.jpg')
              ],
            ),
          ),
        ),
        Positioned(
            bottom: 130,
            left: 10,
            child: Container(
              alignment: Alignment.center,
              height: 40.h,
              width: 160.w,
              decoration: BoxDecoration(
                  color: Constants.yolet.withOpacity(0.5),
                  borderRadius:
                      const BorderRadius.only(topLeft: Radius.circular(10))),
              child: Text(
                'Harry',
                style: commonFunction.buildTextStyle(15, FontWeight.bold,
                    Constants.primaryColor, FontStyle.normal),
              ),
            )),
        Positioned(
          bottom: 120,
          left: 190,
          child: Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.all(10),
            height: 200.h,
            width: 170.w,
            decoration: BoxDecoration(
                color: Constants.primaryColor,
                borderRadius: BorderRadius.circular(5)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'About',
                  style: commonFunction.buildTextStyle(
                      13, FontWeight.normal, Constants.yolet, FontStyle.normal),
                ),
                Container(
                  alignment: Alignment.bottomRight,
                  child: const CircleAvatar(
                    backgroundColor: Constants.likesiconcolor,
                    radius: 15,
                    child: Icon(
                      Icons.edit_calendar_outlined,
                      size: 15,
                      color: Constants.blackColor,
                    ),
                  ),
                ),
                Text(
                  '''Lorem ipsum dolor sit amet,consectetur adipisicing elt. sed viae tellus facilities,euismod ourus non,ultrrice magnaAligquam lectus lorem,rhoncus eget Consectetur eget,fermentum vitae nisl''',
                  style: commonFunction.buildTextStyle(
                      11, FontWeight.normal, Constants.yolet, FontStyle.normal),
                ),
                Container(
                    height: 30.h,
                    alignment: Alignment.bottomRight,
                    child: Image.asset(
                      'assets/images/loading.png',
                    ))
              ],
            ),
          ),
        ),
        Positioned(
            bottom: 20,
            left: 30,
            right: 30,
            child: InkWell(
              onTap: () {
                Get.to(  FollowUi());
              },
              child: Container(
                alignment: Alignment.center,
                height: 50.h,
                width: 250.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Constants.yolet),
                child: Text(
                  'Tagged challenges',
                  style: commonFunction.buildTextStyle(15, FontWeight.bold,
                      Constants.primaryColor, FontStyle.normal),
                ),
              ),
            ))
      ],
    );
  }
}