use "ponytest"
use ".."

actor Main is TestList
  new create(env: Env) => PonyTest(env, this)
  new make() => None

  fun tag tests(test: PonyTest) =>
    PrivateHTTPTests.tests(test)
    ServerErrorHandlingTests.tests(test)
    RequestParserTests.tests(test)
    HeaderTests.tests(test)
    ConnectionHandlingTests.tests(test)
    PipeliningTests.tests(test)

