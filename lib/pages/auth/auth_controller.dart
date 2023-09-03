import 'package:get/get.dart';
import 'package:local_auth/local_auth.dart';

class AuthController extends GetxController {
  Future<bool> authenticate() async {
    final LocalAuthentication localAuthentication = LocalAuthentication();
    bool authenticated = false;
    try {
      authenticated = await localAuthentication.authenticate(
        localizedReason: 'We ensure your safety',
        options: const AuthenticationOptions(
          stickyAuth: true,
        ),
      );
    } catch (e) {
      print(e);
    }
    return authenticated;
  }
}