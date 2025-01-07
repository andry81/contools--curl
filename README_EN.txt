* README_EN.txt
* 2025.01.07
* contools--curl

1. DESCRIPTION
2. CATALOG CONTENT DESCRIPTION
3. EXTERNALS
4. USAGE
4.1. Generate config files
4.2. Edit generated config files
4.3. Run download script
5. AUTHOR

-------------------------------------------------------------------------------
1. DESCRIPTION
-------------------------------------------------------------------------------
Curl script to download URL in pages.

-------------------------------------------------------------------------------
2. CATALOG CONTENT DESCRIPTION
-------------------------------------------------------------------------------

<root>
 |
 +- /`.log`
 |    #
 |    # Log files directory, where does store all log files from all scripts
 |    # including all nested projects.
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
3. EXTERNALS
-------------------------------------------------------------------------------
See details in `README_EN.txt` in `externals` project:

https://github.com/andry81/externals

-------------------------------------------------------------------------------
4. USAGE
-------------------------------------------------------------------------------

-------------------------------------------------------------------------------
4.1. Generate config files
-------------------------------------------------------------------------------

Run:

  >
  __init__/__init__.bat

-------------------------------------------------------------------------------
4.2. Edit generated config files
-------------------------------------------------------------------------------

config.0.vars

-------------------------------------------------------------------------------
4.3. Run download script
-------------------------------------------------------------------------------

To download web site in pages:

  >
  scripts/download_url_to_file.bat "https://github.com/git-for-windows/git/releases?page={PAGENUM}" 1 10 "git-for-windows--releases--page-{PAGENUM}.html"

-------------------------------------------------------------------------------
5. AUTHOR
-------------------------------------------------------------------------------
Andrey Dibrov (andry at inbox dot ru)
