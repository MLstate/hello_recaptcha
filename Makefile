OPA ?= opa

hello_recaptcha_app.js: recaptcha.js hello_recaptcha.opa hello_recaptcha_app.opa
	$(OPA) $^

hello_recaptcha_test.js: recaptcha.js hello_recaptcha_test.opa
	$(OPA) --parser classic $^

clean:
	rm -rf *.opp*
	rm -Rf hello_recaptcha_app_depends hello_recaptcha_app.js hello_recaptcha_test.js
