#
# Ported and modified from https://github.com/Gael-Lopes-Da-Silva/YellowedHelix
#

{
  monochrome = let
      white       = "#aaaaaa";
      gray        = "#2a2a2a";
      dark_gray   = "#242424";
      light_gray  = "#545454";
      purple      = "#994c92";
      blue        = "#008DFF";
      green       = "#3FFFC9";
      red         = "#DE5C25";
      menu        = "#202020";
      selection   = "#3f3f3f";
      text        = "#FFFFFF";
      comment     = "#6b6b6b";
      string      = "#76a1d5";
      constants   = "#aaaaaa";
      keywords    = "#FFFFFF";
      warning     = "#FF9C00";
      error       = "#FF0000";
      info        = "#0092FF";
      hint        = "#4DFF00";
    in
    {
      "attribute"                       = { fg = text; };
      "type"                            = { fg = text; };
      "type.builtin"                    = { fg = keywords; };
      "type.enum"                       = { fg = keywords; };
      "constructor"                     = { fg = text; modifiers = ["bold"]; };
      "constant"                        = { fg = text; modifiers = ["bold"]; };
      "constant.builtin"                = { fg = constants; modifiers = ["bold"]; };
      "constant.character"              = { fg = string; };
      "constant.character.escape"       = { fg = constants; modifiers = ["bold"]; };
      "constant.numeric"                = { fg = keywords; };
      "string"                          = { fg = string; };
      "string.regexp"                   = { fg = constants; };
      "comment"                         = { fg = comment; };
      "variable"                        = { fg = text; };
      "variable.builtin"                = { fg = keywords; modifiers = ["curl"]; };
      "variable.parameter"              = { fg = text; modifiers = ["italic"]; };
      "label"                           = { fg = text; };
      "punctuation"                     = { fg = text; };
      "punctuation.special"             = { fg = constants; modifiers = ["bold"]; };
      "keyword"                         = { fg = keywords; modifiers = ["bold"]; };
      "keyword.control"                 = { fg = keywords; };
      "keyword.control.return"          = { fg = keywords; modifiers = ["bold"]; };
      "keyword.operator"                = { fg = keywords; };
      "keyword.directive"               = { fg = keywords; };
      "operator"                        = { fg = keywords; };
      "function"                        = { fg = text; modifiers = ["bold"]; };
      "tag"                             = { fg = keywords; modifiers = ["bold"]; };
      "namespace"                       = { fg = text; };
      "special"                         = { fg = string; modifiers = ["bold"]; };
      "markup.heading.marker"           = { fg = keywords; modifiers = ["bold"]; };
      "markup.heading.1"                = { fg = text; modifiers = ["bold"]; };
      "markup.heading.2"                = { fg = text; modifiers = ["bold"]; };
      "markup.heading.3"                = { fg = text; modifiers = ["bold"]; };
      "markup.heading.4"                = { fg = text; modifiers = ["bold"]; };
      "markup.heading.5"                = { fg = text; modifiers = ["bold"]; };
      "markup.heading.6"                = { fg = text; modifiers = ["bold"]; };
      "markup.list"                     = { fg = keywords; modifiers = ["bold"]; };
      "markup.bold"                     = { modifiers = ["bold"]; };
      "markup.italic"                   = { modifiers = ["italic"]; };
      "markup.link.url"                 = { fg = text; modifiers = ["underlined"]; };
      "markup.link.text"                = { fg = string; };
      "markup.quote"                    = { fg = text; };
      "markup.raw"                      = { fg = string; };
      "diff.plus"                       = { fg = green; };
      "diff.minus"                      = { fg = red; };
      "diff.delta"                      = { fg = blue; };
      "diff.delta.moved"                = { fg = gray; };
      "ui.background"                   = { bg = dark_gray; fg = "text"; };
      "ui.background.separator"         = { fg = text; };
      "ui.cursor"                       = { bg = white; fg =  "black"; };
      "ui.cursor.normal"                = { bg = white; fg =  "black"; };
      "ui.cursor.insert"                = { bg = white; fg =  "black"; };
      "ui.cursor.select"                = { bg = white; fg =  "black"; };
      "ui.cursor.match"                 = { bg = light_gray; };
      "ui.cursor.primary"               = { bg = white; fg =  "black"; };
      "ui.cursor.primary.normal"        = { bg = white; fg =  "black"; };
      "ui.cursor.primary.insert"        = { bg = white; fg =  "black"; };
      "ui.cursor.primary.select"        = { bg = white; fg =  "black"; };
      "ui.debug.breakpoint"             = { fg = red; };
      "ui.debug.active"                 = { fg = green; };
      "ui.gutter"                       = { fg = light_gray; };
      "ui.gutter.selected"              = { fg = light_gray; };
      "ui.highlight.frameline"          = { fg = gray; };
      "ui.linenr"                       = { fg = light_gray; };
      "ui.linenr.selected"              = { fg = white; };
       "ui.statusline"                   = { fg = text; bg = "gray"; };
      "ui.statusline.inactive"          = { fg = light_gray; bg = "gray"; };
      "ui.statusline.normal"            = { bg = light_gray; };
      "ui.statusline.insert"            = { bg = green; };
      "ui.statusline.select"            = { bg = purple; };
      "ui.statusline.separator"         = { fg = dark_gray; };
      "ui.popup"                        = { bg = menu; fg = "text"; };
      "ui.popup.info"                   = { bg = menu; fg = "text"; };
      "ui.window"                       = { fg = text; };
      "ui.help"                         = { fg = text; bg = "menu"; };
      "ui.text"                         = { fg = text; };
      "ui.text.focus"                   = { bg = gray; };
      "ui.text.inactive"                = { fg = text; };
      "ui.text.info"                    = { fg = text; };
      "ui.virtual.ruler"                = { bg = light_gray; };
      "ui.virtual.whitespace"           = { fg = light_gray; };
      "ui.virtual.indent-guide"         = { fg = light_gray; };
      "ui.virtual.inlay-hint"           = { fg = light_gray; };
      "ui.virtual.inlay-hint.parameter" = { fg = light_gray; };
      "ui.virtual.inlay-hint.type"      = { fg = light_gray; };
      "ui.virtual.wrap"                 = { fg = light_gray; };
      "ui.menu"                         = { fg = text; bg = "gray"; };
      "ui.menu.selected"                = { fg = text; bg = "light_gray"; modifiers = ["bold"]; };
      "ui.menu.scroll"                  = { fg = light_gray; bg = "dark_gray"; };
      "ui.selection"                    = { bg = selection; };
      "ui.selection.primary"            = { bg = selection; };
      "ui.highlight"                    = { bg = light_gray; };
      "ui.cursorline.primary"           = { bg = gray; };
      "ui.cursorline.secondary"         = { bg = gray; };
      "ui.cursorcolumn.primary"         = { bg = gray; };
      "ui.cursorcolumn.secondary"       = { bg = gray; };
      "warning"                         = { fg = warning; };
      "error"                           = { fg = error; };
      "info"                            = { fg = info; };
      "hint"                            = { fg = hint; };
      "diagnostic.warning"              = { underline = { color = warning; style = "curl"; }; };
      "diagnostic.error"                = { underline = { color = error; style = "curl"; }; };
      "diagnostic.info"                 = { underline = { color = info; style = "curl"; }; };
      "diagnostic.hint"                 = { underline = { color = hint; style = "curl"; }; };
      "diagnostic.unnecessary"          = { modifiers = ["dim"]; };
      "diagnostic.deprecated"           = { modifiers = ["crossed_out"]; };
    };
}
