class DeleteDirectory
    String DirectoryName
    String CopiedDirectoryName

    def initialize()
        puts "I am in the DeleteDirectoryClass and I am about to delete a directory."
    end
    #Not sure what to put as the parameters. I know that it needs to take a file name and a path
    #This creates the command
    def DeleteDirectoryCommand(dirname, cdirname)
        @DirectoryName = dirname
        @CopiedDirectoryName = cdirname
    end

    #Gives the description of the command and the file path
    def description()
        #out puts what the command is doing and the path it is taking to do it
        puts "Deleting a Directory: #{DirectoryName}"
    end

    #execute the Delete Directory class
    #first copy the old directory to a new location then delete the directory that was copied
    def execute()
        
    end

    #Since the undo function is supposed to do the inverse of the command the inverse of deleting is restoring the deleted directory 
    #so I copy the directory that was deleted and move it back to its original position
    def undo()
        
    end
end
