/**
 * Parameters for tank carousel
 * Параметры карусели танков
 */
{
  "carousel": {
    // false - Disable customizable carousel.
    // false - Отключить настраиваемую карусель.
    "enabled": true,
    // Scale of carousel cells.
    // Масштаб ячеек карусели.
    "zoom": 1.2,
    // Number of rows at carousel.
    // Количество рядов карусели.
    "rows": 3,
    // Spacing between carousel cells.
    // Отступ между ячейками карусели.
    "padding": {
        "horizontal": 10,   // по горизонтали
        "vertical": 2       // по вертикали
    },
    // true - show filters even if all tanks fit on the screen.
    // true - показывать фильтры даже если все танки помещаются на экране.
    "alwaysShowFilters": true,
    // true - hide cell "Buy tank".
    // true - скрыть ячейку "Купить танк".
    "hideBuyTank": false,
    // true - hide cell "Buy slot".
    // true - скрыть ячейку "Купить слот".
    "hideBuySlot": false,
    // Visibility filters.
    // Видимость фильтров.
    "filters": {
      // false - hide filter.
      // false - скрыть фильтр.
      "nation":   { "enabled": true },  // nation           / страна
      "type":     { "enabled": true },  // vehicle class    / тип техники
      "level":    { "enabled": true },  // vehicle level    / уровень техники
      "favorite": { "enabled": true },  // favorite tanks   / основные танки
      "prefs":    { "enabled": true }   // other filters    / другие фильтры
    },
    // Standard cell elements.
    // Стандартные элементы ячеек.
    "fields": {
      // "visible"  - the visibility of the element / видимость элемента
      // "dx"       - horizontal shift              / смещение по горизонтали
      // "dy"       - vertical shift                / смещение по вертикали
      // "alpha"    - transparency                  / прозрачность
      // "scale"    - scale                         / масштаб
      //
      // Vehicle class icon.
      // Иконка типа техники.
      "tankType": { "visible": true, "dx": 2, "dy": 0, "alpha": 100, "scale": 1 },
      // Vehicle level.
      // Уровень техники
      "level":    { "visible": false, "dx": 0, "dy": 0, "alpha": 100, "scale": 1 },
      // todo: english description
      // Иконка не сбитого кратного опыта за первую победу в день.
      "multiXp":  { "visible": true, "dx": 0, "dy": 0, "alpha": 100, "scale": 1 },
      // todo: english description
      // Иконка не сбитого опыта за первую победу в день.
      "xp":       { "visible": true, "dx": 0, "dy": 0, "alpha": 100, "scale": 1 },
      // Vehicle name.
      // Название танка.
      "tankName": { "visible": true, "dx": 0, "dy": 0, "alpha": 100, "scale": 1 }
    },
    // Extra cell fields (see playersPanel.xc).
    // Дополнительные поля ячеек (см. playersPanel.xc).
    "extraFields": [
      { "x": 25, "y": 0, "format": "<font color='{{v.premium?#FFCC66|#FFFFFF}}' face='$FieldFont' size='18' >{{v.rlevel}} -> {{v.battletiermin}}-{{v.battletiermax}}</font>", "shadow": {"strength": 3} },
      // Sign of mastery.
      // Знак мастерства.
      { "x": -1, "y": 14, "format": "<img src='img://gui/maps/icons/library/proficiency/class_icons_{{v.mastery}}.png' width='30' height='30'>" },
      // Winrate.
      { "x": 25, "y": 22, "format": "<font face='$FieldFont' size='14' color='{{v.c_winrate}}'>{{v.winrate%d~%| }}</font>", "shadow": {"strength": 3} },
      // Number of games.
      { "x": 2, "y": 41, "format": "<font face='XVMSymbol' size='14' color='#FFFFFF'> R</font>", "shadow": {"strength": 3} },
      { "x": 25, "y": 41, "format": "<font size='14' color='{{v.c_battles}}'>{{v.battles}}</font>", "shadow": {"strength": 3} },
      // Remaining XP to grind
      { "x": 145, "y": 22, "format": "<font size='14' color='#C0C0C0'>To Elite:</font>", "shadow": {"strength": 3}, "alpha": "{{v.xpToEliteLeft?100|0}}" },
      { "x": 150, "y": 41, "format": "<font size='14' color='{{v.xpToEliteLeft>50000?#FE0E00|{{v.xpToEliteLeft>30000?#FE7903|{{v.xpToEliteLeft>10000?#F8F400|{{v.xpToEliteLeft>5000?#60FF00|{{v.xpToEliteLeft>1000?#02C9B3|#D042F3}}}}}}}}}}'>{{v.xpToEliteLeft%6d}}</font>", "shadow": {"strength": 3}, "alpha": "{{v.xpToEliteLeft?100|0}}" },
      // Selected
      { "x": 2, "y": 60, "format": "<font face='XVMSymbol' size='24' color='#60FF00'>&#x27;</font>", "alpha": "{{v.selected?100|0}}", "shadow": {"stength": 3} }
    ]
  }
}
