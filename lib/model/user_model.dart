///
/// Code generated by jsonToDartModel https://ashamp.github.io/jsonToDartModel/
///
// ignore_for_file: unnecessary_this, avoid_function_literals_in_foreach_calls

class UsersModelSupport {
/*
{
  "url": "https://reqres.in/#support-heading",
  "text": "To keep ReqRes free, contributions towards server costs are appreciated!"
} 
*/

  String? url;
  String? text;

  UsersModelSupport({
    this.url,
    this.text,
  });
  UsersModelSupport.fromJson(Map<String, dynamic> json) {
    url = json['url']?.toString();
    text = json['text']?.toString();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['url'] = url;
    data['text'] = text;
    return data;
  }
}

class UsersModelData {
/*
{
  "id": 7,
  "email": "michael.lawson@reqres.in",
  "first_name": "Michael",
  "last_name": "Lawson",
  "avatar": "https://reqres.in/img/faces/7-image.jpg"
} 
*/

  int? id;
  String? email;
  String? firstName;
  String? lastName;
  String? avatar;

  UsersModelData({
    this.id,
    this.email,
    this.firstName,
    this.lastName,
    this.avatar,
  });
  UsersModelData.fromJson(Map<String, dynamic> json) {
    id = json['id']?.toInt();
    email = json['email']?.toString();
    firstName = json['first_name']?.toString();
    lastName = json['last_name']?.toString();
    avatar = json['avatar']?.toString();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['email'] = email;
    data['first_name'] = firstName;
    data['last_name'] = lastName;
    data['avatar'] = avatar;
    return data;
  }
}

class UsersModel {
/*
{
  "page": 2,
  "per_page": 6,
  "total": 12,
  "total_pages": 2,
  "data": [
    {
      "id": 7,
      "email": "michael.lawson@reqres.in",
      "first_name": "Michael",
      "last_name": "Lawson",
      "avatar": "https://reqres.in/img/faces/7-image.jpg"
    }
  ],
  "support": {
    "url": "https://reqres.in/#support-heading",
    "text": "To keep ReqRes free, contributions towards server costs are appreciated!"
  }
} 
*/

  int? page;
  int? perPage;
  int? total;
  int? totalPages;
  List<UsersModelData?>? data;
  UsersModelSupport? support;

  UsersModel({
    this.page,
    this.perPage,
    this.total,
    this.totalPages,
    this.data,
    this.support,
  });
  UsersModel.fromJson(Map<String, dynamic> json) {
    page = json['page']?.toInt();
    perPage = json['per_page']?.toInt();
    total = json['total']?.toInt();
    totalPages = json['total_pages']?.toInt();
    if (json['data'] != null) {
      final v = json['data'];
      final arr0 = <UsersModelData>[];
      v.forEach((v) {
        arr0.add(UsersModelData.fromJson(v));
      });
      this.data = arr0;
    }
    support = (json['support'] != null)
        ? UsersModelSupport.fromJson(json['support'])
        : null;
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['page'] = page;
    data['per_page'] = perPage;
    data['total'] = total;
    data['total_pages'] = totalPages;
    if (this.data != null) {
      final v = this.data;
      final arr0 = [];
      v!.forEach((v) {
        arr0.add(v!.toJson());
      });
      data['data'] = arr0;
    }
    if (support != null) {
      data['support'] = support!.toJson();
    }
    return data;
  }
}
