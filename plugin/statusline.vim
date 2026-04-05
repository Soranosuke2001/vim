vim9script

def g:GetMode(): string
    var m = mode()

    if m == 'i'
        return '%#StatusInsert# INSERT '
    # All Visual modes
    elseif m =~# '^[vV\x16]'
        return '%#StatusVisual# VISUAL '
    elseif m == 'R'
        return '%#StatusReplace# REPLACE '
    endif

    return '%#StatusNormal# NORMAL '
enddef

def UpdateBranch()
    var branch = system("git branch --show-current 2>/dev/null")->trim()
    if v:shell_error == 0 && branch != ""
        b:git_branch = "  " .. branch .. " "
    else
        b:git_branch = ""
    endif
enddef

augroup GitStatus
    autocmd!
    autocmd BufEnter,BufWritePost,FocusGained * UpdateBranch()
augroup END

def g:MyStatusLine(): string
    var status = ""
    
    # --- LEFT SIDE ---
    status ..= g:GetMode()
    status ..= "%#StatusGit#" .. get(b:, 'git_branch', '')
    status ..= "%#StatusFile# %f "
    status ..= "%#StatusModified#%m"
    
    # --- SEPARATOR ---
    status ..= "%#StatusMain#%="
    
    # --- RIGHT SIDE ---
    status ..= "%#StatusFile# %l:%c "
    status ..= "%#StatusPos# %p%% "
    
    return status
enddef

set laststatus=2
set statusline=%!g:MyStatusLine()
