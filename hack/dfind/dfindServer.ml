(**
 * Copyright (c) 2015, Facebook, Inc.
 * All rights reserved.
 *
 * This source code is licensed under the BSD-style license found in the
 * LICENSE file in the "hack" directory of this source tree. An additional grant
 * of patent rights can be found in the PATENTS file in the same directory.
 *
 *)


(*****************************************************************************)
(* Code relative to the client/server communication *)
(*****************************************************************************)


(*****************************************************************************)
(* Processing an fsnotify event *)
(*****************************************************************************)


let run_daemon roots (ic, oc) =
  Printexc.record_backtrace true

let entry_point =
  Daemon.register_entry_point "dfind" run_daemon
