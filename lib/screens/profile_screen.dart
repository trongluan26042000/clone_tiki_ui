import 'package:clone_tiki_ui/model/constant.dart';
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
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        const SizedBox(width: 20.0,),
                        Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSM0YvRwQCB4rgAavIa0xzu4A7q1whXSl1QyCeGJxcMWg&s',width: 40,height: 40,),
                        const Text('Chờ thanh'),
                        const Text('toán'),
                      ],
                    ),
                  ),
                  const SizedBox(width: 20.0,),
                  Column(
                    children: [
                      const SizedBox(width: 45.0,),
                      Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUzhutMfVShtw_UMrUBeCYXgAxnptbOY-ffA&usqp=CAU',width: 40,height: 40,),
                      const SizedBox(height: 9.0,),
                      const Text('Đang xử lý'),
                    ],
                  ),
                  const SizedBox(width: 30.0,),
                  Column(
                    children: [
                      const SizedBox(width: 45.0,),
                      Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTGspxdLINwgQEst53CjfhPYM-otBirjpsI-Q&usqp=CAU',width: 40,height: 40,),
                      const Text('Đang vận'),
                      const Text('chuyển'),
                    ],
                  ),
                  const SizedBox(width: 30.0,),
                  Column(
                    children: [
                      const SizedBox(width: 45.0,),
                      Image.network('https://cdn-icons.flaticon.com/png/128/3269/premium/3269585.png?token=exp=1657698529~hmac=cc85fc8de60cd92ee14f380b7cfb5284',width: 40,height: 40,),
                      const SizedBox(height: 9.0,),
                      const Text('Đã giao'),
                    ],
                  ),
                  const SizedBox(width: 30.0,),
                  Column(
                    children: [
                      const SizedBox(width: 45.0,),
                      Image.network('https://cdn-icons-png.flaticon.com/128/1642/1642408.png',width: 40,height: 40,),
                      const SizedBox(height: 9.0,),
                      const Text('Đổi trả'),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        const Divider(
          thickness: 1,
        ),
        Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: const [
                SizedBox(height: 40.0,),
                Icon(Icons.star),
                SizedBox(width: 10.0,),
                Text('Đánh giá sản phẩm',style: TextStyle(fontWeight: FontWeight.bold),),
                SizedBox(width: 200.0,),
                Icon(Icons.arrow_forward_ios),
              ],
            ),
          ),
        ),
        const Divider(
          thickness: 1,
        ),
        Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: const [
                SizedBox(height: 40.0,),
                Icon(Icons.person),
                SizedBox(width: 10.0,),
                Text('Trung tâm trợ giúp',style: TextStyle(fontWeight: FontWeight.bold),),
                SizedBox(width: 200.0,),
                Icon(Icons.arrow_forward_ios),
              ],
            ),
          ),
        ),

        const Divider(
          thickness: 1,
        ),

        Container(
          color: Colors.white,
          child:  Column(
            children: [
              Row(
                children:  const [
                  Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Text(
                      'Quan tâm',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Column(
                    children: [
                      const Padding(padding: EdgeInsets.only(left: 100.0)),
                      Image.network('https://cdn-icons.flaticon.com/png/128/4196/premium/4196716.png?token=exp=1657696628~hmac=1053d48ee111c6e9d4cd650371ceb29a',width: 40,height: 40,),
                      const SizedBox(height: 9.0,),
                      const Text('Đã xem',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.green),),
                    ],
                  ),
                  Column(
                    children: [
                      const Padding(padding: EdgeInsets.only(left: 100.0)),
                      Image.network('https://cdn-icons-png.flaticon.com/128/263/263417.png',width: 40,height: 40,),
                      const SizedBox(height: 9.0,),
                      const Text('Yêu thích',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.pink),),
                    ],
                  ),
                  Column(
                    children: [
                      const Padding(padding: EdgeInsets.only(left: 100.0)),
                      Image.network('https://cdn-icons-png.flaticon.com/128/743/743007.png',width: 40,height: 40,),
                      const SizedBox(height: 9.0,),
                      const Text('Mua lại',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.yellow),),
                    ],
                  ),
                  Column(
                    children: [
                      const Padding(padding: EdgeInsets.only(left: 100.0)),
                      Image.network('https://cdn-icons-png.flaticon.com/128/3893/3893258.png',width: 40,height: 40,),
                      const SizedBox(height: 9.0,),
                      const Text('Theo dõi',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),

        const Divider(
          thickness: 1,
        ),


        Container(
          color: Colors.white,
          child:  Column(
            children: [
              Row(
                children:  const [
                  Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Text(
                      'Tiện ích khác',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Column(
                    children: [
                      const Padding(padding: EdgeInsets.only(left: 100.0)),
                      Image.network('https://cdn-icons.flaticon.com/png/128/4543/premium/4543070.png?token=exp=1657696736~hmac=9609a97495d299867558bdc5ad6a68c4',width: 40,height: 40,),
                      const SizedBox(height: 9.0,),
                      const Text('Thu thập',style: TextStyle(fontWeight: FontWeight.bold),),
                    ],
                  ),
                  Column(
                    children: [
                      const Padding(padding: EdgeInsets.only(left: 100.0)),
                      Image.network('https://cdn-icons.flaticon.com/png/128/1989/premium/1989125.png?token=exp=1657696775~hmac=95cdddac8157827b93e19d0ae38f2aca',width: 40,height: 40,),
                      const SizedBox(height: 9.0,),
                      const Text('Phương thức',style: TextStyle(fontWeight: FontWeight.bold),),
                    ],
                  ),
                  Column(
                    children: [
                      const Padding(padding: EdgeInsets.only(left: 100.0)),
                      Image.network('https://cdn-icons-png.flaticon.com/128/44/44334.png',width: 40,height: 40,),
                      const SizedBox(height: 9.0,),
                      const Text('Địa chỉ',style: TextStyle(fontWeight: FontWeight.bold),),
                    ],
                  ),
                  Column(
                    children: [
                      const Padding(padding: EdgeInsets.only(left: 100.0)),
                      Image.network('https://cdn-icons-png.flaticon.com/128/545/545674.png',width: 40,height: 40,),
                      const SizedBox(height: 9.0,),
                      const Text('Thông tin',style: TextStyle(fontWeight: FontWeight.bold),),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),

        const Divider(
          thickness: 1,
        ),

      ],
    );
  }
}
