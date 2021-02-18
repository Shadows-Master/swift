import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:humanitarian_icons/humanitarian_icons.dart';
import 'package:swift/core/classes/ChatMessage.dart';
import 'package:swift/helpers/constants.dart';
import 'package:swift/widgets/forms/form_widget.dart';

class ChatRoomView extends StatefulWidget {
  ChatRoomView({Key key}) : super(key: key);

  @override
  _ChatRoomViewState createState() => _ChatRoomViewState();
}

class _ChatRoomViewState extends State<ChatRoomView> {
  TextEditingController _mChatSmsController;
  @override
  void initState() {
    _mChatSmsController = TextEditingController();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          flexibleSpace: SafeArea(
            child: Container(
              padding: EdgeInsets.only(right: 16),
              child: Row(
                children: <Widget>[
                  IconButton(
                    onPressed: (){
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back,color: Colors.black,),
                  ),
                  SizedBox(width: 2,),
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/male.png'),
                    maxRadius: 20,
                  ),
                  SizedBox(width: 12,),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("Kriss Benwat",style: TextStyle(color: kAccentColor, fontSize: fontSize(size: 16) ,fontWeight: FontWeight.w700),),
                        SizedBox(height: 1,),
                        Text("Online",style: TextStyle(color: Colors.grey.shade600, fontSize: 13),),
                      ],
                    ),
                  ),
                  Icon(Icons.settings,color: Colors.black54,),
                ],
              ),
            ),
          ),
        ),
        body: Stack(
          children: <Widget>[
            ListView.builder(
              itemCount: messages.length,
              shrinkWrap: true,
              padding: EdgeInsets.only(top: 10,bottom: 10),
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index){
                return Container(
                  padding: EdgeInsets.only(left: 14,right: 14,top: 10,bottom: 10),
                  child: Align(
                    alignment: (messages[index].messageType == "receiver"?Alignment.topLeft:Alignment.topRight),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: (messages[index].messageType  == "receiver"?Colors.grey.shade200:Colors.blue[200]),
                      ),
                      padding: EdgeInsets.all(16),
                      child: Text(messages[index].messageContent, style: TextStyle(fontSize: fontSize(size: 15), color: Colors.black),),
                    ),
                  ),
                );
              },
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                width: double.infinity,
                color: Colors.white,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: SwiftTextFormField(
                        hintText: "Write message...",
                        keyboardType: TextInputType.multiline,
                        suffixIcon: IconButton(icon: Icon(Feather.camera,color: kTextColor,), onPressed: (){}),
                        onChanged: (String sms){
                          setState(() {
                            _mChatSmsController.text = sms;
                          });
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: FloatingActionButton(
                        onPressed: (){},
                        child: Icon(
                          (_mChatSmsController.text.isEmpty) ? HumanitarianIcons.microphone : Icons.send,
                          color: Colors.white, size: 18,
                        ),
                        backgroundColor: kPrimaryColor,
                        elevation: 0,
                      ),
                    ),
                  ],

                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
