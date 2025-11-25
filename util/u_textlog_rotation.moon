-- u_textlog_rotation.moon
require 'lcmmn2'

itoday = getYYYYMMDD!   -- 오늘날짜 가져오기 (as Number)

-- 파일 오퍼레이션:  증적로그 삭제
do_file_op
  id:       '증적로그 삭제'
  gap:      -2
  pattern:  v17..'/data/dlog/*.idx'
  extract_date: (v)->
      va = split v,'[_/.]'
      idate = tonumber va[#va - 2]
      idate
  fn: (fname,obj)->
      fname2 = replace_ext fname, 'dat'
      PLOG '    on delete file: %d < %d [%s]',obj.day,obj.margin_date,fname
      PLOG '    on delete file: %d < %d [%s]',obj.day,obj.margin_date,fname2
      os.remove fname2
      os.remove fname

-- 파일 오퍼레이션:  텍스트로그파일 삭제
do_file_op
  id:       '로그파일 삭제'
  gap:      -12
  pattern:  v17..'/log/*.log'
  extract_date: (v)->
      va = split v,'[/.]'
      idate = (tonumber va[#va - 3]) or (tonumber va[#va - 2]) or itoday
      idate
  fn: (fname,obj)->
      PLOG '    on delete file: %d < %d [%s]',obj.day,obj.margin_date,fname
      os.remove fname
