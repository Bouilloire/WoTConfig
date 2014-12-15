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
    "rows": 1,
    // Spacing between carousel cells.
    // Отступ между ячейками карусели.
    "padding": {
        "horizontal": 10,   // по горизонтали
        "vertical": 2       // по вертикали
    },
    // true - show filters even if all tanks fit on the screen.
    // true - показывать фильтры даже если все танки помещаются на экране.
    "alwaysShowFilters": false,
    // true - hide cell "Buy tank".
    // true - скрыть ячейку "Купить танк".
    "hideBuyTank": false,
    // true - hide cell "Buy slot".
    // true - скрыть ячейку "Купить слот".
    "hideBuySlot": true,
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
      { "x": 25, "y": 0, "format": "<font color='{{v.premium?#FFCC66|#FFFFFF}}' face='$FieldFont' size='14' >{{v.rlevel}} -> {{v.battletiermin}}-{{v.battletiermax}}</font>", "shadow": {"strength": 3} },
      // Sign of mastery.
      // Знак мастерства.
      { "x": -1, "y": 14, "format": "<img src='img://gui/maps/icons/library/proficiency/class_icons_{{v.mastery}}.png' width='25' height='25'>" },
      // Winrate.
      { "x": 25, "y": 18, "format": "<font face='$FieldFont' size='14' color='{{v.c_winrate}}'>{{v.winrate%d~%| }}</font>", "shadow": {"strength": 3} },
      // Number of games.
      { "x": 2, "y": 37, "format": "<font face='XVMSymbol' size='14' color='#FFFFFF'> R</font>", "shadow": {"strength": 3} },
      { "x": 25, "y": 37, "format": "<font size='14' color='{{v.c_battles}}'>{{v.battles}}</font>", "shadow": {"strength": 3} }
    ]
  }
}
