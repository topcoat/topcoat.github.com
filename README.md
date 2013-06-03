topcoat.github.com
==================

TopCoat Organization

Install [DocPad](http://docpad.org/) (make sure you have [node](http://www.nodejs.org) and npm installed):
```
npm install -g docpad
```
and install all the docpad plugins (configuration located in the `package.json` file):
```
npm install
```

###Development and Local Testing
```
docpad run
```

###Deployment to GitHub
Prep: 
```
docpad deploy-ghpages
```

Push changes:
```
git push origin gh-pages
```

##Code Organization
All the dynamic content (jade, stylus, md, etc) is in `src/documents/`, the templates are in `src/layouts/`, and static files (images, etc) are in `src/static`.

Working locally DocPad will output the code to the `out/` directory, but this is ignored by git.
