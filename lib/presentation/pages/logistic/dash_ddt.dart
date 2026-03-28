import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:smile_erp_log_app/presentation/pages/logistic/resources.dart';

class DashDDt extends StatelessWidget {
  final  name ="dash-log";
  const DashDDt({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Doc. DDT Interno', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        backgroundColor: Colors.blue,
      ),
      body: ListView.separated(
              separatorBuilder: (context,i)=> Divider(color: Colors.blue, height: 1), 
              itemCount: pageRouteLog.length,
              itemBuilder: (context, i)=>
                  ListTile(
                    leading:  FaIcon(pageRouteLog[i].icon, color: Colors.blue),
                    trailing: FaIcon(FontAwesomeIcons.circleChevronRight, color: Colors.blue,),
                    title: Text(pageRouteLog[i].subtitle, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.blue),),
                  ) 
              ),
            );
      
  }
}