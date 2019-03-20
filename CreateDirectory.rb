class CreateDirectoryCommand

    def initialize(dirpath)
        #puts "I am in the CreateDirectoryClass and I am about to create a directory."
        @DirectoryPath = dirpath
    end

    #Gives the description of the command and the file path
    def description()
        #out puts what the command is doing and the path it is taking to do it
        puts "Creating a Directory: #{@DirectoryPath}"
    end

    #execute the Create Directory class
    def execute()
        if Dir.exist?(@DirectoryPath)
            puts "Directory already exists!!!"
        else
            Dir.mkdir(@DirectoryPath) unless File.exist?(@DirectoryPath)
        end
    end

    #Since the undo function is supposed to do the inverse of the command the inverse of creating is deleting 
    #so I delete the directory that was created
    def undo()
        Dir.delete(@DirectoryPath)
    end
end
