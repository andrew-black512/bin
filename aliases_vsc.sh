function vsc_temp {
   pushd /home/andrew/.config/Code/User/snippets
   ls -lrt

   vsc_temp_list.py *.json
   vsc_temp_list.py *.code-snippets
   popd
}
#vsc_temp

