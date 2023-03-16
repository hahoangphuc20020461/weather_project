import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: <Widget>[
          Expanded(flex: 1,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.cyan,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                      image: AssetImage('lib/Input/clouds.jpg',)
                  ),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25)
                  )
                ),
                child: Stack(
                  children: <Widget>[
                    Container(
                      child: AppBar(
                        backgroundColor: Colors.transparent,
                        elevation: 0,
                        leading: IconButton(onPressed: () {},
                            icon: Icon(Icons.menu,
                              color: Colors.white,)
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                        top: 70,
                        left: 20,
                        right: 20,
                      ),
                      child: TextField(
                        onChanged: (value) {},
                        style: TextStyle(
                          color: Colors.white
                        ),
                        textInputAction: TextInputAction.search,
                        onSubmitted: (value) {},
                        decoration: InputDecoration(
                          suffixIcon: Icon(Icons.search, color: Colors.white,),
                          // suffix: Icon(
                          //   Icons.search,
                          // color: Colors.white,
                          // ),
                          hintStyle: TextStyle(
                            color: Colors.white
                          ),
                          hintText: 'Search'.toUpperCase(),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.white)
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.white)
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.white)
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment(0.0, 1.0),
                      child: SizedBox(
                        height: 10,
                        width: 10,
                        child: OverflowBox(
                          minWidth: 0.0,
                          maxWidth: MediaQuery.of(context).size.width,
                          minHeight: 0.0,
                          maxHeight: (MediaQuery.of(context).size.height / 4),
                          child: Stack(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 16.8),
                                width: double.infinity,
                                height: double.infinity,
                                child: Card(
                                  color: Colors.white,
                                  elevation: 5,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
          ),
          Expanded(
          flex: 2
          ,child: Container(

          ),
          )
        ],
      )
    );
  }
}
