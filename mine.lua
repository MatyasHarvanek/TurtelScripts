sizeX = 15
sizeY = 15

blocksDugDown = 0


for x = 1, sizeX do
    for y = 1, sizeY do
        if turtle.detect() then
            turtle.dig()
        end
        turtle.forward()

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
    end
    if x % 2 == 0 then
        turtle.turnRight()
        
        if turtle.detect() then
            turtle.dig()
        end
        turtle.forward()
        turtle.turnRight()
    else
        turtle.turnLeft()
        
        if turtle.detect() then
            turtle.dig()
        end
        turtle.forward()
        turtle.turnLeft()
    end
end

