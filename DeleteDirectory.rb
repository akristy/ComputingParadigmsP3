require 'fileutils'
require 'pathname'

class DeleteDirectoryCommand

    def initialize(dirpath, cdirpath)
        #puts "I am in the DeleteDirectoryClass and I am about to delete a directory."
        @DirectoryPath = Pathname.new(dirpath)
        @CopiedDirectoryName = Pathname.new(cdirpath)
    end

    #Gives the description of the command and the file path
    def description()
        #out puts what the command is doing and the path it is taking to do it
        puts "Deleting a Directory: #{@DirectoryPath}"
    end

    #execute the Delete Directory class
    #first copy the old directory to a new location then delete the directory that was copied
    def execute()
        FileUtils.cp_r(@DirectoryPath, @CopiedDirectoryName)
        Dir.delete(@DirectoryPath) if Dir.exist?(@DirectoryPath)
    end

    #Since the undo function is supposed to do the inverse of the command the inverse of deleting is restoring the deleted directory 
    #so I copy the directory that was deleted and move it back to its original position
    def undo()
        oldname = @DirectoryPath.basename
        @CopiedDirectoryName = "#{@CopiedDirectoryName}/#{oldname}"
        origfolder = @DirectoryPath.dirname
        @DirectoryPath = origfolder
        FileUtils.mv(@CopiedDirectoryName, @DirectoryPath)
    end
end
