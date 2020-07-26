class User{
  String id;
  String email;
  String companyName;
  String createdAt;

  User({this.id,this.createdAt,this.email,this.companyName})
      :assert(email!=null, "Email can not be null"),
        assert( companyName!=null, "company name can not be null" );


  static User fromMap(Map<String, dynamic> map) {
    return User(
        id: map['id'],
        email: map['email'],
        companyName: map['companyName'],
    );
  }


  Map<String, dynamic> toMap() {
    return {
      ' id': id ?? '',
      'email': email ?? 'NewUser' + DateTime.now().toString(),
      'companyName': email ?? '',
      'createdAt': createdAt ?? DateTime.now().toString(),
    };
  }


}