# yt
Yandex Translation Script

Идею почерпнул из статьи http://habrahabr.ru/post/256063/ .


```
Usage:  yt [-o|-O|-z|-n] [-f from_lang] [-t to_lang] -i|-I|--|text

        -o            - output to primary selection
        -O            - output to clipboard
        -z            - usage zenity for output
        -n            - usage notify-send for output
        -f from_lang  - source language (default: auto)
        -t to_lang    - destination language (default: ru)
        -i            - input from primary selection
        -I            - input from clipboard
        --            - read standard input
        text          - text for translate (only last arg)
        -h            - this help
```

##### Зависимости
* `bash` - на нем написан сам скрипт :-D
* `sed`, `wget` - нужны всегда
* `cat` - вывод хелпа и ввод с `stdin`
* `zenity` - при использования ключа запуска `-z`
* `notify-send` - при использования ключа запуска `-n`
* `xsel` - при использовании ключей запуска `-o`, `-O`, `-i`, `-I`
