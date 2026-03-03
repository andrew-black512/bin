function vsc_template {
   cd /home/andrew/.config/Code/User/snippets
   ls -l

   echo Language specific
   vsc_temp_list.py *.json
   echo Global
   vsc_temp_list.py *.code-snippets
    
}
#vsc_temp

