/*
 * Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

part of 'auth_bloc.dart';

abstract class AuthEvent {
  const AuthEvent();
}

class AuthLoad extends AuthEvent {
  const AuthLoad();
}

class GetCurrentUser extends AuthEvent {
  GetCurrentUser();
}

class AuthChangeScreen extends AuthEvent {
  final AuthScreen screen;

  const AuthChangeScreen(this.screen);
}

class AuthSignIn extends AuthEvent {
  final AuthSignInData data;

  const AuthSignIn(this.data);
}

class AuthSignUp extends AuthEvent {
  final AuthSignUpData data;

  const AuthSignUp(this.data);
}

class AuthConfirmSignUp extends AuthEvent {
  final AuthConfirmSignUpData data;

  const AuthConfirmSignUp(this.data);
}

class AuthSignOut extends AuthEvent {
  const AuthSignOut();
}

class AuthExceptionEvent extends AuthEvent {
  const AuthExceptionEvent();
}

class AuthSendCode extends AuthEvent {
  const AuthSendCode(this.data);

  final AuthSendCodeData data;
}

class AuthConfirmPassword extends AuthEvent {
  const AuthConfirmPassword(this.data);

  final AuthConfirmPasswordData data;
}

class AuthUpdatePassword extends AuthEvent {
  const AuthUpdatePassword(this.data);

  final AuthUpdatePasswordData data;
}

class AuthConfirmSignIn extends AuthEvent {
  final AuthConfirmSignInData data;

  const AuthConfirmSignIn(this.data);
}