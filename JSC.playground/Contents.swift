import JavaScriptCore

var jsContext = JSContext()

if let jsSourcePath = Bundle.main.path(forResource: "babel.bundle", ofType: "js") {
    do {
        let jsSourceContents = try String(contentsOfFile: jsSourcePath)
        jsContext?.evaluateScript(jsSourceContents)
    } catch {
        print(error.localizedDescription)
    }
}

let result = jsContext?.evaluateScript("""
babel.transform(`
const example = (
    <div style={{ color: "red" }}>
        <h1>This is an example</h1>
    </div>
)
`).code
""")

print(result!)
