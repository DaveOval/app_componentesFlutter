import 'package:fl_components/theme/app_theme.dart';

import 'package:flutter/material.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child:  Column(
        children:  [
          const ListTile(
            leading: Icon(Icons.photo_album, color: AppTheme.primary,),
            title: Text('Soy un titulo'),
            subtitle: Text('Ea dolore ex irure reprehenderit ipsum ad non. Reprehenderit excepteur esse eiusmod veniam culpa ullamco id et voluptate exercitation ullamco. Cupidatat est esse officia laborum anim. Consequat est ipsum fugiat ea eiusmod deserunt minim elit.'),
          ),

          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
               children: [
                TextButton(
                  onPressed: (){}, 
                  child: const Text('Cancel'),
                ),
                TextButton(
                  onPressed: (){}, 
                  child: const Text('Ok')
                ),
              ],
              
            ),
          )
        ],
      ),
    );
  }
}