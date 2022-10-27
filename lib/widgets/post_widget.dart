import 'package:flutter/material.dart';
import 'package:cityride/models/post.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:cityride/widgets/seperator_widget.dart';
class PostWidget extends StatelessWidget {

  final Post post;

  PostWidget({
    required this.post
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.0),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              CircleAvatar(
                backgroundImage: AssetImage(post.profileImage),
                radius: 27.0,
              ),
              SizedBox(width: 7.0),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: [
                      Text(post.username, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19.0)),
                      Text(" in "),
                      Text(post.location, style: TextStyle(fontWeight: FontWeight.normal, fontSize: 16.0)),
                      SizedBox(width: MediaQuery.of(context).size.width*0.18),
                      InkWell(
                          child: Icon(FontAwesomeIcons.ellipsis,size: 17,color: Colors.grey.shade700,),
                      onTap: (){},
                      ),
                    ],
                  ),
                  SizedBox(height: 5.0),
                  Text(post.time)
                ],
              ),
            ],
          ),
          SizedBox(height: 20.0),
          Text(post.content, style: TextStyle(fontSize: 14.0)),
          SizedBox(height: 10,),
          Column(
            children: [
              Positioned(
                  child: post.Postimage != 'assets/no image.jpg'
                      ? Center(
                        child: Container(
                      height: MediaQuery.of(context).size.height*0.3,
                   width: MediaQuery.of(context).size.width*0.9,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.all(Radius.circular(10)),
                     image: DecorationImage(
                      image: AssetImage(post.Postimage),
                       fit: BoxFit.cover,

                    ),
                  ),
                ),
              )
                :   SizedBox.shrink(),
              )
            ],
          ),
          Divider(height: 20.0),
          Row(
            children: <Widget>[
              Row(
                children: <Widget>[
                  InkWell(
                      child: Icon(FontAwesomeIcons.solidHeart,size:16,color: Colors.red,),
                    onTap: () {},
                  ),
                  Text(' ${post.likes} Likes', style: TextStyle(fontSize: 13.0)),
                ],
              ),
              SizedBox(width: 7,),
              Row(
                children: <Widget>[
                  InkWell(
                      child: Icon(FontAwesomeIcons.comment, size: 16.0),
                    onTap: (){},
                  ),
                  SizedBox(width: 3,),
                  Text('${post.comments} comments', style: TextStyle(fontSize: 13.0)),
                ],
              ),
              SizedBox(width: MediaQuery.of(context).size.width*0.35,),
              Container(
                alignment: Alignment.centerLeft,
                child: InkWell(
                    child: Icon(FontAwesomeIcons.shareNodes,size: 16,color: Colors.grey.shade700,),
                  onTap: (){},
                ),
              ),
              SizedBox(width: 5,),
              Container(
                alignment: Alignment.centerLeft,
                child: InkWell(
                    child: Icon(FontAwesomeIcons.bookmark,size: 16,color: Colors.grey.shade700,),
                  onTap: (){},
                ),
              ),
            ],
          ),
          SizedBox(height: 20,),
          SeparatorWidget()
        ],
      ),
    );
  }
}