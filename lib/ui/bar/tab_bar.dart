import 'package:design_system/ui/bar/F_tab_bar.dart';
import 'package:design_system/ui/bar/F_tab_bar.dart';
import 'package:design_system/ui/button/button.dart';
import 'package:design_system/ui/icons/icons.dart';
import 'package:flutter/material.dart';

class TabBarCustom extends StatelessWidget {
  TabBarCustom({
    required this.Full_Layout,
    required this.List_Child,
    this.Items=3,
    this.Icons,
    this.ListText
});
  List_Child_TabBar List_Child;
  Full_Layout_TabBar Full_Layout;
  int Items;
  List<Icon_Custom> ?Icons;
  List<String>?ListText;
  @override
  Widget build(BuildContext context) {
    switch(List_Child){
      case List_Child_TabBar.TextOnly:
        return DefaultTabController(
          length: Items,
          child: Scaffold(
            appBar: AppBar(
              title:  Text('TabBar Sample'),
              bottom: TabBar(
                indicatorColor: Colors.blue,
                tabs:[
                  for (int i = 0; i < Items; i++)
                    Tab(
                      child: Container(
                        width: double.infinity,
                        child: Button_CusTom(List_child: 'Text action', Size:30, Position: 'Text Only', Status: 'Primary',Content: 'Label',)
                      ),
                    )
                ],
              ),
            ),
          ),
        );
      case List_Child_TabBar.IconLeft:
        return DefaultTabController(
          length: Items,
          child: Scaffold(
            appBar: AppBar(
              title:  Text('TabBar Sample'),
              bottom: TabBar(
                indicatorColor: Colors.blue,
                tabs:[
                  for (int i = 0; i < Items; i++)
                    Tab(
                      child: Container(
                          width: double.infinity,
                          child: Button_CusTom(List_child: 'Text action', Size:30, Position: 'Icon left', Status: 'Primary',Content: 'Label',Icons: Icons?[i])
                      ),
                    )
                ],
              ),
            ),
          ),
        );
      case List_Child_TabBar.IconRight:
        return DefaultTabController(
          length: Items,
          child: Scaffold(
            appBar: AppBar(
              title:  Text('TabBar Sample'),
              bottom: TabBar(
                indicatorColor: Colors.blue,
                tabs:[
                  for (int i = 0; i < Items; i++)
                    Tab(
                      child: Container(
                          width: double.infinity,
                          child: Button_CusTom(List_child: 'Text action', Size:30, Position: 'Icon right', Status: 'Primary',Content: 'Label',Icons: Icons?[i])
                      ),
                    )
                ],
              ),
            ),
          ),
        );
      case List_Child_TabBar.IconAbove:
        return DefaultTabController(
          length: Items,
          child: Scaffold(
            appBar: AppBar(
              title:  Text('TabBar Sample'),
              bottom: TabBar(
                indicatorColor: Colors.blue,
                tabs:[
                  for (int i = 0; i < Items; i++)
                    Tab(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Icons![i],
                          SizedBox(height: 2,),
                          Text(ListText![i].toString(),
                            style: TextStyle(color: Colors.blue),
                          )
                        ],
                      )
                    )
                ],
              ),
            ),
          ),
        );
      case List_Child_TabBar.IconOnly:
        return DefaultTabController(
          length: Items,
          child: Scaffold(
            appBar: AppBar(
              title:  Text('TabBar Sample'),
              bottom: TabBar(
                indicatorColor: Colors.blue,
                tabs:[
                  for (int i = 0; i < Items; i++)
                    Tab(
                            child:Icons?[i],
                    )
                ],
              ),
            ),
          ),
        );
    }
  }
}
// return MaterialApp(
// theme: ThemeData(useMaterial3: true),
// home:  Scaffold(
// body: TabBarCustom(
// Full_Layout: Full_Layout_TabBar.yes,
// List_Child:List_Child_TabBar.IconOnly,
// Items: 3,
// Icons: [Icon_Custom(imgIcon: 'assets/icons/chrom.png'),Icon_Custom(imgIcon: 'assets/icons/chrom.png'),Icon_Custom(imgIcon: 'assets/icons/chrom.png')],
// ListText: ['Label','Label','Label'],
// ),
// ),
// );