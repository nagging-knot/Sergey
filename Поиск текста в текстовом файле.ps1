gci G:\* -include *.txt -recurse |
    select-string -pattern "webmoney" -casesensitive
    