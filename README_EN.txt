* README_EN.txt
* 2025.02.06
* contools--curl

1. DESCRIPTION
2. LICENSE
3. REPOSITORIES
4. CATALOG CONTENT DESCRIPTION
5. EXTERNALS
6. USAGE
6.1. Generate config files
6.2. Edit generated config files
6.3. Run download script
7. AUTHOR

-------------------------------------------------------------------------------
1. DESCRIPTION
-------------------------------------------------------------------------------
Curl script to download URL in pages.

-------------------------------------------------------------------------------
2. LICENSE
-------------------------------------------------------------------------------
The MIT license (see included text file "license.txt" or
https://en.wikipedia.org/wiki/MIT_License)

-------------------------------------------------------------------------------
3. REPOSITORIES
-------------------------------------------------------------------------------
Primary:
  * https://github.com/andry81/contools--curl/branches
    https://github.com/andry81/contools--curl.git
First mirror:
  * https://sf.net/p/contools/contools--curl/ci/master/tree
    https://git.code.sf.net/p/contools/contools--curl
Second mirror:
  * https://gitlab.com/andry81/contools-curl/-/branches
    https://gitlab.com/andry81/contools-curl.git

-------------------------------------------------------------------------------
4. CATALOG CONTENT DESCRIPTION
-------------------------------------------------------------------------------

<root>
 |
 +- /`.log`
 |    #
 |    # Log files directory, where does store all log files from all scripts
 |    # including all nested projects.
 |
 +- /`_externals`
 |    #
 |    # Immediate external repositories catalog.
 |
 +- /`_config`
 |    #
 |    # Directory with input configuration files.
 |
 +- /`_out`
 |  | #
 |  | # Output directory for all files.
 |  |
 |  +- /`config`
 |  |  | #
 |  |  | # Output directory for all configuration files.
 |  |  |
 |  |  +- /`contools--curl`
 |  |     | #
 |  |     | # Output directory for the scripts configuration files.
 |  |     |
 |  |     +- `config.0.vars`
 |  |         #
 |  |         # Scripts environment variables.
 |  |
 |  +- /`download`
 |       #
 |       # Output directory with archived downloads.
 |
 +- `/scripts/*.bat`
     #
     # Scripts.

-------------------------------------------------------------------------------
5. EXTERNALS
-------------------------------------------------------------------------------
See details in `README_EN.txt` in `externals` project:

https://github.com/andry81/externals

-------------------------------------------------------------------------------
6. USAGE
-------------------------------------------------------------------------------

-------------------------------------------------------------------------------
6.1. Generate config files
-------------------------------------------------------------------------------

Run:

  >
  __init__/__init__.bat

-------------------------------------------------------------------------------
6.2. Edit generated config files
-------------------------------------------------------------------------------

config.0.vars

-------------------------------------------------------------------------------
6.3. Run download script
-------------------------------------------------------------------------------

To download web site in pages:

  >
  scripts/download_url_to_file.bat "https://github.com/git-for-windows/git/releases?page={PAGENUM}" 1 10 "git-for-windows--releases--page-{PAGENUM}.html"

-------------------------------------------------------------------------------
7. AUTHOR
-------------------------------------------------------------------------------
Andrey Dibrov (andry at inbox dot ru)
