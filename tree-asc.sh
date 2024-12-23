
tree -d | awk -v tab=";   " '{
    gsub(/├── /,tab); 
    gsub(/│   /,tab); 
    gsub(/└── /,tab); 
    gsub(/^    /,tab); 
    print; 
}'
