abstract class AuthenticationEvent {}

class OnRegister extends AuthenticationEvent {
  final String userFullName;
  final String userPhoneNumber;
  final String userEmail;
  final String userPassword;
  final String companyName;
  final String companyType;
  final String bin;

  OnRegister(
      {this.userFullName,
      this.userPhoneNumber,
      this.userEmail,
      this.userPassword,
      this.companyName,
      this.companyType,
      this.bin,
      });
}
