#!/usr/bin/env groovy

8.times {
    print "         ${it + 1}"
}
println ""
80.times {
    print((it + 1) % 10)
}
println ""
