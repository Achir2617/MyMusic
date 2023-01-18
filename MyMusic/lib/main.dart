import 'dart:typed_data';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'dart:convert';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Home()
    );
  }
}

class Home extends  StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  AudioPlayer player = AudioPlayer();
String image = '';
String name_song = '';
  String type_song = '';
  String song = '';
  int next_song = 1;
  bool swith_start = false;
  bool swith_stop = false;
  bool swith_next = true;
   ext_song_function(){
    if(next_song>5){
      next_song=1;
    }
    if(next_song==1){
      setState(() {
        image = 'images/1.jpeg';
        swith_start = true;
        swith_stop = false;
        song = "assets/audios/pop.mp3";
        name_song = "  Primavera Guerra";
        type_song = "  pop";
      });
    }
    if(next_song==2){
      image = 'images/2.jpeg';
      swith_start = true;
      swith_stop = false;
      song = "assets/audios/country.mp3";
      name_song = "  This S.. Town";
      type_song = "  country";
    }
    if(next_song==3){
      setState(() {
        image = 'images/3.png';
        swith_start = true;
        swith_stop = false;
        song = "assets/audios/hiphop.mp3";
        name_song = "  Cullahmity";
        type_song = "  hip-hop";
      });
    }
    if(next_song==4){
      setState(() {
        image = 'images/5.png';
        swith_start = true;
        swith_stop = false;
        song = "assets/audios/rock.mp3";
        name_song = "  Punk_Rock_Opera";
        type_song = "  rock";
      });
    }
    if(next_song==5){
      setState(() {
        image = 'images/4.jpeg';
        swith_start = true;
        swith_stop = false;
        song = "assets/audios/electronic.mp3";
        name_song = "  Transition ~ ";
        type_song = "  electronic";
      });
    }
  }
  @override
  Widget build(BuildContext context) {


    return Scaffold(
        appBar: null,
        body:                 Column(

          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height/16,
              width: MediaQuery.of(context).size.width,
            ),
        Container(
        alignment: Alignment.centerLeft,
          child: Text(
            "  "+"My Playlist",
            style: TextStyle(
                height: 1.1,
                fontFamily: 'SukhumvitSet',
                fontWeight: FontWeight.bold,
                color: Color(0xFF111111),
                fontSize: 35.0),
          ),
        ),
            Container(
              height: MediaQuery.of(context).size.height/20,
              width: MediaQuery.of(context).size.width,
            ),

    Container(
    height: MediaQuery.of(context).size.height/12,
    width: MediaQuery.of(context).size.width/1.12,
    child: ElevatedButton(
              onPressed: () async {
                String audioasset = "assets/audios/pop.mp3";
                ByteData bytes = await rootBundle.load(audioasset); //load sound from assets
                Uint8List  soundbytes = bytes.buffer.asUint8List(bytes.offsetInBytes, bytes.lengthInBytes);
                int result = await player.playBytes(soundbytes);

                setState(() {
                  image = 'images/1.jpeg';
                  swith_start = true;
                  swith_stop = false;
                  song = "assets/audios/pop.mp3";
                  name_song = "  Primavera Guerra";
                  type_song = "  pop";
                  next_song==1;
                });
                if(result == 1){ //play success
                  print("Sound playing successful.");
                }else{
                  print("Error while playing sound.");
                }
              },
              // style: ButtonStyle(elevation: MaterialStateProperty(12.0 )),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  elevation: 0.0,
                  textStyle: const TextStyle(color: Colors.white)),
              child:    Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
              Row(
              crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[   Image.asset(
                  'images/1.jpeg',

                  fit: BoxFit.fill

              ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                     Text(
                      "  Primavera Guerra",
                      style: TextStyle(
                        fontFamily: 'SukhumvitSet',
                        fontSize: 16.0,
                        color: Colors.black,
                      ),
                    ),Text(
                          "  pop",
                          style: TextStyle(
                            fontFamily: 'SukhumvitSet',
                            fontSize: 16.0,
                            color: Colors.black54,
                          ),
                        )
                        ]),
                  ]),
                    Icon(
                      Icons.play_circle_rounded,
                      color: Colors.black54,
                      size: 40.0,
                      semanticLabel: 'Text to announce in accessibility modes',
                    ),
                  ])
            ),


    ),
            Container(
              height: MediaQuery.of(context).size.height/30,
              width: MediaQuery.of(context).size.width,
            ),
            Container(
              height: MediaQuery.of(context).size.height/12,
              width: MediaQuery.of(context).size.width/1.12,
              child: ElevatedButton(
                  onPressed: ()async {
                    String audioasset = "assets/audios/country.mp3";
                    ByteData bytes = await rootBundle.load(audioasset); //load sound from assets
                    Uint8List  soundbytes = bytes.buffer.asUint8List(bytes.offsetInBytes, bytes.lengthInBytes);
                    int result = await player.playBytes(soundbytes);
                    setState(() {
                      image = 'images/2.jpeg';
                      swith_start = true;
                      swith_stop = false;
                      song = "assets/audios/country.mp3";
                      name_song = "  This S.. Town";
                      type_song = "  country";
                      next_song==2;
                    });
                    if(result == 1){ //play success
                      print("Sound playing successful.");
                    }else{
                      print("Error while playing sound.");
                    }
                  },
                  // style: ButtonStyle(elevation: MaterialStateProperty(12.0 )),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      elevation: 0.0,
                      textStyle: const TextStyle(color: Colors.white)),
                  child:    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[   Image.asset(
                                'images/2.jpeg',

                                fit: BoxFit.fill

                            ),
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[  Text(
                                    "  This S.. Town",
                                    style: TextStyle(
                                      fontFamily: 'SukhumvitSet',
                                      fontSize: 16.0,
                                      color: Colors.black,
                                    ),
                                  ),Text(
                                    "  country",
                                    style: TextStyle(
                                      fontFamily: 'SukhumvitSet',
                                      fontSize: 16.0,
                                      color: Colors.black54,
                                    ),
                                  )
                                  ]),
                            ]),
                        Icon(
                          Icons.play_circle_rounded,
                          color: Colors.black54,
                          size: 40.0,
                          semanticLabel: 'Text to announce in accessibility modes',
                        ),
                      ])
              ),


            ),
            Container(
              height: MediaQuery.of(context).size.height/30,
              width: MediaQuery.of(context).size.width,
            ),
            Container(
              height: MediaQuery.of(context).size.height/12,
              width: MediaQuery.of(context).size.width/1.12,
              child: ElevatedButton(
                  onPressed: () async{
                    String audioasset = "assets/audios/hiphop.mp3";
                    ByteData bytes = await rootBundle.load(audioasset); //load sound from assets
                    Uint8List  soundbytes = bytes.buffer.asUint8List(bytes.offsetInBytes, bytes.lengthInBytes);
                    int result = await player.playBytes(soundbytes);
                    setState(() {
                      image = 'images/3.png';
                      swith_start = true;
                      swith_stop = false;
                      song = "assets/audios/hiphop.mp3";
                      name_song = "  Cullahmity";
                      type_song = "  hip-hop";
                      next_song==3;
                    });
                    if(result == 1){ //play success
                      print("Sound playing successful.");
                    }else{
                      print("Error while playing sound.");
                    }
                  },
                  // style: ButtonStyle(elevation: MaterialStateProperty(12.0 )),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      elevation: 0.0,
                      textStyle: const TextStyle(color: Colors.white)),
                  child:    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[   Image.asset(
                                'images/3.png',

                                fit: BoxFit.fill

                            ),
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[  Text(
                                    "  Cullahmity",
                                    style: TextStyle(
                                      fontFamily: 'SukhumvitSet',
                                      fontSize: 16.0,
                                      color: Colors.black,
                                    ),
                                  ),Text(
                                    "  hip-hop",
                                    style: TextStyle(
                                      fontFamily: 'SukhumvitSet',
                                      fontSize: 16.0,
                                      color: Colors.black54,
                                    ),
                                  )
                                  ]),
                            ]),
                        Icon(
                          Icons.play_circle_rounded,
                          color: Colors.black54,
                          size: 40.0,
                          semanticLabel: 'Text to announce in accessibility modes',
                        ),
                      ])
              ),


            ),
            Container(
              height: MediaQuery.of(context).size.height/30,
              width: MediaQuery.of(context).size.width,
            ),
            Container(
              height: MediaQuery.of(context).size.height/12,
              width: MediaQuery.of(context).size.width/1.12,
              child: ElevatedButton(
                  onPressed: () async {
                    String audioasset = "assets/audios/rock.mp3";
                    ByteData bytes = await rootBundle.load(audioasset); //load sound from assets
                    Uint8List  soundbytes = bytes.buffer.asUint8List(bytes.offsetInBytes, bytes.lengthInBytes);
                    int result = await player.playBytes(soundbytes);
                    setState(() {
                      image = 'images/5.png';
                      swith_start = true;
                      swith_stop = false;
                      song = "assets/audios/rock.mp3";
                      name_song = "  Punk_Rock_Opera";
                      type_song = "  rock";
                      next_song==4;
                    });
                    if(result == 1){ //play success
                      print("Sound playing successful.");
                    }else{
                      print("Error while playing sound.");
                    }
                  },
                  // style: ButtonStyle(elevation: MaterialStateProperty(12.0 )),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      elevation: 0.0,
                      textStyle: const TextStyle(color: Colors.white)),
                  child:    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[   Image.asset(
                                'images/5.png',

                                fit: BoxFit.fill

                            ),
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[  Text(
                                    "  Punk_Rock_Opera",
                                    style: TextStyle(
                                      fontFamily: 'SukhumvitSet',
                                      fontSize: 16.0,
                                      color: Colors.black,
                                    ),
                                  ),Text(
                                    "  rock",
                                    style: TextStyle(
                                      fontFamily: 'SukhumvitSet',
                                      fontSize: 16.0,
                                      color: Colors.black54,
                                    ),
                                  )
                                  ]),
                            ]),
                        Icon(
                          Icons.play_circle_rounded,
                          color: Colors.black54,
                          size: 40.0,
                          semanticLabel: 'Text to announce in accessibility modes',
                        ),
                      ])
              ),


            ),
            Container(
              height: MediaQuery.of(context).size.height/30,
              width: MediaQuery.of(context).size.width,
            ),
            Container(
              height: MediaQuery.of(context).size.height/12,
              width: MediaQuery.of(context).size.width/1.12,
              child: ElevatedButton(
                  onPressed: () async {
                    String audioasset = "assets/audios/electronic.mp3";
                    ByteData bytes = await rootBundle.load(audioasset); //load sound from assets
                    Uint8List  soundbytes = bytes.buffer.asUint8List(bytes.offsetInBytes, bytes.lengthInBytes);
                    int result = await player.playBytes(soundbytes);
                    setState(() {
                      image = 'images/4.jpeg';
                      swith_start = true;
                      swith_stop = false;
                      song = "assets/audios/electronic.mp3";
                      name_song = "  Transition ~ ";
                      type_song = "  electronic";
                      next_song==5;
                    });
                    if(result == 1){ //play success
                      print("Sound playing successful.");
                    }else{
                      print("Error while playing sound.");
                    }
                  },
                  // style: ButtonStyle(elevation: MaterialStateProperty(12.0 )),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      elevation: 0.0,
                      textStyle: const TextStyle(color: Colors.white)),
                  child:    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[   Image.asset(
                                'images/4.jpeg',

                                fit: BoxFit.fill

                            ),
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[  Text(
                                    "  Transition ~ ",
                                    style: TextStyle(
                                      fontFamily: 'SukhumvitSet',
                                      fontSize: 16.0,
                                      color: Colors.black,
                                    ),
                                  ),Text(
                                    "  electronic",
                                    style: TextStyle(
                                      fontFamily: 'SukhumvitSet',
                                      fontSize: 16.0,
                                      color: Colors.black54,
                                    ),
                                  )
                                  ]),
                            ]),
                        Icon(
                          Icons.play_circle_rounded,
                          color: Colors.black54,
                          size: 40.0,
                          semanticLabel: 'Text to announce in accessibility modes',
                        ),
                      ])
              ),


            ),

        // Container(
        //     margin: EdgeInsets.only(top:50),
        //     children: [
        //         ElevatedButton.icon(
        //             onPressed: () async {
        //
        //             },
        //             icon: Icon(Icons.play_arrow),
        //             label:Text("Play")
        //         ),
        //
        //         ElevatedButton.icon(
        //             onPressed: () async {
        //               int result = await player.stop();
        //
        //               // You can pasue the player
        //               // int result = await player.pause();
        //
        //               if(result == 1){ //stop success
        //                 print("Sound playing stopped successfully.");
        //               }else{
        //                 print("Error on while stopping sound.");
        //               }
        //             },
        //             icon: Icon(Icons.stop),
        //             label:Text("Stop")
        //         ),
        //
        //       ],
        //
        //
        // )
        ]),
        bottomNavigationBar: Container(
    color: Colors.transparent,
    child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: <Widget>[
      Container(
        height: MediaQuery.of(context).size.height/8,
        width: MediaQuery.of(context).size.width/1,
        child: ElevatedButton(
            onPressed: () async {
              // String audioasset = "assets/audios/electronic.mp3";
              // ByteData bytes = await rootBundle.load(audioasset); //load sound from assets
              // Uint8List  soundbytes = bytes.buffer.asUint8List(bytes.offsetInBytes, bytes.lengthInBytes);
              // int result = await player.playBytes(soundbytes);
              // if(result == 1){ //play success
              //   print("Sound playing successful.");
              // }else{
              //   print("Error while playing sound.");
              // }
            },
            // style: ButtonStyle(elevation: MaterialStateProperty(12.0 )),
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                elevation: 2.0,
                textStyle: const TextStyle(color: Colors.white)),
            child:    Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[ image == ''
                          ? Text('')
                          :  Image.asset(
                          image,
                          fit: BoxFit.fill

                      ),

                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[  Text(
                              name_song,
                              style: TextStyle(
                                fontFamily: 'SukhumvitSet',
                                fontSize: 16.0,
                                color: Colors.black,
                              ),
                            ),Text(
                              type_song,
                              style: TextStyle(
                                fontFamily: 'SukhumvitSet',
                                fontSize: 16.0,
                                color: Colors.black54,
                              ),
                            )
                            ]),
                      ]),
            Visibility(
                child: IconButton(
                  iconSize: 26,
                  icon: const Icon(Icons.pause),
                  color: Colors.black54,
                  onPressed: () async{
                    int result = await player.stop();
                    swith_stop =true;
                    swith_start =false;
                    setState(() {

                    });
                  },
                ),
              visible: swith_start,
            ),
                  Visibility(
                    child: IconButton(
                      iconSize: 26,
                      icon: const Icon(Icons.play_arrow),
                      color: Colors.black54,
                      onPressed: () async{

                        String audioasset = song;
                        ByteData bytes = await rootBundle.load(audioasset); //load sound from assets
                        Uint8List  soundbytes = bytes.buffer.asUint8List(bytes.offsetInBytes, bytes.lengthInBytes);
                        int result = await player.playBytes(soundbytes);
                        swith_stop =false;
                        swith_start =true;
                        setState(() {

                        });
                      },
                    ),
                    visible: swith_stop,
                  ),
                  Visibility(
                    child: IconButton(
                      iconSize: 26,
                      icon: const Icon(Icons.skip_next_outlined),
                      color: Colors.black54,
                      onPressed: () async{
next_song++;
ext_song_function();
                        String audioasset = song;
                        ByteData bytes = await rootBundle.load(audioasset); //load sound from assets
                        Uint8List  soundbytes = bytes.buffer.asUint8List(bytes.offsetInBytes, bytes.lengthInBytes);
                        int result = await player.playBytes(soundbytes);
                        swith_stop =false;
                        swith_start =true;
                        setState(() {

                        });
                      },
                    ),
                    visible: swith_next,
                  ),
                ])
        ),


      ),
    ])
    ),

    );
  }
}