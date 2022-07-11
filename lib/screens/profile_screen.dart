import 'package:clone_tiki_ui/model/banner.dart';
import 'package:clone_tiki_ui/model/constant.dart';
import 'package:clone_tiki_ui/screens/home/profile_app_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          Row(
            children: [
              Stack(
                children: <Widget>[
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.settings_outlined  ),
                  ),
                ],
              ),
              Stack(
                children: <Widget>[
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.shopping_cart),
                  ),
                  Positioned(
                    top: 8.0,
                    right: 8.0,
                    child: Container(
                      width: 16.0,
                      height: 16.0,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        shape:BoxShape.circle,
                        color: Colors.deepOrangeAccent,
                      ),
                      child: const Text("4",style: TextStyle(
                        fontSize: 12.0, fontWeight: FontWeight.bold,
                      ),),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
      backgroundColor: Colors.white70,
      body: getBody(),
    );
  }

  getBody() {
    return ListView(
      children: [
        Container(
          height: 150,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(40),
              bottomLeft: Radius.circular(40),
            ),
            color: Colors.blue,
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 20,right: 20,top: 40),
            child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Trương Thế Vinh",style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.w400)
                      ),
                      const SizedBox(height: 20),
                      Text(
                        '+ Thêm nickname',
                        style: TextStyle(fontSize: 13,color: Colors.black.withOpacity(0.7)),
                      ),
                    ],
                  ),
                  const SizedBox(width: 80,),
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      image: const DecorationImage(
                          image: NetworkImage(profileurl),fit: BoxFit.cover),
                    ),
                  ),
                ]
            ),
          ),
        ),
        Container(
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                 Card(
                   color: Colors.white.withOpacity(1.0),
                   clipBehavior: Clip.antiAlias,
                   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  child: SizedBox(
                    width: 150,
                    height: 75,
                    child: Column(
                      children: const [
                        ListTile(
                          leading: Icon(Icons.ten_k_outlined),
                          title: Text('Tiki xu'),
                          subtitle: Text(
                            '385 xu',
                            style: TextStyle(color: Colors.black26),
                          ),
                        ),
                      ],
                    ),
                  ),
                 ),
                 Card(
                   color: Colors.white.withOpacity(1.0),
                   clipBehavior: Clip.antiAlias,
                   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                   child: SizedBox(
                     width: 200,
                     height: 75,
                     child: Column(
                       children: const [
                         ListTile(
                           leading: Icon(Icons.three_g_mobiledata_sharp),
                           title: Text('Mã giảm giá'),
                           subtitle: Text(
                             'Tìm hiểu thêm',
                             style: TextStyle(color: Colors.black26),
                           ),
                         ),
                       ],
                     ),
                   ),
                 ),

               ],
             ),
        ),
        Container(
          color: Colors.white,
          child:  Column(
            children: [
              Row(
               children:  [
                   const Padding(
                     padding: EdgeInsets.all(15.0),
                     child: Text(
                         'Đơn hàng của bạn',
                       style: TextStyle(
                         fontWeight: FontWeight.bold,
                         fontSize: 15.0,
                       ),
                     ),
                   ),
                 const SizedBox(width: 150),
                 TextButton(onPressed: () {},
                   child: const Text('Xem lịch sử',style: TextStyle(color: Colors.blue),),
                 ),
               ],
              ),
              Row(
                children:  [
                  const SizedBox(width: 20.0,),
                  Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSM0YvRwQCB4rgAavIa0xzu4A7q1whXSl1QyCeGJxcMWg&s',width: 40,height: 40,),
                  const SizedBox(width: 45.0,),
                  Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUzhutMfVShtw_UMrUBeCYXgAxnptbOY-ffA&usqp=CAU',width: 40,height: 40,),
                  const SizedBox(width: 45.0,),
                  Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTGspxdLINwgQEst53CjfhPYM-otBirjpsI-Q&usqp=CAU',width: 40,height: 40,),
                  const SizedBox(width: 45.0,),
                  Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTGspxdLINwgQEst53CjfhPYM-otBirjpsI-Q&usqp=CAU',width: 40,height: 40,),
                  const SizedBox(width: 45.0,),
                  Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTGspxdLINwgQEst53CjfhPYM-otBirjpsI-Q&usqp=CAU',width: 40,height: 40,),
                ],
              ),
              // Row(
              //   children: const [
              //     SizedBox(width: 10.0,),
              //     Text('Chờ thanh'),
              //     SizedBox(width: 20.0,),
              //     Text('Đang xử lý'),
              //     SizedBox(width: 20.0,),
              //     Text('Đang vận'),
              //     SizedBox(width: 30.0,),
              //     Text('Đã giao'),
              //     SizedBox(width: 40.0,),
              //     Text('Đổi trả'),
              //   ],
              // ),
              // Row(
              //   children: const [
              //     SizedBox(width: 20.0,),
              //     Text('toán'),
              //     SizedBox(width: 140.0,),
              //     Text('chuyển'),
              //   ],
              // ),
            ],
          ),
        ),
        const Divider(
          thickness: 1,
        ),
        Container(
          color: Colors.white,
          child: const ListTile(
            leading: Icon(Icons.star),
            title: Text('Đánh giá sản phẩm',style: TextStyle(fontWeight: FontWeight.bold),),
          ),
        ),
        const Divider(
          thickness: 1,
        ),

      ],
    );
  }
}
