import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:smile_erp_log_app/presentation/pages/logistic/resources.dart';


//  DasBoard Logistica



class DashBoard extends StatelessWidget {
  static const name='dash-logistic';
  
  const DashBoard({super.key});

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Logistica", style: TextStyle(color: Colors.white, fontSize: 20,fontWeight: FontWeight.bold),),
        backgroundColor: Colors.blue,
      ),

      body: _ListItems(),
    );
  }
}

class _ListItems extends StatelessWidget{

  

  @override
  Widget build(BuildContext context) {
      pageRoute;
      return ListView.separated(
        itemCount: pageRoute.length,
        separatorBuilder: (context, i)=> Divider(
          color: Colors.blue,
          height: 1,
        ),
        itemBuilder: (context,i)=> ListTile(
              leading:  FaIcon(pageRoute[i].icon, color: Colors.blue),
              trailing: FaIcon(FontAwesomeIcons.circleChevronRight, color: Colors.blue,),
              subtitle: Text(pageRoute[i].subtitle, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.blue),),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>
                  pageRoute[i].page
                ));
              },
        ), 
        );
  }
}





