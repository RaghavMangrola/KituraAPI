import Foundation
import Kitura

let router = Router()

router.get("/HelloWorld") { (request, response, next) in
    response.send("Hello Kitura World")
    next()
}

let port = Int(ProcessInfo.processInfo.environment["PORT"] ?? "8090") ?? 8090

Kitura.addHTTPServer(onPort: 8090, with: router)

Kitura.run()
