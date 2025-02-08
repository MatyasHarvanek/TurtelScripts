sizeX = 15
sizeY = 15

for x = 1, sizeX do
    for y = 1, sizeY do
        if turtle.detect() then
            turtle.dig()
        end
        turtle.forward()
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