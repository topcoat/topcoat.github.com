# DocPad Configuration File
# http://docpad.org/docs/config

# Define the DocPad Configuration
docpadConfig = {
	templateData: #default data
		site:
			url: "http://topcoat.io"
			title: "Topcoat"
			description: """
			CSS for clean and fast web apps.
			"""
			keywords: """
			css,opensource,application,development,web standards
			"""
		authors:
			brianleroux:
				name: "Brian LeRoux"
				twitter: "brianleroux"
				url: "http://brian.io/"
			dam:
				name: "Kristofer Joseph"
				twitter: "dam"
				url: "http://kristoferjoseph.com/"
			garthdb:
				name: "Garth Braithwaite"
				twitter: "garthdb"
				url: "http://www.garthdb.com/"
			nnnnic:
				name: "Nic Couillard"
				twitter: "nnnnic"
				url: "http://nnnnic.com/"
	collections:
		pages: ->
			@getCollection("html").findAll({isPage:true})
		posts: ->
			@getCollection('documents').findAllLive({relativeOutDirPath:'posts'},[date:-1])
}

# Export the DocPad Configuration
module.exports = docpadConfig