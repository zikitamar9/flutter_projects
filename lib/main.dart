import 'package:assignment_1/mocks/mock_musclegroup.dart';
import 'package:flutter/material.dart';
import 'models/musclegroup_list.dart';

void main() {
    final mockMusclesGroups = MockMuscleGroup.fetchAll();
    var app = MaterialApp(home: MuscleGroupList(mockMusclesGroups));
  return runApp(app);
}

