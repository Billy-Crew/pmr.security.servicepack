-- reload.moon

appname = getAppInstanceName!
return unless appname

logs = {}
reload_map =
  kqp:  ->
    require 'lib_spec'
    sm = getSpecMap!
    LOG 'reload KQP script...'
    sm\reloadup!
    LOG 'reload KQP script done'
  pmr:  ->
    LOG 'reload PMR script...'
    LOG 'reload PMR script done'
  kas:  ->
    LOG 'reload KAS script...'
    LOG 'reload KAS script done'
  broker:  ->
    LOG 'reload BROKER script...'
    LOG 'reload BROKER script done'
    print 'reload BROKER script...'
  connector:  ->
    LOG 'reload CONNECTOR script...'
    LOG 'reload CONNECTOR script done'
    print 'reload CONNECTOR script...'
  ksconnector:  ->
    LOG 'reload KSCONNECTOR script...'
    LOG 'reload KSCONNECTOR script done'
    print 'reload KSCONNECTOR script...'

fn = reload_map[appname]
fn!  if fn

-- ./vcli t_throw_sipc_s kqp 1 inject reload
