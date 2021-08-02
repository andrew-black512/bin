# https://wiki.openstreetmap.org/wiki/Key:amenity
# https://wiki.openstreetmap.org/wiki/Tag:amenity%3Dpub

(key,value)=ARGV
puts key 
if value.nil? 
  detail="Key:#{key}"
#else
  detail="Key:#{key}%3D#{value}"
end
puts detail

#system ( "gnome-open https://wiki.openstreetmap.org/wiki/Key:#{key} " ) 

