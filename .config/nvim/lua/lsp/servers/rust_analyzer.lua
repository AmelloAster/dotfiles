local isEnable = false;

local myFile = io.popen("ls")
if myFile then
    for filename in myFile:lines() do
        if filename == 'Cargo.toml' or filename == 'cargo.toml' then
            isEnable = true
        end
    end
end


local rust_analyzer = {}
rust_analyzer = {
    -- opts.filetypes = { "rust" }
    settings = {
        enable = isEnable
    }
}
return rust_analyzer
