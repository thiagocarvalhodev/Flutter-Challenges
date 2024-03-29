import 'dart:convert';

// Exercise from te Medium Article Parsing complex JSON in Flutter
// by Pooja Bhaumik

// We will solve the challenge of this article, that is handle with this
// giant json file.

// The purporse of this exercise is to practice with Json Deseriealization and 
// how to fetch some complex data structures.

// Json that will handle
String json = """
{ "page": 1,
  "per_page": 3,
  "total": 12,
  "total_pages": 4,
  "author":{
    "first_name": "Ms R",
    "last_name":"Reddy"
  },
  "data": [
    {
      "id": 1,
      "first_name": "George",
      "last_name": "Bluth",
      "avatar": "https://s3.amazonaws.com/uifaces/faces/twitter/calebogden/128.jpg",
      "images": [
        {
          "id" : 122,
          "imageName": "377cjsahdh388.jpeg"
        },
        {
          "id" : 152,
          "imageName": "1743fsahdh388.jpeg"
        }
      ]

    },
    {
      "id": 2,
      "first_name": "Janet",
      "last_name": "Weaver",
      "avatar": "https://s3.amazonaws.com/uifaces/faces/twitter/josephstein/128.jpg",
      "images": [
        {
          "id" : 122,
          "imageName": "377cjsahdh388.jpeg"
        },
        {
          "id" : 152,
          "imageName": "1743fsahdh388.jpeg"
        }
      ]
    },
    {
      "id": 3,
      "first_name": "Emma",
      "last_name": "Wong",
      "avatar": "https://s3.amazonaws.com/uifaces/faces/twitter/olegpogodaev/128.jpg",
      "images": [
        {
          "id" : 122,
          "imageName": "377cjsahdh388.jpeg"
        },
        {
          "id" : 152,
          "imageName": "1743fsahdh388.jpeg"
        }
      ]
    }
  ]
}
""";

// Class that handle with Author features
class Author {
  String first_name;
  String last_name;

  Author({this.first_name, this.last_name});

  factory Author.formJson(Map<String, dynamic> parsedJson) {
    return Author(
      first_name: parsedJson['first_name'],
      last_name: parsedJson['last_name']
    );
  }
}

// Class that handle with Data features
class Data {
  int id;
  String first_name;
  String last_name;
  String avatar;
  ListImages images;

  Data({this.id, this.first_name, this.last_name, this.avatar, this.images});

  factory Data.fromJson(Map<String, dynamic> parsedJson) {
    // we need to create a List of images and then put in Data
    var list = parsedJson['images'] as List;
    ListImages images = ListImages.fromJson(list);

    return Data(
      id: parsedJson['id'],
      first_name: parsedJson['first_name'],
      last_name: parsedJson['last_name'],
      avatar: parsedJson['avatar'],
      images: images
    );
  }
}

// List of Data Objects
// Was create for more clear the code.
// We get the Object Data, then its maped, fetch each document from Json
// and put all this stuff into a List of Data Objects 
class ListData {
  List<Data> datas;

  ListData({this.datas});

  factory ListData.fromJson(List<dynamic> list){
    var datas = list.map((d) => Data.fromJson(d)).toList();

    return ListData(datas: datas);
  }
}

// We need to handle with a List of Maps, so, we get all objects
// and pass to a list Deserializationing the Map to a Object
class ListImages {
  List<Image> images;

  ListImages({this.images});

  factory ListImages.fromJson(List<dynamic> list) {
    var images = list.map((i) => Image.fromJson(i)).toList();

    return ListImages(images: images);
  }
}

// Class that handle with Image features
class Image {
  int id;
  String imageName;

  Image({this.id, this.imageName});

  factory Image.fromJson(Map<String, dynamic> parsedJson) {
    return Image(
      id: parsedJson['id'], 
      imageName: parsedJson['imageName']
    );
  }
}

// This class is responsible for all data fetch of the Json
class Page {
  int page;
  int per_page;
  int total;
  int total_pages;

  Author author;
  ListData data;

  Page({this.page, this.per_page, this.total, this.total_pages,
    this.author, this.data  
  });

  // In the Json, we have a List of Objects Data, and, to fetch,
  // we must to pass the List of Datas

  factory Page.fromJson(Map<String, dynamic> parsedJson) {
    var list = parsedJson['data'] as List;
    ListData datas = ListData.fromJson(list);

    return Page(
      page: parsedJson['page'],
      per_page: parsedJson['per_page'],
      total: parsedJson['total'],
      total_pages: parsedJson['total_pages'],
      author: Author.formJson(parsedJson['author']),
      data: datas
    );
  }
}

int main() {
  Page page = Page();

  var parsedJson = jsonDecode(json);

  page = Page.fromJson(parsedJson);

  // test
  print(page.data.datas[0].avatar);
  return 0;
}