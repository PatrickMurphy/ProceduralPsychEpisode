setting -> 				familiar_setting 
						| scene_setting

familiar_setting -> 	"Psych Office" 
						| "Santa Barbara Police Station" 
						| "Henry's House" 
						| "West Coast Pharmaceutical Office"

scene_setting -> 		"Beach" 
						| "Sewer Pipes" 
						| "Landfill" 
						| "@VICTIM@'s Apartment" 
						| "Neighborhood Park" 
						| "Zoo" 
						| "High School" 
						| "Old Sonora Town"

investigate_setting -> 	"the crime scene" 
						| "the @VICTIM@'s " ("apartment " | "house " | "condo " | "dorm ") 
						| "@VICTIM@'s last known location" 
						| "@VICTIM@ on the internet" 
						| "@VICTIM@'s " relationship