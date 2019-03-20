class CreateFileCommand
    
    def initialize(fpath, text)
        @FilePath = fpath
        @TextForFile = text
    end

    #Gives the description of the command and the file path
    def description()
        #out puts what the command is doing and the path it is taking to do it
        puts "Creating a file: #{@FilePath}"
    end

    #execute the Create File class
    def execute
        if File.exist?(@FilePath) 
            puts "File already exists!!"
        else
            new_file = File.new(@FilePath, "w+")
            new_file.puts(@TextForFile)
            new_file.close
        end
    end

    #Since the undo function is supposed to do the inverse of the command the inverse of creating is deleting 
    #so I delete the file that was created
    def undo
        File.delete(@FilePath) if File.exist?(@FilePath)
    end

end