/**
* @Author: AJ Ibraheem <AJ>
* @Date:   2016-02-20T13:01:17+00:00
* @Email:  ibraheemaj@icloud.com
* @Last modified by:   AJ
* @Last modified time: 2016-02-20T13:08:43+00:00
*/

#if os(Linux)
import Glibc
#else
import Darwin
#endif

// Array sample from http://stackoverflow.com/a/24101606
extension Array {
    func sample() -> Element {
        let randomIndex = Int(rand()) % count
        return self[randomIndex]
    }
}

struct Fire {
    let content:String
    static let builtinFire = [
        "Do or Do not, there is no try 🔥",
        "To Rapid Meeting or not 🔥"
    ]

    init(_ content:String ){
        self.content = content
    }

    static func make() -> Fire {
        return Fire( Fire.builtinFire.sample() )
    }
}
