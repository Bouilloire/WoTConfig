/**
 * Parameters of the Battle Loading screen.
 * Параметры экрана загрузки боя.
 */
{
  "battleLoading": {
    // Format of clock on the Battle Loading Screen.
    // Формат часов на экране загрузки боя.
    // http://php.net/date
    "clockFormat": "H:i:s",
    // true - Enable display of battle tier.
    // true - включить отображение уровня боя.
    "showBattleTier": true,
    // true - Disable Platoon icons. This blank space can house, for example, clan logos.
    // true - убрать отображение иконки взвода. На пустое поле можно вывести, например, иконку клана.
    "removeSquadIcon": false,
    // Display options for Team/Clan logos.
    // Параметры отображения иконки игрока/клана.
    "clanIcon": {
      // false - Disable Team/Clan logos in Battle Loading Screen.
      // false - не отображать иконки игрока/клана в окне загрузки боя.
      "show": false,
      // Position on the X axis, relative to the vehicle icon.
      // Положение по оси X относительно иконки танка.
      "x": 0,
      // Position on the Y axis, relative to the vehicle icon.
      // Положение по оси Y относительно иконки танка.
      "y": 6,
      // Position on the X axis for right side (positive values run to the *inside* of the table).
      // Положение по оси X для правых ушей (положительные значения поместят иконку *внутрь* панели).
      "xr": 0,
      // Position on the Y axis for right side.
      // Положение по оси Y для правых ушей.
      "yr": 6,
      // Width of the Team/Clan logo.
      // Ширина иконки игрока/клана.
      "w": 16,
      // Height of the Team/Clan logo.
      // Высота иконки игрока/клана.
      "h": 16,
      // Transparency of the Team/Clan logo.
      // Прозрачность иконки игрока/клана.
      "alpha": 90
    },
    // false - disable highlight of icons during battle start depends on ready state.
    // false - отключить затемнение иконки не загрузившегося игрока.
    "darkenNotReadyIcon": true,
    // Display format for the left panel (macros allowed, see readme-en.txt).
    // Формат отображения для левой панели (допускаются макроподстановки, см. readme-ru.txt).
    "formatLeftNick": "<img src='xvm://res/icons/lang/{{region|RU}}/{{language|empty}}.png' width='16' height='13'> <img src='xvm://res/icons/xvm/xvm-user-{{xvm-user|none}}.png'> <font face='$FieldFont' size='13' color='{{c:wn8}}'>{{name%.14s~..}}</font>  <font face='Consolas' size='10' color='#FFCC66'>{{clannb}}</font>",
    // Display format for the right panel (macros allowed, see readme-en.txt).
    // Формат отображения для правой панели (допускаются макроподстановки, см. readme-ru.txt).
    "formatRightNick": "<font face='Consolas' size='10' color='#FFCC66'>{{clannb}}</font> <font face='$FieldFont' size='13' color='{{c:wn8}}'>{{name%.14s~..}}</font> <img src='xvm://res/icons/xvm/xvm-user-{{xvm-user|none}}.png'> <img src='xvm://res/icons/lang/{{region|RU}}/{{language|empty}}.png' width='16' height='13'>",
    // Display format for the left panel (macros allowed, see readme-en.txt).
    // Формат отображения для левой панели (допускаются макроподстановки, см. readme-ru.txt).
    "formatLeftVehicle": "<font face='$FieldFont' size='14'><font color='{{c:kb|#666666}}'>{{kb%2d~k|--k}}</font>   <font color='{{c:xwn8}}'>{{wn8%4d|----}}</font>  <font color='{{c:rating|#666666}}'>{{rating%2d~%|--%}}</font>",
    // Display format for the right panel (macros allowed, see readme-en.txt).
    // Формат отображения для правой панели (допускаются макроподстановки, см. readme-ru.txt).
    "formatRightVehicle": "<font face='$FieldFont' size='14'><font color='{{c:rating|#666666}}'>{{rating%2d~%|--%}}</font>  <font color='{{c:xwn8}}'>{{wn8%4d|----}}</font>  <font color='{{c:kb|#666666}}'>{{kb%2d~k|--k}}</font>"
  }
}
