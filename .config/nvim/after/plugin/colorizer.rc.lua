local status, colorizer = pcall(require, "colorizer")
if not status then return end

colorizer.setup {
  '*'; -- Highlight all files, but customize some others.
}
