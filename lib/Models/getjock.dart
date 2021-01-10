class Getjock {
  String id;
  String content;
  bool nsfw;
  int upvotes;
  int downvotes;

  Getjock({this.id, this.content, this.nsfw, this.upvotes, this.downvotes});

  Getjock.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    content = json['content'];
    nsfw = json['nsfw'];
    upvotes = json['upvotes'];
    downvotes = json['downvotes'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['content'] = this.content;
    data['nsfw'] = this.nsfw;
    data['upvotes'] = this.upvotes;
    data['downvotes'] = this.downvotes;
    return data;
  }
}
