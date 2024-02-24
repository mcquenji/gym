import 'package:gym/features/profile/profile.dart';
import 'package:gym/shared/shared.dart';
import 'package:list_ext/list_ext.dart';

/// Implements [AvatarGeneratorService] using [avataaars generator](https://getavataaars.com/).
class AvataaarsGeneratorService extends AvatarGeneratorService {
  final NetworkService networkService;

  AvataaarsGeneratorService(this.networkService);

  static const List<String> topTypes = [
    "NoHair",
    "Eyepatch",
    "Hat",
    "Hijab",
    "Turban",
    "WinterHat1",
    "WinterHat2",
    "WinterHat3",
    "WinterHat4",
    "LongHairBigHair",
    "LongHairBob",
    "LongHairBun",
    "LongHairCurly",
    "LongHairCurvy",
    "LongHairDreads",
    "LongHairFrida",
    "LongHairFro",
    "LongHairFroBand",
    "LongHairNotTooLong",
    "LongHairShavedSides",
    "LongHairMiaWallace",
    "LongHairStraight",
    "LongHairStraight2",
    "LongHairStraightStrand",
    "ShortHairDreads01",
    "ShortHairDreads02",
    "ShortHairFrizzle",
    "ShortHairShaggyMullet",
    "ShortHairShortCurly",
    "ShortHairShortFlat",
    "ShortHairShortRound",
    "ShortHairShortWaved",
    "ShortHairSides",
    "ShortHairTheCaesar",
    "ShortHairTheCaesarSidePart",
  ];

  static const List<String> topColors = [
    "Black",
    "Blue01",
    "Blue02",
    "Blue03",
    "Gray01",
    "Gray02",
    "Heather",
    "PastelBlue",
    "PastelGreen",
    "PastelOrange",
    "PastelRed",
    "PastelYellow",
    "Pink",
    "Red",
    "White",
  ];

  static const List<String> accessories = [
    "Blank",
    "Kurt",
    "Prescription01",
    "Prescription02",
    "Round",
    "Sunglasses",
    "Wayfarers",
  ];

  static const List<String> facialHairTypes = [
    "Blank",
    "BeardMedium",
    "BeardLight",
    "BeardMagestic",
    "MoustacheFancy",
    "MoustacheMagnum",
  ];

  static const List<String> facialHairColors = [
    "Auburn",
    "Black",
    "Blonde",
    "BlondeGolden",
    "Brown",
    "BrownDark",
    "Platinum",
    "Red",
  ];

  static const List<String> clothingTypes = [
    "BlazerShirt",
    "BlazerSweater",
    "CollarSweater",
    "GraphicShirt",
    "Hoodie",
    "Overall",
    "ShirtCrewNeck",
    "ShirtScoopNeck",
    "ShirtVNeck",
  ];

  static const List<String> clothColors = [
    "Black",
    "Blue01",
    "Blue02",
    "Blue03",
    "Gray01",
    "Gray02",
    "Heather",
    "PastelBlue",
    "PastelGreen",
    "PastelOrange",
    "PastelRed",
    "PastelYellow",
    "Pink",
    "Red",
    "White",
  ];

  static const List<String> eyeTypes = [
    "Close",
    "Cry",
    "Default",
    "Dizzy",
    "EyeRoll",
    "Happy",
    "Hearts",
    "Side",
    "Squint",
    "Surprised",
    "Wink",
    "WinkWacky",
  ];

  static const List<String> eyeBrowTypes = [
    "Angry",
    "AngryNatural",
    "Default",
    "DefaultNatural",
    "FlatNatural",
    "RaisedExcited",
    "RaisedExcitedNatural",
    "SadConcerned",
    "SadConcernedNatural",
    "UnibrowNatural",
    "UpDown",
    "UpDownNatural",
  ];

  static const List<String> mouthTypes = [
    "Concerned",
    "Default",
    "Disbelief",
    "Eating",
    "Grimace",
    "Sad",
    "ScreamOpen",
    "Serious",
    "Smile",
    "Tongue",
    "Twinkle",
    "Vomit",
  ];

  static const List<String> skinColors = [
    "Tanned",
    "Yellow",
    "Pale",
    "Light",
    "Brown",
    "DarkBrown",
    "Black",
  ];

  static const domain = "https://avataaars.io/";

  @override
  Future<String> generateAvatar() async {
    log("Generating avatar");

    final topType = topTypes.random;
    final topColor = topColors.random;
    final accessory = accessories.random;
    final facialHairType = facialHairTypes.random;
    final facialHairColor = facialHairColors.random;
    final clotheType = clothingTypes.random;
    final clotheColor = clothColors.random;
    final eyeType = eyeTypes.random;
    final eyebrowType = eyeBrowTypes.random;
    final mouthType = mouthTypes.random;
    final skinColor = skinColors.random;

    try {
      var response = await networkService.get<String>(
        domain,
        queryParameters: {
          "topType": topType,
          "topColor": topColor,
          "accessoriesType": accessory,
          "facialHairType": facialHairType,
          "facialHairColor": facialHairColor,
          "clotheType": clotheType,
          "clotheColor": clotheColor,
          "eyeType": eyeType,
          "eyebrowType": eyebrowType,
          "mouthType": mouthType,
          "skinColor": skinColor,
          "avatarStyle": "Circle",
        },
        headers: {
          "Accept": "image/svg+xml",
        },
      );

      if (response.isNotOk) {
        log(
          "Failed to generate avatar with status code ${response.statusCode}",
          response.body,
        );

        throw Exception("Failed to generate avatar");
      }

      log("Avatar generated successfully");

      // Replace the circle color with `currentColor`, so we can theme it.
      return response.body!.replaceAll("#65C9FF", "currentColor");
    } catch (e) {
      log("Failed to generate avatar with error: $e");
      rethrow;
    }
  }
}
