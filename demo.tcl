lappend auto_path [file join [file dirname [info script]]]

package require espeak
package require tile

ttk::style theme use clam

set Carpe_diem_en "Gather your rose by the time you may, old time is going to fly. And this same flower is smiling to you today, tomorrow will be die. \n\n"
set Carpe_diem_zh "及时采拮你的花蕾，旧时光一去不回。今天尚在微笑的花朵，明天就会在风中枯萎。"

text .t -width 50 -height 10
.t insert 0.1 $Carpe_diem_zh
.t insert 0.1 $Carpe_diem_en
pack .t

eSpeak E

ttk::button .b_en_male -text "朗读英文（男声）" -command {
    E lang en
    E speak $Carpe_diem_en
}

ttk::button .b_en_female -text "朗读英文（女声）" -command {
    E lang en+f2
    E speak $Carpe_diem_en
}

ttk::button .b_zh_male -text "朗读中文（男声）" -command {
    E lang zh
    E speak $Carpe_diem_zh
}

ttk::button .b_zh_female -text "朗读中文（女声）" -command {
    E lang zh+f2
    E speak $Carpe_diem_zh
}

pack .b_en_male
pack .b_en_female
pack .b_zh_male
pack .b_zh_female
