// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

// Generated with smithy-dart 0.5.1. DO NOT MODIFY.

library amplify_auth_cognito.cognito_identity_provider.operation.revoke_token_operation;

import 'dart:async' as _i15;

import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/common/endpoint_resolver.dart'
    as _i8;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/common/serializers.dart'
    as _i6;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/internal_error_exception.dart'
    as _i9;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/invalid_parameter_exception.dart'
    as _i10;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/revoke_token_request.dart'
    as _i2;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/revoke_token_response.dart'
    as _i3;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/too_many_requests_exception.dart'
    as _i11;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/unauthorized_exception.dart'
    as _i12;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/unsupported_operation_exception.dart'
    as _i13;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/unsupported_token_type_exception.dart'
    as _i14;
import 'package:aws_common/aws_common.dart' as _i7;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i5;

/// Revokes all of the access tokens generated by the specified refresh token. After the token is revoked, you can not use the revoked token to access Cognito authenticated APIs.
class RevokeTokenOperation extends _i1.HttpOperation<_i2.RevokeTokenRequest,
    _i2.RevokeTokenRequest, _i3.RevokeTokenResponse, _i3.RevokeTokenResponse> {
  /// Revokes all of the access tokens generated by the specified refresh token. After the token is revoked, you can not use the revoked token to access Cognito authenticated APIs.
  RevokeTokenOperation(
      {required String region,
      Uri? baseUri,
      _i4.AWSCredentialsProvider credentialsProvider =
          const _i4.AWSCredentialsProvider.environment()})
      : _region = region,
        _baseUri = baseUri,
        _credentialsProvider = credentialsProvider;

  @override
  late final List<
      _i1.HttpProtocol<_i2.RevokeTokenRequest, _i2.RevokeTokenRequest,
          _i3.RevokeTokenResponse, _i3.RevokeTokenResponse>> protocols = [
    _i5.AwsJson1_1Protocol(
        serializers: _i6.serializers,
        builderFactories: _i6.builderFactories,
        requestInterceptors: [
          const _i1.WithContentLength(),
          const _i1.WithHeader(
              'X-Amz-Target', 'AWSCognitoIdentityProviderService.RevokeToken'),
          _i5.WithSigV4(
              region: _region,
              service: _i7.AWSService.cognitoIdentityProvider,
              credentialsProvider: _credentialsProvider),
          const _i5.WithSdkInvocationId(),
          const _i5.WithSdkRequest()
        ],
        responseInterceptors: [])
  ];

  late final _i5.AWSEndpoint _awsEndpoint =
      _i8.endpointResolver.resolve(_i8.sdkId, _region);

  final String _region;

  final Uri? _baseUri;

  final _i4.AWSCredentialsProvider _credentialsProvider;

  @override
  _i1.HttpRequest buildRequest(_i2.RevokeTokenRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([_i3.RevokeTokenResponse? output]) => 200;
  @override
  _i3.RevokeTokenResponse buildOutput(_i3.RevokeTokenResponse payload,
          _i7.AWSStreamedHttpResponse response) =>
      _i3.RevokeTokenResponse.fromResponse(payload, response);
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError(
            _i1.ShapeId(
                namespace: 'com.amazonaws.cognitoidentityprovider',
                shape: 'InternalErrorException'),
            _i1.ErrorKind.server,
            _i9.InternalErrorException,
            builder: _i9.InternalErrorException.fromResponse),
        _i1.SmithyError(
            _i1.ShapeId(
                namespace: 'com.amazonaws.cognitoidentityprovider',
                shape: 'InvalidParameterException'),
            _i1.ErrorKind.client,
            _i10.InvalidParameterException,
            statusCode: 400,
            builder: _i10.InvalidParameterException.fromResponse),
        _i1.SmithyError(
            _i1.ShapeId(
                namespace: 'com.amazonaws.cognitoidentityprovider',
                shape: 'TooManyRequestsException'),
            _i1.ErrorKind.client,
            _i11.TooManyRequestsException,
            statusCode: 429,
            builder: _i11.TooManyRequestsException.fromResponse),
        _i1.SmithyError(
            _i1.ShapeId(
                namespace: 'com.amazonaws.cognitoidentityprovider',
                shape: 'UnauthorizedException'),
            _i1.ErrorKind.client,
            _i12.UnauthorizedException,
            statusCode: 401,
            builder: _i12.UnauthorizedException.fromResponse),
        _i1.SmithyError(
            _i1.ShapeId(
                namespace: 'com.amazonaws.cognitoidentityprovider',
                shape: 'UnsupportedOperationException'),
            _i1.ErrorKind.client,
            _i13.UnsupportedOperationException,
            statusCode: 400,
            builder: _i13.UnsupportedOperationException.fromResponse),
        _i1.SmithyError(
            _i1.ShapeId(
                namespace: 'com.amazonaws.cognitoidentityprovider',
                shape: 'UnsupportedTokenTypeException'),
            _i1.ErrorKind.client,
            _i14.UnsupportedTokenTypeException,
            statusCode: 400,
            builder: _i14.UnsupportedTokenTypeException.fromResponse)
      ];
  @override
  _i5.AWSRetryer get retryer => _i5.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i15.Future<_i3.RevokeTokenResponse> run(_i2.RevokeTokenRequest input,
      {_i1.HttpClient? client, _i1.ShapeId? useProtocol}) {
    return _i15.runZoned(
        () => super.run(input, client: client, useProtocol: useProtocol),
        zoneValues: {
          ...?_awsEndpoint.credentialScope?.zoneValues,
          ...{_i7.AWSHeaders.sdkInvocationId: _i7.uuid(secure: true)}
        });
  }
}
