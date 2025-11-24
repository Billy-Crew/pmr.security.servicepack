-- u_clearlogfiles.moon
require 'lcmmn2'

--=================================================
--  KQP 통합시세에서 주로 사용하는 캐시파일과 통계-로그 삭제
--
--

clear_cachelog_files = ->
    instant_shell sf 'rm -f %s/data/fdata/_SAV_*.json', v17
    PLOG 'clear cache file (_SAV_*.json) removed'
    log_path = v17..'/log'
    backup_log 'tasklog', log_path
    backup_log 'statuslog', log_path
    backup_log 'status', log_path

clear_cachelog_files!
