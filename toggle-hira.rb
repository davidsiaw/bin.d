#!/usr/bin/env ruby

# sudo apt get ibus-mozc
#engines {
#  name : "mozc-hira"
#  longname : "Mozc:あ"
#  layout : "default"
#  composition_mode : HIRAGANA
#}
#engines {
#  name : "mozc-roma"
#  longname : "Mozc:A"
#  layout : "default"
#  composition_mode : DIRECT
#}

thing = `ibus engine`.chomp

if thing == "xkb:us::eng"
	`ibus engine mozc-hira`
else
	`ibus engine xkb:us::eng`
end
