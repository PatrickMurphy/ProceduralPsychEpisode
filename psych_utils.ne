
meta_setting_year[YEAR,SET] -> "[Setting: " datetime $YEAR " " $SET "]" line_sep1
meta_setting[SET] -> meta_setting_year[" 2020",$SET]

meta_setting_scene -> meta_setting[scene_setting]
meta_setting -> meta_setting[setting]
meta_setting_throwback -> meta_setting_year[(" 197" ("0"|"1"|"2"|"3"|"4"|"5"|"6"|"7"|"8"|"9")),setting]



observable -> object_adj 
	| weapon_adj

weapon_adj -> "a " adjective " " weapon

weapon -> "gun" 
	| "knife" 
	| "rope" 
	| "explosives" 
	| "car" 
	| "poison"

object_adj -> "a " adjective " " object

object -> "drawer" 
	| "floor" 
	| "spoon" 
	| "computer" 
	| "shirt" 
	| "box"

perception -> "sees" 
	| "smells" 
	| "feels" 
	| "hears" 
	| "deducts" 
	| "feels a vibration" 
	| "remembers"



	

datetime -> date " " time

date -> day

time -> hour ":" minute " " ampm

ampm -> "AM" | "PM"

day -> "Monday"
	| "Tuesday"
	| "Wednesday"
	| "Thursday"
	| "Friday"
	| "Saturday"
	| "Sunday"

hour -> "01" 
	| "02" 
	| "03"
	| "04"
	| "05"
	| "06"
	| "07"
	| "08"
	| "09"
	| "10"
	| "11"
	| "12"

minute -> "00"
	| "05"
	| "11"
	| "15"
	| "30"
	| "35"
	| "45"
	| "46"
	| "54"
	| "56"

line_sep -> "\n\n"

line_sep1 -> "\n"