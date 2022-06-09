import '../../../../allpackages.dart';

class FollowUi extends StatefulWidget {
  const FollowUi({Key? key}) : super(key: key);

  @override
  State<FollowUi> createState() => _FollowUiState();
}

class _FollowUiState extends State<FollowUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Constants.purple,
        appBar: AppBar(
          backgroundColor: Constants.purple,
          elevation: 0,
          leading: IconButton(
            onPressed: (() {
              Get.back();
            }),
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Constants.blackColor,
            ),
          ),
          title: Center(
            child: Text(
              'My Followers',
              style: commonFunction.buildTextStyle(
                  18, FontWeight.bold, Constants.blackColor, FontStyle.normal),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    height: 50.h,
                    width: 370.w,
                    margin: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Constants.primaryColor),
                    child: const TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          labelText: 'search user',
                          prefixIcon: Icon(Icons.search)),
                    )),
                Container(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    'Follow Request',
                    style: commonFunction.buildTextStyle(15, FontWeight.bold,
                        Constants.blackColor, FontStyle.normal),
                  ),
                ),
                SizedBox(
                    height: 200,
                    width: double.infinity,
                    child: ListView.builder(
                      itemCount: 3,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          height: 70.h,
                          width: 400.w,
                          child: Card(
                              child: Container(
                            margin: const EdgeInsets.all(10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const CircleAvatar(
                                  radius: 20,
                                  backgroundImage:
                                      AssetImage('assets/images/kk.jpg'),
                                ),
                                const Text('Harry'),
                                Container(
                                  height: 40.h,
                                  width: 100.w,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Constants.yolet,
                                  ),
                                  child: Text(
                                    'Accept',
                                    style: commonFunction.buildTextStyle(
                                        15,
                                        FontWeight.bold,
                                        Constants.primaryColor,
                                        FontStyle.normal),
                                  ),
                                ),
                                Container(
                                  height: 40.h,
                                  width: 50.w,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Constants.yolet),
                                  child: const Icon(
                                    Icons.delete,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                )
                              ],
                            ),
                          )),
                        );
                      },
                    )),
                SizedBox(
                  height: 10.h,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    'Follow',
                    style: commonFunction.buildTextStyle(15, FontWeight.bold,
                        Constants.blackColor, FontStyle.normal),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                SizedBox(
                    height: 300.h,
                    width: 1.sw,
                    child: ListView.builder(
                      itemCount: 7,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          height: 70.h,
                          width: 400.w,
                          child: Card(
                              child: Container(
                            margin: const EdgeInsets.all(10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const CircleAvatar(
                                  radius: 20,
                                  backgroundImage:
                                      AssetImage('assets/images/kk.jpg'),
                                ),
                                const Text('Harry'),
                                Container(
                                  height: 40.h,
                                  width: 100.w,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Constants.yolet,
                                  ),
                                  child: Text(
                                    'Accept',
                                    style: commonFunction.buildTextStyle(
                                        15,
                                        FontWeight.bold,
                                        Constants.primaryColor,
                                        FontStyle.normal),
                                  ),
                                ),
                                Container(
                                  height: 40.h,
                                  width: 50.w,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Constants.yolet),
                                  child: const Icon(
                                    Icons.delete,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                )
                              ],
                            ),
                          )),
                        );
                      },
                    )),
              ]),
        ));
  }
}
