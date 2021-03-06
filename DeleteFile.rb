require 'fileutils'
require 'pathname'

class DeleteFileCommand
    
    def initialize(fpath, cfpath)
        #puts "I am in the DeleteFileClass and I am about to delete a file."
        @FilePath = Pathname.new(fpath)
        @CopiedFilePath = Pathname.new(cfpath)
    end
    #We want the file to be copied just incase we want to undo the delete
    #Gives the description of the command and the file path
    def description()
        #out puts what the command is doing and the path it is taking to do it
        puts "Deleting a file at: #{@FilePath}"
    end

    #execute the Create File class
    def execute()
        FileUtils.cp(@FilePath, @CopiedFilePath)
        File.delete(@FilePath) if File.exist?(@FilePath)
    end

    #Since the undo function is supposed to do the inverse of the command the inverse of deleting is kind of creating 
    #so I move the copied file back to its origial location
    def undo()
        oldname = @FilePath.basename
        @CopiedFilePath = "#{@CopiedFilePath}/#{oldname}"
        origfolder = @FilePath.dirname
        @FilePath = origfolder
        FileUtils.mv(@CopiedFilePath, @FilePath)
    end
end
