import 'package:teledart/teledart.dart';
import 'package:teledart/telegram.dart';

void main()async{
  var BOT_TOKEN = '5681916697:AAFtT0gosvbXn0KCoCUvO3RBvIFOlp1bgyg';
  final username = (await Telegram(BOT_TOKEN).getMe()).username;
  var teledart = TeleDart(BOT_TOKEN, Event(username!));

teledart.onCommand('Start').listen((event) {
  event.reply('Replay');
 });

  teledart.start();
}