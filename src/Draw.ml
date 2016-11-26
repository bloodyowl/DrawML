open Graphics;;

let width = 300;;
let height = 500;;

open_graph "";;
set_window_title "DrawML";;
resize_window width height;;

let render_point = fun point ->
  draw_rect (fst point) (snd point) 1 1;;

let clear = fun () ->
  clear_graph ();;

let rec event _ =
  let status = wait_next_event [ Mouse_motion; Key_pressed ] in
    match status with
      | { button = true } ->
        render_point (status.mouse_x, status.mouse_y);
        event ()
      | { key = 'c' } ->
        clear ();
        event ()
      | _ ->
        event ();;


let _ =
    event ();;
