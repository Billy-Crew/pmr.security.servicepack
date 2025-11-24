-- u_clear_cachefiles.moon
require 'lcmmn2'

--=================================================
--  KQP 통합시세에서 주로 사용하는 캐시파일 삭제
--
--

clear_cachelog_files = ->
    instant_shell sf 'rm -f %s/data/fdata/_SAV_*.json', v17
    PLOG 'clear cache file (_SAV_*.json) removed'

clear_cachelog_files!
