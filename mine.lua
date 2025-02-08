sizeX = 15
sizeY = 15

blocksDugDown = 0


for x = 1, sizeX do
    for y = 1, sizeY do
        if x % 2 == 0 then
            turtle.turnRight()
            
            data = turtle.inspectDown()
            while turtle.inspectDown().name == "minecraft:bedrock" do
                blocksDugDown = blocksDugDown + 1
                turtle.digDown()
                turtle.down()
            end
    
            for g = 1, blocksDugDown do
                turtle.up()    
            end
            blocksDugDown = 0
            turtle.forward()
            turtle.turnRight()
        else
            turtle.turnLeft()
            
            data = turtle.inspectDown()
            while turtle.inspectDown().name == "minecraft:bedrock" do
                blocksDugDown = blocksDugDown + 1
                turtle.digDown()
                turtle.down()
            end
    
            for g = 1, blocksDugDown do
                turtle.up()    
            end
            blocksDugDown = 0
            turtle.forward()
            turtle.turnLeft()
        end
        turtle.forward()
    end
    
end