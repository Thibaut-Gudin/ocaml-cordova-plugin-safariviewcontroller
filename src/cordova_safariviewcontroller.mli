val is_available : (bool -> unit) -> unit
  [@@js.global "SafariViewController.isAvailable"]

type options

val options :
  ?url:string ->
  ?hidden:bool ->
  ?animated:bool ->
  ?transition:string ->
  ?enter_reader_mode_if_available:bool ->
  (*TODO imposser que les string ci-dessous soi des ref de couleur et pas n'importe quel string, si possible?*)
  ?tint_color:string ->
  ?bar_color:string ->
  ?control_tint_color:string ->
  unit ->
  options
  [@@js.builder] [@@js.verbatim_names]

val show : options -> onSuccess:(unit -> unit) -> onError:(unit -> unit) -> unit
  [@@js.global "SafariViewController.show"]
