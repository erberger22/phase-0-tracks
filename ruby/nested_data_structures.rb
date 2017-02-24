mall = {
	orange_julius:{
		food:[],
		drink:[
			"tripple berry",
			"mango pineapple",
			"orange",
			{boosts:[
				"energy",
				"protein",
				"bananna"
			]}
		],
		clothing:{
			shirt: "t-shirt",
			hat: "baseball cap"
		}
	},
	cinnabun:{
		food:[
			"Classic Roll",
			"Minibon",
			"Cinnabun Bites"
		],
		drink:[
			"Soft Drink",
			"Vanilla Iced Coffee",
			"Signature Coffee"
		],
		clothing:{}

	},
	REI:{
		food: [
			"Cliff Bar",
			"Dried Apricots",
			"Buffalo Jerky"
		],
		drink:[],
		clothing:{
			shirt:[
				"casual",
				"running",
				"travel",
				"yoga",
				"rashguard"
			],
			pants:[
				"quick dry",
				"cargo",
				"convertible"
			],
			hat:[
				"beanie",
				"earflap",
				"safari"
			]
		}
	},
	gap:{
		food:[],
		drink:[],
		clothing:{
			shirt:[
				"slim",
				"standard",
				"short-sleeve"
			],
			pants:[
				"shorts",
				"formal",
				"sleepware"
			],
			hat:[
				"fedora"
			]
		}
	}
}
#should call "sleepware"
p mall[:gap][:clothing][:pants][2]
#should call "tripple berry"
p mall[:orange_julius][:drink][0]
#should call "rashguard"
p mall[:REI][:clothing][:shirt][4]
#should call ["Classic Roll","Minibon","Cinnabun Bites"]
p mall[:cinnabun][:food]
#should call "protein"
p mall[:orange_julius][:drink][3][:boosts][1]
