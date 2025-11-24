-- u_transit_logfiles.moon
require 'lcmmn2'

--=================================================
--  KQP 통합시세에서 주로 사용하는 캐시파일과 통계-로그 삭제
--
--

transit_logfiles = ->
    log_path = v17..'/log'
    PLOG 'transit log files removed. (tasklog, statuslog, status)'
    backup_log 'tasklog', log_path
    backup_log 'statuslog', log_path
    backup_log 'status', log_path

transit_logfiles!
