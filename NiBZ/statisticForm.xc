/**
 * Parameters of the Battle Statistics form.
 * Параметры окна статистики по клавише Tab.
 */
{
  "statisticForm": {
    // true - Enable display of battle tier.
    // true - включить отображение уровня боя.
    "showBattleTier": true,
    // true - Disable Platoon icons.
    // true - убрать отображение иконки взвода.
    "removeSquadIcon": false,
    // Display options for Team/Clan logos (see battleLoading.xc).
    // Параметры отображения иконки игрока/клана (см. battleLoading.xc).
    "clanIcon": {
      "show": false,
      "x": 0,
      "y": 6,
      "xr": 0,
      "yr": 6,
      "w": 16,
      "h": 16,
      "alpha": 90
    },
    // Display format for the left panel (macros allowed, see readme-en.txt).
    // Формат отображения для левой панели (допускаются макроподстановки, см. readme-ru.txt).
    "formatLeftNick": "<img src='xvm://res/icons/lang/{{region|RU}}/{{language|empty}}.png' width='16' height='13'> <img src='xvm://res/icons/xvm/xvm-user-{{xvm-user|none}}.png'> <font face='$FieldFont' size='13' alpha='{{alive?#FF|#80}}' color='{{c:wn8}}'>{{name%.14s~..}}</font> <font face='Consolas' size='10' color='#FFCC66'>{{clannb}}</font>",
    // Display format for the right panel (macros allowed, see readme-en.txt).
    // Формат отображения для правой панели (допускаются макроподстановки, см. readme-ru.txt).
    "formatRightNick": "<font face='Consolas' size='10' color='#FFCC66'>{{clannb}}</font> <font face='$FieldFont' size='13' alpha='{{alive?#FF|#80}}' color='{{c:wn8}}'>{{name%.14s~..}}</font> <img src='xvm://res/icons/xvm/xvm-user-{{xvm-user|none}}.png'> <img src='xvm://res/icons/lang/{{region|RU}}/{{language|empty}}.png' width='16' height='13'>",
    // Display format for the left panel (macros allowed, see readme-en.txt).
    // Формат отображения для левой панели (допускаются макроподстановки, см. readme-ru.txt).
    "formatLeftVehicle": "<font face='$FieldFont' size='13'><font color='{{c:kb|#666666}}' alpha='{{alive?#FF|#80}}'>{{kb%2d~k|--k}}</font>  <font color='{{c:wn8}}' alpha='{{alive?#FF|#80}}'>{{wn8%4d|----}}</font>  <font color='{{c:rating|#666666}}' alpha='{{alive?#FF|#80}}'>{{rating%2d~%|--%}}</font></font>",
    // Display format for the right panel (macros allowed, see readme-en.txt).
    // Формат отображения для правой панели (допускаются макроподстановки, см. readme-ru.txt).
    "formatRightVehicle": "<font face='$FieldFont' size='13'><font color='{{c:rating|#666666}}' alpha='{{alive?#FF|#80}}'>{{rating%2d~%|--%}}</font>  <font color='{{c:wn8}}' alpha='{{alive?#FF|#80}}'>{{wn8%4d|----}}</font>  <font color='{{c:kb|#666666}}' alpha='{{alive?#FF|#80}}'>{{kb%2d~k|--k}}</font></font>"
  }
}
