import 'package:flutter/material.dart';
import 'package:pakistani_players/models/players.dart';
import 'package:pakistani_players/datastore/data_store.dart';


class PlayersScreen extends StatelessWidget {


  const PlayersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Team Pakistan',
        style: TextStyle(color: Colors.white,
        fontSize: 30),),
      ),
      body: ListView.builder(
          itemCount: DataStore.players.length,
          itemBuilder: (context, index){

            Player player = DataStore.players[index];

            return Card(
              child: ListTile(
                leading: CircleAvatar(
                  radius: 45,
                  backgroundImage: AssetImage(player.picture),
                ),
                title: Text(
                  player.name,
                  overflow: TextOverflow.clip,
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                subtitle:  Text(
                  player.role,
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                trailing: const Text(
                  " 🇵🇰 ",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontSize: 45,
                  ),
                ),
              ),
            );
          }),
    );
  }
}