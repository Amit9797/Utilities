files = list.files()


for (id in 1:length(files)) {
  
  file = files[id]
  old_name = files[id]
  new_name = paste0(id,". ",old_name )
  
  file.rename(old_name,new_name)
  print(old_name)
  print(new_name)
  
}


