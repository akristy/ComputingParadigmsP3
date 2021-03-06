require 'fileutils'
require 'pathname'

class MoveFileCommand
    
    def initialize(ofpath, nfpath)
        #puts "I am in the MoveFileClass and I am about to move a file."
        @OldFilePath = Pathname.new(ofpath)
        @NewFilePath = Pathname.new(nfpath)
    end
    
    #Gives the description of the command and the file path
    def description()
        #out puts what the command is doing and the path it is taking to do it
        puts "Moving file from #{@OldFilePath} to: #{@NewFilePath}"
    end

    #execute the Move File class
    def execute()
        FileUtils.mv(@OldFilePath, @NewFilePath)
    end

    #Since the undo function is supposed to do the inverse of the command the inverse of creating is deleting 
    #so I delete the file that was created
    def undo()
        #need to manipulate strings by taking file name off of OldFilePath and adding it onto NewFilePath
        oldname = @OldFilePath.basename
        @NewFilePath = "#{@NewFilePath}/#{oldname}"
        origfolder = @OldFilePath.dirname
        @OldFilePath = origfolder

        FileUtils.mv(@NewFilePath, @OldFilePath)
    end
end
