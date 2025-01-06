local math_helper = require("src.math_helper")

describe("Math Helper", function()
    describe("add", function()
        it("should add two positive numbers correctly", function()
            assert.are.equal(5, math_helper.add(2, 3))
        end)

        it("should handle negative numbers", function()
            assert.are.equal(-1, math_helper.add(2, -3))
        end)

        it("should handle zero", function()
            assert.are.equal(2, math_helper.add(2, 0))
        end)
    end)
end)
