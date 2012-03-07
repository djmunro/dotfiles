
# Mercurial
alias hgc='hg commit'
alias hgb='hg branch'
alias hgba='hg branches'
alias hgco='hg checkout'
alias hgd='hg diff'
alias hged='hg diffmerge'
# pull and update
alias hgl='hg pull -u'
alias hgp='hg push'
alias hgs='hg status'
# this is the 'git commit --amend' equivalent
alias hgca='hg qimport -r tip ; hg qrefresh -e ; hg qfinish tip'

function current_hg_branch() {
}

function hg_prompt_info() {
    # HG is SLOW!! I should write my own tools for querying the HG data structure
    ref=$(hg branch 2>/dev/null)||return
    if [ -n "${ref}" ]
    then
        echo -n "$ZSH_THEME_GIT_PROMPT_PREFIX${ref}$ZSH_THEME_GIT_PROMPT_SUFFIX"
    else
        return
    fi

#    dirty=$(hg status)
#    if [ -n "${dirty}" ]
#    then
#        echo "$ZSH_THEME_GIT_PROMPT_DIRTY"
#    else
#        echo "$ZSH_THEME_GIT_PROMPT_CLEAN"
#    fi
}
