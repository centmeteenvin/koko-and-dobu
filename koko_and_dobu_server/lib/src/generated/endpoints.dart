/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import '../endpoints/admin_endpoint.dart' as _i2;
import '../endpoints/dorm_endpoint.dart' as _i3;
import '../endpoints/post_endpoint.dart' as _i4;
import '../endpoints/user_endpoint.dart' as _i5;
import 'package:serverpod_auth_server/serverpod_auth_server.dart' as _i6;

class Endpoints extends _i1.EndpointDispatch {
  @override
  void initializeEndpoints(_i1.Server server) {
    var endpoints = <String, _i1.Endpoint>{
      'admin': _i2.AdminEndpoint()
        ..initialize(
          server,
          'admin',
          null,
        ),
      'dorm': _i3.DormEndpoint()
        ..initialize(
          server,
          'dorm',
          null,
        ),
      'post': _i4.PostEndpoint()
        ..initialize(
          server,
          'post',
          null,
        ),
      'user': _i5.UserEndpoint()
        ..initialize(
          server,
          'user',
          null,
        ),
    };
    connectors['admin'] = _i1.EndpointConnector(
      name: 'admin',
      endpoint: endpoints['admin']!,
      methodConnectors: {
        'makeAdmin': _i1.MethodConnector(
          name: 'makeAdmin',
          params: {
            'userId': _i1.ParameterDescription(
              name: 'userId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['admin'] as _i2.AdminEndpoint).makeAdmin(
            session,
            params['userId'],
          ),
        ),
        'removeAdmin': _i1.MethodConnector(
          name: 'removeAdmin',
          params: {
            'userId': _i1.ParameterDescription(
              name: 'userId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['admin'] as _i2.AdminEndpoint).removeAdmin(
            session,
            params['userId'],
          ),
        ),
      },
    );
    connectors['dorm'] = _i1.EndpointConnector(
      name: 'dorm',
      endpoint: endpoints['dorm']!,
      methodConnectors: {
        'acceptDormJoinRequest': _i1.MethodConnector(
          name: 'acceptDormJoinRequest',
          params: {
            'dormId': _i1.ParameterDescription(
              name: 'dormId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'userId': _i1.ParameterDescription(
              name: 'userId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['dorm'] as _i3.DormEndpoint).acceptDormJoinRequest(
            session,
            params['dormId'],
            params['userId'],
          ),
        ),
        'createDorm': _i1.MethodConnector(
          name: 'createDorm',
          params: {
            'lat': _i1.ParameterDescription(
              name: 'lat',
              type: _i1.getType<double>(),
              nullable: false,
            ),
            'long': _i1.ParameterDescription(
              name: 'long',
              type: _i1.getType<double>(),
              nullable: false,
            ),
            'name': _i1.ParameterDescription(
              name: 'name',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'websiteUrl': _i1.ParameterDescription(
              name: 'websiteUrl',
              type: _i1.getType<String?>(),
              nullable: true,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['dorm'] as _i3.DormEndpoint).createDorm(
            session,
            lat: params['lat'],
            long: params['long'],
            name: params['name'],
            websiteUrl: params['websiteUrl'],
          ),
        ),
        'denyDormJoinRequest': _i1.MethodConnector(
          name: 'denyDormJoinRequest',
          params: {
            'dormId': _i1.ParameterDescription(
              name: 'dormId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'userId': _i1.ParameterDescription(
              name: 'userId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['dorm'] as _i3.DormEndpoint).denyDormJoinRequest(
            session,
            params['dormId'],
            params['userId'],
          ),
        ),
        'sendDormJoinRequest': _i1.MethodConnector(
          name: 'sendDormJoinRequest',
          params: {
            'dormId': _i1.ParameterDescription(
              name: 'dormId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'userId': _i1.ParameterDescription(
              name: 'userId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['dorm'] as _i3.DormEndpoint).sendDormJoinRequest(
            session,
            params['dormId'],
            params['userId'],
          ),
        ),
      },
    );
    connectors['post'] = _i1.EndpointConnector(
      name: 'post',
      endpoint: endpoints['post']!,
      methodConnectors: {
        'createPost': _i1.MethodConnector(
          name: 'createPost',
          params: {
            'dormId': _i1.ParameterDescription(
              name: 'dormId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'userId': _i1.ParameterDescription(
              name: 'userId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'message': _i1.ParameterDescription(
              name: 'message',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['post'] as _i4.PostEndpoint).createPost(
            session,
            dormId: params['dormId'],
            userId: params['userId'],
            message: params['message'],
          ),
        ),
        'deletePost': _i1.MethodConnector(
          name: 'deletePost',
          params: {
            'postId': _i1.ParameterDescription(
              name: 'postId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'userId': _i1.ParameterDescription(
              name: 'userId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['post'] as _i4.PostEndpoint).deletePost(
            session,
            params['postId'],
            params['userId'],
          ),
        ),
      },
    );
    connectors['user'] = _i1.EndpointConnector(
      name: 'user',
      endpoint: endpoints['user']!,
      methodConnectors: {
        'getUserById': _i1.MethodConnector(
          name: 'getUserById',
          params: {
            'userId': _i1.ParameterDescription(
              name: 'userId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['user'] as _i5.UserEndpoint).getUserById(
            session,
            params['userId'],
          ),
        )
      },
    );
    modules['serverpod_auth'] = _i6.Endpoints()..initializeEndpoints(server);
  }
}
