#!/bin/sh

# $1 - in folder
# $2 - file name w/o extension
# $3 - out folder
pack_mkv() {
    /usr/bin/mkvmerge --ui-language en_US \
                      --output "$3/$2.mkv" \
                      --language 0:und \
                      --language 1:und '(' "$1/$2.mp4" ')' \
                      --sub-charset 0:UTF-8 \
                      --language 0:nor \
                      --track-name 0:Norsk '(' "$1/$2.no.srt" ')' \
                      --language 0:ukr \
                      --track-name '0:Українська [erithion]' '(' "$1/$2.ukr.srt" ')' \
                      --track-order 0:0,0:1,2:0,1:0

}

in_folder='/home/artem/Side Om Side/Sesong 02/'
out_folder='/home/artem/Side Om Side/Sesong 02/pr2'

pack_mkv "$in_folder" 'S02.E01.Грилятка'                "$out_folder"
pack_mkv "$in_folder" 'S02.E02.Заснічена каналізація'   "$out_folder"
pack_mkv "$in_folder" 'S02.E03.Кузина в гостях'         "$out_folder"
pack_mkv "$in_folder" 'S02.E04.Поторочі'                "$out_folder"
pack_mkv "$in_folder" 'S02.E05.Спермограма'             "$out_folder"
pack_mkv "$in_folder" 'S02.E06.Парний проєкт'           "$out_folder"
pack_mkv "$in_folder" 'S02.E07.Вікторина Ґранлі'        "$out_folder"
pack_mkv "$in_folder" 'S02.E08.Серйозна розмова'        "$out_folder"
pack_mkv "$in_folder" 'S02.E09.Новорозлучені'           "$out_folder"
pack_mkv "$in_folder" 'S02.E10.Заручини'                "$out_folder"
