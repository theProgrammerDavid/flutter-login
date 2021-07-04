# google_signin

A new Flutter project.

## Generate Hashes
- Go to `$PROJECT_DIR/android` and run
```bash
./gradelw signinReport
```

Copy **both**, the `SHA1` and `SHA256` and paste them into the Firebase app config. Only then will the google signin work

## Resources

- [https://medium.com/codechai/flutter-auth-with-google-f3c3aa0d0ccc](https://medium.com/codechai/flutter-auth-with-google-f3c3aa0d0ccc)
- [sample app](https://github.com/flutter/plugins/blob/master/packages/google_sign_in/google_sign_in/example/lib/main.dart)
- [PlatformException(sign_in_failed, com.google.android.gms.common.api.ApiException: 10: , null)](https://stackoverflow.com/questions/54557479/flutter-and-google-sign-in-plugin-platformexceptionsign-in-failed-com-google)

