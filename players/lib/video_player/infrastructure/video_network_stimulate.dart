class VideoNetworkStimulate {
  Future<String> getVideoLinkFromAPIStimulate() async {
    final string = await Future.delayed(const Duration(seconds: 3), () {
      return "https://assets.mixkit.co/videos/preview/mixkit-daytime-city-traffic-aerial-view-56-large.mp4";
    });
    print("the string from stimulate" + string);
    return string;
  }
}
