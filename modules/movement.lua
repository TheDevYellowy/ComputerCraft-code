local move = {}

function move.forward()
    turtle.forward()
    return {
        loc = gps.locate() or nil,
        fuel = turtle.getFuelLevel()
    }
end

function move.right()
    turtle.turnRight()
    turtle.forward()
    return {
        loc = gps.locate() or nil,
        fuel = turtle.getFuelLevel()
    }
end

function move.left()
    turtle.turnLeft()
    turtle.forward()
    return {
        loc = gps.locate() or nil,
        fuel = turtle.getFuelLevel()
    }
end

function move.back()
    turtle.turnRight()
    turtle.turnRight()
    turtle.forward()
    return {
        loc = gps.locate() or nil,
        fuel = turtle.getFuelLevel()
    }
end

return move
