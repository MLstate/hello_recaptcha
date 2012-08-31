OPA ?= opa

hello_recaptcha_app.js: recaptcha.js hello_recaptcha.opa hello_recaptcha_app.opa
	$(OPA) $^

clean:
	rm -rf *.opp*
	rm -Rf hello_recaptcha_app_depends hello_recaptcha_app.js
