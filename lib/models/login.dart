class Login {
  String? username;
  String? password;

  Login({String? username, String? password}) {
    username = this.username ?? '';
    password = this.password ?? '';
  }
}