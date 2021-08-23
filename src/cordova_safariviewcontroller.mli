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

type event =
  | Opened [@js "opened"]
  | Loaded [@js "loaded"]
  | Closed [@js "closed"]
[@@js.enum]

val get_event : result -> event [@@js.get "event"]

val show :
  options -> onSuccess:(result -> unit) -> onError:(string -> unit) -> unit
  [@@js.global "SafariViewController.show"]
