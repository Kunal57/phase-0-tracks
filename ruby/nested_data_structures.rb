role_models = {
	elon_musk: {
		name: "Elon Musk",
		age: 44,
		education: "Univerity of Pennsylvania",
		net_worth: 13000000000,
		organizations: {
			SpaceX: ["Falcon 9","Dragon"],
			Tesla: ["Model S","Model X","Model 3"],
			SolarCity: ["PowerWall","GigaFactor"],
			HyperLoop: ["HyperLoop Train"],
		},

	},
	steve_jobs: {
		name: "Steve Jobs",
		age: nil,
		education: "Reed College",
		net_worth: 10200000000,
		organizations: {
			Apple: ["Apple I","Macintosh","MacBook","iPod","iTunes","iPhone","iPad"],
			Pixar: ["Toy Story","A Bug's Life","Monsters Inc","Finding Nemo","The Incredibles","Cars"],
		},
	},
	tom_brady: {
		name: "Tom Brady",
		age: 38,
		education: "University of Michigan",
		net_worth: 120000000,
		organizations: {
			New_England_Patriots: [["XXXVI Super Bowl MVP","XXXVIII Super Bowl MVP","XLIX Super Bowl MVP"],["2007 NFL MVP","2010 NFL MVP"]],
		},
	},
	kobe_bryant: {
		name: "Kobe Bryant",
		age: 37,
		education: "Lower Merion High School",
		net_worth: 320000000,
		organizations: {
			Los_Angeles_Lakers: [["2009 Finals MVP","2010 Finals MVP"],["2008 MVP"]],
		},
	},
}

puts "\nWhat companies does Elon Musk Manage?"
p role_models[:elon_musk][:organizations].keys

puts "\nWhat products did Steve Jobs create while at Apple after 2000?"
p role_models[:steve_jobs][:organizations][:Apple][2..6]

puts "\nWhich NFL MVP awards does Tom Brady have?"
p role_models[:tom_brady][:organizations][:New_England_Patriots][1]

puts "\nWhat school did Kobe Bryant attend?"
p role_models[:kobe_bryant][:education]