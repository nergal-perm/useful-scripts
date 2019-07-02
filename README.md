# useful-scripts
A bunch of scripts to automate boring tasks

## bash

### create-vim-note

Создаёт заметку с переданным в качестве первого аргумента названием. Название
следует заключать в кавычки, чтобы корректно обрабатывались пробелы в названии.
Пример:

```bash
./create-vim-note "A new note"
```

Эта команда создаст в папке с заметками файл с именем вида `YYYYMMDDHHSS A new 
note.md`

Требует наличия объявленной в `.bashrc` переменной `PERSONAL_WIKI`, ссылающейся 
на папку с заметками.
