char_name -> char_main 
	| char_reoccurring 
	| char_criminals

char_main -> "Shawn Spencer" 
	| "Gus Burton" 
	| "Juliet O'Hare" 
	| "Carlton Lassiter" 
	| "Chief Vick" 
	| "Henery Spencer"

char_reoccurring -> "Buzz McNab" 
	| "Madeleine Spencer" 
	| "Coroner Woody" 
	| "Mary Lightly" 
	| "Marlowe Viccellio" 
	| "Abigail Lytar"

char_criminals -> "Pierre Despereaux" 
	| "Mr. Yin" 
	| "Mr. Yang"

random_name -> random_first_name " " random_last_name

random_first_name -> "Jared" | "John" | "Tyler" | "Abby" | "Kate" | "Jamie" | "Kelly" | "Sam" | "Miquel" | "Sarah" | "Sara" | "Toby" | "Tommy" | "Tom" | "JC" | "Dustin" | "Ricky" | "Leah"

random_last_name -> "Smith" | "Jackson" | "Johnson" | "Murphy" | "Martin" | "Tyler" | "Carter" | "Karlsson" | "Ruiz"

relationship -> "sister" 
	| "daughter" 
	| "brother" 
	| "son" 
	| "mom" 
	| "dad" 
	| "roommate" 
	| "boss" 
	| (so_modifier ( "girlfriend" | "boyfriend" | "husband" | "wife" ))

so_modifier -> "ex-" 
	| " " 
	| "new " 
	| "cheating " 
	| "2nd " 
	| "secret " 
	| "dumb " 
	| "trophy " 
	| "long-time " 
	| "beloved " 