require 'fileutils'
require 'pathname'

class MoveDirectoryCommand

    def initialize(olddirpath, newdirpath)
        #puts "I am in the MoveDirectoryClass and I am about to move a directory."
        @OldDirectoryPath = Pathname.new(olddirpath)
        @NewDirectoryPath = Pathname.new(newdirpath)
    end

    #Gives the description of the command and the file path
    def description()
        #out puts what the command is doing and the path it is taking to do it
        puts "Moving Directory: #{@OldDirectoryPath}"
    end

    #execute the MoveDirectory class
    def execute()
        FileUtils.mv(@OldDirectoryPath, @NewDirectoryPath)
    end

    #Since the undo function is supposed to do the inverse of the command the inverse of moving is moving again
    def undo()
        #need to manipulate strings by taking file name off of OldDirectoryPath and adding it onto NewDirectoryPath
        oldname = @OldDirectoryPath.basename
        @NewDirectoryPath = "#{@NewDirectoryPath}/#{oldname}"
        origfolder = @OldDirectoryPath.dirname
        @OldDirectoryPath = origfolder

        FileUtils.mv(@NewDirectoryPath, @OldDirectoryPath)
    end
end
