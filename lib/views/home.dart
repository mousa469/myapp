import 'package:flutter/material.dart';
import 'package:myapp/constants.dart';
import 'package:myapp/widgets/customText.dart';
import 'package:myapp/widgets/custome_icon.dart';
import 'package:myapp/widgets/friend_message.dart';
import 'package:myapp/widgets/my_message.dart';

class Homeview extends StatelessWidget {
  const Homeview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        leading: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomeIcon(icon: Icons.arrow_back_ios, size: 18),
            Padding(
              padding: EdgeInsets.only(left: 6.0),
              child: CircleAvatar(
                radius: 16,
                backgroundImage: AssetImage("assets/images/Rectangle.png"),
              ),
            )
          ],
        ),
        title: const Text(
          "John Safwat",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 14,
            color: Colors.white,
          ),
        ),
        actions: const [
          Row(
            children: [
              CustomeIcon(icon: Icons.phone, size: 20),
              Padding(
                padding: EdgeInsets.only(left: 10.0, right: 14),
                child: CustomeIcon(icon: Icons.video_camera_back, size: 20),
              ),
              CustomeIcon(icon: Icons.more_vert, size: 20),
            ],
          )
        ],
      ),
      body: DecoratedBox(
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage("assets/images/WhatsApp_background.jpg"),
          fit: BoxFit.cover,
        )),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
            const   MyMessage(
                  widget: CustomText(message: "hello !"),
                   ),
          const    FriendMessage(widget:  CustomText(message: "hello !") ),
          const    MyMessage(
                  widget:
                   CustomText(
                    message: "Hey! Have you ever thought about how random moments can sometimes turn into the best memories? It’s like the universe loves to surprise us when we least expect it!"
                    ),
                   ),
              const       MyMessage(
                  widget: Image(image: AssetImage("assets/images/route logo.png"))
                   ),
              const      FriendMessage(widget:  CustomText(message: "what a greate content tp learn flutter") ),
                   Row(
                    children: [
                    Expanded(
                      child: Padding(
                        padding: const  EdgeInsets.symmetric(horizontal: 10),
                        child: TextFormField(
                          
                          decoration: InputDecoration(
                            suffixIcon: const  Icon(Icons.send , color: Colors.white,),
                            filled: true,
                            fillColor:Colors.transparent ,
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16),
                              borderSide: const BorderSide(width: 2 ,color: kPrimaryColor)
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16),
                              borderSide: const BorderSide(color: kPrimaryColor)
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16),
                              borderSide: const   BorderSide(color: kPrimaryColor)
                            ),
                            prefixIcon:const Icon(Icons.photo_camera , color: Colors.white,),
                            hintText: "Type a message",
                            hintStyle: const  TextStyle(color: Colors.white),
                        
                          ),
                        
                        ),
                      ),
                    ),
                  const  Padding(
                    
                      padding:  EdgeInsets.only(right:  5.0),
                      child: CircleAvatar(
                        radius: 22,
                        backgroundColor: kPrimaryColor,
                        child: Icon(Icons.mic , color: Colors.white,),
                      ),
                    )
                   ],
                   )
            ],
            
          ),
        ),
      ),
    );
  }
}
