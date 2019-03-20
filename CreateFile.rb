class CreateFile
    String FileName
    String FilePath

    def initialize()
        puts "I am in the CreateFileClass and I am about to create a file."
    end
    #Not sure what to put as the parameters. I know that it needs to take a file name and a path
    #This creates the command
    def CreateFileCommand(fpath, fname)
        @FileName = fname
        @FilePath = fpath
    end

    #Gives the description of the command and the file path
    def description()
        #out puts what the command is doing and the path it is taking to do it
        puts "Creating a file: #{FilePath}"
    end

    #execute the Create File class
    def execute()
        File.new(FileName)
    end

    #Since the undo function is supposed to do the inverse of the command the inverse of creating is deleting 
    #so I delete the file that was created
    def undo()
        File.delete(FileName) if File.exist?(FileName)
    end

end