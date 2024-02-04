class LoginModel {
  int? success;
  String? message;
  User? user;
  String? jwt;

  LoginModel({this.success,this.message, this.user, this.jwt});

  LoginModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    message = json['message'] != null ?json['message'].toString():null;
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
    jwt = json['jwt']!= null ?json['jwt'].toString():null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    data['message'] = this.message;
    if (this.user != null) {
      data['user'] = this.user!.toJson();
    }
    data['jwt'] = this.jwt;
    return data;
  }
}

class User {
  String ? id;
  String ? firstName;
  String ? lastName;
  String ? email;
  String ? phone;
  String ? photo;
  String ? gender;
  String ? isProfessional;
  String ? isPublicPhoto;
  String ? isPublicContact;
  String ? firstLogin;
  String ? invitedBy;
  String ? followersCount;
  String ? interests;
  String ? ownerOfRestaurant;
  String ? ownerOfStore;
  String ? ownerRestaurantName;
  String ? ownerStoreName;
  String ? storeType;
  Gamification ? gamification;
  String ? deviceToken;
  String ? isStore;
  String ? isRestaurant;

  User(
      {this.id,
        this.firstName,
        this.lastName,
        this.email,
        this.phone,
        this.photo,
        this.gender,
        this.isProfessional,
        this.isPublicPhoto,
        this.isPublicContact,
        this.firstLogin,
        this.invitedBy,
        this.followersCount,
        this.interests,
        this.ownerOfRestaurant,
        this.ownerOfStore,
        this.ownerRestaurantName,
        this.ownerStoreName,
        this.storeType,
        this.gamification,
        this.deviceToken,
        this.isStore,
        this.isRestaurant});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id']!= null ?json['id'].toString():null;
    firstName = json['first_name']!= null ?json['first_name'].toString():null;
    lastName = json['last_name']!= null ?json['last_name'].toString():null;
    email = json['email']!= null ?json['email'].toString():null;
    phone = json['phone']!= null ?json['phone'].toString():null;
    photo = json['photo']!= null ?json['photo'].toString():null;
    gender = json['gender']!= null ?json['gender'].toString():null;
    isProfessional = json['is_professional']!= null ?json['is_professional'].toString():null;
    isPublicPhoto = json['is_public_photo']!= null ?json['is_public_photo'].toString():null;
    isPublicContact = json['is_public_contact']!= null ?json['is_public_contact'].toString():null;
    firstLogin = json['first_login']!= null ?json['first_login'].toString():null;
    invitedBy = json['invited_by']!= null ?json['invited_by'].toString():null;
    followersCount = json['followers_count']!= null ?json['followers_count'].toString():null;
    interests = json['interests']!= null ?json['interests'].toString():null;
    ownerOfRestaurant = json['owner_of_restaurant']!= null ?json['owner_of_restaurant'].toString():null;
    ownerOfStore = json['owner_of_store']!= null ?json['owner_of_store'].toString():null;
    ownerRestaurantName = json['owner_restaurant_name']!= null ?json['owner_restaurant_name'].toString():null;
    ownerStoreName = json['owner_store_name']!= null ?json['owner_store_name'].toString():null;
    storeType = json['store_type']!= null ?json['store_type'].toString():null;
    deviceToken = json['device_token']!= null ?json['device_token'].toString():null;
    isStore = json['is_store']!= null ?json['is_store'].toString():null;
    isRestaurant = json['is_restaurant']!= null ?json['is_restaurant'].toString():null;
    gamification = json['gamification'] != null
        ? new Gamification.fromJson(json['gamification'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['first_name'] = this.firstName;
    data['last_name'] = this.lastName;
    data['email'] = this.email;
    data['phone'] = this.phone;
    data['photo'] = this.photo;
    data['gender'] = this.gender;
    data['is_professional'] = this.isProfessional;
    data['is_public_photo'] = this.isPublicPhoto;
    data['is_public_contact'] = this.isPublicContact;
    data['first_login'] = this.firstLogin;
    data['invited_by'] = this.invitedBy;
    data['followers_count'] = this.followersCount;
    data['interests'] = this.interests;
    data['owner_of_restaurant'] = this.ownerOfRestaurant;
    data['owner_of_store'] = this.ownerOfStore;
    data['owner_restaurant_name'] = this.ownerRestaurantName;
    data['owner_store_name'] = this.ownerStoreName;
    data['store_type'] = this.storeType;
    if (this.gamification != null) {
      data['gamification'] = this.gamification!.toJson();
    }
    data['device_token'] = this.deviceToken;
    data['is_store'] = this.isStore;
    data['is_restaurant'] = this.isRestaurant;
    return data;
  }
}

class Gamification {
  String ? points;
  String ? levelId;
  String ? name;
  String ? levelStepFrom;
  String ? levelStepTo;
  String ? image;

  Gamification(
      {this.points,
        this.levelId,
        this.name,
        this.levelStepFrom,
        this.levelStepTo,
        this.image});

  Gamification.fromJson(Map<String, dynamic> json) {
    points = json['points']!= null ?json['points'].toString() :null;
    levelId = json['level_id']!= null ?json['level_id'].toString() :null;
    name = json['name']!= null ?json['name'].toString() :null;
    levelStepFrom = json['level_step_from']!= null ?json['level_step_from'].toString() :null;
    levelStepTo = json['level_step_to']!= null ?json['level_step_to'].toString() :null;
    image = json['image']!= null ?json['image'].toString() :null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['points'] = this.points;
    data['level_id'] = this.levelId;
    data['name'] = this.name;
    data['level_step_from'] = this.levelStepFrom;
    data['level_step_to'] = this.levelStepTo;
    data['image'] = this.image;
    return data;
  }
}
