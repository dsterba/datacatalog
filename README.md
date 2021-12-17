# Overview
This library uses [Material for MKDocs](https://squidfunk.github.io/mkdocs-material/reference/) to generate static HTML Pages from markdown documents

A key feature is that this library translates [[Wikilinks]] style links to filenames to the fully defined urls upon page generation. This keeps you from having to track down file paths. The `Markdown Notes` extension has an autofill/search feature when you open the two `[[` square brackets and start typing.

# In Dev Mode
MKDocs supplies a development mode where changes to plain text files are automatically transformed to http. This makes it very straightforward to preview your changes prior to pushing to live. This mode should be shut down at the end of the editing session.
You can put the server in development by following these steps:

1. Open a terminal (CTRL + SHIFT + backtick) 
2. Runn `./dev-server.sh` in the /datacatalog folder
3. Navigate to https://dev-datacatalog.dansterba.net

# Deploy to Production
## Commit to git and push changes

The production deploy process is completed by running `./deploy.sh` from the terminal in the /datacatalog folder

This will publish the pages to https://datacatalog.dansterba.net

# Backlinks
You can generate a list of backlinks to the current file from other files that link to the file explicitly by adding [BACKLINKS] to the markdown file. Currently we are using this in the dataset files to identify topics that link to the file.
example
```
# Topics covered
[BACKLINKS]
```

# Possible additional plugin implementationss
https://github.com/lukasgeiter/mkdocs-awesome-pages-plugin
https://pypi.org/project/mkdocs-git-revision-date-localized-plugin/
https://github.com/backstage/mkdocs-monorepo-plugin

