details = file.info(list.files(pattern="*.mp4"))
details = details[with(details, order(as.POSIXct(mtime))), ]
files = rownames(details)


for (id in 1:length(files)) {
  
  file = files[id]
  old_name = files[id]
  new_name = paste0(id,". ",old_name )
  
  file.rename(old_name,new_name)
  print(old_name)
  print(new_name)
  
}




