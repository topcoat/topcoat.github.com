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
			dam:
				name: "Kristofer Joseph"
				twitter: "dam"
			garthdb:
				name: "Garth Braithwaite"
				twitter: "garthdb"
			nnnnic:
				name: "Nic Couillard"
				twitter: "nnnnic"
	collections:
		pages: ->
			@getCollection("html").findAll({isPage:true}).toJSON()
		posts: ->
			@getCollection('documents').findAllLive({relativeOutDirPath:'posts'},[date:-1])
}

# Export the DocPad Configuration
module.exports = docpadConfig