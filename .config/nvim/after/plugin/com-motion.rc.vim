let g:comfortable_motion_scroll_down_key = "j"
let g:comfortable_motion_scroll_up_key = "k"

let g:comfortable_motion_friction = 80.0
let g:comfortable_motion_air_drag = 2.0

noremap <silent> <ScrollWheelDown> :call comfortable_motion#flick(5)<CR>
noremap <silent> <ScrollWheelUp>   :call comfortable_motion#flick(-5)<CR>