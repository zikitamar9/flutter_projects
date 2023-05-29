

import 'package:assignment_1/models/muscle_group.dart';
import 'package:flutter/material.dart';
import 'styles.dart';

class MuscleGroupDetail extends StatelessWidget {
  final MuscleGroup muscleGroup;

  const MuscleGroupDetail(this.muscleGroup, {super.key});


@override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(muscleGroup.name, style: Styles.navBarTitle)),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: _renderBody(context, muscleGroup),
        ));
  }


  List<Widget> _renderBody(BuildContext context, MuscleGroup muscleGroup) {
    var result = <Widget>[];
    result.add(_bannerImage(muscleGroup.imageUrl, 170.0));
    result.addAll(_renderExercises(context, muscleGroup));
    return result;
  }


  List<Widget> _renderExercises(BuildContext context, MuscleGroup muscleGroup) {
    var result = <Widget>[];
    for (int i = 0; i < muscleGroup.exercises.length; i++) {
      result.add(_sectionTitle(muscleGroup.exercises[i].name));
      result.add(_sectionText(muscleGroup.exercises[i].instructions));
    }
    return result;

  }
  
  Widget _bannerImage(String url, double height) {
return Container(
      constraints: BoxConstraints.tightFor(height: height),
      child: Image.network(url, fit: BoxFit.contain),
    );


  }
  
  Widget _sectionTitle(String title) {
  return Container(
          padding: const EdgeInsets.fromLTRB(25.0, 25.0, 25.0, 10.0),
          child:
              Text(title, textAlign: TextAlign.left, style: Styles.headerLarge));
  }



  
Widget _sectionText(String text) {
return Container(
        padding: const EdgeInsets.fromLTRB(25.0, 15.0, 25.0, 15.0),
        child: Text(text, style: Styles.textDefault));
  }





}

