import Foundation


let configuration = NSURLSessionConfiguration.defaultSessionConfiguration()


let session = NSURLSession(configuration: configuration)



let googlestring = "https://www.google.com/"

let googleurl = NSURL(fileURLWithPath: googlestring)

let googlerequest = NSURLRequest(URL: googleurl!)

let task = session.dataTaskWithRequest(googlerequest, completionHandler: {( data, response, error) -> Void in
    
    println("data: \(data)")
     println("response: \(response)")
     println("error: \(error)")
    
})

task.resume()