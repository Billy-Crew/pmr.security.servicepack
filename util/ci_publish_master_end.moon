-- ci_publish_master_end.moon

--==========================================
--  CODE Injection
--      App:      kqp.1
--
--      command:  


print 'ci_publish_master_end'


param = {
  interval:     100
  do_end:       true
  fn: (o)->
      -- issue:    o
      -- rec:      r1
      -- stat:     r3
      -- today:    itoday
      false
}

publish_master param
