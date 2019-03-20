class CopyDirectory
    String OldDirectoryName
    String NewDirectoryName
    
    def initialize()
        puts "I am in the CopyDirectoryClass and I am about to copy a directory."
    end
    #Not sure what to put as the parameters. I know that it needs to take a file name and a path
    #This creates the command
    def CopyDirectoryCommand(olddirname, nedirname)
        @OldDirectoryName = olddirname
        @NewDirectoryName = newdirname
    end

    #Gives the description of the command and the file path
    def description()
        #out puts what the command is doing and the path it is taking to do it
        puts "Copying #{OldDirectoryName} to : #{NewDirectoryName}"
    end

    #execute the Create Directory class
    def execute()
        
    end

    #Since the undo function is supposed to do the inverse of the command the inverse of copying is deleting the copy 
    #so I delete the copied directory 
    def undo()
        
    end
end