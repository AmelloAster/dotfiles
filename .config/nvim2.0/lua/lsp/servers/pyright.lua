local pyright = {}

pyright.setup = function (opts)
    opts.settings = {

        python = {
            analysis = {
                typeCheckingMode = "off"
            }
        }
    }
end

return pyright
