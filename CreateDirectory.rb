class CreateDirectory
    String DirectoryName
    
    def initialize()
        puts "I am in the CreateDirectoryClass and I am about to create a directory."
    end
    #Not sure what to put as the parameters. I know that it needs to take a file name and a path
    #This creates the command
    def CreateFileCommand(dirname)
        @DirectoryName = dirname
    end

    #Gives the description of the command and the file path
    def description()
        #out puts what the command is doing and the path it is taking to do it
        puts "Creating a Directory: #{DirectoryName}"
    end

    #execute the Create Directory class
    def execute()
        
    end

    #Since the undo function is supposed to do the inverse of the command the inverse of creating is deleting 
    #so I delete the directory that was created
    def undo()
        
    end
end
