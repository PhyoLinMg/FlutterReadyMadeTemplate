class PostModel {
  final int id;
  final String description;

  PostModel(this.id, this.description);
}

List<PostModel> posts = [
  PostModel(1, "This is description 1"),
  PostModel(2, "This is description 2"),
  PostModel(3, "This is description 3"),
  PostModel(4, "This is description 4"),
  PostModel(5, "This is description 5"),
];
