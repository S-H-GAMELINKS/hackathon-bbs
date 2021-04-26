const libs = require.context('.', true, /_lib\.js$/)
libs.keys().forEach(libs)