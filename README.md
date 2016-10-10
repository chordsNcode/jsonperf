# jsonperf

This is a project inspired by a [blog post by Apple](https://developer.apple.com/swift/blog/?id=37) about JSON parsing. The idea is to compare popular JSON parsers and native parsing against each other using Xcode's performance test (as part of the XCTest suite).


----
## how it's done
see [NormalPerfTest.swift](https://github.com/chordsNcode/jsonperf/blob/master/JsonPerfTests/NormalPerfTest.swift)

    func testNormalPerformance() {
        self.measure {
            do {
                guard let json = try JSONSerialization.jsonObject(with: self.data!) as? MyJSON,
                    let items = json["items"] as? [MyJSON] else {
                        XCTFail("bad JSON")
                        return
                }

                _ = try items.map{
                    try Repo(myJson: $0)
                }
            } catch {
                XCTFail("bad json")
            }
        }
    }

The idea is to parse data into a JSON object and then pass that object to the initializer. Each JSON parsing package/technique has its own test class (because of some naming overlaps between imports). The data used to generate the JSON is a computed variable in an extension on XCTestCase. Doing this allows the tests to isolate the steps of creating an object *after* a network call has been made.

Using the ** *measure* ** block allows me to run the test ten times and create a baseline with a standard deviation. These numbers then allow us, as developers, to compare the packages and choose which makes the most sense for our projects.


----
## check it out yourself!

I encourage you to pull this project and check out the results (I was a bit surprised)! In order to do so, be sure you have [Cocoapods](https://cocoapods.org/) installed -- as that's how I imported the parsing packages.  Simply pull the code and:

    $ cd ~/path/to/source
    $ pod install


----
## packages used in this project

* [SwiftyJSON](https://github.com/SwiftyJSON/SwiftyJSON)
* [Freddy](https://github.com/bignerdranch/Freddy)
* [Gloss](https://github.com/hkellaway/Gloss)
* [Genome](https://github.com/LoganWright/Genome)
* [JSONSerialization](https://developer.apple.com/reference/foundation/jsonserialization)

If I've missed a package you'd like to be tested either create an issue, pull request, or send me a tweet [@mdiasdev](https://twitter.com/mdiasdev).
