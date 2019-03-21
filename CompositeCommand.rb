class CompositeCommand

    def initialize()
        #puts "I am in the CompositeCommandClass."
        @ArrayofCommands = Array.new
    end

    def addCommand(command)
        #puts "Add a command to the list to be executed"
        @ArrayofCommands << command
        #puts "Command array: #{@ArrayofCommands}"
        #puts "Size of array: #{@ArrayofCommands.length}"
    end

    def stepForward(sf)
        @Stepsforward = sf
        i = 0
        if sf <= @ArrayofCommands.length
            #puts "Step forward #{@Stepsforward} place(s) in command list."
            currentpos = @ArrayofCommands[i + sf]
            #puts "Current Position: #{currentpos}"
        else
            puts "Invalid step forward value."
        end
        
    end

    def stepBackward(sb)
        @Stepsback = sb
        j = @ArrayofCommands.length
        if sb <= @ArrayofCommands.length
            #puts "Step backwards #{@Stepsback} place(s) in command list."
            currentpos = @ArrayofCommands[j - sb]
            #puts "Current Position: #{currentpos}"
        else
            puts "Invalid step back value."
        end
    end

    #Gives the description of the command and the file path
    def description()
        #out puts what the command is doing and the path it is taking to do it
        #puts "Prints description of all of the commands."
        i = 0
        loop do
            @Command = @ArrayofCommands[i]
            @Command.description()
            i += 1
            if i == @ArrayofCommands.length
                break
            end
        end
    end

    #execute the Create Directory class
    def execute()
        i = 0
        loop do
            @Command = @ArrayofCommands[i]
            @Command.execute()
            i += 1
            if i == @ArrayofCommands.length
                break
            end
        end
        #puts "Executes all of the commands in order."
    end

    #Since the undo function is supposed to do the inverse of the command the inverse of creating is deleting 
    #so I delete the directory that was created
    def undo()
        i = @ArrayofCommands.length
        loop do
            @Command = @ArrayofCommands[i]
            @Command.undo()
            i -= 1
            if i == @ArrayofCommands.length
                break
            end
        end
        #puts "Undo all of the commands in order."
    end
end