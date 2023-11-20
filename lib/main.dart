import 'package:flutter/material.dart';
import 'character.dart';
import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var myHomePage = MyHomePage(characters: [
      Character(
          name: 'Gusion',
          role: 'Assassin',
          description:
              'Gusion merupakan salah satu hero Assasin yang menggunakan Magic Damage dalam serangannya. Toppers bisa menggunakan hero ini sebagai cara cepat meningkatkan rank kalian. Perlu digaris bawahi bahwa hero ini memiliki beberapa kesulitan yang perlu kalian atasi dengan bermain di jam terbang yang tinggi.',
          weakness:
              'Darah yang tipis, Mana yang terbatas, Skill yang perlu perhitungan tinggi, Kombo skill yang sulit, Membutuhkan kecepatan tangan',
          image: 'gusion.jpeg'),
      Character(
          name: 'Benedetta',
          role: 'Assassin',
          description:
              'Benedetta merupakan hero yang memiliki julukan The Shadow Ranger. Hero ini memiliki kelincahan dan damage yang tinggi terutama di early game. Hero ini sangat mudah sekali ditemukan di ranked karena menjadi favorit bagi para pemain ML. Semua skill yang dimiliki Benedetta memiliki efek skill blink yang sangat ampuh untuk mengejar dan dan melarikan diri dari kejaran lawan.',
          weakness:
              'Darah yang tipis, Mana yang terbatas, Skill yang perlu perhitungan tinggi, Kombo skill yang sulit, Membutuhkan kecepatan tangan',
          image: 'Benedetta.jpg'),
      Character(
          name: 'Paquito',
          role: 'Fighter',
          description:
              'Paquito merupakan hero fighter yang bisa dibilang overpower. Hero ini banyak diperebutkan di mode rank karena memiliki durability yang cukup tinggi sehingga sulit dibunuh oleh lawan. Hero ini terbilang sangat lincah berkat skill Champ Stance dan skill Jab. Kedua skill ini mampu meningkatkan movement speed dan juga efek blink. Ketika sudah terkumpul empat stack, skill pasif Champ Stance akan meningkatkan movement speed Paquito sebesar 60% selama 2.5 detik..',
          weakness:
              'Darah yang tipis, Mana yang terbatas, Skill yang perlu perhitungan tinggi, Kombo skill yang sulit, Membutuhkan kecepatan tangan',
          image: 'Paquito.jpg'),
      Character(
          name: 'Selena',
          role: 'Assassin/Support',
          description:
              'Gusion merupakan salah satu hero Assasin yang menggunakan Magic Damage dalam serangannya. Toppers bisa menggunakan hero ini sebagai cara cepat meningkatkan rank kalian. Perlu digaris bawahi bahwa hero ini memiliki beberapa kesulitan yang perlu kalian atasi dengan bermain di jam terbang yang tinggi.',
          weakness:
              'Darah yang tipis, Mana yang terbatas, Skill yang perlu perhitungan tinggi, Kombo skill yang sulit, Membutuhkan kecepatan tangan',
          image: 'Selena.jpg'),
      Character(
          name: 'Mathilda',
          role: 'Support',
          description:
              'Gusion merupakan salah satu hero Assasin yang menggunakan Magic Damage dalam serangannya. Toppers bisa menggunakan hero ini sebagai cara cepat meningkatkan rank kalian. Perlu digaris bawahi bahwa hero ini memiliki beberapa kesulitan yang perlu kalian atasi dengan bermain di jam terbang yang tinggi.',
          weakness:
              'Darah yang tipis, Mana yang terbatas, Skill yang perlu perhitungan tinggi, Kombo skill yang sulit, Membutuhkan kecepatan tangan',
          image: 'Mathilda.jpg'),
      Character(
          name: 'Akai',
          role: 'Tank',
          description:
              'Gusion merupakan salah satu hero Assasin yang menggunakan Magic Damage dalam serangannya. Toppers bisa menggunakan hero ini sebagai cara cepat meningkatkan rank kalian. Perlu digaris bawahi bahwa hero ini memiliki beberapa kesulitan yang perlu kalian atasi dengan bermain di jam terbang yang tinggi.',
          weakness:
              'Darah yang tipis, Mana yang terbatas, Skill yang perlu perhitungan tinggi, Kombo skill yang sulit, Membutuhkan kecepatan tangan',
          image: 'Akai.jpg'),
      Character(
          name: 'Yve',
          role: 'Mage',
          description:
              'Skill ultimate dari Yve mampu membuat area papan catur yang sangat luas, hal ini membuat Yve dapat melawan beberapa hero lawan dalam sekaligus. Selain itu, Yve memiliki Crowd Control yang sangat ampuh karena memberika efek slow terhadap lawan.',
          weakness:
              'Darah yang tipis, Mana yang terbatas, Skill yang perlu perhitungan tinggi, Kombo skill yang sulit, Membutuhkan kecepatan tangan',
          image: 'Yve.jpg'),
    ]);
    return MaterialApp(title: 'Hero Mobile Legends', home: myHomePage);
  }
}

class MyHomePage extends StatelessWidget {
  final List<Character> characters;

  const MyHomePage({Key? key, required this.characters}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HomePage(characters: characters);
  }
}
