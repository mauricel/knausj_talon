app: bitwarden
-

# navigation
go search: key("ctrl-f")
new login: key("ctrl-shift-l")

# snippets
## perform search for password entry with text
^password [<user.text>]$:
    key("ctrl-f")
    insert(user.text or "") 

## copy selected entry's password into clipboard
take password:
    key("ctrl-p")

## copy selected entry's username into clipboard
take user:
    key("ctrl-u")