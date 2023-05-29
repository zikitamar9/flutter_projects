


import 'package:assignment_1/models/exercise.dart';
import 'package:assignment_1/models/muscle_group.dart';

mixin MockMuscleGroup implements MuscleGroup {
  static final List<MuscleGroup> items = [
    MuscleGroup(
        name: 'Shoulders',
        imageUrl:
            'https://www.fitnesseducation.edu.au/wp-content/uploads/2017/03/Pushups.jpg',

        exercises: <Exercise>[
         Exercise(name: 'Push Ups', instructions: 'Bring your chest to the ground and push yourself back up. Repeat 10 times'), 
          Exercise(name: 'Pull Ups', instructions: 'Pull your chest up to a bar and slowly bring yourself down. Repeat 10 times')
          ]),

 MuscleGroup(
        name: 'Triceps',
        imageUrl:
            'https://macon-newsroom.com/wp-content/uploads/2023/01/bs2907-image-kwyt58sl.jpg',

        exercises: <Exercise>[
          Exercise(name: 'Push Ups', instructions: 'Bring your chest to the ground and push yourself back up. Repeat 10 times'), 
          Exercise(name: 'Pull Ups', instructions: 'Pull your chest up to a bar and slowly bring yourself down. Repeat 10 times')
          ]),
  
   MuscleGroup(
        name: 'Legs',
        imageUrl:
            'https://macon-newsroom.com/wp-content/uploads/2023/01/bs2907-image-kwyt58sl.jpg',

        exercises: <Exercise>[
          Exercise(name: 'Squats', instructions: 'Lower your glute as low as possible and then bring yourself back up. Repeat 10 times'), 
          Exercise(name: 'Calf Raises', instructions: 'Raise your heels off the ground and stand on your toes, then lower. Repeat 10 times')
          ]),



  ];


  static MuscleGroup fetchAny() {
    return items[0];
  }

  static List<MuscleGroup> fetchAll() {
    return items;
  }




}