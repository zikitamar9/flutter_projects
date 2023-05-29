


import 'package:assignment_1/musclegroup_detail.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

import '../styles.dart';
import 'muscle_group.dart';

class MuscleGroupList extends StatelessWidget{
  final List<MuscleGroup> _muscleGroups;

  const MuscleGroupList(this._muscleGroups, {super.key});
  
  @override
  Widget build(BuildContext context) {
      return Scaffold(
       appBar: AppBar(title: const Text("Muscle Groups", style: Styles.navBarTitle)),
    body: ListView.builder(
            itemCount: _muscleGroups.length,
            itemBuilder: _listViewitemBuilder,
          ),



        );


  }

   Widget _listViewitemBuilder(BuildContext context, int index) {
    MuscleGroup muscleGroup = _muscleGroups[index];
    return ListTile(
      contentPadding: const EdgeInsets.all(10),
      leading: _itemThumbnail(muscleGroup),
      title: _itemTitle(muscleGroup),
      onTap: () => _navigationToLocationDetail(context, _muscleGroups[index]),
    );
  }
  
 void _navigationToLocationDetail(BuildContext context, muscleGroup) {

  Navigator.push(context,
  MaterialPageRoute(builder: (context) => MuscleGroupDetail(muscleGroup)));

 }



Widget _itemTitle(MuscleGroup muscleGroup) {
  return Container(
    constraints: const BoxConstraints.tightFor(height: 50.0, width: 50.0),

    child: Image.network(muscleGroup.imageUrl,
    fit: BoxFit.contain
    )
  );

}

Widget _itemThumbnail(MuscleGroup muscleGroup) {
    return Text(
      muscleGroup.name,
      style: Styles.textDefault,
    );
  }


}

