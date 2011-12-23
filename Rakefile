=begin
Functionality:
  - Build the application into a self contained GUI Application bundle.
  - Build the application into a commandline utility.
  - Run pre-built app using rake
  - Install app into local usr/bin
  
High level defined Tasks:
  Done:
    create_terminal_app
    run_terminal_app
    
  Planned:  
    debugging helpers
      leaks application
      libgmalloc (Guard Malloc)
      malloc_history
      vm_stat
      
      debug_with_gdb
      
    create_gui_app
    run_gui_app  
    install_gui_app
    install_terminal_app  
    uninstall_gui_app
    uninstall_terminal_app
    compile_all_ruby
    embed_mac_ruby
  
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
require 'build_scripts/terminal_framework'
require 'build_scripts/terminal_app'
require 'build_scripts/gui_app.rb'

task :default => :create_terminal_app

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

require 'rake/clean'
CLEAN.include('**/*.o','**/*.log')
CLOBBER.include("#{TERM_NAME}.app","#{TERM_FRAMEWORK_NAME}.bundle")
