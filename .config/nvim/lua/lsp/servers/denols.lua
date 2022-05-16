local isDenolsEnable = false;

local myFile = io.popen("ls")
if myFile then
    for filename in myFile:lines() do
        if filename == 'deno.json' or filename == 'deno.jsonc' then
            isDenolsEnable = true
        end
    end
end


local denols = {}
denols.setup = function(opts)
    opts.init_options = {
        enable = isDenolsEnable
    }
end
return denols
