require 'fileutils'
require 'pathname'

class CopyFileCommand

    def initialize(oldfpath, nfpath)
        #puts "I am in the CopyFileClass and I am about to copy a file."
        @OldFilePath = Pathname.new(oldfpath)
        @NewFilePath = Pathname.new(nfpath)

        oldname = @OldFilePath.basename
        #puts "This is the Old Directory name: #{oldname}"
        @NewFilePath = "#{@NewFilePath}/copied#{oldname}"
        #puts "This is the NewDirectory path and name: #{newdirname}"
    end
    
    #Gives the description of the command and the file path
    def description()
        #out puts what the command is doing and the path it is taking to do it
        puts "Copying file from #{@OldFilePath} to new position: #{@NewFilePath}"
    end

    #execute the Copy File class
    def execute
        FileUtils.cp(@OldFilePath, @NewFilePath)
        #new_file.close
    end

    #Since the undo function is supposed to do the inverse of the command the inverse of copying is deleting 
    #so I delete the file that was copied
    def undo
        File.delete(@NewFilePath) if File.exist?(@NewFilePath)
    end


end