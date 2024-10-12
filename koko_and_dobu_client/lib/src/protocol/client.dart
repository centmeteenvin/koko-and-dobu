/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'dart:async' as _i2;
import 'package:koko_and_dobu_client/src/protocol/dorm.dart' as _i3;
import 'package:koko_and_dobu_client/src/protocol/post.dart' as _i4;
import 'package:koko_and_dobu_client/src/protocol/dto/user_data.dart' as _i5;
import 'package:serverpod_auth_client/serverpod_auth_client.dart' as _i6;
import 'protocol.dart' as _i7;

/// {@category Endpoint}
class EndpointAdmin extends _i1.EndpointRef {
  EndpointAdmin(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'admin';

  _i2.Future<void> makeAdmin(int userId) => caller.callServerEndpoint<void>(
        'admin',
        'makeAdmin',
        {'userId': userId},
      );

  _i2.Future<void> removeAdmin(int userId) => caller.callServerEndpoint<void>(
        'admin',
        'removeAdmin',
        {'userId': userId},
      );
}

/// {@category Endpoint}
class EndpointDorm extends _i1.EndpointRef {
  EndpointDorm(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'dorm';

  _i2.Future<void> acceptDormJoinRequest(
    int dormId,
    int userId,
  ) =>
      caller.callServerEndpoint<void>(
        'dorm',
        'acceptDormJoinRequest',
        {
          'dormId': dormId,
          'userId': userId,
        },
      );

  _i2.Future<_i3.Dorm> createDorm({
    required double lat,
    required double long,
    required String name,
    String? websiteUrl,
  }) =>
      caller.callServerEndpoint<_i3.Dorm>(
        'dorm',
        'createDorm',
        {
          'lat': lat,
          'long': long,
          'name': name,
          'websiteUrl': websiteUrl,
        },
      );

  _i2.Future<void> denyDormJoinRequest(
    int dormId,
    int userId,
  ) =>
      caller.callServerEndpoint<void>(
        'dorm',
        'denyDormJoinRequest',
        {
          'dormId': dormId,
          'userId': userId,
        },
      );

  _i2.Future<void> sendDormJoinRequest(
    int dormId,
    int userId,
  ) =>
      caller.callServerEndpoint<void>(
        'dorm',
        'sendDormJoinRequest',
        {
          'dormId': dormId,
          'userId': userId,
        },
      );
}

/// {@category Endpoint}
class EndpointPost extends _i1.EndpointRef {
  EndpointPost(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'post';

  _i2.Future<_i4.Post> createPost({
    required int dormId,
    required int userId,
    required String message,
  }) =>
      caller.callServerEndpoint<_i4.Post>(
        'post',
        'createPost',
        {
          'dormId': dormId,
          'userId': userId,
          'message': message,
        },
      );

  _i2.Future<void> deletePost(
    int postId,
    int userId,
  ) =>
      caller.callServerEndpoint<void>(
        'post',
        'deletePost',
        {
          'postId': postId,
          'userId': userId,
        },
      );
}

/// {@category Endpoint}
class EndpointUser extends _i1.EndpointRef {
  EndpointUser(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'user';

  _i2.Future<_i5.UserData> getUserById(int userId) =>
      caller.callServerEndpoint<_i5.UserData>(
        'user',
        'getUserById',
        {'userId': userId},
      );
}

class _Modules {
  _Modules(Client client) {
    auth = _i6.Caller(client);
  }

  late final _i6.Caller auth;
}

class Client extends _i1.ServerpodClientShared {
  Client(
    String host, {
    dynamic securityContext,
    _i1.AuthenticationKeyManager? authenticationKeyManager,
    Duration? streamingConnectionTimeout,
    Duration? connectionTimeout,
    Function(
      _i1.MethodCallContext,
      Object,
      StackTrace,
    )? onFailedCall,
    Function(_i1.MethodCallContext)? onSucceededCall,
    bool? disconnectStreamsOnLostInternetConnection,
  }) : super(
          host,
          _i7.Protocol(),
          securityContext: securityContext,
          authenticationKeyManager: authenticationKeyManager,
          streamingConnectionTimeout: streamingConnectionTimeout,
          connectionTimeout: connectionTimeout,
          onFailedCall: onFailedCall,
          onSucceededCall: onSucceededCall,
          disconnectStreamsOnLostInternetConnection:
              disconnectStreamsOnLostInternetConnection,
        ) {
    admin = EndpointAdmin(this);
    dorm = EndpointDorm(this);
    post = EndpointPost(this);
    user = EndpointUser(this);
    modules = _Modules(this);
  }

  late final EndpointAdmin admin;

  late final EndpointDorm dorm;

  late final EndpointPost post;

  late final EndpointUser user;

  late final _Modules modules;

  @override
  Map<String, _i1.EndpointRef> get endpointRefLookup => {
        'admin': admin,
        'dorm': dorm,
        'post': post,
        'user': user,
      };

  @override
  Map<String, _i1.ModuleEndpointCaller> get moduleLookup =>
      {'auth': modules.auth};
}
