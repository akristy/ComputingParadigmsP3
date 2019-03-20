class MoveDirectory
    String DirectoryName

    def initialize()
        puts "I am in the MoveDirectoryClass and I am about to move a directory."
    end
    #Not sure what to put as the parameters. I know that it needs to take a file name and a path
    #This creates the command
    def MoveDirectoryCommand(dirname)
        @DirectoryName = dirname
    end

    #Gives the description of the command and the file path
    def description()
        #out puts what the command is doing and the path it is taking to do it
        puts "Moving a Directory: #{DirectoryName}"
    end

    #execute the MoveDirectory class
    def execute()
        
    end

    #Since the undo function is supposed to do the inverse of the command the inverse of moving is moving again
    def undo()
        
    end
end
