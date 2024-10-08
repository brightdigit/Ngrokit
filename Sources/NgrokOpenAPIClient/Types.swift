// swift-format-ignore-file

@_spi(Generated) import OpenAPIRuntime

#if os(Linux)
  @preconcurrency import struct Foundation.URL
  @preconcurrency import struct Foundation.Data
  @preconcurrency import struct Foundation.Date
#else
  import struct Foundation.URL
  import struct Foundation.Data
  import struct Foundation.Date
#endif
/// A type that performs HTTP operations defined by the OpenAPI document.
package protocol APIProtocol: Sendable {
  /// Access the root API resource of a running ngrok agent
  ///
  /// - Remark: HTTP `GET /api`.
  /// - Remark: Generated from `#/paths//api/get`.
  func get_sol_api(_ input: Operations.get_sol_api.Input) async throws
    -> Operations.get_sol_api.Output
  /// List Tunnels
  ///
  /// - Remark: HTTP `GET /api/tunnels`.
  /// - Remark: Generated from `#/paths//api/tunnels/get(listTunnels)`.
  func listTunnels(_ input: Operations.listTunnels.Input) async throws
    -> Operations.listTunnels.Output
  /// Start tunnel
  ///
  /// - Remark: HTTP `POST /api/tunnels`.
  /// - Remark: Generated from `#/paths//api/tunnels/post(startTunnel)`.
  func startTunnel(_ input: Operations.startTunnel.Input) async throws
    -> Operations.startTunnel.Output
  /// Tunnel detail
  ///
  /// - Remark: HTTP `GET /api/tunnels/{name}`.
  /// - Remark: Generated from `#/paths//api/tunnels/{name}/get(getTunnel)`.
  func getTunnel(_ input: Operations.getTunnel.Input) async throws -> Operations.getTunnel.Output
  /// Stop tunnel
  ///
  /// - Remark: HTTP `DELETE /api/tunnels/{name}`.
  /// - Remark: Generated from `#/paths//api/tunnels/{name}/delete(stopTunnel)`.
  func stopTunnel(_ input: Operations.stopTunnel.Input) async throws -> Operations.stopTunnel.Output
}

/// Convenience overloads for operation inputs.
extension APIProtocol {
  /// Access the root API resource of a running ngrok agent
  ///
  /// - Remark: HTTP `GET /api`.
  /// - Remark: Generated from `#/paths//api/get`.
  package func get_sol_api() async throws -> Operations.get_sol_api.Output {
    try await get_sol_api(Operations.get_sol_api.Input())
  }
  /// List Tunnels
  ///
  /// - Remark: HTTP `GET /api/tunnels`.
  /// - Remark: Generated from `#/paths//api/tunnels/get(listTunnels)`.
  package func listTunnels(headers: Operations.listTunnels.Input.Headers = .init()) async throws
    -> Operations.listTunnels.Output
  { try await listTunnels(Operations.listTunnels.Input(headers: headers)) }
  /// Start tunnel
  ///
  /// - Remark: HTTP `POST /api/tunnels`.
  /// - Remark: Generated from `#/paths//api/tunnels/post(startTunnel)`.
  package func startTunnel(
    headers: Operations.startTunnel.Input.Headers = .init(),
    body: Operations.startTunnel.Input.Body
  ) async throws -> Operations.startTunnel.Output {
    try await startTunnel(Operations.startTunnel.Input(headers: headers, body: body))
  }
  /// Tunnel detail
  ///
  /// - Remark: HTTP `GET /api/tunnels/{name}`.
  /// - Remark: Generated from `#/paths//api/tunnels/{name}/get(getTunnel)`.
  package func getTunnel(
    path: Operations.getTunnel.Input.Path,
    headers: Operations.getTunnel.Input.Headers = .init()
  ) async throws -> Operations.getTunnel.Output {
    try await getTunnel(Operations.getTunnel.Input(path: path, headers: headers))
  }
  /// Stop tunnel
  ///
  /// - Remark: HTTP `DELETE /api/tunnels/{name}`.
  /// - Remark: Generated from `#/paths//api/tunnels/{name}/delete(stopTunnel)`.
  package func stopTunnel(path: Operations.stopTunnel.Input.Path) async throws
    -> Operations.stopTunnel.Output
  { try await stopTunnel(Operations.stopTunnel.Input(path: path)) }
}

/// Server URLs defined in the OpenAPI document.
package enum Servers {
  /// Default Local Server
  package static func server1() throws -> Foundation.URL {
    try Foundation.URL(validatingOpenAPIServerURL: "http://127.0.0.1:4040", variables: [])
  }
}

/// Types generated from the components section of the OpenAPI document.
package enum Components {
  /// Types generated from the `#/components/schemas` section of the OpenAPI document.
  package enum Schemas {
    /// - Remark: Generated from `#/components/schemas/TunnelList`.
    package struct TunnelList: Codable, Hashable, Sendable {
      /// - Remark: Generated from `#/components/schemas/TunnelList/tunnels`.
      package var tunnels: [Components.Schemas.TunnelResponse]
      /// Creates a new `TunnelList`.
      ///
      /// - Parameters:
      ///   - tunnels:
      package init(tunnels: [Components.Schemas.TunnelResponse]) { self.tunnels = tunnels }
      package enum CodingKeys: String, CodingKey { case tunnels }
    }
    /// - Remark: Generated from `#/components/schemas/TunnelRequest`.
    package struct TunnelRequest: Codable, Hashable, Sendable {
      /// - Remark: Generated from `#/components/schemas/TunnelRequest/addr`.
      package var addr: Swift.String
      /// - Remark: Generated from `#/components/schemas/TunnelRequest/proto`.
      package var proto: Swift.String
      /// - Remark: Generated from `#/components/schemas/TunnelRequest/name`.
      package var name: Swift.String
      /// Creates a new `TunnelRequest`.
      ///
      /// - Parameters:
      ///   - addr:
      ///   - proto:
      ///   - name:
      package init(addr: Swift.String, proto: Swift.String, name: Swift.String) {
        self.addr = addr
        self.proto = proto
        self.name = name
      }
      package enum CodingKeys: String, CodingKey {
        case addr
        case proto
        case name
      }
    }
    /// - Remark: Generated from `#/components/schemas/TunnelResponse`.
    package struct TunnelResponse: Codable, Hashable, Sendable {
      /// - Remark: Generated from `#/components/schemas/TunnelResponse/name`.
      package var name: Swift.String
      /// - Remark: Generated from `#/components/schemas/TunnelResponse/uri`.
      package var uri: Swift.String?
      /// - Remark: Generated from `#/components/schemas/TunnelResponse/public_url`.
      package var public_url: Swift.String
      /// - Remark: Generated from `#/components/schemas/TunnelResponse/proto`.
      package var proto: Swift.String?
      /// - Remark: Generated from `#/components/schemas/TunnelResponse/config`.
      package struct configPayload: Codable, Hashable, Sendable {
        /// - Remark: Generated from `#/components/schemas/TunnelResponse/config/addr`.
        package var addr: Swift.String
        /// - Remark: Generated from `#/components/schemas/TunnelResponse/config/inspect`.
        package var inspect: Swift.Bool
        /// Creates a new `configPayload`.
        ///
        /// - Parameters:
        ///   - addr:
        ///   - inspect:
        package init(addr: Swift.String, inspect: Swift.Bool) {
          self.addr = addr
          self.inspect = inspect
        }
        package enum CodingKeys: String, CodingKey {
          case addr
          case inspect
        }
      }
      /// - Remark: Generated from `#/components/schemas/TunnelResponse/config`.
      package var config: Components.Schemas.TunnelResponse.configPayload
      /// - Remark: Generated from `#/components/schemas/TunnelResponse/metrics`.
      package struct metricsPayload: Codable, Hashable, Sendable {
        /// - Remark: Generated from `#/components/schemas/TunnelResponse/metrics/conns`.
        package struct connsPayload: Codable, Hashable, Sendable {
          /// - Remark: Generated from `#/components/schemas/TunnelResponse/metrics/conns/count`.
          package var count: Swift.Int
          /// - Remark: Generated from `#/components/schemas/TunnelResponse/metrics/conns/gauge`.
          package var gauge: Swift.Int
          /// - Remark: Generated from `#/components/schemas/TunnelResponse/metrics/conns/rate1`.
          package var rate1: Swift.Int
          /// - Remark: Generated from `#/components/schemas/TunnelResponse/metrics/conns/rate5`.
          package var rate5: Swift.Int
          /// - Remark: Generated from `#/components/schemas/TunnelResponse/metrics/conns/rate15`.
          package var rate15: Swift.Int
          /// - Remark: Generated from `#/components/schemas/TunnelResponse/metrics/conns/p50`.
          package var p50: Swift.Int
          /// - Remark: Generated from `#/components/schemas/TunnelResponse/metrics/conns/p90`.
          package var p90: Swift.Int
          /// - Remark: Generated from `#/components/schemas/TunnelResponse/metrics/conns/p95`.
          package var p95: Swift.Int
          /// - Remark: Generated from `#/components/schemas/TunnelResponse/metrics/conns/p99`.
          package var p99: Swift.Int
          /// Creates a new `connsPayload`.
          ///
          /// - Parameters:
          ///   - count:
          ///   - gauge:
          ///   - rate1:
          ///   - rate5:
          ///   - rate15:
          ///   - p50:
          ///   - p90:
          ///   - p95:
          ///   - p99:
          package init(
            count: Swift.Int,
            gauge: Swift.Int,
            rate1: Swift.Int,
            rate5: Swift.Int,
            rate15: Swift.Int,
            p50: Swift.Int,
            p90: Swift.Int,
            p95: Swift.Int,
            p99: Swift.Int
          ) {
            self.count = count
            self.gauge = gauge
            self.rate1 = rate1
            self.rate5 = rate5
            self.rate15 = rate15
            self.p50 = p50
            self.p90 = p90
            self.p95 = p95
            self.p99 = p99
          }
          package enum CodingKeys: String, CodingKey {
            case count
            case gauge
            case rate1
            case rate5
            case rate15
            case p50
            case p90
            case p95
            case p99
          }
        }
        /// - Remark: Generated from `#/components/schemas/TunnelResponse/metrics/conns`.
        package var conns: Components.Schemas.TunnelResponse.metricsPayload.connsPayload?
        /// - Remark: Generated from `#/components/schemas/TunnelResponse/metrics/http`.
        package struct httpPayload: Codable, Hashable, Sendable {
          /// - Remark: Generated from `#/components/schemas/TunnelResponse/metrics/http/count`.
          package var count: Swift.Int
          /// - Remark: Generated from `#/components/schemas/TunnelResponse/metrics/http/rate1`.
          package var rate1: Swift.Int
          /// - Remark: Generated from `#/components/schemas/TunnelResponse/metrics/http/rate5`.
          package var rate5: Swift.Int
          /// - Remark: Generated from `#/components/schemas/TunnelResponse/metrics/http/rate15`.
          package var rate15: Swift.Int
          /// - Remark: Generated from `#/components/schemas/TunnelResponse/metrics/http/p50`.
          package var p50: Swift.Int
          /// - Remark: Generated from `#/components/schemas/TunnelResponse/metrics/http/p90`.
          package var p90: Swift.Int
          /// - Remark: Generated from `#/components/schemas/TunnelResponse/metrics/http/p95`.
          package var p95: Swift.Int
          /// - Remark: Generated from `#/components/schemas/TunnelResponse/metrics/http/p99`.
          package var p99: Swift.Int
          /// Creates a new `httpPayload`.
          ///
          /// - Parameters:
          ///   - count:
          ///   - rate1:
          ///   - rate5:
          ///   - rate15:
          ///   - p50:
          ///   - p90:
          ///   - p95:
          ///   - p99:
          package init(
            count: Swift.Int,
            rate1: Swift.Int,
            rate5: Swift.Int,
            rate15: Swift.Int,
            p50: Swift.Int,
            p90: Swift.Int,
            p95: Swift.Int,
            p99: Swift.Int
          ) {
            self.count = count
            self.rate1 = rate1
            self.rate5 = rate5
            self.rate15 = rate15
            self.p50 = p50
            self.p90 = p90
            self.p95 = p95
            self.p99 = p99
          }
          package enum CodingKeys: String, CodingKey {
            case count
            case rate1
            case rate5
            case rate15
            case p50
            case p90
            case p95
            case p99
          }
        }
        /// - Remark: Generated from `#/components/schemas/TunnelResponse/metrics/http`.
        package var http: Components.Schemas.TunnelResponse.metricsPayload.httpPayload?
        /// Creates a new `metricsPayload`.
        ///
        /// - Parameters:
        ///   - conns:
        ///   - http:
        package init(
          conns: Components.Schemas.TunnelResponse.metricsPayload.connsPayload? = nil,
          http: Components.Schemas.TunnelResponse.metricsPayload.httpPayload? = nil
        ) {
          self.conns = conns
          self.http = http
        }
        package enum CodingKeys: String, CodingKey {
          case conns
          case http
        }
      }
      /// - Remark: Generated from `#/components/schemas/TunnelResponse/metrics`.
      package var metrics: Components.Schemas.TunnelResponse.metricsPayload?
      /// Creates a new `TunnelResponse`.
      ///
      /// - Parameters:
      ///   - name:
      ///   - uri:
      ///   - public_url:
      ///   - proto:
      ///   - config:
      ///   - metrics:
      package init(
        name: Swift.String,
        uri: Swift.String? = nil,
        public_url: Swift.String,
        proto: Swift.String? = nil,
        config: Components.Schemas.TunnelResponse.configPayload,
        metrics: Components.Schemas.TunnelResponse.metricsPayload? = nil
      ) {
        self.name = name
        self.uri = uri
        self.public_url = public_url
        self.proto = proto
        self.config = config
        self.metrics = metrics
      }
      package enum CodingKeys: String, CodingKey {
        case name
        case uri
        case public_url
        case proto
        case config
        case metrics
      }
    }
  }
  /// Types generated from the `#/components/parameters` section of the OpenAPI document.
  package enum Parameters {}
  /// Types generated from the `#/components/requestBodies` section of the OpenAPI document.
  package enum RequestBodies {}
  /// Types generated from the `#/components/responses` section of the OpenAPI document.
  package enum Responses {}
  /// Types generated from the `#/components/headers` section of the OpenAPI document.
  package enum Headers {}
}

/// API operations, with input and output types, generated from `#/paths` in the OpenAPI document.
package enum Operations {
  /// Access the root API resource of a running ngrok agent
  ///
  /// - Remark: HTTP `GET /api`.
  /// - Remark: Generated from `#/paths//api/get`.
  package enum get_sol_api {
    package static let id: Swift.String = "get/api"
    package struct Input: Sendable, Hashable {
      /// Creates a new `Input`.
      package init() {}
    }
    @frozen package enum Output: Sendable, Hashable {
      package struct Ok: Sendable, Hashable {
        /// Creates a new `Ok`.
        package init() {}
      }
      /// Successful response
      ///
      /// - Remark: Generated from `#/paths//api/get/responses/200`.
      ///
      /// HTTP response code: `200 ok`.
      case ok(Operations.get_sol_api.Output.Ok)
      /// The associated value of the enum case if `self` is `.ok`.
      ///
      /// - Throws: An error if `self` is not `.ok`.
      /// - SeeAlso: `.ok`.
      package var ok: Operations.get_sol_api.Output.Ok {
        get throws {
          switch self { case let .ok(response): return response default:
            try throwUnexpectedResponseStatus(expectedStatus: "ok", response: self)
          }
        }
      }
      /// Undocumented response.
      ///
      /// A response with a code that is not documented in the OpenAPI document.
      case undocumented(statusCode: Swift.Int, OpenAPIRuntime.UndocumentedPayload)
    }
  }
  /// List Tunnels
  ///
  /// - Remark: HTTP `GET /api/tunnels`.
  /// - Remark: Generated from `#/paths//api/tunnels/get(listTunnels)`.
  package enum listTunnels {
    package static let id: Swift.String = "listTunnels"
    package struct Input: Sendable, Hashable {
      /// - Remark: Generated from `#/paths/api/tunnels/GET/header`.
      package struct Headers: Sendable, Hashable {
        package var accept:
          [OpenAPIRuntime.AcceptHeaderContentType<Operations.listTunnels.AcceptableContentType>]
        /// Creates a new `Headers`.
        ///
        /// - Parameters:
        ///   - accept:
        package init(
          accept: [OpenAPIRuntime.AcceptHeaderContentType<
            Operations.listTunnels.AcceptableContentType
          >] = .defaultValues()
        ) { self.accept = accept }
      }
      package var headers: Operations.listTunnels.Input.Headers
      /// Creates a new `Input`.
      ///
      /// - Parameters:
      ///   - headers:
      package init(headers: Operations.listTunnels.Input.Headers = .init()) {
        self.headers = headers
      }
    }
    @frozen package enum Output: Sendable, Hashable {
      package struct Ok: Sendable, Hashable {
        /// - Remark: Generated from `#/paths/api/tunnels/GET/responses/200/content`.
        @frozen package enum Body: Sendable, Hashable {
          /// - Remark: Generated from `#/paths/api/tunnels/GET/responses/200/content/application\/json`.
          case json(Components.Schemas.TunnelList)
          /// The associated value of the enum case if `self` is `.json`.
          ///
          /// - Throws: An error if `self` is not `.json`.
          /// - SeeAlso: `.json`.
          package var json: Components.Schemas.TunnelList {
            get throws {
              switch self { case let .json(body): return body
              }
            }
          }
        }
        /// Received HTTP response body
        package var body: Operations.listTunnels.Output.Ok.Body
        /// Creates a new `Ok`.
        ///
        /// - Parameters:
        ///   - body: Received HTTP response body
        package init(body: Operations.listTunnels.Output.Ok.Body) { self.body = body }
      }
      /// Successful response
      ///
      /// - Remark: Generated from `#/paths//api/tunnels/get(listTunnels)/responses/200`.
      ///
      /// HTTP response code: `200 ok`.
      case ok(Operations.listTunnels.Output.Ok)
      /// The associated value of the enum case if `self` is `.ok`.
      ///
      /// - Throws: An error if `self` is not `.ok`.
      /// - SeeAlso: `.ok`.
      package var ok: Operations.listTunnels.Output.Ok {
        get throws {
          switch self { case let .ok(response): return response default:
            try throwUnexpectedResponseStatus(expectedStatus: "ok", response: self)
          }
        }
      }
      /// Undocumented response.
      ///
      /// A response with a code that is not documented in the OpenAPI document.
      case undocumented(statusCode: Swift.Int, OpenAPIRuntime.UndocumentedPayload)
    }
    @frozen package enum AcceptableContentType: AcceptableProtocol {
      case json
      case other(Swift.String)
      package init?(rawValue: Swift.String) {
        switch rawValue.lowercased() { case "application/json": self = .json default:
          self = .other(rawValue)
        }
      }
      package var rawValue: Swift.String {
        switch self { case let .other(string): return string case .json: return "application/json"
        }
      }
      package static var allCases: [Self] { [.json] }
    }
  }
  /// Start tunnel
  ///
  /// - Remark: HTTP `POST /api/tunnels`.
  /// - Remark: Generated from `#/paths//api/tunnels/post(startTunnel)`.
  package enum startTunnel {
    package static let id: Swift.String = "startTunnel"
    package struct Input: Sendable, Hashable {
      /// - Remark: Generated from `#/paths/api/tunnels/POST/header`.
      package struct Headers: Sendable, Hashable {
        package var accept:
          [OpenAPIRuntime.AcceptHeaderContentType<Operations.startTunnel.AcceptableContentType>]
        /// Creates a new `Headers`.
        ///
        /// - Parameters:
        ///   - accept:
        package init(
          accept: [OpenAPIRuntime.AcceptHeaderContentType<
            Operations.startTunnel.AcceptableContentType
          >] = .defaultValues()
        ) { self.accept = accept }
      }
      package var headers: Operations.startTunnel.Input.Headers
      /// - Remark: Generated from `#/paths/api/tunnels/POST/requestBody`.
      @frozen package enum Body: Sendable, Hashable {
        /// - Remark: Generated from `#/paths/api/tunnels/POST/requestBody/content/application\/json`.
        case json(Components.Schemas.TunnelRequest)
      }
      package var body: Operations.startTunnel.Input.Body
      /// Creates a new `Input`.
      ///
      /// - Parameters:
      ///   - headers:
      ///   - body:
      package init(
        headers: Operations.startTunnel.Input.Headers = .init(),
        body: Operations.startTunnel.Input.Body
      ) {
        self.headers = headers
        self.body = body
      }
    }
    @frozen package enum Output: Sendable, Hashable {
      package struct Created: Sendable, Hashable {
        /// - Remark: Generated from `#/paths/api/tunnels/POST/responses/201/content`.
        @frozen package enum Body: Sendable, Hashable {
          /// - Remark: Generated from `#/paths/api/tunnels/POST/responses/201/content/application\/json`.
          case json(Components.Schemas.TunnelResponse)
          /// The associated value of the enum case if `self` is `.json`.
          ///
          /// - Throws: An error if `self` is not `.json`.
          /// - SeeAlso: `.json`.
          package var json: Components.Schemas.TunnelResponse {
            get throws {
              switch self { case let .json(body): return body
              }
            }
          }
        }
        /// Received HTTP response body
        package var body: Operations.startTunnel.Output.Created.Body
        /// Creates a new `Created`.
        ///
        /// - Parameters:
        ///   - body: Received HTTP response body
        package init(body: Operations.startTunnel.Output.Created.Body) { self.body = body }
      }
      /// Tunnel started successfully
      ///
      /// - Remark: Generated from `#/paths//api/tunnels/post(startTunnel)/responses/201`.
      ///
      /// HTTP response code: `201 created`.
      case created(Operations.startTunnel.Output.Created)
      /// The associated value of the enum case if `self` is `.created`.
      ///
      /// - Throws: An error if `self` is not `.created`.
      /// - SeeAlso: `.created`.
      package var created: Operations.startTunnel.Output.Created {
        get throws {
          switch self { case let .created(response): return response default:
            try throwUnexpectedResponseStatus(expectedStatus: "created", response: self)
          }
        }
      }
      /// Undocumented response.
      ///
      /// A response with a code that is not documented in the OpenAPI document.
      case undocumented(statusCode: Swift.Int, OpenAPIRuntime.UndocumentedPayload)
    }
    @frozen package enum AcceptableContentType: AcceptableProtocol {
      case json
      case other(Swift.String)
      package init?(rawValue: Swift.String) {
        switch rawValue.lowercased() { case "application/json": self = .json default:
          self = .other(rawValue)
        }
      }
      package var rawValue: Swift.String {
        switch self { case let .other(string): return string case .json: return "application/json"
        }
      }
      package static var allCases: [Self] { [.json] }
    }
  }
  /// Tunnel detail
  ///
  /// - Remark: HTTP `GET /api/tunnels/{name}`.
  /// - Remark: Generated from `#/paths//api/tunnels/{name}/get(getTunnel)`.
  package enum getTunnel {
    package static let id: Swift.String = "getTunnel"
    package struct Input: Sendable, Hashable {
      /// - Remark: Generated from `#/paths/api/tunnels/{name}/GET/path`.
      package struct Path: Sendable, Hashable {
        /// - Remark: Generated from `#/paths/api/tunnels/{name}/GET/path/name`.
        package var name: Swift.String
        /// Creates a new `Path`.
        ///
        /// - Parameters:
        ///   - name:
        package init(name: Swift.String) { self.name = name }
      }
      package var path: Operations.getTunnel.Input.Path
      /// - Remark: Generated from `#/paths/api/tunnels/{name}/GET/header`.
      package struct Headers: Sendable, Hashable {
        package var accept:
          [OpenAPIRuntime.AcceptHeaderContentType<Operations.getTunnel.AcceptableContentType>]
        /// Creates a new `Headers`.
        ///
        /// - Parameters:
        ///   - accept:
        package init(
          accept: [OpenAPIRuntime.AcceptHeaderContentType<
            Operations.getTunnel.AcceptableContentType
          >] = .defaultValues()
        ) { self.accept = accept }
      }
      package var headers: Operations.getTunnel.Input.Headers
      /// Creates a new `Input`.
      ///
      /// - Parameters:
      ///   - path:
      ///   - headers:
      package init(
        path: Operations.getTunnel.Input.Path,
        headers: Operations.getTunnel.Input.Headers = .init()
      ) {
        self.path = path
        self.headers = headers
      }
    }
    @frozen package enum Output: Sendable, Hashable {
      package struct Ok: Sendable, Hashable {
        /// - Remark: Generated from `#/paths/api/tunnels/{name}/GET/responses/200/content`.
        @frozen package enum Body: Sendable, Hashable {
          /// - Remark: Generated from `#/paths/api/tunnels/{name}/GET/responses/200/content/application\/json`.
          case json(OpenAPIRuntime.OpenAPIValueContainer)
          /// The associated value of the enum case if `self` is `.json`.
          ///
          /// - Throws: An error if `self` is not `.json`.
          /// - SeeAlso: `.json`.
          package var json: OpenAPIRuntime.OpenAPIValueContainer {
            get throws {
              switch self { case let .json(body): return body
              }
            }
          }
        }
        /// Received HTTP response body
        package var body: Operations.getTunnel.Output.Ok.Body
        /// Creates a new `Ok`.
        ///
        /// - Parameters:
        ///   - body: Received HTTP response body
        package init(body: Operations.getTunnel.Output.Ok.Body) { self.body = body }
      }
      /// Successful response
      ///
      /// - Remark: Generated from `#/paths//api/tunnels/{name}/get(getTunnel)/responses/200`.
      ///
      /// HTTP response code: `200 ok`.
      case ok(Operations.getTunnel.Output.Ok)
      /// The associated value of the enum case if `self` is `.ok`.
      ///
      /// - Throws: An error if `self` is not `.ok`.
      /// - SeeAlso: `.ok`.
      package var ok: Operations.getTunnel.Output.Ok {
        get throws {
          switch self { case let .ok(response): return response default:
            try throwUnexpectedResponseStatus(expectedStatus: "ok", response: self)
          }
        }
      }
      /// Undocumented response.
      ///
      /// A response with a code that is not documented in the OpenAPI document.
      case undocumented(statusCode: Swift.Int, OpenAPIRuntime.UndocumentedPayload)
    }
    @frozen package enum AcceptableContentType: AcceptableProtocol {
      case json
      case other(Swift.String)
      package init?(rawValue: Swift.String) {
        switch rawValue.lowercased() { case "application/json": self = .json default:
          self = .other(rawValue)
        }
      }
      package var rawValue: Swift.String {
        switch self { case let .other(string): return string case .json: return "application/json"
        }
      }
      package static var allCases: [Self] { [.json] }
    }
  }
  /// Stop tunnel
  ///
  /// - Remark: HTTP `DELETE /api/tunnels/{name}`.
  /// - Remark: Generated from `#/paths//api/tunnels/{name}/delete(stopTunnel)`.
  package enum stopTunnel {
    package static let id: Swift.String = "stopTunnel"
    package struct Input: Sendable, Hashable {
      /// - Remark: Generated from `#/paths/api/tunnels/{name}/DELETE/path`.
      package struct Path: Sendable, Hashable {
        /// - Remark: Generated from `#/paths/api/tunnels/{name}/DELETE/path/name`.
        package var name: Swift.String
        /// Creates a new `Path`.
        ///
        /// - Parameters:
        ///   - name:
        package init(name: Swift.String) { self.name = name }
      }
      package var path: Operations.stopTunnel.Input.Path
      /// Creates a new `Input`.
      ///
      /// - Parameters:
      ///   - path:
      package init(path: Operations.stopTunnel.Input.Path) { self.path = path }
    }
    @frozen package enum Output: Sendable, Hashable {
      package struct NoContent: Sendable, Hashable {
        /// Creates a new `NoContent`.
        package init() {}
      }
      /// Tunnel stopped successfully
      ///
      /// - Remark: Generated from `#/paths//api/tunnels/{name}/delete(stopTunnel)/responses/204`.
      ///
      /// HTTP response code: `204 noContent`.
      case noContent(Operations.stopTunnel.Output.NoContent)
      /// The associated value of the enum case if `self` is `.noContent`.
      ///
      /// - Throws: An error if `self` is not `.noContent`.
      /// - SeeAlso: `.noContent`.
      package var noContent: Operations.stopTunnel.Output.NoContent {
        get throws {
          switch self { case let .noContent(response): return response default:
            try throwUnexpectedResponseStatus(expectedStatus: "noContent", response: self)
          }
        }
      }
      /// Undocumented response.
      ///
      /// A response with a code that is not documented in the OpenAPI document.
      case undocumented(statusCode: Swift.Int, OpenAPIRuntime.UndocumentedPayload)
    }
  }
}
