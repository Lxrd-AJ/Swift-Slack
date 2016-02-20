/**
* @Author: AJ Ibraheem <AJ>
* @Date:   2016-02-20T12:56:45+00:00
* @Email:  ibraheemaj@icloud.com
* @Last modified by:   AJ
* @Last modified time: 2016-02-20T13:04:35+00:00
*/

#if os(Linux)
import Glibc
#else
import Darwin
#endif
import Curassow
import Inquiline

serve { request in
    if request.path == "/fire" {
        let 🔥 = Fire.make()
        return Response( .Ok, contentType:"text/plain", body:🔥.content )
    }else{ return Response(.NotFound, contentType:"text/plain", body:"Not Found Bruh") }
}
