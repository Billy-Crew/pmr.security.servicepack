-- ci_publish_master_kn_all.moon
print 'ci_publish_master_kn_all'


param = {
  interval:     10
  do_end:       true
  fn: (o)->
      -- issue:    o
      -- rec:      r1
      -- stat:     r3
      -- today:    itoday
      m = o.issue
      code = m\getCode!
      bPub = (o.stat._date[1]==o.today) or (o.stat._date[2]==o.today)
      print 'code: ',bPub
      bPub
}

publish_master param
