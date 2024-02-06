class ModelRecipesList {
  int? success;
  Result? result;

  ModelRecipesList({this.success, this.result});

  ModelRecipesList.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    result =
        json['result'] != null ? new Result.fromJson(json['result']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    if (this.result != null) {
      data['result'] = this.result!.toJson();
    }
    return data;
  }
}

class Result {
  int? total;
  int? recipetotal;
  String? currentPage;
  int? count;
  List<Items>? items;

  Result(
      {this.total, this.recipetotal, this.currentPage, this.count, this.items});

  Result.fromJson(Map<String, dynamic> json) {
    total = json['total'];
    recipetotal = json['recipetotal'];
    currentPage = json['currentPage'];
    count = json['count'];
    if (json['items'] != null) {
      items = <Items>[];
      json['items'].forEach((v) {
        items!.add(new Items.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['total'] = this.total;
    data['recipetotal'] = this.recipetotal;
    data['currentPage'] = this.currentPage;
    data['count'] = this.count;
    if (this.items != null) {
      data['items'] = this.items!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Items {
  int? id;
  String? name;
  String? nameNormalized;
  String? description;
  int? status;
  int? isPrivate;
  int? catid;
  String? cname;
  String? catnameNormalized;
  String? catImage;
  int? intid;
  String? intnameNormalized;
  String? interestname;
  String? intimage;
  String? quantity;
  int? rating;
  int? reviews;
  int? nbImages;
  String? imageLarge;
  String? imageMedium;
  String? imageSmall;
  List<Images>? images;
  List<Ingredients>? ingredients;
  List<Interests>? interests;
  int? score;

  Items(
      {this.id,
      this.name,
      this.nameNormalized,
      this.description,
      this.status,
      this.isPrivate,
      this.catid,
      this.cname,
      this.catnameNormalized,
      this.catImage,
      this.intid,
      this.intnameNormalized,
      this.interestname,
      this.intimage,
      this.quantity,
      this.rating,
      this.reviews,
      this.nbImages,
      this.imageLarge,
      this.imageMedium,
      this.imageSmall,
      this.images,
      this.ingredients,
      this.interests,
      this.score});

  Items.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    nameNormalized = json['name_normalized'];
    description = json['description'];
    status = json['status'];
    isPrivate = json['is_private'];
    catid = json['catid'];
    cname = json['cname'];
    catnameNormalized = json['catname_normalized'];
    catImage = json['cat_image'];
    intid = json['intid'];
    intnameNormalized = json['intname_normalized'];
    interestname = json['interestname'];
    intimage = json['intimage'];
    quantity = json['quantity'];
    rating = json['rating'];
    reviews = json['reviews'];
    nbImages = json['nb_images'];
    imageLarge = json['image_large'];
    imageMedium = json['image_medium'];
    imageSmall = json['image_small'];
    if (json['images'] != null) {
      images = <Images>[];
      json['images'].forEach((v) {
        images!.add(new Images.fromJson(v));
      });
    }
    if (json['ingredients'] != null) {
      ingredients = <Ingredients>[];
      json['ingredients'].forEach((v) {
        ingredients!.add(new Ingredients.fromJson(v));
      });
    }
    if (json['interests'] != null) {
      interests = <Interests>[];
      json['interests'].forEach((v) {
        interests!.add(new Interests.fromJson(v));
      });
    }
    score = json['score'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['name_normalized'] = this.nameNormalized;
    data['description'] = this.description;
    data['status'] = this.status;
    data['is_private'] = this.isPrivate;
    data['catid'] = this.catid;
    data['cname'] = this.cname;
    data['catname_normalized'] = this.catnameNormalized;
    data['cat_image'] = this.catImage;
    data['intid'] = this.intid;
    data['intname_normalized'] = this.intnameNormalized;
    data['interestname'] = this.interestname;
    data['intimage'] = this.intimage;
    data['quantity'] = this.quantity;
    data['rating'] = this.rating;
    data['reviews'] = this.reviews;
    data['nb_images'] = this.nbImages;
    data['image_large'] = this.imageLarge;
    data['image_medium'] = this.imageMedium;
    data['image_small'] = this.imageSmall;
    if (this.images != null) {
      data['images'] = this.images!.map((v) => v.toJson()).toList();
    }
    if (this.ingredients != null) {
      data['ingredients'] = this.ingredients!.map((v) => v.toJson()).toList();
    }
    if (this.interests != null) {
      data['interests'] = this.interests!.map((v) => v.toJson()).toList();
    }
    data['score'] = this.score;
    return data;
  }
}

class Images {
  String? name;

  Images({this.name});

  Images.fromJson(Map<String, dynamic> json) {
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    return data;
  }
}

class Ingredients {
  int? nbImages;
  Images? images;

  Ingredients({this.nbImages, this.images});

  Ingredients.fromJson(Map<String, dynamic> json) {
    nbImages = json['nb_images'];
    images =
        json['images'] != null ? new Images.fromJson(json['images']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['nb_images'] = this.nbImages;
    if (this.images != null) {
      data['images'] = this.images!.toJson();
    }
    return data;
  }
}

class Interests {
  int? id;
  int? globalRecipeInterestId;
  String? name;
  String? nameNormalized;
  String? description;
  int? status;
  int? isQuestion;
  String? question;
  int? recipeId;
  int? recipeInterestId;

  Interests(
      {this.id,
      this.globalRecipeInterestId,
      this.name,
      this.nameNormalized,
      this.description,
      this.status,
      this.isQuestion,
      this.question,
      this.recipeId,
      this.recipeInterestId});

  Interests.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    globalRecipeInterestId = json['global_recipe_interest_id'];
    name = json['name'];
    nameNormalized = json['name_normalized'];
    description = json['description'];
    status = json['status'];
    isQuestion = json['is_question'];
    question = json['question'];
    recipeId = json['recipe_id'];
    recipeInterestId = json['recipe_interest_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['global_recipe_interest_id'] = this.globalRecipeInterestId;
    data['name'] = this.name;
    data['name_normalized'] = this.nameNormalized;
    data['description'] = this.description;
    data['status'] = this.status;
    data['is_question'] = this.isQuestion;
    data['question'] = this.question;
    data['recipe_id'] = this.recipeId;
    data['recipe_interest_id'] = this.recipeInterestId;
    return data;
  }
}
