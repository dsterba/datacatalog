# Overview
This library uses [Material for MKDocs](https://squidfunk.github.io/mkdocs-material/reference/) to generate static HTML Pages from markdown documents

A key feature is that this library translates [[Wikilinks]] style links to filenames to the fully defined urls upon page generation. This keeps you from having to track down file paths. The `Markdown Notes` extension has an autofill/search feature when you open the two `[[` square brackets and start typing.

# In Dev Mode
MKDocs supplies a development mode where changes to plain text files are automatically transformed to http. This makes it very straightforward to preview your changes prior to pushing to live. This mode should be shut down at the end of the editing session.
You can put the server in development by following these steps:

1. Open a terminal (CTRL + SHIFT + backtick) 
2. Run `./dev-serve.sh` in the /datacatalog folder
3. Navigate to https://dev-datacatalog.dansterba.net

# Deploy to Production
## Commit to git
In order to have some sanity when editing in this code server, we are NOT configuring a global git user
please commit changes from the terminal command line with the following code:
```
git add -A # or manually stage your changes through the UI
git -c user.name='My Name' -c user.email=author@example.com commit -m "my commit message"
```
## Push Changes to Origin
Ensure that changes are pushed to remote prior to logging off (**Need to add validation in the `deploy.sh` script**)

You will have to sign in with Github username and **Personal Access Token - NOT Password**. [Instructions for creating a personal access token here](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token)
```
git status 
# this shouldn't have unstaged/uncommited changes
# and should be up to date with origin/main
git push
```

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

