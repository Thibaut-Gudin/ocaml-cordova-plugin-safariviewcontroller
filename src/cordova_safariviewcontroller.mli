val is_available : (bool -> unit) -> unit
  [@@js.global "SafariViewController.isAvailable"]

type options

val options :
  ?url:string ->
  ?hidden:bool ->
  ?animated:bool ->
  ?transition:string ->
  ?enter_reader_mode_if_available:bool ->
  ?tint_color:string ->
  ?bar_color:string ->
  ?control_tint_color:string ->
  unit ->
  options
  [@@js.builder] [@@js.verbatim_names]

type result

(*
TODO: Use it instead of string for onSuccess??
type event =
  | Opened [@js "opened"]
  | Loaded [@js "loaded"]
  | Closed [@js "closed"]
[@@js.enum]
 *)

val event : result -> string [@@js.get "event"]

val show :
  options -> onSuccess:(result -> unit) -> onError:(string -> unit) -> unit
  [@@js.global "SafariViewController.show"]

[@@@js.stop]

val show_available : unit -> bool

[@@@js.start]

[@@@js.implem
let show_available () =
  Js_of_ocaml.Js.Optdef.test
    Js_of_ocaml.Js.Unsafe.global ##. SafariViewController##.show]
