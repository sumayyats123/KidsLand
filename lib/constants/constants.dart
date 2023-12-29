import 'package:hive_flutter/hive_flutter.dart';
import 'package:kidsland/model/alphabets_model.dart';
import 'package:kidsland/model/storie_model.dart';

final List<Map<String, dynamic>> Data = [
  {
    "alphabets":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Alphabet%20image%2FA.png?alt=media&token=adc6acd8-4532-465d-8b7d-a01bb028977d",
    "words": "Apple",
    "imageUrl":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Alphabet%20image%2FApple.png?alt=media&token=710d2246-7302-4af4-aeaf-14bea5d1898b",
    "audioFile":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Alphabet%20image%2FA%20FOR%20APPLE.mp3?alt=media&token=83393c9d-7743-45a4-b79b-89e1057ead75",
    "list": "Alphabets",
  },

  {
    "alphabets":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Alphabet%20image%2FB.png?alt=media&token=3c71f891-e6e6-4f39-aeda-2ef0faebf88d",
    "words": "Ball",
    "imageUrl":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Alphabet%20image%2FBALL.png?alt=media&token=ce61d620-57ed-4dc6-8466-43c7c8fba7b5",
    "audioFile":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Alphabet%20image%2FB%20FOR%20BALL%20(1).mp3?alt=media&token=c7d08715-6708-4d6e-9aa1-ccff1b19b482",
    "list": "Alphabets",
  },{
    "alphabets":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Alphabet%20image%2FC.png?alt=media&token=dcfaf6eb-01cc-4231-9da2-2bd1f30dc344",
    "words": "Cat",
    "imageUrl":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Alphabet%20image%2FCAT%20ALPHABET.png?alt=media&token=97564c6c-ab7a-462e-8189-58b77494faf7",
    "audioFile":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Alphabet%20image%2FC%20FOR%20CAT.mp3?alt=media&token=8d56e1d4-2483-497c-afbd-d6a66d0b34ad",
    "list": "Alphabets",
  },{
    "alphabets":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Alphabet%20image%2FD.png?alt=media&token=45806a58-e326-41f8-9448-9f5660d89c3b",
    "words": "Dog",
    "imageUrl":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Alphabet%20image%2FDOG.png?alt=media&token=70bf2112-2e44-4ee0-af44-3bf94f911f73",
    "audioFile":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Alphabet%20image%2FD%20FOR%20DOG.mp3?alt=media&token=47ab402f-db85-4cc1-bd2f-880c5ed63ffd",
    "list": "Alphabets",
  },{
    "alphabets":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Alphabet%20image%2FE.png?alt=media&token=cc6922bd-412c-463c-b949-b39017543952",
    "words": "Elephant",
    "imageUrl":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Alphabet%20image%2FELEPHANT.png?alt=media&token=9b6bcbd7-4aef-4e28-ae16-ef73b5072340",
    "audioFile":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Alphabet%20image%2FE%20FOR%20ELEPHANT.mp3?alt=media&token=64bb2d12-fa3b-407e-ac6b-dc532d3b3535",
    "list": "Alphabets",
  },{
    "alphabets":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Alphabet%20image%2FF.png?alt=media&token=69dc0fae-5797-4496-8ed0-16d42efd1099",
    "words": "Fox",
    "imageUrl":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Alphabet%20image%2FFOX.png?alt=media&token=91f0b0c0-aa3c-427a-9095-1f950b90bb97",
    "audioFile":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Alphabet%20image%2FF%20FOR%20FOX.mp3?alt=media&token=86fbfb10-9e8c-45b8-b679-8854adb94443",
    "list": "Alphabets",
  },{
    "alphabets":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Alphabet%20image%2FG.png?alt=media&token=722d27dd-ff35-43a9-b484-86663e39842a",
    "words": "Goat",
    "imageUrl":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Alphabet%20image%2FGOAT.png?alt=media&token=7043cfa8-0350-42f3-aa5a-440f5269b338",
    "audioFile":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Alphabet%20image%2FG%20FOR%20GOAT.mp3?alt=media&token=125ba889-7025-4de4-9b6b-8502bc8b681c",
    "list": "Alphabets",
  },{
    "alphabets":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Alphabet%20image%2FH.png?alt=media&token=cff76f66-2ce7-4e32-8358-dfca846c8c46",
    "words": "Hat",
    "imageUrl":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Alphabet%20image%2FHAT.png?alt=media&token=bd2ef0b4-82e2-4859-8bdf-ed9d7cdfd25e",
    "audioFile":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Alphabet%20image%2FH%20FOR%20HAT.mp3?alt=media&token=c8c2ea52-140d-44cf-bb44-6512de7e794e",
    "list": "Alphabets",
  }, {
    "alphabets":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Alphabet%20image%2FI.png?alt=media&token=783d9230-b971-414f-b0f2-a2c93bd66ace",
    "words": "Ice Cream",
    "imageUrl":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Alphabet%20image%2FICE%20CREAM.png?alt=media&token=824a084d-ea93-4945-b462-4ea720615e45",
    "audioFile":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Alphabet%20image%2FI%20FOR%20ICE%20CREAM.mp3?alt=media&token=6f64763c-d3cf-465b-a79d-42dec8bd0b46",
    "list": "Alphabets",
  }, {
    "alphabets":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Alphabet%20image%2FJ.png?alt=media&token=e1f39bd2-3f64-4d43-93b4-64442a298395",
    "words": "Jug",
    "imageUrl":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Alphabet%20image%2FJUG.png?alt=media&token=a04beaf8-4be7-4c23-baba-af6c4b43f5fb",
    "audioFile":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Alphabet%20image%2FJ%20FOR%20JUG.mp3?alt=media&token=2eebd463-0949-4503-ac97-c0a2070dd625",
    "list": "Alphabets",
  }, 
  {
    "alphabets":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Alphabet%20image%2FK.png?alt=media&token=56a32116-5088-49a3-9fb4-c6fba9aa1d45",
    "words": "King",
    "imageUrl":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Alphabet%20image%2FKING.png?alt=media&token=ca287ccf-50ac-4867-8648-fc52ce6c06ee",
    "audioFile":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Alphabet%20image%2FK%20FOR%20KING.mp3?alt=media&token=94fe3790-2568-4da5-a2d9-ffdb2b41c778",
    "list": "Alphabets",
  }, {
    "alphabets":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Alphabet%20image%2FL.png?alt=media&token=19168fb4-e2ab-4b54-b86b-938dac3d31d9",
    "words": "Lion",
    "imageUrl":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Alphabet%20image%2FLION.png?alt=media&token=0d16b08f-8bf5-4fae-8050-911dcc2f0fbd",
    "audioFile":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Alphabet%20image%2FL%20FOR%20LION.mp3?alt=media&token=40014ce2-052f-4457-8a0b-a947f0317c19",
    "list": "Alphabets",
  }, 
  {
    "alphabets":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Alphabet%20image%2FM.png?alt=media&token=12fe721a-5293-4d51-b7b2-1065ad747389",
    "words": "Monkey",
    "imageUrl":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Alphabet%20image%2FMONKEY.png?alt=media&token=0b7b1577-f1de-4086-9b15-9faf29b2b766",
    "audioFile":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Alphabet%20image%2FM%20FOR%20MONKEY.mp3?alt=media&token=7eb84cf1-142c-4230-9582-254c9f03e7ed",
    "list": "Alphabets",
  }, 
  {
    "alphabets":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Alphabet%20image%2FN.png?alt=media&token=4d19b549-aed9-4509-94cf-012535922302",
    "words": "Nest",
    "imageUrl":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Alphabet%20image%2FNEST.png?alt=media&token=7df5b718-e84e-41c8-a743-d4861e407c19",
    "audioFile":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Alphabet%20image%2FN%20FOR%20NEST.mp3?alt=media&token=83e0fa54-6920-4600-aa9a-9facf595b8e5",
    "list": "Alphabets",
  }, 
  {
    "alphabets":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Alphabet%20image%2FO.png?alt=media&token=ecfd0a17-264e-4424-89ac-1b183e7da841",
    "words": "Owl",
    "imageUrl":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Alphabet%20image%2FOWL.png?alt=media&token=2f3d71b2-1ee6-4708-a280-6d93c6c36139",
    "audioFile":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Alphabet%20image%2FO%20FOR%20OWL.mp3?alt=media&token=9ae9cfde-f1ac-4a94-b68c-cc18abfd0e5b",
    "list": "Alphabets",
  }, 
  {
    "alphabets":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Alphabet%20image%2FP.png?alt=media&token=f179e943-17a8-47ed-a7ff-74d853f61dee",
    "words": "Parrot",
    "imageUrl":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Alphabet%20image%2FPARROT.png?alt=media&token=2c5d5d3b-ddba-4616-ae8d-d71d809397eb",
    "audioFile":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Alphabet%20image%2FP%20FOR%20PARROT.mp3?alt=media&token=a0f126d8-cec0-44b4-963c-45fbfb8c6803",
    "list": "Alphabets",
  }, 
  {
    "alphabets":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Alphabet%20image%2FQ.png?alt=media&token=86a2310c-4256-4e76-aeb9-0b162892947b",
    "words": "Qween",
    "imageUrl":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Alphabet%20image%2Fqween.png?alt=media&token=a6f9fde3-d8ce-43eb-9bfe-6dc328a74fe6",
    "audioFile":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Alphabet%20image%2FQ%20FOR%20QUEEN.mp3?alt=media&token=86e0044e-e682-4970-9f6b-c136f05aa186",
    "list": "Alphabets",
  }, 
  {
    "alphabets":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Alphabet%20image%2FR.png?alt=media&token=45b70003-ceaf-452b-85a2-45388824d51c",
    "words": "Rose",
    "imageUrl":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Alphabet%20image%2FR%20FOR%20ROSE.mp3?alt=media&token=880e7367-9dee-4f5b-9dee-2aa6a1fe2226",
    "audioFile":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Alphabet%20image%2FR%20FOR%20ROSE.mp3?alt=media&token=880e7367-9dee-4f5b-9dee-2aa6a1fe2226",
    "list": "Alphabets",
  }, 
  {
    "alphabets":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Alphabet%20image%2FS.png?alt=media&token=60402bb5-02e2-4ac2-a58c-d080cfcb5fec",
    "words": "Star",
    "imageUrl":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Alphabet%20image%2Fstar.png?alt=media&token=118a79f0-0a31-4f66-83bd-9052ef5f9998",
    "audioFile":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Alphabet%20image%2FS%20FOR%20STAR.mp3?alt=media&token=fe80c5e2-3f8b-4045-ac5e-0057b1682172",
    "list": "Alphabets",
  }, 
  {
    "alphabets":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Alphabet%20image%2FT.png?alt=media&token=c00e67eb-17fa-4c36-8f1c-76c5db38e022",
    "words": "Tortoise",
    "imageUrl":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Alphabet%20image%2FTORTOISE.png?alt=media&token=5cde5d8c-8df1-4fea-b9fe-70b1783d57c0",
    "audioFile":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Alphabet%20image%2FT%20FOR%20TORTOISE.mp3?alt=media&token=bf6ed609-9e06-4941-b646-0e8ea69fac3b",
    "list": "Alphabets",
  }, 
  {
    "alphabets":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Alphabet%20image%2FUw.png?alt=media&token=34a0898a-8a4d-4f1c-8ff3-ba8de76cee7b",
    "words": "Umbrella",
    "imageUrl":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Alphabet%20image%2Fumprella.png?alt=media&token=84022133-98fd-41a1-91cb-ab620a4e3af3",
    "audioFile":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Alphabet%20image%2FU%20FOR%20UMBRELLA.mp3?alt=media&token=d329b023-0c2b-409d-b4d3-82fb5b0044d6",
    "list": "Alphabets",
  }, 
  {
    "alphabets":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Alphabet%20image%2FV.png?alt=media&token=fd41bcf8-6378-4bf2-87a3-5e22b107a1c5",
    "words": "Violin",
    "imageUrl":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Alphabet%20image%2FVIOLIN.png?alt=media&token=e04dea5b-43cf-4070-9d36-52ec2a6dfffd",
    "audioFile":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Alphabet%20image%2FV%20FOR%20VIOLIN.mp3?alt=media&token=4c0e8117-5261-4faf-ba2d-74319920804c",
    "list": "Alphabets",
  }, 
  {
    "alphabets":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Alphabet%20image%2FW.png?alt=media&token=2221d6c1-f048-4d3e-9ef4-4e9e0756224a",
    "words": "Watch",
    "imageUrl":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Alphabet%20image%2Fwatch.png?alt=media&token=58bb9fc6-37a0-40b5-afac-844e9d09bacd",
    "audioFile":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Alphabet%20image%2FW%20FOR%20WATCH.mp3?alt=media&token=b3bcf298-defa-4e25-abb8-22f69fbb5f4c",
    "list": "Alphabets",
  }, 
  {
    "alphabets":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Alphabet%20image%2FX.png?alt=media&token=cf4aca94-d101-47f2-b5db-30fb9fb30cd1",
    "words": "Xylophone",
    "imageUrl":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Alphabet%20image%2Fxylophone.png?alt=media&token=de7672df-1b5e-452e-98f6-2a23bf262b2a",
    "audioFile":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Alphabet%20image%2FX%20FOR%20XYLOPHONE.mp3?alt=media&token=a77008e6-e946-46ee-ac75-f8746c46d6ea",
    "list": "Alphabets",
  }, 
  {
    "alphabets":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Alphabet%20image%2FY.png?alt=media&token=498ad270-e092-4961-a804-1f0fcd498a55",
    "words": "Yak",
    "imageUrl":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Alphabet%20image%2Fyak.png?alt=media&token=a1a32467-38fb-4c3b-bc20-8fd7d8d7b45d",
    "audioFile":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Alphabet%20image%2FY%20FOR%20YAK.mp3?alt=media&token=947d9f6c-da04-457e-87fb-98e855ca2fe6",
    "list": "Alphabets",
  }, 
  {
    "alphabets":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Alphabet%20image%2FZreview.png?alt=media&token=d9f011e6-a6fa-45c5-9e9c-d9d1e2e2fba7",
    "words": "Zebra",
    "imageUrl":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Alphabet%20image%2Fzebra.png?alt=media&token=70ee3ffd-356d-4b1b-8167-60c1dce7d562",
    "audioFile":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Alphabet%20image%2FZ%20FOR%20ZEEBRA.mp3?alt=media&token=0ebd3f30-b2d8-432f-a651-cb9df1797e26",
    "list": "Alphabets",
  }, 
  {
    "alphabets":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/numbers%2FNo1.png?alt=media&token=7748f271-4e6c-4a88-bdcd-e85e0dd94b2a",
    "words": "One",
    "imageUrl":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/numbers%2FONE.png?alt=media&token=5e73fb02-ce4e-4b0b-ab72-1ad19f75e077",
    "audioFile":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/numbers%2FOne.mp3?alt=media&token=71694c4a-e2d7-47b4-b2e7-40d6ac37ee57",
    "list": "Numbers",
  }, 
  {
    "alphabets":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/numbers%2FNo2.png?alt=media&token=9ca3da21-1428-4c19-85cb-2fb53bbc13fc",
    "words": "Two",
    "imageUrl":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/numbers%2FTwo.png?alt=media&token=44bcb075-d5ba-4330-ad68-543899c2ceb5",
    "audioFile":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/numbers%2FTwo.mp3?alt=media&token=fd8ae3a8-0770-4c4b-ac3e-3c22db3a6854",
    "list": "Numbers",
  }, 
  {
    "alphabets":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/numbers%2FNo3.png?alt=media&token=69bf497d-50f2-412a-92bc-cec27368c549",
    "words": "Three",
    "imageUrl":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/numbers%2FThree.png?alt=media&token=5967f6b7-7d92-473f-a963-028d70fb523d",
    "audioFile":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/numbers%2FThree.mp3?alt=media&token=51edc5ed-0bab-4dc6-8584-99ea74e75acb",
    "list": "Numbers",
  }, 
  {
    "alphabets":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/numbers%2FNo4.png?alt=media&token=ec138fbc-50d4-4346-8ffc-d855c8488f78",
    "words": "Four",
    "imageUrl":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/numbers%2FFour.png?alt=media&token=4f9f6d99-0f06-4d49-b408-1af7aea79abb",
    "audioFile":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/numbers%2FFour.mp3?alt=media&token=116c629d-5317-40ba-a2c9-8e6134757727",
    "list": "Numbers",
  }, 
  {
    "alphabets":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/numbers%2FNo5.png?alt=media&token=5a781f10-bbbd-434d-a9d7-cc8e6b489257",
    "words": "Five",
    "imageUrl":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/numbers%2Ffive.png?alt=media&token=90118b0a-bae3-4d64-9e55-19c27711469f",
    "audioFile":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/numbers%2FFive.mp3?alt=media&token=5fdff22b-a5e8-4aa8-a81c-102022a9bf62",
    "list": "Numbers",
  }, 
  {
    "alphabets":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/numbers%2FNo6.png?alt=media&token=8dbdbee4-901b-40eb-b6d1-fd83923c60a5",
    "words": "Six",
    "imageUrl":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/numbers%2Fsix.png?alt=media&token=4c992322-e35e-40f3-9e0c-ba022839853d",
    "audioFile":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/numbers%2FSix.mp3?alt=media&token=c2452996-a34d-407f-b636-ad09ddeb680f",
    "list": "Numbers",
  }, 
  {
    "alphabets":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/numbers%2FNo7.png?alt=media&token=80090a55-f784-4d8e-ac4a-b00b9d39e9d3",
    "words": "Seven",
    "imageUrl":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/numbers%2FSeven.png?alt=media&token=8a4601fe-0a31-4e5a-a589-2cfe19f01dc0",
    "audioFile":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/numbers%2FSeven.mp3?alt=media&token=26f335b9-caaa-48c2-9083-eed0eb730cbf",
    "list": "Numbers",
  }, 
  {
    "alphabets":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/numbers%2FNo8.png?alt=media&token=47caafc7-1892-4bb6-8672-1ed9a064b491",
    "words": "Eight",
    "imageUrl":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/numbers%2FEighti.png?alt=media&token=1a4cc154-ac4d-471c-a032-a90ed64fc083",
    "audioFile":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/numbers%2FEight.mp3?alt=media&token=62bd8492-d009-499a-9b31-af338a44a1c3",
    "list": "Numbers",
  }, 
  {
    "alphabets":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/numbers%2FNo9.png?alt=media&token=3582d7de-e164-4098-96b2-8fd3af8afbc5",
    "words": "Nine",
    "imageUrl":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/numbers%2FFive%20(2).png?alt=media&token=9e4f388a-ff16-4f2b-9ff9-605832fe3c60",
    "audioFile":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/numbers%2FNiNE.mp3?alt=media&token=d3d74a94-052f-4033-859b-be2f5af900ae",
    "list": "Numbers",
  }, 
  {
    "alphabets":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/numbers%2FNo10.png?alt=media&token=66945c85-cf3f-4afd-90bb-d8e529b2c898",
    "words": "Ten",
    "imageUrl":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/numbers%2Ften.png?alt=media&token=7a7ca328-f808-4aaa-b379-4401c87bad2a",
    "audioFile":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/numbers%2Ften.mp3?alt=media&token=fe4d4e22-e1ab-48fd-acf2-495c59fc347a",
    "list": "Numbers",
  }, 
  {
    "alphabets":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Shapes%2Fcircle%20shape.png?alt=media&token=951b2d91-71f3-4ad9-a470-cbbc300f1bac",
    "words": "Circle",
    "imageUrl":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Shapes%2Fcircle.png?alt=media&token=e27f957b-d4a9-4b69-963a-1cd7ca7657b2",
    "audioFile":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Shapes%2Fcircle.mp3?alt=media&token=db3119e7-a38a-4c53-88ed-d6868d36d320",
    "list": "Shapes",
  }, 
  {
    "alphabets":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Shapes%2FTriangle%20shape.png?alt=media&token=088ca5d3-cc65-499d-8687-fbb5bdc7d6f5",
    "words": "Triangle",
    "imageUrl":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Shapes%2Ftriangle.png?alt=media&token=2298d0ee-772a-4b53-b01d-a6ef8a0882fa",
    "audioFile":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Shapes%2Ftriangle.mp3?alt=media&token=232393b7-2c5e-47f5-b0dc-82ae83c1aa1f",
    "list": "Shapes",
  }, 
  {
    "alphabets":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Shapes%2Fsquare%20shape.png?alt=media&token=6e09a4bc-f4e8-4523-a016-ccda6d3b121d",
    "words": "Square",
    "imageUrl":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Shapes%2Fsquare.png?alt=media&token=b1bc3e0e-a7e2-40a9-a9bf-0b006891ec21",
    "audioFile":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Shapes%2Fsquare.mp3?alt=media&token=3f59e40c-c6a2-4953-830f-1344c19301d9",
    "list": "Shapes",
  }, 
  {
    "alphabets":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Shapes%2FRectangle%20shape.png?alt=media&token=4fc7120e-c93e-4826-ae16-cf497764c111",
    "words": "Rectangle",
    "imageUrl":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Shapes%2Frectangle.png?alt=media&token=b6035da7-bcf4-4d49-bc7d-8a4fdaf54d68",
    "audioFile":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Shapes%2Frectangle.mp3?alt=media&token=75b77a6c-dba3-485e-aaab-00fa2436e995",
    "list": "Shapes",
  }, 
  {
    "alphabets":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Shapes%2FSTAR%20shape.png?alt=media&token=52e0c33d-d07a-427d-b8d1-a4464f40b69b",
    "words": "Star",
    "imageUrl":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Shapes%2Fstar.png?alt=media&token=be2238e0-258c-4f42-a625-2729f8638d56",
    "audioFile":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Shapes%2Fstar.mp3?alt=media&token=40a1c774-be76-4fb9-b294-13577bcf980b",
    "list": "Shapes",
  }, 
  
  {
    "alphabets":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Colors%2Fbluecol.png?alt=media&token=984d9853-c245-4304-a3ce-2fbd8625b0df",
    "words": "Blue",
    "imageUrl":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Colors%2Fbluekid.png?alt=media&token=a531108b-d6d9-4fe7-851e-70f82403685f",
    "audioFile":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Colors%2Fblue.mp3?alt=media&token=2c8eea14-1aae-4246-b8b5-7f4203854e5a",
    "list": "Colours",
  }, 
  {
    "alphabets":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Colors%2Fgreencol.png?alt=media&token=b8e5a945-b915-4a72-a2b0-75553c933849",
    "words": "Green",
    "imageUrl":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Colors%2Fgreen%20kid.png?alt=media&token=46fc8a85-dd95-4fa4-aafd-450b34f4db8a",
    "audioFile":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Colors%2Fgreen.mp3?alt=media&token=ce55b2d9-4cfc-4d3c-b98e-248feef04877",
    "list": "Colours",
  }, 
  {
    "alphabets":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Colors%2Forangecol.png?alt=media&token=6a9adc54-d3df-4562-990d-9b1a765a8527",
    "words": "Orange",
    "imageUrl":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Colors%2Forangekid.png?alt=media&token=9f396c40-175d-4fc1-b1e9-430c0260d183",
    "audioFile":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Colors%2Forange.mp3?alt=media&token=00269b09-4a50-462f-9197-8dc838de11d3",
    "list": "Colours",
  }, 
  {
    "alphabets":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Colors%2Fpincol.png?alt=media&token=457f90a9-8e5c-43f3-891a-6d9b294f73c1",
    "words": "Pink",
    "imageUrl":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Colors%2Fpinkkid.png?alt=media&token=807aff2f-4ea7-4456-9659-b86a982e7a73",
    "audioFile":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Colors%2Fpink.mp3?alt=media&token=17e6315c-ac26-4a5d-ae43-98a0ab2cb805",
    "list": "Colours",
  }, 
  {
    "alphabets":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Colors%2Fredcol.png?alt=media&token=3e408e88-e8ac-4d51-a5c2-ae9c435604ba",
    "words":"Red",
    "imageUrl":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Colors%2Fredkid.png?alt=media&token=a42b2501-b18f-4968-84e2-7068d6d158aa",
    "audioFile":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Colors%2Fred.mp3?alt=media&token=8723b90a-88d5-4d3d-bffd-d28a4550d156",
    "list": "Colours",
  }, 
 
  {
    "alphabets":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Animals%2Fcowanimal.png?alt=media&token=490c9a6e-e6e5-4f9d-8810-017f3dd919fc",
    "words": "Cow",
    "imageUrl":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Animals%2Fcow%20kid.png?alt=media&token=40279b61-cfb1-4090-98a6-2f250e41c463",
    "audioFile":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Animals%2Fcow.mp3?alt=media&token=fb6beb59-2c06-4033-b743-c7bdf8acb535",
    "list": "Animals",
  }, 
  {
    "alphabets":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Animals%2Fcat.png?alt=media&token=15900251-4f69-48c9-8c4f-2f86b32c1933",
    "words": "Cat",
    "imageUrl":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Animals%2Fkid%20%20%20WITH%20%20cat.png?alt=media&token=08fb2748-c5c6-49fc-a723-4d97f00cf4c0",
    "audioFile":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Animals%2Fcat.mp3?alt=media&token=0d161da6-debe-4c7f-aa92-5d6b10832682",
    "list": "Animals",
  }, 
  {
    "alphabets":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Animals%2Fdoganimal.png?alt=media&token=687361c2-06d9-4bff-998b-234e0a5dc4a6",
    "words": "Dog",
    "imageUrl":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Animals%2Fdog%20kid.png?alt=media&token=53684d07-560d-46c0-8678-3cfdaa9f9eb4",
    "audioFile":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Animals%2Fdog.mp3?alt=media&token=9ff8df1f-525e-4ef8-b28e-5237baf8a0ef",
    "list": "Animals",
  }, 
  {
    "alphabets":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Animals%2FElephant.png?alt=media&token=18c9a9aa-704f-4d71-b410-c7c022f45641",
    "words": "Elephant",
    "imageUrl":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Animals%2Felephant%20kid.png?alt=media&token=9f3b2fc2-10b3-4801-9629-469c3120940f",
    "audioFile":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Animals%2Felephant.mp3?alt=media&token=805b6444-7748-46a2-a259-4363174d2701",
    "list": "Animals",
  }, 
  {
    "alphabets":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Bodyparts%2Fnose.png?alt=media&token=3583c6a9-b506-419b-8b6e-1657b6051951",
    "words": "Nose",
    "imageUrl":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Bodyparts%2Fnoseboy.png?alt=media&token=036cb57d-d750-42e4-8a07-3a994d8b3e61",
    "audioFile":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Bodyparts%2Fnose.mp3?alt=media&token=72aea351-40c1-4822-a1e3-68b315df6113",
    "list": "Bodyparts",
  }, 
  {
    "alphabets":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Bodyparts%2Fneck.png?alt=media&token=fde849cc-10d0-4328-996c-9123ac8ad938",
    "words": "Neck",
    "imageUrl":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Bodyparts%2Fnekboy.png?alt=media&token=1dc21aad-ed85-4fdb-a14f-42a99a8499ac",
    "audioFile":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Bodyparts%2Fneck.mp3?alt=media&token=d9b2e329-bfb0-4a94-8315-dd2844e5865b",
    "list": "Bodyparts",
  }, 
  {
    "alphabets":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Bodyparts%2Fhead.png?alt=media&token=9f28c50b-a2d2-44fb-b029-143ebf955152",
    "words": "Head",
    "imageUrl":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Bodyparts%2Fhead%20boy.png?alt=media&token=4c349176-23f8-4c38-b294-08e32456cb7d",
    "audioFile":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Bodyparts%2Fhand.mp3?alt=media&token=fdca0b2f-70d4-4f41-8710-a03dc9302fc6",
    "list": "Bodyparts",
  },  {
    "alphabets":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Bodyparts%2Farm.png?alt=media&token=cb34b1fd-795d-4573-ae23-2a5144742a59",
    "words": "Arm",
    "imageUrl":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Bodyparts%2FARM%20KID.png?alt=media&token=29b44060-6ea5-4d24-97d1-f3a9796fdaca",
    "audioFile":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Bodyparts%2Farm.mp3?alt=media&token=b8efd150-6fe4-4c52-bf3b-28ef0c3fe077",
    "list": "Bodyparts",
  },  {
    "alphabets":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Bodyparts%2Fhair.png?alt=media&token=ea8044f9-55f3-4218-b3b3-95f3640c8bb0",
    "words": "Hair",
    "imageUrl":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Bodyparts%2Fhair%20girl.png?alt=media&token=d9254d61-c832-41c8-acb6-9d8d396ae2ef",
    "audioFile":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Bodyparts%2Fhair.mp3?alt=media&token=c83ab321-9610-43ad-8f6a-9d92383262f1",
    "list": "Bodyparts",
  }, 
  
];

Future<void> addDataInitially() async {
  final db1 = await Hive.openBox<WordsForKids>('word');

  if (db1.isEmpty) {
    // ignore: non_constant_identifier_names
    for (var Map in Data) {
      final model = WordsForKids(
          alphabets: Map['alphabets'],
          words: Map['words'],
          imageUrl: Map['imageUrl'],
          audioFile: Map['audioFile'],
          list: Map['list']);
          await db1.add(model);
    }
  }
}


final List<Map<String, dynamic>> datas = [
   {
    "storyUrl":'https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/story%2FElephant%20and%20friends.png?alt=media&token=12aa10e2-bdd1-4ae2-8c1f-23ba8969e46b',
     "words"   :'The Elephant And Friends',
     "audioFile":"https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/story%2FElephant%20and%20Friends%20Story%20for%20Kids%20%20Moral%20Story's%20for%20Children's%20in%20English.mp3?alt=media&token=47c3dbdd-7169-433b-8113-7d5f470c659c",
     "list":'Story',
  },
  {
    "storyUrl":'https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/story%2FFOX%20AND%20GRAPES.png?alt=media&token=0430534b-ff73-4009-9c18-6da7c1ffd853',
     "words"   :'The Fox And The Grapes',
     "audioFile":"https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/story%2FThe%20Fox%20and%20The%20Grapes%20-%20Story%20for%20kids.mp3?alt=media&token=a3af06eb-4230-4521-9afd-e319ac7034f3",
     "list":'Story',
   },
    {
    "storyUrl":'https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/story%2Fmouse%20and%20lion.png?alt=media&token=e10a708b-a2e8-4fd1-a687-c50e472cbaa0',
     "words"   :'The Lion And The Mouse',
     "audioFile":"https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/story%2FThe%20Lion%20and%20The%20Mouse%20%20Galaxy%20Rhymes%20%26%20Stories%20%20Level%20B.mp3?alt=media&token=9ee1fcdf-46a5-414a-bb6a-72f8689d00d4",
     "list":'Story',
    },
   {
    "storyUrl":'https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Rhymes%2FAbc.png?alt=media&token=159dff53-6225-4540-889f-60e8ce55134e',
     "words"   :'ABC Song',
     "audioFile":"https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Rhymes%2FABC%20Song%20%20Learn%20Alphabets%20%20A%20To%20Z%20Nursery%20Rhymes%20%20Baby%20Songs%20Kids%20WooHoo%20Rhymes.mp3?alt=media&token=eea529f0-d9a7-4fdf-8ec0-917239f0e430",
     "list":'Rhymes',
       },
        {
    "storyUrl":'https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Rhymes%2Fclapyourhand.png?alt=media&token=250c57b3-672b-486d-b6bb-3d5e22c42aa7',
     "words"   :'Clap Your Hands',
     "audioFile":"https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Rhymes%2FClap%20Your%20Hands%20with%20Lyrics%20%20Popular%20English%20Nursery%20Rhymes%20for%20Kids.mp3?alt=media&token=ba24099e-67e2-4a60-8385-cc17b647e2b5",
     "list":'Rhymes',
       },
        {
    "storyUrl":'https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Rhymes%2Fdingdongbell.png?alt=media&token=eee651e5-1c4a-4fda-b7f6-bb4126c0950b',
     "words"   :'Ding Dong Bells',
     "audioFile":"https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Rhymes%2FDing%20Dong%20Bell%20Nursery%20Rhyme%20I%20Ding%20Dong%20Bell%20I%20Lkg%20Rhymes%20English%20I%20Nursery%20Rhymes%20For%20Children.mp3?alt=media&token=11c354c9-d091-403e-8955-7dfafbf98748",
     "list":'Rhymes',
       },
];

Future<void>addDataInitially2() async {
  final db2 =await Hive.openBox<StoryModel>('story');
  if(db2.isEmpty){
   
    // ignore: non_constant_identifier_names
    for(var Map in datas){
      final model= StoryModel(
      storyUrl: Map['storyUrl'],
      words: Map['words'],
      audioFile: Map['audioFile'],
      list: Map['list']);
      await db2.add(model);
    }
  }
}