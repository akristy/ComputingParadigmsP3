class RenameDirectory
    String OldDirectoryName
    String NewDirectoryName

    def initialize()
        puts "I am in the RenameDirectoryClass and I am about to rename a directory."
    end
    #Not sure what to put as the parameters. I know that it needs to take a file name and a path
    #This creates the command
    def RenameDirectoryCommand(olddirname, newdirname)
        @OldDirectoryName = olddirname
        @NewDirectoryName = newdirname
    end

    #Gives the description of the command and the file path
    def description()
        #out puts what the command is doing and the path it is taking to do it
        puts "Renaming #{OldDirectoryName} to: #{NewDirectoryName}"
    end

    #execute the MoveDirectory class
    def execute()
        
    end

    #Since the undo function is supposed to do the inverse of the command the inverse of renaming is renaming again
    def undo()
        
    end

end
