local math_helper = require('math_helper')



--- Example handler that adds two numbers using hasMatchingTag.
Handlers.add("add_numbers",
    Handlers.utils.hasMatchingTag("Action", "AddNumbers"),
    function(msg)
        local num1 = tonumber(msg.Data.num1)
        local num2 = tonumber(msg.Data.num2)
        local result = math_helper.add(num1, num2)
        print("Result:", result)
        return result
    end
)

return Handlers