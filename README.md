# TopCoat Organization

## Adding a blog post

Watch [this screencast](http://vimeo.com/topcoat/contributing-to-the-topcoat-blog).

## Making Changes

1. Clone the repo locally

  ```sh
  git clone git@github.com:topcoat/topcoat.github.com.git
  ```

1. Install [DocPad](http://docpad.org/) (make sure you have [node](http://www.nodejs.org) and npm installed):

  ```sh
  npm install -g docpad
  ```

1. Install all the docpad plugins (configuration located in the `package.json` file):

  ```sh
  npm install
  ```

1. You can start up docpad to test out your changes locally

  ```sh
  docpad run
  ```

1. Open your browser and go to [http://localhost:9778/](http://localhost:9778/)
  * Live reload is enabled, so while you are making changes and saving the files, the browser should update automatically.
  * To stop docpad hit `⌃ + c`

1. Make changes only to the `src/` directory, everything else could be overwritten later.
  * All the dynamic content (jade, stylus, md, etc) is in `src/documents/`, the templates are in `src/layouts/`, and static files (images, etc) are in `src/static`.
  * While docpad is running locally, it will output the files to the `out/` directory

1. When you finish making changes, stop docpad (`⌃ + c`), and generate the static site:

  ```sh
  docpad generate --env static
  ```

1. Deploy to git

  ```sh
  git status
  ```

  (to check your changes)

  ```sh
  git commit -am 'type some descriptive message here
  ```
