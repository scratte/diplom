# customize Paperclip with a few options

# generate errors when thumbnail generation fails (gets caught by spree's image validation)
Paperclip.options[:whiny] = true


# send (normal) log messages to the default rails logger 
# Paperclip default is true, but we set this to false for Spree 
Paperclip.options[:log] = true


# send log messages about image processing comments to the default rails logger
Paperclip.options[:log_command] = true

Paperclip.options[:command_path] = "C:\\ImageMagick-6.6.2-Q16" 


# you can also set 
#   :command_path       = location of image magick tools
#   :swallow_stderr     = capture stderr messages into stdout (and hence include in log messages)


