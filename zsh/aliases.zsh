alias l='ls -la'
# aliases (fyi: brew install jq && brew install gron)
alias norg="gron --ungron"
# get repo's name and put it into clipboard
alias getpkgname='cat package.json | jq .name | sed -e s/\"//g | pbcopy'
# return current version
alias getv='cat package.json | jq .version'
# jest launch file to clipboard
alias vsdebug='cat ~/.launch.json | pbcopy'
# get current branch
function get_branch {
	git branch | grep \* | awk '{print $2}' | pbcopy
}
alias gb="get_branch"
# git branch | grep \* | awk '{print $2}' | pbcopy
alias gfilesmaster="git diff --diff-filter=MA --name-only master..."
alias gfilesmain="git diff --diff-filter=MA --name-only main..."
alias stripfilepath="sed 's:[^/]*$::'"
# use yalc to store a package (init setup)
alias ybypp='yarn build && yalc publish --push'
# use yalc to push any updates
alias ybyp='yarn build && yalc push'
alias ys='yarn start'
alias gpys='git pull && yarn start'
alias yys='yarn && yarn start'
# simplify using kubectl
alias k='kubectl'
alias kcuc='kubectl config use-context'
function get_contexts {
    kubectl config get-contexts | tr -s " " | sed -e "s/ /,/g" | awk -F, '{print $1$2}'
}
alias kc="get_contexts"
alias kcc='get_contexts | grep \*'
# lint a dockerfile
alias dockerlint='docker run --rm -i hadolint/hadolint < Dockerfile'
# Aliases for nvim
alias vi='nvim'
alias vim='nvim'

# node stuff
alias killnode="ps aux | grep /bin/node | grep -v grep | awk \"{print $2}\" | xargs kill -9"

# k8s stuff
function kubectl-events {
    {
        echo $'TIME\tNAMESPACE\tTYPE\tREASON\tOBJECT\tSOURCE\tMESSAGE';
        kubectl get events -o json "$@" \
            | jq -r  '.items | map(. + {t: (.eventTime//.lastTimestamp)}) | sort_by(.t)[] | [.t, .metadata.namespace, .type, .reason, .involvedObject.kind + "/" + .involvedObject.name, .source.component + "," + (.source.host//"-"), .message] | @tsv';
    } \
        | column -s $'\t' -t \
        | less -S
}
alias ke="kubectl get events --sort-by='.metadata.creationTimestamp'"

# jest stuff

function  getFailedTests {
    npx jest 2>&1 | grep 'FAIL' | sort -t: -u -k1,1
}

gch() {
    git checkout "$(git branch --all | fzf| tr -d '[:space:]')"
}

# for golang executables
export PATH="$PATH:/Users/laborda/go/bin"
