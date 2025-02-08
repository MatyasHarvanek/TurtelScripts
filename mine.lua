sizeX = 15
sizeY = 15

blocksDugDown = 0

turtle.inspect()

for x = 1, sizeX do
    for y = 1, sizeY do
        if turtle.detect() then
            turtle.dig()
        end
        turtle.forward()
    end
    if x % 2 == 0 then
        turtle.turnRight()
        
        data = turtle.inspectDown()
        while turtle.inspectDown().name == "minecraft:bedrock" then
            blocksDugDown++
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
        while turtle.inspectDown().name == "minecraft:bedrock" then
            blocksDugDown++
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
end