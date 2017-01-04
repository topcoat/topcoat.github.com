# DocPad Configuration File
# http://docpad.org/docs/config

markdown = require( "markdown" ).markdown;

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
			g1sh:
				name: "Guillermo Torres"
				twitter: "g1sh"
				url: "http://www.g1sh.com/"
			ndreio:
				name: "Andrei Oprea"
				twitter: "ndreio"
				url: "http://github.com/piatra"
			nodoherty:
				name: "Niall O'Doherty"
				twitter: "nodoherty"
				url: "http://github.com/nodoherty"
			kruyvanna:
				name: "Kruy Vanna"
				twitter: "Onsen_UI"
				url: "http://github.com/onsenui/"
		formatDate: (postdate) ->
			monthsArray = ['Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec']
			curr_date = postdate.getDate()
			curr_month = monthsArray[postdate.getMonth()]
			curr_year = postdate.getFullYear()
			return (curr_date + " " + curr_month + " " + curr_year)
		formatAuthor: (author) ->
			authorName =''
			authorUrl = ''
			if (typeof author == 'object')
				authorName = author.name
				authorUrl = author.url
			else
				authorName = @authors[author].name
				authorUrl = @authors[author].url
			return "<a href='#{authorUrl}'>#{authorName}</a>"
		markdowned: (copy) ->
			return markdown.toHTML(copy)
	collections:
		pages: ->
			@getCollection("html").findAll({isPage:true})
		posts: ->
			@getCollection('documents').findAllLive({isPost:true},[date:-1])

	plugins:
		cleanurls:
			trailingSlashes: true

	environments:
		static:
			outPath: ''
}

# Export the DocPad Configuration
module.exports = docpadConfig