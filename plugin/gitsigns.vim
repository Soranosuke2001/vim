vim9script

def UpdateGitSigns(timer_id: any = 0)
    var file_path = expand('%:p')
    if empty(file_path) || !isdirectory(finddir('.git', '.;'))
        return
    endif

    # Clear current signs
    sign_unplace('GitGutter')

    # Get the diff
    var cmd = 'git diff --unified=0 ' .. shellescape(file_path)
    var diff_out = systemlist(cmd)

    if v:shell_error != 0
        return
    endif

    for line in diff_out
        # Simple regex: Just get the line numbers and counts
        # Matches: @@ -1,1 +1,1 @@ OR @@ -1 +1 @@
        var m = matchlist(line, '^@@ -\(\d\+\)\(,\d\+\)\? +\(\d\+\)\(,\d\+\)\? @@')
        if !empty(m)
            var old_line  = str2nr(m[1])
            var old_count = (m[2] == '' ? 1 : str2nr(m[2][1 :]))
            var new_line  = str2nr(m[3])
            var new_count = (m[4] == '' ? 1 : str2nr(m[4][1 :]))

            var sign_name = 'GitChange'
            if old_count == 0
                sign_name = 'GitAdd'
            elseif new_count == 0
                sign_name = 'GitDelete'
            endif

            # Deletion handling (place on the line before/at the gap)
            if sign_name == 'GitDelete'
                var target = (new_line == 0 ? 1 : new_line)
                sign_place(0, 'GitGutter', sign_name, file_path, {lnum: target})
            else
                # Add/Change handling
                for i in range(new_line, new_line + (new_count > 0 ? new_count - 1 : 0))
                    sign_place(0, 'GitGutter', sign_name, file_path, {lnum: i})
                endfor
            endif
        endif
    endfor
enddef

# Force an update when you save or enter a buffer
augroup MyGitGutter
    autocmd!
    autocmd BufWritePost,BufEnter * timer_start(50, (t) => UpdateGitSigns(t))
augroup END
