require 'pathname'

class RenameDirectoryCommand

    def initialize(olddirpath, newdirname)
        #puts "I am in the RenameDirectoryClass and I am about to rename a directory."
        @OldDirectoryName = Pathname.new(olddirpath)

        odpath = @OldDirectoryName.dirname
        @NewDirectoryName = "#{odpath}/#{newdirname}"
        #puts "New directory name will be: #{@NewDirectoryName}"

    end
    
    #Gives the description of the command and the file path
    def description()
        #out puts what the command is doing and the path it is taking to do it
        puts "Renaming #{@OldDirectoryName} to: #{@NewDirectoryName}"
    end

    #execute the MoveDirectory class
    def execute()
        File.rename(@OldDirectoryName, @NewDirectoryName)
    end

    #Since the undo function is supposed to do the inverse of the command the inverse of renaming is renaming again
    def undo()
        File.rename(@NewDirectoryName, @OldDirectoryName)
    end

end
