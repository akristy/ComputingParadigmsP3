require 'fileutils'

class CopyDirectoryCommand
     
    def initialize(olddirpath, newdirpath)
        #puts "I am in the CopyDirectoryClass and I am about to copy a directory."
        @OldDirectoryPath = olddirpath
        @NewDirectoryPath = newdirpath
    end
    
    #Gives the description of the command and the file path
    def description()
        #out puts what the command is doing and the path it is taking to do it
        puts "Copying #{@OldDirectoryPath} to : #{@NewDirectoryPath}"
    end

    #execute the Create Directory class
    def execute
        FileUtils.cp_r(@OldDirectoryPath, @NewDirectoryPath)
    end

    #Since the undo function is supposed to do the inverse of the command the inverse of copying is deleting the copy 
    #so I delete the copied directory 
    def undo
        Dir.delete(@NewDirectoryPath) if Dir.exist?(@NewDirectoryPath)
    end
end