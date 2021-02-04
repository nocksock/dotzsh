# Pure Prompt
# https://github.com/sindresorhus/pure#getting-started 
autoload -U promptinit; promptinit
PURE_CMD_MAX_EXEC_TIME=10
prompt pure

# Autocomplete
autoload -Uz compinit
compinit
