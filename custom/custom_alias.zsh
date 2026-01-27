# ~/.oh-my-zsh/custom/custom_alias.zsh
# custom aliases for Oh My ZSH
# github.com/dutchmichael

##### ----- Version 26.01.19  ----- #####

##### ----- Actual Server ----- #####
alias as='actual-server'
alias asc='actual-server --config'
alias ash='actual-server --help'
alias asv='actual-server --version'

# --- Ansible Commands ---
alias aga='alias | grep ansible'
alias agp='alias | grep playbook'
alias agv='alias | grep vault'
alias ai='ansible-inventory -i inventory.ini --list'
alias amp='ansible myhosts -m ping -i inventory.ini'
alias av='ansible-vault'        # alias for ansible-vault
alias avc='ansible-vault create'        # alias for ansible-vault create
alias ave='ansible-vault edit'        # alias for ansible-vault edit
alias avv='ansible-vault view'      # alias for ansible-vault view
alias avd='ansible-vault decrypt'   # alias for ansible-vault decrypt
alias ave='ansible-vault encrypt'           # alias for ansible-vault encrypt
alias avr='ansible-vault rekey'
alias avh='ansible-vault --help'
alias avl='ansible-vault list'
alias avs='ansible-vault status'    # Show the status of the vault file

# --- Apache commands ---
alias act='mate apachectl configtest'
alias eac='mate usr/local/etc/httpd/httpd.conf'

# --- Application Commands ---
alias al='ls /Applications > ~/dotfiles_macos/applications.txt && ls /Applications'

# --- Brew commands ---
alias agb='alias | grep brew'
alias bbd='brew bundle dump --file -'
alias bv='brew --version'
alias bu='brew update && brew upgrade'
alias bd='brew doctor'
alias bdp='brew deps $1 --tree'
alias bds='brew desc --eval-all $1'
alias bo='brew outdated'
alias bc='brew --cache'
alias bls='brew list> ~/dotfiles_macos/brewlist.txt && echo "brew list saved"'
alias bcs='echo "searching....." && brew search --cask $1'
alias bi='brew install $1 && brew list> ~/dotfiles_macos/brewlist.txt && echo "brew list saved"'
alias blv='brew leaves -r'
alias bl='brew list'
alias bcl='brew list --cask'
alias bin='brew info $1'
alias bp='brew pin &'
alias br='brew reinstall $1'
alias bun='brew uninstall $1 && brew list> ~/dotfiles_macos/brewlist.txt && echo "brew list saved"'
alias bup='brew unpin &'
alias bus='brew uses --installed $1'
alias bcu='brew cleanup &'
alias bcun='brew cleanup -n &'
alias cbu='more ~/.scripts/brew_auto_update.log'

# --- Brew Services ---
alias bsc='brew services cleanup'
alias bs='brew services'
alias bsl='brew services list'
alias bsr='brew services restart --all'
alias bsrh='brew services restart httpd'
alias bss='brew services stop --all'
alias bst='brew services start --all'

# --- Blue Tooth ---
alias bto='system_profiler SPBluetoothDataType'

###### ----- Change directory commands ----- #####
alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../../'
alias cdzc='cd ~/.oh-my-zsh/custom'
alias cdz='cd ~/.oh-my-zsh'
alias cdh='cd ~/ && ls -la && echo "You are in your home directory"'
alias cdhbc='cd /opt/homebrew/Cellar'
alias cdn='cd ~/.nodenv && ls -la'
alias cds='cd ~/Sites && ls -la'

alias cdm='cd ~/Sites/roots/trellis/midapex.com && ls -la'
alias cdmm='cd ~/Sites/middleman && ls -la'

alias cdulb='cd /usr/local/bin && ls -la'

##### ----- Check Sum ----- #####
alias cs='shasum ~/Downloads/*'

##### ----- Clear Screen Command ----- #####
alias c='clear'

##### ----- Custom Aliases ----- #####
alias cdca='cd ~/.oh-my-zsh/custom'
alias cdzc='cd ~/.oh-my-zsh/custom'
alias eca='cd ~/.oh-my-zsh/custom && mate --wait ~/.oh-my-zsh/custom/custom_alias.zsh && git add -f ~/.oh-my-zsh/custom/custom_alias.zsh && git commit -m "updated custom aliases" && git push -u origin custom && cd -'
alias ez='cd ~ && mate -w ~/.zshrc && git add -f ~/.zshrc && git commit -m "updated .zshrc" && git push -u git@github.com:/dutchmichael/dotfiles_macos.git && cd -'
alias ezp='cd ~ && mate -w ~/.zprofile && git add -f ~/.zprofile && git commit -m "updated .zprofile" && git push -u git@github.com:/dutchmichael/dotfile_macos.git && cd -'
alias mca='more ~/.oh-my-zsh/custom/custom_alias.zsh'
alias sz='source ~/.zshrc'
# alias vca='vim ~/.oh-my-zsh/custom/custom_alias.zsh'
# alias ut1='echo "Need the enter "cryptroot-unlock" then enter password" && ssh -i ~/.ssh/t1_midapex_com -p 4274 -o "HostKeyAlgorithms ssh-rsa" root@192.168.0.100'

##### ----- debug ----- #####
alias dssh='ssh -v /usr/bin/ssh'

# DNSmasq configuration command
alias edc='mate /usr/local/etc/dnsmasq.conf'
# DNS on localhost dnsmasq commands
# alias # stopdns='sudo launchctl stop homebrew.mxcl.dnsmasq'
# alias # startdns='sudo launchctl start homebrew.mxcl.dnsmasq'

##### ----- Duck Duck Go ----- #####
# DuckDuckGo from the terminal
# https://github.com/jarun/ddgr
# ddg (Search Terms)opens Duck Duck go in Your default browser
alias dd='ddgr -n 4'
alias ddm='man ddgr'

##### ----- Find commands ----- #####
alias ag='alias | grep $1'
alias ags='alias | grep ssh'
alias af='alias | grep $1'
alias fa='alias | grep $1'
alias ff="find ~/ -type f -name $1"

# --- Finder Defaults ---
# defaults write com.apple.finder OpenWindowForNewRemovableDisk -bool false %% killall Finder
#osascript -e 'tell application "System Events" to get the name of every application process whose background only is false'
#launchctl unload -w ~/Library/LaunchAgents/com.example.app.plist


# Flush cache command
# alias fc='sudo killall -HUP mDNSResponder' // MacOS 10.11+ # flush DNS cache conflicted with builtin fc command MFV 250125
# from https://runcloud.io/blog/flush-dns-cache
alias flc='sudo dscacheutil -flushcache;sudo killall -HUP mDNSResponder && echo cache flushed'
# The following was for older MacOS <10.11
# alias fc='sudo dscacheutil -flushcache'
# sudo dscacheutil -flushcache;sudo killall -HUP mDNSResponder;say cache flushed
# -flushcache
# 		Flushes the entire cache.  This should only be used in extrem#e
#		cases.  Validation information is used within the cache along
#		with other techniques to ensure the OS has valid information
#		available to it.

##### ----- Function Commands ----- ######
alias fnl='print -l ${(ok)functions} && echo"Listed all fuctions by name"'	# List all functions by name
alias fn='functions $1'	# Show the contents of a function"" 

# EDit extension plist
alias eep='cp ~/Library/Containers/com.apple.Safari/Data/Library/Safari/AppExtensions/Extensions.plist ~/dotfiles_macos_backup/Extensions.plist.$(date +"%Y%m%d%H%M%S") && mate ~/Library/Containers/com.apple.Safari/Data/Library/Safari/AppExtensions/Extensions.plist'

# Knowhost configuration command
alias ekh='mate ~/.ssh/known_hosts'

##### ----- Git ----- #####

# .gitignore
alias gigg='mate ~/.gitignore_global'
alias gig='mate .gitignore'

# Git Aliases
alias agg='alias | grep git'
alias get='git '
alias gut='git '
alias got='git '
alias g='git '
alias gith='git --help'
alias gv='git --version'

# git add
alias agga='alias | grep "git add"'
alias ga='git add '
alias gah='git add --help'
alias gap='git add .'

# git branch
alias gbc='git branch create'
alias aggb='alias | grep "git branch"'
alias gb='git checkout -b '
alias gbh='git branch --help'
alias gbl='git branch --list'

# git checkout [gch]
alias aggch='alias | grep "git checkout"'
alias gcb='git checkout -b'
alias gchb='git checkout -b'
alias gcd='git checkout develop'
alias gcod='git checkout develop'
alias gcl='git checkout local'
alias gcol='git checkout local'
alias gcm='git checkout main'
alias gcom='git checkout main'
alias gco='git checkout - '
alias gcoh='git checkout --help'

# git commit [gc]
alias aggc='alias | grep "git commit"'
alias gc='git commit -m "$*"'
alias gch='git commit --help'
alias gcma='git commit -a -m "$*"'

# git config [gco]
alias aggco='alias | grep "git config"'
alias egco='git config -e'
alias egcog='git config --global -e'
alias gcoh='git config --help'
alias gcol='git config --list --show-origin'
alias egc='cp ~/.gitconfig ~/dotfiles_macos_backup/gitconfig.$(date +"%Y%m%d%H%M%S") && mate ~/.gitconfig'

# git diff
alias gd='git diff '
alias gdh='git diff --help'

# git init
alias gi='git init'
alias gih='git init --help'

#git pull
alias gl='git pull'
alias glh='giy pull --help'
alias aggl='alias | grep "git pull"'


# git push [gp]
alias aggp='alias | grep "git push"'
alias gp='git push -uv'
alias gpo='git push -uv origin'
alias gpgl='git push -uv github local'
alias gpgm='git push -uv github main'
alias gpom='git push -uv origin main'
alias gpgc='git push -u github custom'

# Git Remote [grm]
alias aggrm='alias | grep "git remote"'
alias gra='git remote add '
alias grmh='git remote --help'
alias grmv='git remote rename'
alias grmv='git remote rename'
alias grrm='grmr'
alias grmr='git remote remove'
alias grset='git remote set-url'
alias grup='git remote update'
alias grv='git remote -v'

# Git Remove [gremove]
alias gremove='git rm -r '

# Git Reset [gr]
#alias aggr='alias | grep "git reset"'
#alias gpristine='git reset --hard && git clean -dffx'
#alias gr='git reset'
#alias grh='git reset --help'
#alias grhh='git reset --hard'
#alias groh='git reset origin/$(git_current_branch) --hard'
#alias gru='git reset --'
#alias gunwip='git log -n 1 | grep -q -c "\-\-wip\-\-" && git reset HEAD~1'

# Git SSH [gitssh]
# alias gitssh="usermod -s /bin/bash git"
# reference
# https://stackoverflow.com/questions/22314298/git-push-results-in-fatal-protocol-error-bad-line-length-character-this

# git status [gs]
alias aggs='alias | grep "git status"'
alias gsf='alias | grep "git status"'
alias gs='git status -sb '
alias gsl="git status --long"

# Git Submodule
#alias aggsm='alias | grep "git submodule"'
#alias gsmf='alias | grep "git submodule"'
#alias fgsm='alias | grep "git submodule"'
#alias gsi='git submodule init'
#alias gsmi='git submodule init'
#alias gsu='git submodule update'
#alias gsmu='git submodule update'

# git add && commit && push [gcp]
alias gac='ga -A && gc '
alias gcapom='git commit -a -m $1 && git push -u origin main'

# Function gpc (git add push commit)
gpc() {
    git add -f .
    if [ "$1" != "" ] # or better, if [ -n "$1" ]
    then
        git commit -m "$*"
    else
        git commit -m "update"
    fi
    git push -u
}

###### ----- Github CLI ----- ###### 
# Work seamlessly with GitHub from the command line.
# USAGE
#   gh <command> <subcommand> [flags]
alias ghh='gh --help'
# CORE COMMANDS
#   auth:          Authenticate gh and git with GitHub
#   browse:        Open repositories, issues, pull requests, and more in the browser
alias ghbh='gh browse --help'	# Github browse help
alias ghb='gh browse'
#   codespace:     Connect to and manage codespaces
#   gist:          Manage gists
alias ghgh='gh gist --help'
alias ghglw='gh gist view $1 --web'
alias ghgl='echo "listing github gists" && gh gist list'
alias ghgc='gh gist create --copy $1  && echo "created gist on github titled $1"'
#   issue:         Manage issues
#   org:           Manage organizations
#   pr:            Manage pull requests
#   project:       Work with GitHub Projects.
#   release:       Manage releases
# repo: Manage repositories
alias ghrl='gh repo list '
alias ghrh='gh repo --help'
alias ghrlh='gh repo list --help'
alias ghrch='gh repo create --help'
alias ghcp='gh repo create -p -o --remote-name github ' # Create this repository and add as origin
#
# GITHUB ACTIONS COMMANDS
#   cache:         Manage GitHub Actions caches
#   run:           View details about workflow runs
#   workflow:      View details about GitHub Actions workflows
#
# ALIAS COMMANDS
#   co:            Alias for "pr checkout"
#
# ADDITIONAL COMMANDS
#   agent-task:    Work with agent tasks (preview)
#   alias:         Create command shortcuts
#   api:           Make an authenticated GitHub API request
#   attestation:   Work with artifact attestations
#   completion:    Generate shell completion scripts
#   config:        Manage configuration for gh
alias ghc='mate ~/.config/gh'
#   extension:     Manage gh extensions
#   gpg-key:       Manage GPG keys
#   label:         Manage labels
#   preview:       Execute previews for gh features
#   ruleset:       View info about repo rulesets
#   search:        Search for repositories, issues, and pull requests
#   secret:        Manage GitHub secrets
#   ssh-key:       Manage SSH keys
#   status:        Print information about relevant issues, pull requests, and notifications across repositories
#   variable:      Manage GitHub Actions variables
#
# HELP TOPICS
#   accessibility: Learn about GitHub CLI's accessibility experiences
#   actions:       Learn about working with GitHub Actions
#   environment:   Environment variables that can be used with gh
#   exit-codes:    Exit codes used by gh
#   formatting:    Formatting options for JSON data exported from gh
#   mintty:        Information about using gh with MinTTY
#   reference:     A comprehensive reference of all gh commands
#
# FLAGS
#   --help      Show help for command
#   --version   Show gh version
#
# EXAMPLES
#   $ gh issue create
#   $ gh repo clone cli/cli
#   $ gh pr checkout 321
#
# LEARN MORE
#   Use `gh <command> <subcommand> --help` for more information about a command.
#   Read the manual at https://cli.github.com/manual
#   Learn about exit codes using `gh help exit-codes`
#   Learn about accessibility experiences using `gh help accessibility`

###### ----- Gitlab ----- #####

# --- glab is an open source GitLab CLI tool that brings GitLab to your command line.       
#
# USAGE
#
#
#     glab <command> <subcommand> [command] [--flags]
#
#
#   COMMANDS
#
#     alias [command] [--flags]                 Create, list, and delete aliases.
#     api <endpoint> [--flags]                  Make an authenticated request to the GitLab API.
#     auth <command> [command]                  Manage glab's authentication state.
#     changelog <command> [command] [--flags]   Interact with the changelog API.
#     check-update                              Check for latest glab releases.
#     ci <command> [command] [--flags]          Work with GitLab CI/CD pipelines and jobs.
#     cluster <command> [command] [--flags]     Manage GitLab Agents for Kubernetes and their clusters.
#     completion [--flags]                      Generate shell completion scripts.
#     config [command] [--flags]                Manage glab settings.
#     deploy-key <command> [command] [--flags]  Manage deploy keys.
#     duo <command> prompt [command]            Work with GitLab Duo
#     gpg-key <command> [command] [--flags]     Manage GPG keys registered with your GitLab account.
#     help [command]                            Help about any command
#     incident [command] [--flags]              Work with GitLab incidents.
#     issue [command] [--flags]                 Work with GitLab issues.
#     iteration <command> [command] [--flags]   Retrieve iteration information.
#     job <command> [command] [--flags]         Work with GitLab CI/CD jobs.
#     label <command> [command] [--flags]       Manage labels on remote.
#     mcp <command> [command]                   Work with a Model Context Protocol (MCP) server. (EXPERIMENTAL)
#     milestone <command> [command] [--flags]   Manage group or project milestones.
#     mr <command> [command] [--flags]          Create, view, and manage merge requests.
#     opentofu <command> [command] [--flags]    Work with the OpenTofu or Terraform integration.
#     release <command> [command] [--flags]     Manage GitLab releases.
#     repo <command> [command] [--flags]        Work with GitLab repositories and projects.
#     schedule <command> [command] [--flags]    Work with GitLab CI/CD schedules.
#     securefile <command> [command] [--flags]  Manage secure files for a project.
#     snippet <command> [command] [--flags]     Create, view and manage snippets.
#     ssh-key <command> [command] [--flags]     Manage SSH keys registered with your GitLab account.
#     stack <command> [command] [--flags]       Create, manage, and work with stacked diffs. (EXPERIMENTAL)
#     token [command] [--flags]                 Manage personal, project, or group tokens
#     user <command> [command] [--flags]        Interact with a GitLab user account.
#     variable [command] [--flags]              Manage variables for a GitLab project or group.
#     version                                   Show version information for glab.
#
#   FLAGS
#
#     -h --help                                 Show help for this command.
#     -v --version                              Show glab version information

##### ----- Hidden Files ----- #####
alias shf='defaults write com.apple.finder AppleShowAllFiles YES'
alias hhf='defaults write com.apple.finder AppleShowAllFiles NO'

##### ----- History Commands ----- #####
alias h='history -f'
alias hg='history -f | grep $1'

##### ----- Hosts ----- #####
alias eh='cp /etc/hosts ~/dotfiles_macos_backup/hosts.$(date +"%Y%m%d%H%M%S") && mate /etc/hosts'

# --- HTTP(S) commands ---
alias l80='sudo lsof -i :80 | egrep "PID|LISTEN"'
alias ml='nmap 127.0.0.1'

# --- Interactive shell commands ---
is() {
	if [[ -o login ]]
		then print "The Shell in Login"
			else
				print "The Shell is Interactive"
	fi
}

# --- IP Address Comanads ----
alias ip='curl ipecho.net/plain ; echo'
alias iip='ifconfig | grep inet'

# --- Jekyll commands --
alias js='bundle exec jekyll serve --livereload'

# --- LAN Commands ---
# arp – address resolution display and control -a displays or deletes all the current ARP entries.
alias lan='arp -a'

##### ----- List commands ----- ##### 
alias ll='ls -la'
alias kk='ls -la'
alias lsa='ls -a'
alias lsh="ls -a | grep '^\.'"
alias lsl='ls -l'

# --- Log file commands ---
alias logs='mate /usr/local/var/log .'
	
##### ----- Manual Commands ----- #####
alias mb='man zshbuiltins'
alias usd='open documentation-ubuntu-com-server-en-latest.pdf'

# --- MariaDB ---
#alias mysql='mysql -uroot -p[PASSWORD]'
#alias mariadb='mysql -uroot -p[PASSWORD]'
#alias restartdb='brew services restart mariadb'
#alias startdb='brew services start mariadb'
#alias stopdb='brew services stop mariadb'

# --- Middleman commands ---
alias ms='middleman server'

##### ----- Misc. Commands ----- #####
alias fuck='sudo $(history -p \!\!)'
alias shit='sudo $(history -p \!\!)'

# --- Move commands ---
alias move='mv'

# MySQL commands
# Start and stop MySQL
alias sdb='sudo /usr/local/mysql/support-files/mysql.server start'
alias dbv='/usr/local/mysql/bin/mysql -v -uroot -p'
alias rsa='sudo apachectl restart'

# --- Nodejs commands ---
alias nd='echo "Running nodenv-doctor https://github.com/nodenv/nodenv-installer#nodenv-doctor"  && curl -fsSL https://raw.githubusercontent.com/nodenv/nodenv-installer/master/bin/nodenv-doctor | bash'

##### ----- Oh-my-zsh ----- #####
alias omzu='omz update'

# --- PHP Congiguration command ---
alias xds='xdebug-toggle'                             # outputs the current status
alias xdon='xdebug-toggle on'                         # enables xdebug
alias xdoff='xdebug-toggle off'                       # disables xdebug
alias xdr='xdebug-toggle on|off --no-server-restart'  # toggles xdebug without restarting apache or php-fpm

# PHPmyadmin configuration command
alias emc='mate /usr/local/etc/phpmyadmin.config.inc.php'

##### ----- Ping Commands ----- #####
alias ping='ping -c 5'

# Power Management MacOS Commands
alias pmc='sudo pmset repeat cancel'	# Cancels all scheduled system sleep, shutdown, wake, and power on events.
alias pmm='man pmset'					# Displays the manual
alias pms='pmset -g sched'				# Displays scheduled startup/wake and shutdown/sleep events.
alias pmss='sudo pmset repeat shutdown MTWRFSU 22:00:00 wakeorpoweron MTWRFSU 5:00:00'
# Repeating schedule to shutdowm everyday at 10pm and poweron everyday at 5am.

# Port Check
alias p5='echo "executing command [ sudo lsof -i tcp:52698 ]" && sudo lsof -i tcp:52698'

# --- Python version redirects ---
# alias python='opt/homebrew/bin/python3'
# alias python2=/usr/bin/python
# alias pip='/opt/homebrew/bin/pip3'
# alias python='python3'

# ---Random password generator, a DES3 key encoded in base64 using openssl tool (i.e 24 bytes) ---
alias rp='openssl rand -base64 24'

##### ----- Remote Servers ----- #####

# Home
alias h1='ssh -v -p4274 dutchmichael@192.168.1.33'

#alias h1='ssh -v -p4274 -R 52698:localhost:52698 dutchmichael@192.168.1.33'

# ServerCheap
alias s1='ssh -v dutchmichael@s1.midapex.net' # IP 65.75.200.74
alias s2='ssh -v -p22 dutchmichael@s1.midapex.net' # IP 65.75.200.74

# alias sp1='ssh root@45.79.195.179'
# alias sp2='ssh dutchmichael@67.205.15.136'
# alias mms='ssh -v -p4274 -R 52698:localhost:52698 dutchmichael@192.168.1.33'
# alias pumc='ssh pumcavroom@pumc-salisbury.org'
# alias sshp='ssh dutchmichael@pumc-salisbury.org'
# alias t0='ssh -v midapex1@midapex.com'
# alias tmac='ssh -v -p4274 -R 52698:localhost:52698 dutchmichael@192.168.1.33'
# alias tmac='ssh -v -p4274 -R /home/dutchmichael/.rmate.socket:localhost:52698 dutchmichael@192.168.1.33'
# alias t0='ssh -v -p4274 -R 52698:localhost:52698 dutchmichael@t0.midapex.net'
# alias tmac='ssh -v -R 52698:localhost:52698 dutchmichael@92.168.1.105'
# alias t00='ssh -v -R 52698:localhost:52698 midapex1@midapex.com'
# alias t1='ssh -v -p4274 dutchmichael@t1.midapex.net'
# alias t11='ssh -p4274 -R 52698:localhost:52698 dutchmichael@t1.midapex.net'
# alias ram='ssh -v midapex1@midapex.com'
# alias dm='ssh -v dutchmichael@dutchmichael.com'
# alias vpn='ssh -p4274 dutchmichael@vpn.midapex.net'
# took off -v to try to see it the following debug message goes alway
# debug1: client_input_channel_req: channel 0 rtype keepalive@openssh.com reply 1
# MFV 230930

# --- SHA356 Checksum Function --- #

#sha512() {
#    echo "$1 $2" | sha512sum --check
#}

# Shell command
alias shell='echo $SHELL'
alias csb='chsh -s /bin/bash'
alias csz='chsh -s /bin/zsh'

# --- Synology Router ---
alias sr='ssh -p4272 root@192.168.1.1'

##### Unload and load ssh
alias rssh='sudo launchctl unload /System/Library/LaunchDaemons/ssh.plist && sudo launchctl load -wait /System/Library/LaunchDaemons/ssh.plist && echo "reloaded ssh"'
# sudo launchctl unload /System/Library/LaunchDaemons/ssh.plist
# sudo launchctl load -w /System/Library/LaunchDaemons/ssh.plist 
# --- Sail | Lavavel ---
# alias sail='bash vendor/bin/sail'

##### ----- SSH configuration commands ---- #####
alias ss='source ~/.ssh/config'
alias esc='cd ~/.ssh && mate --wait ~/.ssh/config && git add -f ~/.ssh/config && git commit -m "updated ssh config" && git push -u origin main && cd -'

# old alias esc='cp ~/.ssh/config ~/.ssh/config.$(date +%y%%d) && mate ~/.ssh/config'
# alias esc='cp ~/dotfiles_macos/config ~/dotfiles_macos_backup/config.$(date +"%Y%m%d%H%M%S") && mate ~/.ssh/config'

#Sytem profiler command
alias sp='system_profiler SPSoftwareDataType'

# --- Textmate Commands ---
alias agm='alias | grep mate'
# alias agrm='alias | grep rmate'
alias mp='mate .'
alias etmp='mate ~/.tm_properties'
alias etmgp='mate ~/Library/Application\ Support/TextMate/Global.tmProperties'

##### ----- Trellis Commands ----- #####
# alias cdt='cd ~/Projects/Roots.io/trellis'
# trellis --help
# Usage: trellis [--version] [--help] <command> [<args>]
#
# Available commands are:
#     alias         Generate WP CLI aliases for remote environments
# alias tc='trellis check && echo "Checking if Trellis requirements are met"'
#     db            Commands for database management
#     deploy        Deploys a site to the specified environment
alias tdd='trellis deploy development'
alias tdp='trellis deploy production'
alias tds='trellis deploy staging'

#     dotenv        Template .env files to local system
# alias td='trellis down && echo "Stoping the Vagrant machine by running vagrant halt"'
#     droplet       Commands for DigitalOcean Droplets
#     exec          Exec runs a command in the Trellis virtualenv
#     galaxy        Commands for Ansible Galaxy
# alias ti='trellis info && echo "Displaying information about this Trellis project"'
#     init          Initializes an existing Trellis project
#     new           Creates a new Trellis project
#     provision     Proisions the specified environment
alias tpd='trellis provision development'
alias tpp='trellis provision production'
alias tps='trellis provision staging'
# alias tpd='trellis provision development'
#     rollback      Rollsback the last deploy of the site on the specified environment

# --- integration in various shells. ---
# alias tsi='echo "Printing a script that is eval'd to set up Trellis' virtualenv" && trellis shell-int'

# alias tsd='echo "Connecting to development host via SSH" && cd trellis && vagrant ssh'
# alias tsp='echo "Connecting to production host via SSH" && trellis ssh production'
# alias tss='echo "Connecting to staging host via SSH" && trellis ssh staging'
# alias tu='echo "Starting and provisioning the Vagrant environment by running vagrant up in $PWD" && trellis up'
#     valet         Commands for Laravel Valet
#     vault         Commands for Ansible Vault

# alias cdt='echo "changing to trellis directory" && cd ~/Sites/trellis/midapex.com/trellis/'
# alias ave='ansible-vault encrypt group_vars/all/vault.yml && ansible-vault encrypt group_vars/development/vault.yml && ansible-vault encrypt group_vars/production/vault.yml && ansible-vault encrypt group_vars/staging/vault.yml'
# alias avd='ansible-vault decrypt group_vars/all/vault.yml && ansible-vault decrypt group_vars/development/vault.yml && ansible-vault decrypt group_vars/production/vault.yml && ansible-vault decrypt group_vars/staging/vault.yml'
# alias egv='mate $PWD/trellis/group_vars .'
# ansible-vault encrypt cd ~/Sites/trellis/midapex.com/trellis/group_vars/all/vault.yml group_vars/development/vault.yml group_vars/staging/vault.yml group_vars/production/vault.yml
# ~/Sites/trellis/midapex.com/trellis/group_vars

# Trellis Commands
# alias cdt='echo "changing to trellis directory" && cd ~/Sites/trellis/midapex.com/trellis/'
# alias ave='ansible-vault encrypt group_vars/all/vault.yml && ansible-vault encrypt group_vars/development/vault.yml && ansible-vault encrypt group_vars/production/vault.yml && ansible-vault encrypt group_vars/staging/vault.yml'
# alias avd='ansible-vault decrypt group_vars/all/vault.yml && ansible-vault decrypt group_vars/development/vault.yml && ansible-vault decrypt group_vars/production/vault.yml && ansible-vault decrypt group_vars/staging/vault.yml'
# alias egv='mate $PWD/group_vars .'
# alias cdt='cd ~/Projects/Roots.io/trellis'
# ansible-vault encrypt cd ~/Sites/trellis/midapex.com/trellis/group_vars/all/vault.yml group_vars/development/vault.yml group_vars/staging/vault.yml group_vars/production/vault.yml
# ~ /Sites/trellis/midapex.com/trellis/group_vars# Available commands are:
# alias            Generate WP CLI aliases for remote environments
# check            Checks if the required and optional Trellis dependencies are installed
# db               Commands for database management
# deploy           Deploys a site to the specified environment
# dotenv           Template .env files to local system
# exec             Exec runs a command in the Trellis virtualenv
# galaxy           Commands for Ansible Galaxy
# info             Displays information about this Trellis project
# init             Initializes an existing Trellis project
# key              Commands for managing SSH keys
# logs             Tails the Nginx log files for an environment
# new              Creates a new Trellis project
# open             Opens user-defined URLs (and more) which can act as shortcuts/bookmarks specific to your Trellis projects.
# provision        Provisions the specified environment
# rollback         Rollback the last deploy of the site on the specified environment
# server           Commands for cloud server management
# shell-init       Prints a script which can be eval'd to set up Trellis' virtualenv integration in various shells.
# ssh              Connects to host via SSH
# valet            Commands for Laravel Valet
# vault            Commands for Ansible Vault
# vm               Commands for managing development virtual machines
#   Subcommands:
    # delete     Deletes the development virtual machine.
    # shell      Executes shell in the VM
    # start      Starts a development virtual machine.
    # stop       Stops the development virtual machine.
    # sudoers    Generates sudoers content for passwordless updating of /etc/hosts
# xdebug-tunnel    Commands for Xdebug tunnel

# Virtual host commands
# alias eud='mate /usr/local/etc/httpd/extra/httpd-userdir.conf'
# alias evh='mate /usr/local/etc/httpd/extra/httpd-vhosts.conf'
# alias svh='source /usr/local/etc/httpd/extra/httpd-vhosts.conf'
# alias lvh='httpd -D DUMP_INCLUDES'
# alias tvh='httpd -S'

# WP-CLI commands
alias wppl='wp plugin list'
alias wppu='wp plugin uninstall $1'

# SUBCOMMANDS
#   cache                 Adds, removes, fetches, and flushes the WP Object Cache object.
#   cap                   Adds, removes, and lists capabilities of a user role.
#   cli                   Reviews current WP-CLI info, checks for updates, or views defined aliases.
alias wpi='wp cli info'
alias wpu='wp cli update'
#   comment               Creates, updates, deletes, and moderates comments.
#   config                Generates and reads the wp-config.php file.
alias wpce='wp config edit'
#   core                  Downloads, installs, updates, and manages a WordPress installation.
#   cron                  Tests, runs, and deletes WP-Cron events; manages WP-Cron schedules.
#   db                    Performs basic database operations using credentials stored in wp-config.php.
#   embed                 Inspects oEmbed providers, clears embed cache, and more.
#   eval                  Executes arbitrary PHP mate.
#   eval-file             Loads and executes a PHP file.
alias wpef='wp eval-file info.php'
#   export                Exports WordPress content to a WXR file.
#   help                  Gets help on WP-CLI, or on a specific command.
#   i18n                  Provides internationalization tools for WordPress projects.
#   import                Imports content from a given WXR file.
#   language              Installs, activates, and manages language packs.
#   maintenance-mode      Activates, deactivates or checks the status of the maintenance mode of a site.
#   media                 Imports files as attachments, regenerates thumbnails, or lists registered image sizes.
#   menu                  Lists, creates, assigns, and deletes the active theme's navigation menus.
#   network               Perform network-wide operations.
#   option                Retrieves and sets site options, including plugin and WordPress settings.
#   package               Lists, installs, and removes WP-CLI packages.
#   plugin                Manages plugins, including installs, activations, and updates.
alias wppda='wp plugin deactivate --all'
#   post                  Manages posts, content, and meta.
#   post-type             Retrieves details on the site's registered post types.
#   rewrite               Lists or flushes the site's rewrite rules, updates the permalink structure.
#   role                  Manages user roles, including creating new roles and resetting to defaults.
#   scaffold              Generates code for post types, taxonomies, plugins, child themes, etc.
#   search-replace        Searches/replaces strings in the database.
alias wpsr='wp search-replace'
#   server                Launches PHP's built-in web server for a specific WordPress installation.
#   shell                 Opens an interactive PHP console for running and testing PHP code.
#   sidebar               Lists registered sidebars.
#   site                  Creates, deletes, empties, moderates, and lists one or more sites on a multisite installation.
#   super-admin           Lists, adds, or removes super admin users on a multisite installation.
#   taxonomy              Retrieves information about registered taxonomies.
#   term                  Manages taxonomy terms and term meta, with create, delete, and list commands.
#   theme                 Manages themes, including installs, activations, and updates.
alias wpta='wp theme activate'
alias wpta19='wp theme activate twentynineteen'
alias wpta20='wp theme activate twentytwenty'
#   transient             Adds, gets, and deletes entries in the WordPress Transient Cache.
#   user                  Manages users, along with their roles, capabilities, and meta.
#   widget                Manages widgets, including adding and moving them within sidebars.

# --- Wake On LAN brew:wakeonlan ---
alias wumm='echo "Waking up Mac Mini Server" && wakeonlan 40:6C:8F:19:5D:1B'



# --- Kill All Jobs ---

killjobs () {

    local kill_list="$(jobs)"
    if [ -n "$kill_list" ]; then
        # this runs the shell builtin kill, not unix kill, otherwise jobspecs cannot be killed
        # the `$@` list must not be quoted to allow one to pass any number parameters into the kill
        # the kill list must not be quoted to allow the shell builtin kill to recognise them as jobspec parameters
        kill $@ $(sed --regexp-extended --quiet 's/\[([[:digit:]]+)\].*/%\1/gp' <<< "$kill_list" | tr '\n' ' ')
    else
        return 0
    fi

}

date
echo 'Custom aliases loaded'

########## custom_alias.zsh ###########
