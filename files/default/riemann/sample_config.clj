; Overwrite this file to configure Riemann settings outside of the generic Chef recipe

; Expire old events from the index every 5 seconds.
(periodically-expire 5)

; Keep events in the index for 5 minutes by default.
(let [index (default :ttl 300 (update-index (index)))]

  ; Inbound events will be passed to these streams:
  (streams

    ; Index all events immediately.
    index

    ; Calculate an overall rate of events.
    (with {:metric 1 :host nil :state "ok" :service "events/sec"}
      (rate 5 index))

    ; Log expired events.
    (expired
      (fn [event] (info "expired" event)))
))
