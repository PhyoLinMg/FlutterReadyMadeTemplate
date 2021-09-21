class UtubeNetworkStimuate {
  Future<String> getUtubeFullLink() async {
    final string = await Future.delayed(const Duration(seconds: 3), () {
      return "https://www.youtube.com/watch?v=wK8oLoZUXAw";
    });
    print(string);
    return string;
  }

  Future<String> getUtubeId() async {
    return await Future.delayed(const Duration(seconds: 3), () {
      return "hwK8oLoZUXAw";
    });
  }
}
