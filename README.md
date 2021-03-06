# Emojis 
## The Real Author is Naji
**pub.dev [pub](https://pub.dev/packages/emojis)** <br>
**github [github](https://github.com/i-Naji/emojis)**

I Just pulled it and converted it to null safety

๐ฅ Emoji for Dart ๐ฅ Over 3300 Emojis <br> 
This ๐ฆ contain all ๐ [Unicode 13 Emojis](https://unicode.org/emoji/charts) (2๏ธ0๏ธ2๏ธ0๏ธ) 

## ๐ ๏ธ Usage
0๏ธโฃ Import
```dart
import 'package:emojis/emojis.dart'; // to use Emoji collection
import 'package:emojis/emoji.dart'; // to use Emoji utilities
```
1๏ธโฃ Use
```dart
print('I ${Emojis.greenHeart} ${Emojis.directHit}'); // I ๐ ๐ฏ

Emoji smile = Emoji.byName('Grinning Face'); // get a emoji by its name
print('Emoji name      : ${smile.name}');
// Emoji name is Grinning Face
print('Emoji character : ${smile.char}');
// Emoji character '๐'
print('Emoji category  : ${smile.emojiGroup}');
// EmojiGroup.smileysEmotion group of emoji
print('Emoji sub-group : ${smile.emojiSubgroup}');
// EmojiSubgroup.faceSmiling sub group of emoji

// get an emoji by its character ๐ฑโโ๏ธ
Emoji womanBlond = Emoji.byChar(Emojis.womanBlondHair); 
print(womanBlond);

// make blondy in black
Emoji blondyBlackLady = womanBlond.newSkin(fitzpatrick.dark); 
print(blondyBlackLady); // ๐ฑ๐ฟโโ๏ธ

List<Emoji> emList = Emoji.all(); // list of all Emojis

// disassemble an emoji
List<String> disassembled = Emoji.disassemble(Emojis.mechanic); 
print(disassembled); // ['๐ง', '๐ง']

// assemble some emojis
String assembled = Emoji.assemble([Emojis.man, Emojis.man, Emojis.girl, Emojis.boy]);
print(assembled); // ๐จโ๐จโ๐งโ๐ฆ๏ธ

String blackThumbsUp = '๐';
// modify skin tone of emoji
String witheThumbsUp = Emoji.modify(blackThumbsUp, fitzpatrick.light); 
print(witheThumbsUp); // ๐๐ป

// A Woman Police Officer With Brown Skin
String femaleCop =  Emojis.womanPoliceOfficerMediumDarkSkinTone;
// Make that woman to just a Woman Police Officer with no special skin color
String newFemaleCop = Emoji.stabilize(femaleCop);
print('$femaleCop => $newFemaleCop'); //๐ฎ๐พโโ๏ธ => ๐ฎโโ๏ธ 

// gender-neutral
String aCop = Emoji.stabilize(femaleCop, skin: false, gender: true);
print('$femaleCop => $aCop'); //๐ฎ๐พโโ๏ธ=> ๐ฎ๐พ no gender! still medium dark

final loveEmojis = Emoji.byKeyword('love'); // returns list of lovely emojis :)
print(loveEmojis);
// (๐ฅฐ, ๐, ๐, ๐, ๐, ๐ค, ๐ป, ๐ฝ, ๐, ๐, ๐, ๐, ๐, ๐, ๐, ๐, ๐, ..., ๐, โพ)

final foodCategory =  Emoji.byGroup(EmojiGroup.foodDrink); // returns emojis in Food and Drink group
print(foodCategory);
// (๐, ๐, ๐, ๐, ๐, ๐, ๐, ๐ฅญ, ๐, ๐, ๐, ๐, ๐, ๐, ๐ฅ, ๐, ๐ฅฅ, ๐ฅ, ...)

eIterable<Emoji> moneySubgroupEmojis = Emoji.bySubgroup(EmojiSubgroup.money); // returns emojis in Money subgroup
print(moneySubgroupEmojis);
// (๐ฐ, ๐ด, ๐ต, ๐ถ, ๐ท, ๐ธ, ๐ณ, ๐งพ, ๐น)
```

## ๐ Features
- [x] All Present unicode emojis ๐ฏ
- [x] Get Emojis by Name, Category, Keyword & ...
- [x] Modify Emoji with ๐ skin color ( ๐ป ๐ผ ๐ฝ ๐พ ๐ฟ )
- [x] Stabilize Emoji (No Skin color, No Gender)
- [X] Assemble Emojis (๐ฉ + โค + ๐ฉ  = ๐ฉโโค๏ธโ๐ฉ )
- [x] Disassemble Emojis (๐จโ๐ง = ๐ง + ๐ง)
- [x] Emoji Regex Pattern
- [ ] Emojize and Demojize text
- [ ] Find emojis in text
- [ ] Replace emojis in text

## ๐ License
* [BDS 3 License](https://opensource.org/licenses/BSD-3-Clause)
* Copyright 2021 ยฉ amebrahimi
