=begin
Functionality:
  - Build the application into a self contained GUI Application bundle.
  - Build the application into a commandline utility.
  - Run pre-built app using rake
  - Install app into local usr/bin
  
High level defined Tasks:
  create_terminal_app
  create_gui_app
  run_gui_app
  run_terminal_app
  install_gui_app
  install_terminal_app  
  uninstall_gui_app
  uninstall_terminal_app
  
Help:
  On the command line run: rake -T 
  to see a list of all available commands
=end

#Application Meta-data
GUI_NAME 		= 'SimpleOSXGUIRubyApp'
TERM_NAME   = 'SimpleOSXTerminalRubyApp'
APP_VERSION = '1.0'
GUI_IDENTIFIER 	= "com.yourcompany.#{GUI_NAME}"
TERM_IDENTIFIER = "com.yourcompany.#{TERM_NAME}"

require 'build_scripts/utilities'
require 'build_scripts/terminal_app'

task :default => :create_terminal_app

#GUI Build Compiler settings 
GUI_ARCH 		    = '-arch x86_64'
GUI_FRAMEWORKS 	= '-framework MacRuby -framework Foundation -framework Cocoa'
GUI_GCFLAGS     = '-fobjc-gc-only' 
GUI_COMPILER    = 'clang' 

#Application Structure
#Compiled GUI Application Directory Structure
# Name.app
#   Contents
#     Info.plist
#     MacOS
#       the executible
#     Resources
#       all ruby code
#       all non-localized images
#       English.lproj 
#         InfoPlist.strings
#         Localizable.strings
#         MainMenu.nib
#     Frameworks
#       all required frameworks
#     

#Compiled Terminal Application Directory Structure
# Name.app
#   Contents
#     MacOS
#       the executible
#     Resources
#       all ruby code
#     Frameworks
#       all required frameworks

desc 'Removes all created versions of your application'
task :clean do
  #remove the terminal application if it exists
	rm_rf("#{TERM_NAME}.app")
end