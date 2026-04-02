cat << EOF> show-info.sh

cat -e << inf
 "The current directory is: $PWD"
 "The default paths are: $PATH"
 "The current user is: $USERNAME"
inf
EOF

chmod +x show-info.sh  
