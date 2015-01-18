/**
 * Parameters of the Players Panels ("ears").
 * Параметры панелей игроков ("ушей").
 */
{
"def": {
    // Text fields shadow definition.
    // Шаблон тени текстовых полей.
	"textFieldShadow": { "color": "0x000000", "alpha": 100, "angle": 0, "blur": 2, "strength": 100, "distance": 0 }
  },
    // Enemy spotted status marker format for substitutions in extra fields.
    // Подстановка для дополнительного поля с маркером статуса засвета
  "enemySpottedMarker": {
    // Opacity percentage of spotted markers in the panels. 0 - transparent (disabled) ... 100 - opaque.
    // Прозрачность в процентах маркеров засвета в ушах. 0 - полностью прозрачные (отключены), 100 - не прозрачные.
    "alpha": 100,
    // x position.
    // положение по горизонтали.
    "x": 0,
    // y position.
    // положение по вертикали.
    "y": 0,
    // true - x position is binded to vehicle icon, false - binded to edge of the screen.
    // true - положение по горизонтали отсчитывается от иконки танка, false - от края экрана.
    "bindToIcon": true,
    // enemy spotted status marker format.
    // формат маркера статуса засвета.
    "format": "{{spotted}}",
    // shadow (see below).
    // настройки тени (см. ниже).
    "shadow": ${ "def.textFieldShadow"}
  },
    // Enemy spotted status marker format for substitutions in extra fields.
    // Подстановка для дополнительного поля с маркером статуса засвета
  "platoonMarker": {
    // Opacity percentage of spotted markers in the panels. 0 - transparent (disabled) ... 100 - opaque.
    // Прозрачность в процентах маркеров засвета в ушах. 0 - полностью прозрачные (отключены), 100 - не прозрачные.
    "alpha": "{{squad?100|00}}",
    // x position.
    // положение по горизонтали.
    "x": 0,
    // y position.
    // положение по вертикали.
    "y": 0,
    // true - x position is binded to vehicle icon, false - binded to edge of the screen.
    // true - положение по горизонтали отсчитывается от иконки танка, false - от края экрана.
    "bindToIcon": true,
    // enemy spotted status marker format.
    // формат маркера статуса засвета.
    "format": "<font face='$FieldFont' size='24' color='#FFB964'>*</font>",
    // shadow (see below).
    // настройки тени (см. ниже).
    "shadow": ${ "def.textFieldShadow"}
  },
  "playersPanel": {
    // Opacity percentage of the panels. 0 - transparent, 100 - opaque.
    // Прозрачность в процентах ушей. 0 - прозрачные, 100 - не прозрачные.
    "alpha": 60,
    // Opacity percentage of icons in the panels. 0 - transparent ... 100 - opaque.
    // Прозрачность в процентах иконок в ушах. 0 - прозрачные, 100 - не прозрачные.
    "iconAlpha": 100,
    // true - Disable Platoon icons.
    // true - убрать отображение иконки взвода.
    "removeSquadIcon": false,
    // true - Remove the Players Panel mode switcher (buttons for changing size).
    // true - убрать переключатель режимов ушей мышкой.
    "removePanelsModeSwitcher": true,
    // Start panels mode. Possible values: "none", "short", "medium", "medium2", "large".
    // Начальный режим ушей. Возможные значения: "none", "short", "medium", "medium2", "large".
    "startMode": "large",
    // Alternative panels mode. Possible values: null, "none", "short", "medium", "medium2", "large".
    // Альтернативный режим ушей. Возможные значения: null, "none", "short", "medium", "medium2", "large".
    "altMode": "large",
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
    // Options for the "none" panels - empty panels.
    // Режим ушей "none" - пустые уши.
    "none": {
      // false - disable (отключить)
      "enabled": false,
      // Layout ("vertical" or "horizontal")
      // Размещение ("vertical" - вертикально, или "horizontal" - горизонтально)
      "layout": "vertical",
      // Extra fields.
      // Дополнительные поля.
      "extraFields": {
        "leftPanel": {
          "x": 0, // from left side of screen
          "y": 65,
          "width": 350,
          "height": 25,
          // Set of formats for left panel
          // Набор форматов для левой панели
          // example:
          // "format": [
          //   // simple format (just a text)
          //   "{{nick}}",
          //   "<img src='xvm://res/img/panel-bg-l-{{alive|dead}}.png' width='318' height='28'>",
          //   // extended format
          //   { "x": 20, "y": 10, "borderColor": "0xFFFFFF", "format": "{{nick}}" },
          //   { "x": 200, "src": "xvm://res/contour/{{vehiclename}}.png" }
          // ]
          //
          // types of formats available for extended format:
          //   - MovieClip (for loading image)
          //   - TextField (for writing text and creating rectangles)
          // if "src" field is present, MovieClip format will be used
          // if "src" field is absent, TextField format will be used
          //
          // fields available for extended format:
          //   "src" - resource path ("xvm://res/contour/{{vehiclename}}.png")
          //   "format" - text format (macros allowed)
          //
          // fields available for both MovieClip and TextField formats:
          //   "x" - x position (macros allowed)
          //   "y" - y position (macros allowed)
          //   "w" - width (macros allowed)
          //   "h" - height (macros allowed)
          //   "alpha" - transparency in percents (0..100) (macros allowed)
          //   "rotation" - rotation in degrees (0..360) (macros allowed)
          //   "align" - horizontal alignment ("left", "center", "right")
          //      for left panel default value is "left"
          //      for right panel default value is "right"
          //   "scaleX", "scaleY" - scaling (use negative values for mirroring)
          //
          // fields available for TextField format only:
          //   "valign" - vertical alignment ("top", "center", "bottom")
          //      default value is "top"
          //   "borderColor" - if set, draw border with specified color (macros allowed)
          //   "bgColor" - if set, draw background with specified color (macros allowed)
          //   "antiAliasType" - anti aliasing mode ("advanced" or "normal")
          //   "shadow": {
          //     "distance" (in pixels)
          //     "angle"    (0.0 .. 360.0)
          //     "color"    "0xXXXXXX"
          //     "alpha"    (0.0 .. 1.0)
          //     "blur"     (0.0 .. 255.0)
          //     "strength" (0.0 .. 255.0)
          //    }
          //
          // fields available for MovieClip format only:
          //     "highlight" - highlight icon depending on the player state, default false
          //
          // * all fields are optional
          //
          "formats": []
        },
        "rightPanel": {
          "x": 0, // from right side of screen
          "y": 65,
          "width": 350,
          "height": 25,
          // Set of formats for right panel (extended format supported, see above)
          // Набор форматов для правой панели (поддерживается расширенный формат, см. выше)
          "formats": []
        }
      }
    },
    // Options for the "short" panels - panels with frags and vehicle icon.
    // Режим ушей "short" - короткие уши (фраги и иконка танка).
    "short": {
      // false - disable (отключить)
      "enabled": false,
      // Width of the column, 0-250. Default is 0.
      // Ширина поля, 0-250. По умолчанию: 0.
      "width": 0,
      // Display format for frags (macros allowed, see readme-en.txt).
      // Формат отображения фрагов (допускаются макроподстановки, см. readme-ru.txt).
      "fragsFormatLeft": "{{frags}}",
      "fragsFormatRight": "{{frags}}",
      // Extra fields. Each field have size 350x25. Fields are placed one above the other.
      // Дополнительные поля. Каждое поле имеет размер 350x25. Поля располагаются друг над другом.
      // Set of formats for left panel (extended format supported, see above)
      // Набор форматов для левой панели (поддерживается расширенный формат, см. выше)
      "extraFieldsLeft": [],
      // Set of formats for right panel (extended format supported, see above)
      // Набор форматов для правой панели (поддерживается расширенный формат, см. выше)
      "extraFieldsRight": []
    },
    // Options for the "medium" panels - the first of the medium panels.
    // Режим ушей "medium" - первые средние уши в игре.
    "medium": {
      // false - disable (отключить)
      "enabled": false,
      // Minimum width of the player's name column, 0-250. Default is 46.
      // Минимальная ширина поля имени игрока, 0-250. По умолчанию: 46.
      "width": 46,
      // Display format for the left panel (macros allowed, see readme-en.txt).
      // Формат отображения для левой панели (допускаются макроподстановки, см. readme-ru.txt).
      "formatLeft": "<font face='Lucida Console' size='12' color='{{c:t-rating}}' alpha='{{alive?#FF|#80}}'>{{t-rating%2d~%}}</font> -- {{nick}}",
      "formatRight": "{{nick}} -- <font face='Lucida Console' size='12' color='{{c:t-rating}}' alpha='{{alive?#FF|#80}}'>{{t-rating%2d~%}}</font>",
      // Display format for frags (macros allowed, see readme-en.txt).
      // Формат отображения фрагов (допускаются макроподстановки, см. readme-ru.txt).
      "fragsFormatLeft": "{{frags}}",
      "fragsFormatRight": "{{frags}}",
      // Extra fields. Each field have size 350x25. Fields are placed one above the other.
      // Дополнительные поля. Каждое поле имеет размер 350x25. Поля располагаются друг над другом.
      // Set of formats for left panel (extended format supported, see above)
      // Набор форматов для левой панели (поддерживается расширенный формат, см. выше)
      "extraFieldsLeft": [],
      // Set of formats for right panel (extended format supported, see above)
      // Набор форматов для правой панели (поддерживается расширенный формат, см. выше)
      "extraFieldsRight": []
    },
    // Options for the "medium2" panels - the second of the medium panels.
    // Режим ушей "medium2" - вторые средние уши в игре.
    "medium2": {
      // false - disable (отключить)
      "enabled": false,
      // Maximum width of the vehicle name column, 0-250. Default is 65.
      // Максимальная ширина названия танка, 0-250. По умолчанию: 65.
      "width": 65,
      // Display format for the left panel (macros allowed, see readme-en.txt).
      // Формат отображения для левой панели (допускаются макроподстановки, см. readme-ru.txt).
      "formatLeft": "<font color='{{c:xwn8}}' alpha='{{alive?#FF|#80}}'>{{vehicle}}</font>",
      // Display format for the right panel (macros allowed, see readme-en.txt).
      // Формат отображения для правой панели (допускаются макроподстановки, см. readme-ru.txt).
      "formatRight": "<font color='{{c:xwn8}}' alpha='{{alive?#FF|#80}}'>{{vehicle}}</font>",
      // Display format for frags (macros allowed, see readme-en.txt).
      // Формат отображения фрагов (допускаются макроподстановки, см. readme-ru.txt).
      "fragsFormatLeft": "{{frags}}",
      "fragsFormatRight": "{{frags}}",
      // Extra fields. Each field have size 350x25. Fields are placed one above the other.
      // Дополнительные поля. Каждое поле имеет размер 350x25. Поля располагаются друг над другом.
      // Set of formats for left panel (extended format supported, see above)
      // Набор форматов для левой панели (поддерживается расширенный формат, см. выше)
      "extraFieldsLeft": [],
      // Set of formats for right panel (extended format supported, see above)
      // Набор форматов для правой панели (поддерживается расширенный формат, см. выше)
      "extraFieldsRight": []
    },
    // Options for the "large" panels - the widest panels.
    // Режим ушей "large" - широкие уши в игре.
    "large": {
      // false - disable (отключить)
      "enabled": true,
      // Minimum width of the player's name column, 0-250. Default is 170.
      // Минимальная ширина имени игрока, 0-250. По умолчанию: 170.
      "width": 200,
      // Display format for player nickname (macros allowed, see readme-en.txt).
      // Формат отображения имени игрока (допускаются макроподстановки, см. readme-ru.txt).
      "nickFormatLeft": "",
      "nickFormatRight": "",
      // Display format for vehicle name (macros allowed, see readme-en.txt).
      // Формат отображения названия танка (допускаются макроподстановки, см. readme-ru.txt).
      "vehicleFormatLeft": "",
      "vehicleFormatRight": "",
      // Display format for frags (macros allowed, see readme-en.txt).
      // Формат отображения фрагов (допускаются макроподстановки, см. readme-ru.txt).
      "fragsFormatLeft": "",
      "fragsFormatRight": "",
      // Extra fields. Each field have size 350x25. Fields are placed one above the other.
      // Дополнительные поля. Каждое поле имеет размер 350x25. Поля располагаются друг над другом.
      "extraFieldsLeft": [
        ${"platoonMarker"},
        { "x": 30, "y": 21, "h": 1, "valign": "center", "w": "{{hp-ratio:220}}", "bgColor": "{{c:hp-ratio}}", "alpha": "{{alive?90|0}}", "shadow": ${ "def.textFieldShadow"} },
        { "x": 30, "y": -2, "valign": "center", "format": "<b><font face='$FieldFont' size='13' color='{{c:t-rating}}' alpha='{{alive?#FF|#90}}'>{{t-rating%2d|--}}</font></b>", "shadow": ${ "def.textFieldShadow"} },
        { "x": 50, "y": -3, "valign": "center", "format": "<b><font face='$FieldFont' size='13' alpha='{{alive?#FF|#90}}' color='{{c:xwn8|#666666}}'>{{name%.10s~..}}</font></b>", "shadow": ${ "def.textFieldShadow"} },
        { "x": 120, "y": -18, "valign": "center", "alpha": "{{alive?90|0}}", "format": "<font face='XVMSymbol' size='24' color='{{c:hp-ratio|#666666}}'>&#x27;</font>", "shadow": ${ "def.textFieldShadow"} },
        { "x": 120, "y": -18, "valign": "center", "alpha": "{{alive?0|90}}", "format": "<font face='XVMSymbol' size='24' color='{{c:hp-ratio|#666666}}'>&#x26;</font>", "shadow": ${ "def.textFieldShadow"} },
        { "x": 135, "y": -1, "valign": "center", "alpha": "{{alive?90|0}}", "format": "<b><font face='$FieldFont' size='12' color='#FFFFFF'>{{hp-ratio%2d|--}}</font></b>", "shadow": ${ "def.textFieldShadow"} },
        { "x": 185, "y": -3, "align": "center","valign": "center", "format": "<font face='$FieldFont' size='13' alpha='{{alive?#FF|#90}}'>{{frags}}</font></b>", "shadow": ${ "def.textFieldShadow"} },
        { "x": 300, "y": 1, "align": "center", "format": "<font face='XVMSymbol' size='{{alive?0|20}}' color='#96F						 F00' alpha='{{alive?#FF|90}}'>&#x2B;</font>", "shadow": ${ "def.textFieldShadow"} },
        { "x": 315, "y": 0, "align": "center", "alpha": "{{alive?90|0}}", "format": "<b><font face='$FieldFont' size='{{ready?0|16}}'>{{l10n:Not ready}}</font></b>", "shadow": ${ "def.textFieldShadow"} }      
      ],
      "extraFieldsRight": [
        ${"enemySpottedMarker"},
        { "x": 30, "y": 21, "h": 1, "valign": "center", "w": "{{hp-ratio:220}}", "bgColor": "{{c:hp-ratio}}", "alpha": "{{alive?spotted?90|50|0}}", "shadow": ${ "def.textFieldShadow"} },
        { "x": 30, "y": -2, "valign": "center", "format": "<b><font face='$FieldFont' size='13' color='{{c:t-rating}}' alpha='{{alive?#FF|#90}}'>{{t-rating%2d|--}}</font></b>", "shadow": ${ "def.textFieldShadow"} },
        { "x": 50, "y": -3, "valign": "center", "format": "<b><font face='$FieldFont' size='13' alpha='{{alive?#FF|#90}}' color='{{c:xwn8|#666666}}'>{{name%.10s~..}}</font></b>", "shadow": ${ "def.textFieldShadow"} },
        { "x": 120, "y": -18, "valign": "center", "alpha": "{{alive?90|0}}", "format": "<font face='XVMSymbol' size='24' color='{{c:hp-ratio|#666666}}'>&#x2A;</font>", "shadow": ${ "def.textFieldShadow"} },
        { "x": 120, "y": -18, "valign": "center", "alpha": "{{alive?0|90}}", "format": "<font face='XVMSymbol' size='24' color='{{c:hp-ratio|#666666}}'>&#x29;</font>", "shadow": ${ "def.textFieldShadow"} },
        { "x": 136, "y": -1, "valign": "center", "alpha": "{{alive?90|0}}", "format": "<b><font face='$FieldFont' size='12' color='#FFFFFF'>{{hp-ratio%2d|--}}</font></b>", "shadow": ${ "def.textFieldShadow"} },
        { "x": 185, "y": -3, "align": "center","valign": "center", "format": "<b><font face='$FieldFont' size='13' alpha='{{alive?#FF|#90}}'>{{frags}}</font></b>", "shadow": ${ "def.textFieldShadow"} },
        { "x": 315, "y": 0, "align": "center", "alpha": "{{alive?90|0}}", "format": "<b><font face='$FieldFont' size='{{ready?0|16}}'>{{l10n:Not ready}}</font></b>", "shadow": ${ "def.textFieldShadow"} }
      ]
    }
  }
}
