import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

abstract class _HomeState extends State<Home> {
  List<Map<String, String>> datas=[];

  @override
  void initState() {
    super.initState();
  }

  List<Map<String, String>> datas = [
     {
        "cid": "1",
        "image": "assets/images/ara-1.jpg",
        "title": "네메시스 축구화275",
        "location": "제주 제주시 아라동",
        "price": "30000",
        "likes": "2"
      },
      {
        "cid": "2",
        "image": "assets/images/ara-2.jpg",
        "title": "LA갈비 5kg팔아요~",
        "location": "제주 제주시 아라동",
        "price": "100000",
        "likes": "5"
      },
      {
        "cid": "3",
        "image": "assets/images/ara-3.jpg",
        "title": "치약팝니다",
        "location": "제주 제주시 아라동",
        "price": "5000",
        "likes": "0"
      },
      {
        "cid": "4",
        "image": "assets/images/ara-4.jpg",
        "title": "[풀박스]맥북프로16인치 터치바 스페이스그레이",
        "location": "제주 제주시 아라동",
        "price": "2500000",
        "likes": "6"
      },
      {
        "cid": "5",
        "image": "assets/images/ara-5.jpg",
        "title": "디월트존기임팩",
        "location": "제주 제주시 아라동",
        "price": "150000",
        "likes": "2"
      },
      {
        "cid": "6",
        "image": "assets/images/ara-6.jpg",
        "title": "갤럭시s10",
        "location": "제주 제주시 아라동",
        "price": "180000",
        "likes": "2"
      },
      {
        "cid": "7",
        "image": "assets/images/ara-7.jpg",
        "title": "선반",
        "location": "제주 제주시 아라동",
        "price": "15000",
        "likes": "2"
      },
      {
        "cid": "8",
        "image": "assets/images/ara-8.jpg",
        "title": "냉장 쇼케이스",
        "location": "제주 제주시 아라동",
        "price": "80000",
        "likes": "3"
      },
      {
        "cid": "9",
        "image": "assets/images/ara-9.jpg",
        "title": "대우 미니냉장고",
        "location": "제주 제주시 아라동",
        "price": "30000",
        "likes": "3"
      },
      {
        "cid": "10",
        "image": "assets/images/ara-10.jpg",
        "title": "멜킨스 풀업 턱걸이 판매합니다.",
        "location": "제주 제주시 아라동",
        "price": "50000",
        "likes": "7"
      },
      {
        "cid": "11",
        "image": "assets/images/ora-1.jpg",
        "title": "LG 통돌이세탁기 15kg(내부",
        "location": "제주 제주시 오라동",
        "price": "150000",
        "likes": "13"
      },
      {
        "cid": "12",
        "image": "assets/images/ora-2.jpg",
        "title": "3단책장 전면책장 가져가실분",
        "location": "제주 제주시 오라동",
        "price": "무료나눔",
        "likes": "6"
      },
      {
        "cid": "13",
        "image": "assets/images/ora-3.jpg",
        "title": "브리츠 컴퓨터용 스피커",
        "location": "제주 제주시 오라동",
        "price": "1000",
        "likes": "4"
      },
      {
        "cid": "14",
        "image": "assets/images/ora-4.jpg",
        "title": "안락 의자",
        "location": "제주 제주시 오라동",
        "price": "10000",
        "likes": "1"
      },
      {
        "cid": "15",
        "image": "assets/images/ora-5.jpg",
        "title": "어린이책 무료드림",
        "location": "제주 제주시 오라동",
        "price": "무료나눔",
        "likes": "1"
      },
      {
        "cid": "16",
        "image": "assets/images/ora-6.jpg",
        "title": "어린이책 무료드림",
        "location": "제주 제주시 오라동",
        "price": "무료나눔",
        "likes": "0"
      },
      {
        "cid": "17",
        "image": "assets/images/ora-7.jpg",
        "title": "칼세트 재제품 팝니다",
        "location": "제주 제주시 오라동",
        "price": "20000",
        "likes": "5"
      },
      {
        "cid": "18",
        "image": "assets/images/ora-8.jpg",
        "title": "아이팜장난감정리함팔아요",
        "location": "제주 제주시 오라동",
        "price": "30000",
        "likes": "29"
      },
      {
        "cid": "19",
        "image": "assets/images/ora-9.jpg",
        "title": "한색책상책장수납장세트 팝니다.",
        "location": "제주 제주시 오라동",
        "price": "1500000",
        "likes": "1"
      },
      {
        "cid": "20",
        "image": "assets/images/ora-10.jpg",
        "title": "순성 데일리 오가닉 카시트",
        "location": "제주 제주시 오라동",
        "price": "60000",
        "likes": "8"
      },
  ];
}
  /*
  * appBar Widget 구현 
  */
  final oCcy = new NumberFormat("#,###", "ko_KR");
  String calcStringToWon(String priceString) {
    return "${oCcy.format(int.parse(priceString))}원";
  }

  Widget _appbarWidget() {
    return AppBar(
      title: GestureDetector(
        onTap: () {
          print("click");
        },
        child: Row(
          children: [
            Text("서천동"),
            Icon(Icons.arrow_drop_down),
          ],
        ),
      ),
      elevation: 1, // 그림자를 표현되는 높이 3d 측면의 높이를 뜻함.
      actions: [
        IconButton(onPressed: () {}, icon: Icon(Icons.search)),
        IconButton(onPressed: () {}, icon: Icon(Icons.tune)),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            "assets/svg/bell.svg",
            width: 22,
          ),
        ),
      ],
    );
  }

  // @override
  // Widget build(BuildContext context) {
  //   // TODO: implement build
  //   throw UnimplementedError();
  // }

//   Future<List<Map<String, String>>> _loadContents() async {
//     List<Map<String, String>> responseData =
//         await contentsRepository.loadContentsFromLocation(currentLocation);
//     return responseData;
//   }

//   Widget _makeDataList(List<Map<String, String>> datas) {
//     int size = datas == null ? 0 : datas.length;
//     return ListView.separated(
//       padding: EdgeInsets.symmetric(horizontal: 15),
//       physics: ClampingScrollPhysics(), // bounce 효과를 제거 할 수 있다.
//       itemBuilder: (BuildContext context, int index) {
//         if (datas != null && datas.length > 0) {
//           Map<String, String> data = datas[index];
//           return GestureDetector(
//             onTap: () {
//               Navigator.push(context, MaterialPageRoute(builder: (_) {
//                 return DetailContentView(data: data);
//               }));
//             },
//             child: Container(
//                 padding: const EdgeInsets.symmetric(vertical: 10),
//                 child: Row(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     ClipRRect(
//                       borderRadius: BorderRadius.all(Radius.circular(5.0)),
//                       child: Hero(
//                         tag: data["cid"].toString(),
//                         child: Image.asset(
//                           data["image"].toString(),
//                           width: 100,
//                           height: 100,
//                           fit: BoxFit.fill,
//                         ),
//                       ),
//                     ),
//                     Expanded(
//                       child: Container(
//                         height: 100,
//                         padding: const EdgeInsets.only(left: 20, top: 2),
//                         alignment: Alignment.centerLeft,
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               data["title"].toString(),
//                               overflow: TextOverflow.ellipsis,
//                               style: TextStyle(fontSize: 15),
//                             ),
//                             SizedBox(height: 5),
//                             Text(
//                               data["location"].toString(),
//                               style: TextStyle(
//                                   fontSize: 12, color: Color(0xff999999)),
//                             ),
//                             SizedBox(height: 5),
//                             Text(
//                               DataUtils.calcStringToWon(data["price"]),
//                               style: TextStyle(
//                                   fontSize: 14,
//                                   color: Colors.black,
//                                   fontWeight: FontWeight.w500),
//                             ),
//                             Expanded(
//                               child: Container(
//                                 child: Row(
//                                   mainAxisAlignment: MainAxisAlignment.end,
//                                   crossAxisAlignment: CrossAxisAlignment.end,
//                                   children: [
//                                     Container(
//                                       height: 18,
//                                       child: SvgPicture.asset(
//                                         "assets/svg/heart_off.svg",
//                                         width: 13,
//                                         height: 13,
//                                       ),
//                                     ),
//                                     SizedBox(width: 3),
//                                     Text(data["likes"].toString()),
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     )
//                   ],
//                 )),
//           );
//         } else {
//           return Center(child: CircularProgressIndicator());
//         }
//       },
//       itemCount: size,
//       separatorBuilder: (BuildContext context, int index) {
//         return Container(
//           height: 1,
//           color: Colors.black.withOpacity(0.1),
//         );
//       },
//     );
//   }

//   /*
//    * body UI
//    */
//   Widget _bodyWidget() {
//     return FutureBuilder(
//       future: _loadContents(),
//       builder: (context, snapshot) {
//         if (snapshot.connectionState != ConnectionState.done) {
//           return Center(child: CircularProgressIndicator());
//         }
//         if (snapshot.hasError) {
//           return Center(child: Text("데이터 오류"));
//         }
//         if (snapshot.hasData) {
//           return _makeDataList(snapshot.data);
//         }
//         return Center(child: Text("해당 지역에 데이터가 없습니다."));
//       },
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: _appbarWidget(),
//       body: _bodyWidget(),
//     );
//   }
// }

