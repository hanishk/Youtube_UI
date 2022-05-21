class VideoModel {
  final String userName;
  final String userImage;
  final String title;
  final String thumbnail;
  final String youtubeLink;
  final String totalDuration;
  final DateTime uploadedTime;
  final String totalViews;
  final String likes;
  final String dislikes;

  const VideoModel(
      {required this.userName,
      required this.youtubeLink,
      required this.userImage,
      required this.title,
      required this.thumbnail,
      required this.totalDuration,
      required this.uploadedTime,
      required this.totalViews,
      required this.likes,
      required this.dislikes});
}

final List<VideoModel> videos = [
  VideoModel(
      userName: 'Google Developers',
      userImage:
          'https://yt3.ggpht.com/ytc/AKedOLSsnWm_dQzIqM-qgW74yebXNX_b__k6WAeUBb6GeGQ=s176-c-k-c0x00ffffff-no-rj',
      title: 'Introducing Flutter',
      thumbnail:
          'https://i.ytimg.com/vi/fq4N0hgOWzU/hqdefault.jpg?sqp=-oaymwEbCKgBEF5IVfKriqkDDggBFQAAiEIYAXABwAEG\u0026rs=AOn4CLAVC6ZUoeb3Q07Bm_REmo9vi-_gxA',
      totalDuration: '1:52',
      uploadedTime: DateTime(2018, 02, 23),
      totalViews: '2.2M',
      likes: '46K',
      dislikes: '0',
      youtubeLink: 'https://www.youtube.com/watch?v=fq4N0hgOWzU'),
  VideoModel(
      userName: 'Codepur',
      userImage:
          'https://yt3.ggpht.com/7P9Lgi-zGzr_uN3OYe2IWZOuR1MjH8qHEvemrTPs7CP7R1RF14J5H2vkXHkuQYwE1gfJ1KAVxg=s176-c-k-c0x00ffffff-no-rj',
      title: 'Whats new in Flutter 3?',
      thumbnail:
          'https://i.ytimg.com/vi/X-ApbL6pic8/hqdefault.jpg?sqp=-oaymwEbCKgBEF5IVfKriqkDDggBFQAAiEIYAXABwAEG\u0026rs=AOn4CLDsxOvCxFWX1PHdKxT37Cc-4gt_IQ',
      totalDuration: '5:25',
      uploadedTime: DateTime(2022, 05, 12),
      totalViews: '12K',
      likes: '370',
      dislikes: '0',
      youtubeLink: 'https://www.youtube.com/watch?v=X-ApbL6pic8'),
  VideoModel(
      userName: 'Flutter',
      userImage:
          'https://yt3.ggpht.com/ytc/AKedOLRt1d4p7bPylasq_66BIC8-k3hkyVjJ2JICQITK=s176-c-k-c0x00ffffff-no-rj',
      title: 'Whats new in Flutter',
      thumbnail:
          'https://i.ytimg.com/vi/w_ezWG1yKQQ/hqdefault.jpg?sqp=-oaymwEbCKgBEF5IVfKriqkDDggBFQAAiEIYAXABwAEG\u0026rs=AOn4CLCU40FDr9mnEt3f8UXHoXXnxyZbtw',
      totalDuration: '33:48',
      uploadedTime: DateTime(2022, 05, 12),
      totalViews: '81K',
      likes: '46K',
      dislikes: '0',
      youtubeLink: 'https://www.youtube.com/watch?v=w_ezWG1yKQQ'),
  VideoModel(
      userName: 'Stream Chat & Feeds',
      userImage:
          'https://yt3.ggpht.com/X4OovlSscByKukv38j2uEGEHvmKsXcAXRPPyjARX7tS1FT2rrA3-HLp8nkvo2aedZH4zNNmdJxM=s176-c-k-c0x00ffffff-no-rj',
      title: 'How to Improve Flutter Performance',
      thumbnail:
          'https://i.ytimg.com/vi/KH-3tbD7NoU/hqdefault.jpg?sqp=-oaymwEbCKgBEF5IVfKriqkDDggBFQAAiEIYAXABwAEG\u0026rs=AOn4CLBmdt2u57NCN_fHcZ_FKJwNd_ZgVg',
      totalDuration: '41:37',
      uploadedTime: DateTime(2022, 02, 15),
      totalViews: '3K',
      likes: '173',
      dislikes: '0',
      youtubeLink: 'https://www.youtube.com/watch?v=KH-3tbD7NoU'),
  VideoModel(
      userName: 'Flutter Europe',
      userImage:
          'https://yt3.ggpht.com/ytc/AKedOLSsnWm_dQzIqM-qgW74yebXNX_b__k6WAeUBb6GeGQ=s176-c-k-c0x00ffffff-no-rj',
      title:
          'Performance: Optimizing your Flutter app - Filip Hráček | Flutter Europe',
      thumbnail:
          'https://yt3.ggpht.com/ytc/AKedOLQg7RJbdGtIhF-_TqY5szoxTHrOUy2ievnqsDmw=s176-c-k-c0x00ffffff-no-rj',
      totalDuration: '44:06',
      uploadedTime: DateTime(2020, 03, 13),
      totalViews: '22K',
      likes: '762',
      dislikes: '0',
      youtubeLink: 'https://www.youtube.com/watch?v=SQcmrl_NkqY')
];
