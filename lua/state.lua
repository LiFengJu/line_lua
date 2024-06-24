state = {
    running = False,
    led = {
        color = "",
    },
    stock = 20,
    product = 0,
}

function state:cutStock()
    self.stock = self.stock-1
    print('The stock is '..self.stock)
end

function state:addProduct()
    self.product = self.product +1
    print('The product is '..self.product)
end

--function state:setLed(color)
--    return self:set(function(this)
--        this.led.color = color
--        return this
--    end)
--end

return state