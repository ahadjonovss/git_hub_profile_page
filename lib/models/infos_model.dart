// {
// "login": "ahadjonovss",
// "avatar_url": "https://avatars.githubusercontent.com/u/98304052?v=4",
// "followers_url": "https://api.github.com/users/ahadjonovss/followers",
// "following_url": "https://api.github.com/users/ahadjonovss/following{/other_user}",
// "starred_url": "https://api.github.com/users/ahadjonovss/starred{/owner}{/repo}",
// "name": "Samandar Ahadjonov",
// "company": "Najot Talim",
// "blog": "https://linktr.ee/ahadjonovss",
// "location": "Tashkent",
// "bio": "Software Developer",
// "twitter_username": "ahadjonovss",
// "public_repos": 14,
// "followers": 1,
// "following": 0,
// "created_at": "2022-01-24T06:17:50Z",
// "updated_at": "2022-09-25T10:06:09Z"
// }

class AccountInfos {
  String login;
  String avatar_url;
  String name;
  String company;
  String blog;
  String location;
  String bio;
  String twitter_username;
  String followers;

  AccountInfos({
    required this.login,
    required this.avatar_url,
    required this.name,
    required this.company,
    required this.blog,
    required this.location,
    required this.bio,
    required this.twitter_username,
    required this.followers,
  });

  factory AccountInfos.fromJson(Map<String,String> jsonData){
    String login = jsonData["login"] as String;
    String avatar_url = jsonData["avatar_url"] as String;
    String name = jsonData["name"] as String;
    String company = jsonData["company"] as String;
    String blog = jsonData["blog"] as String;
    String location = jsonData["location"] as String;
    String bio = jsonData["bio"] as String;
    String twitter_username = jsonData["twitter_username"] as String;
    String followers = jsonData["followers"] as String;
    return AccountInfos(login: login, avatar_url: avatar_url, name: name, company: company, blog: blog, location: location, bio: bio, twitter_username: twitter_username, followers: followers);

  }
}
