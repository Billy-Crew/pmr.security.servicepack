-- ci_publish_master_krx_only.moon
print 'ci_publish_master_krx_only'


param = {
  interval:     10
  do_end:       false
  fn: (o)->
      -- issue:    o
      -- rec:      r1
      -- stat:     r3
      -- today:    itoday
      m = o.issue
      code = m\getCode!
      bPub = (o.stat._date[1]==o.today) and (o.stat._date[2]!=o.today)
      bPub
}

publish_master param
