import 'package:emojis_null_safe/emoji.dart';
import 'package:emojis_null_safe/emojis.dart';

main() {
  print('I ${Emojis.greenHeart} ${Emojis.directHit}'); // I ๐ ๐ฏ

  Emoji smile = Emoji.byName('Grinning Face'); // get a emoji by its name
  print('Emoji name      : ${smile.name}');
  // Emoji name is Grinning Face
  print('Emoji character : ${smile.char}');
  // Emoji character is '๐'
  print('Emoji category  : ${smile.emojiGroup}');
  // EmojiGroup.smileysEmotion group of emoji
  print('Emoji sub-group : ${smile.emojiSubgroup}');
  // EmojiSubgroup.faceSmiling sub group of emoji

  // get an emoji by its character ๐ฑโโ๏ธ
  Emoji womanBlond = Emoji.byChar(Emojis.womanBlondHair);
  print(womanBlond);

  List<Emoji> emList = Emoji.all(); // list of all Emojis

  // disassemble an emoji
  List<String> disassembled = Emoji.disassemble(Emojis.mechanic);
  print(disassembled); // ['๐ง', '๐ง']

  // assemble some emojis
  String assembled =
      Emoji.assemble([Emojis.man, Emojis.man, Emojis.girl, Emojis.boy]);
  print(assembled); // ๐จโ๐จโ๐งโ๐ฆ๏ธ

  String blackThumbsUp = '๐';
  // modify skin tone of emoji
  String witheThumbsUp = Emoji.modify(blackThumbsUp, fitzpatrick.light);
  print(witheThumbsUp); // ๐๐ป

  // A Woman Police Officer With Brown Skin
  String femaleCop = Emojis.womanPoliceOfficerMediumDarkSkinTone;
  // Make that woman to just a Woman Police Officer with no special skin color
  String newFemaleCop = Emoji.stabilize(femaleCop);
  print('$femaleCop => $newFemaleCop'); //๐ฎ๐พโโ๏ธ => ๐ฎโโ๏ธ

  // gender-neutral
  String aCop = Emoji.stabilize(femaleCop, skin: false, gender: true);
  print('$femaleCop => $aCop'); //๐ฎ๐พโโ๏ธ=> ๐ฎ๐พ no gender! still medium dark

  final loveEmojis =
      Emoji.byKeyword('love'); // returns list of lovely emojis :)
  print(loveEmojis);
  // (๐ฅฐ, ๐, ๐, ๐, ๐, ๐ค, ๐ป, ๐ฝ, ๐, ๐, ๐, ๐, ๐, ๐, ๐, ๐, ๐, ..., ๐, โพ)

  final foodCategory = Emoji.byGroup(
      EmojiGroup.foodDrink); // returns emojis in Food and Drink group
  print(foodCategory);
  // (๐, ๐, ๐, ๐, ๐, ๐, ๐, ๐ฅญ, ๐, ๐, ๐, ๐, ๐, ๐, ๐ฅ, ๐, ๐ฅฅ, ๐ฅ, ...)

  Iterable<Emoji> moneySubgroupEmojis =
      Emoji.bySubgroup(EmojiSubgroup.money); // returns emojis in Money subgroup
  print(moneySubgroupEmojis);
  // (๐ฐ, ๐ด, ๐ต, ๐ถ, ๐ท, ๐ธ, ๐ณ, ๐งพ, ๐น)
}
