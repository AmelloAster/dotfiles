local isDenolsEnable = false;

local myFile = io.popen("ls")
for filename in myFile:lines() do
  if filename == 'deno.json' or filename == 'deno.jsonc' then
    isDenolsEnable = true
  end
end

return {
  
  init_options = {
    enable = isDenolsEnable 
  },
}
