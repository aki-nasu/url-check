#!/bin/bash
# 指定したURLにアクセスしたときのHTTP STATUSコードが、指定したコードと一致するかチェックする
# 一致： return 0, 不一致: return 1
# $1 : url
# $2 : correct status code(number)
return test `curl -o /dev/null -w %{http_code} -s $1` -eq $2