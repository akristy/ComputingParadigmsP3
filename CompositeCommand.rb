class CompositeCommand

    def initialize(dirpath)
        puts "I am in the CompositeCommandClass."
        
    end

    #Gives the description of the command and the file path
    def description()
        #out puts what the command is doing and the path it is taking to do it
        #puts "Creating a Directory: #{@DirectoryPath}"
    end

    #execute the Create Directory class
    def execute()
        
    end

    #Since the undo function is supposed to do the inverse of the command the inverse of creating is deleting 
    #so I delete the directory that was created
    def undo()
        
    end
end