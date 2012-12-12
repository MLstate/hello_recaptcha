/**
 * @register {string, string, string -> void}
 */
function init(id, pubkey, theme)
{
  Recaptcha.create(pubkey,
      id,
      {
        theme: theme,
        callback: Recaptcha.focus_response_field
      }
  );
}

/**
 * @register{-> string}
 */
function get_challenge()
{
    return (Recaptcha.get_challenge()||"")
}

/**
 * @register {-> string}
 */
function get_response()
{
    return (Recaptcha.get_response()||"")
}

/**
 * @register {-> void}
 */
function destroy()
{
    Recaptcha.destroy();
}

/**
 * @register { -> void}
 */
function reload()
{
    Recaptcha.reload();
}
