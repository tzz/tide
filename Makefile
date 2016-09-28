runtest:
	cf-agent -KI -f ./test/uninstall.cf
	test \! -e /tmp/tide/sketches/system/motd
	cf-agent -KI -f ./test/install.cf
	test -f /tmp/tide/sketches/system/motd/sketch.json
	test -f /tmp/tide/sketches/system/motd/main.cf
	cf-agent -KI -f ./test/run.cf
