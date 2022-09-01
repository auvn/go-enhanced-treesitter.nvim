(string (string_value) @sql
    (#lua-match? @sql "^%s*SELECT"))
(string (string_value) @sql
    (#lua-match? @sql "^%s*UPDATE"))
(string (string_value) @sql
    (#lua-match? @sql "^%s*DELETE"))
(string (string_value) @sql
    (#lua-match? @sql "^%s*CREATE"))
(string (string_value) @sql
    (#lua-match? @sql "^%s*INSERT"))
(string (string_value) @sql
    (#lua-match? @sql "^%s*REPLACE"))
(string (string_value) @sql
    (#lua-match? @sql "^%s*DROP"))
(string (string_value) @sql
    (#lua-match? @sql "^%s*ALTER"))
(string (string_value) @sql
    (#lua-match? @sql "^%s*EXPLAIN"))

(encapsed_string (string_value) @sql
    (#lua-match? @sql "^%s*SELECT"))
(encapsed_string (string_value) @sql
    (#lua-match? @sql "^%s*UPDATE"))
(encapsed_string (string_value) @sql
    (#lua-match? @sql "^%s*DELETE"))
(encapsed_string (string_value) @sql
    (#lua-match? @sql "^%s*CREATE"))
(encapsed_string (string_value) @sql
    (#lua-match? @sql "^%s*INSERT"))
(encapsed_string (string_value) @sql
    (#lua-match? @sql "^%s*REPLACE"))
(encapsed_string (string_value) @sql
    (#lua-match? @sql "^%s*DROP"))
(encapsed_string (string_value) @sql
    (#lua-match? @sql "^%s*ALTER"))
(encapsed_string (string_value) @sql
    (#lua-match? @sql "^%s*EXPLAIN"))

((nowdoc value: (nowdoc_body) @sql)
    (#lua-match? @sql "^%s*SELECT"))
((nowdoc value: (nowdoc_body) @sql)
    (#lua-match? @sql "^%s*UPDATE"))
((nowdoc value: (nowdoc_body) @sql)
    (#lua-match? @sql "^%s*DELETE"))
((nowdoc value: (nowdoc_body) @sql)
    (#lua-match? @sql "^%s*CREATE"))
((nowdoc value: (nowdoc_body) @sql)
    (#lua-match? @sql "^%s*INSERT"))
((nowdoc value: (nowdoc_body) @sql)
    (#lua-match? @sql "^%s*REPLACE"))
((nowdoc value: (nowdoc_body) @sql)
    (#lua-match? @sql "^%s*DROP"))
((nowdoc value: (nowdoc_body) @sql)
    (#lua-match? @sql "^%s*ALTER"))
((nowdoc value: (nowdoc_body) @sql)
    (#lua-match? @sql "^%s*EXPLAIN"))

((heredoc value: (heredoc_body) @sql)
    (#lua-match? @sql "^%s*SELECT"))
((heredoc value: (heredoc_body) @sql)
    (#lua-match? @sql "^%s*UPDATE"))
((heredoc value: (heredoc_body) @sql)
    (#lua-match? @sql "^%s*DELETE"))
((heredoc value: (heredoc_body) @sql)
    (#lua-match? @sql "^%s*CREATE"))
((heredoc value: (heredoc_body) @sql)
    (#lua-match? @sql "^%s*INSERT"))
((heredoc value: (heredoc_body) @sql)
    (#lua-match? @sql "^%s*REPLACE"))
((heredoc value: (heredoc_body) @sql)
    (#lua-match? @sql "^%s*DROP"))
((heredoc value: (heredoc_body) @sql)
    (#lua-match? @sql "^%s*ALTER"))
((heredoc value: (heredoc_body) @sql)
    (#lua-match? @sql "^%s*EXPLAIN"))

((function_call_expression
  function: (_) @_preg_func_identifier
  arguments: (arguments (argument (string (string_value) @regex)))+)
  (#any-of? @_preg_func_identifier "preg_match" "preg_replace" "preg_filter"
   "preg_match_all" "preg_replace_callback_array" "preg_replace_callback"
   "preg_split"))

((function_call_expression
  function: (_) @_preg_func_identifier
  arguments: (arguments (argument (encapsed_string (string_value) @regex)))+)
  (#any-of? @_preg_func_identifier "preg_match" "preg_replace" "preg_filter"
   "preg_match_all" "preg_replace_callback_array" "preg_replace_callback"
   "preg_split"))

((function_call_expression
  function: (_) @_shell_func_identifier
  arguments: (arguments (argument (string (string_value) @bash)))+)
  (#any-of? @_shell_func_identifier "shell_exec" "escapeshellarg" 
   "escapeshellcmd" "exec" "passthru" "proc_open" "shell_exec" "system"))

((function_call_expression
  function: (_) @_shell_func_identifier
  arguments: (arguments (argument (encapsed_string (string_value) @bash)))+)
  (#any-of? @_shell_func_identifier "shell_exec" "escapeshellarg" 
   "escapeshellcmd" "exec" "passthru" "proc_open" "shell_exec" "system"))

((expression_statement (shell_command_expression (string_value) @bash)))

