--scite_Command {
 -- 'Edit with Vim|EditWithse|F12',
--}

function CurrentLine ()
  return editor:LineFromPosition(editor.CurrentPos) + 1
end

function EditWithse ()
    --print("in EditWithse")
    local se_exe = '/home/mikfer/bin/se'
    local cur_file_path = props['FilePath']
    local current_line = CurrentLine()
    --print("se_exe: ", se_exe)
    --print("cur_file_path: ", cur_file_path)
    --print("current_Line: ", current_line)
    os.execute(se_exe)
end

function joinEm ()
    local pos = editor.CurrentPos
        
    local line = editor:LineFromPosition(pos)
    local sstart = editor:PositionFromLine(line)
    local send = editor.LineEndPosition[line+1]
    
    editor:SetTargetRange(sstart, send)
    editor:LinesJoin()
    
    editor:Clear()
    editor:GotoPos(pos)
    
end
    
    