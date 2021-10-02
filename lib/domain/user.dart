class User {
  int userId;
  String? first_name;
  String? last_name;
  String? email;
  String? phone_number;
  String? token;
  String? renewalToken;

  User({required this.userId, required this.last_name, required this.first_name, required this.email, required this.phone_number,
    required this.renewalToken,
    required this.token,

  });

  factory User.fromJson(Map<String, dynamic> responseData) {
    return User(
        userId: responseData['id'],
        first_name: responseData['first_name'],
        email: responseData['email'],
        phone_number: responseData['phone_number'],
        last_name: responseData['last_name'],
        token: responseData['access_token'],
        renewalToken: responseData['renewal_token']
    );
  }
}
