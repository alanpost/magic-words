(use genturfahi genturfahi-peg extras test)

;; map-apply - apply each element in a list to function
;;
;; (map-apply f l)
;;
(define (map-apply f l)
  (map (lambda (x) (apply f x)) l))

(define-syntax ?-null
  (syntax-rules ()
    ((_ jalge)
     (if (and (string? jalge) (string=? "" jalge))
         '()
         `(,jalge)))))

(define-syntax ?*-null
  (syntax-rules ()
    ((_ jalge)
     (if (and (string? jalge) (string=? "" jalge))
         '()
         jalge))))


(define (gerna initial-erase*
               initial-erase-FAhO?
               valsi*
               FAhO-genpau?)
  `(gerna ,@initial-erase*
          ,@(?-null initial-erase-FAhO?)
          ,@valsi*
          ,@(?-null FAhO-genpau?)))

(define (BAhE valsi)
  `(BAhE ,valsi))

(define (BU valsi)
  `(BU ,valsi))

(define (BY valsi)
  `(BY ,valsi))

(define (FAhO valsi)
  `(FAhO ,valsi))

(define (GISMU valsi)
  `(gismu ,valsi))

(define (LOhU valsi)
  `(LOhU ,valsi))

(define (LEhU valsi)
  `(LEhU ,valsi))

(define (SA valsi)
  `(SA ,valsi))

(define (SI valsi)
  `(SI ,valsi))

(define (SU valsi)
  `(SU ,valsi))

(define (Y valsi)
  `(Y ,valsi))

(define (ZEI valsi)
  `(ZEI ,valsi))

(define (ZO valsi)
  `(ZO ,valsi))

(define (ZOI valsi)
  `(ZOI ,valsi))

(define (sa* mlupau sa)
  `(SA-genpau ,mlupau ,@sa))


;;
;; GISMU
;;
(define (GISMU-genpau BAhE-genpau* GISMU-vimpau)
  `(GISMU-genpau ,@(?*-null BAhE-genpau*) ,@GISMU-vimpau))

(define (GISMU-vimpau GISMU-sa* GISMU-mlupau)
  `(,@(map-apply sa* GISMU-sa*) ,GISMU-mlupau))

(define (GISMU-mluvla GISMU vimcu-genpau?)
  `(GISMU-mluvla ,GISMU ,@(?*-null vimcu-genpau?)))

(define (GISMU-sa SA-genvla* GISMU-sa* SA-genpau)
  `(,@SA-genvla* ,@(map-apply sa* GISMU-sa*) ,SA-genpau))
  

;;
;; BAhE
;;
(define (BAhE-genpau BAhE-vimpau)
  `(BAhE-genpau ,@BAhE-vimpau))

(define (BAhE-vimpau BAhE-sa* BAhE-mlupau)
  `(,@(map-apply sa* BAhE-sa*) ,BAhE-mlupau))

(define (BAhE-mluvla BAhE vimcu-genpau?)
  `(BAhE-mluvla ,BAhE ,@(?*-null vimcu-genpau?)))

(define (BAhE-sa SA-genvla* BAhE-sa* SA-genpau)
  `(,@SA-genvla* ,@(map-apply sa* BAhE-sa*) ,SA-genpau))


;;
;; BU
;;
;XXX: permit ba'e before untagged bu?
;(define (bu-genpau BAhE-genpau* bu-vimpau)
;  `(BU-genpau ,@(?*-null BAhE-genpau*) ,@bu-vimpau))
(define (bu-genpau bu-vimpau)
  `(BU-genpau ,@bu-vimpau))

(define (bu-vimpau bu-sa* BU-mlupau)
  `(,@(map-apply sa* bu-sa*) ,BU-mlupau))

(define (bu-mluvla BU vimcu-genpau?)
  `(BU-mluvla ,BU ,@(?*-null vimcu-genpau?)))


(define (BU-genpau BAhE-genpau* BU-vimpau)
  `(BU-genpau ,@(?*-null BAhE-genpau*) ,@BU-vimpau))

(define (BU-vimpau BU-sa* BU-mlupau)
  `(,@(map-apply sa* BU-sa*) ,BU-mlupau))

(define (BU-mluvla BU-genvla BU+)
  (define (bu BAhE-genpau* BU vimcu-genpau?)
    `(,@(?*-null BAhE-genpau*)
      ,BU
      ,@(?*-null vimcu-genpau?)))

  `(BU-mluvla ,BU-genvla ,@(apply append (map-apply bu BU+))))

(define (BU-sa SA-genvla* BU-sa* SA-genpau)
  `(,@SA-genvla* ,@(map-apply sa* BU-sa*) ,SA-genpau))


;;
;; BY
;;
(define (BY-genpau BAhE-genpau* BY-vimpau)
  `(BY-genpau ,@(?*-null BAhE-genpau*) ,@BY-vimpau))

(define (BY-vimpau BY-sa* BY-mlupau)
  `(,@(map-apply sa* BY-sa*) ,BY-mlupau))

(define (BY-mluvla BY vimcu-genpau?)
  `(BY-mluvla ,BY ,@(?*-null vimcu-genpau?)))

(define (BY-sa SA-genvla* BY-sa* SA-genpau)
  `(,@SA-genvla* ,@(map-apply sa* BY-sa*) ,SA-genpau))


;;
;; FAhO
;;
(define (FAhO-genpau BAhE-genpau* FAhO-mluvla)
  `(FAhO-genpau ,@(?*-null BAhE-genpau*) ,FAhO-mluvla))

(define (FAhO-mluvla FAhO)
  `(FAhO-mluvla ,FAhO))

(define (FAhO-sa SA-genvla* FAhO-sa* SA-genpau)
  `(,@SA-genvla* ,@(map-apply sa* FAhO-sa*) ,SA-genpau))


;;
;; LOhU
;;
(define (LOhU-genpau BAhE-genpau* LOhU-vimpau)
  `(LOhU-genpau ,@(?*-null BAhE-genpau*) ,@LOhU-vimpau))

(define (LOhU-vimpau LOhU-sa* LOhU-mlupau)
  `(,@(map-apply sa* LOhU-sa*) ,LOhU-mlupau))

(define (LOhU-mluvla LOhU LOhU-genvla* LEhU-vimpau)
  `(LOhU-mluvla ,LOhU ,@LOhU-genvla* ,@LEhU-vimpau))

(define (LOhU-sa SA-genvla* LOhU-sa* SA-genpau)
  `(,@SA-genvla* ,@(map-apply sa* LOhU-sa*) ,SA-genpau))


;;
;; LEhU
;;
; XXX: permit ba'e?
(define (LEhU-genpau LEhU-vimpau)
  `(LEhU-genpau ,@LEhU-vimpau))

(define (LEhU-vimpau LEhU-sa* LEhU-mlupau)
  `(,@(map-apply sa* LEhU-sa*) ,LEhU-mlupau))

(define (LEhU-mluvla LEhU vimcu-genpau?)
  `(LEhU-mluvla ,LEhU ,@(?-null vimcu-genpau?)))

(define (LEhU-sa SA-genvla* LEhU-sa* SA-genpau)
  `(,@SA-genvla* ,@(map-apply sa* LEhU-sa*) ,SA-genpau))


;;
;; SA
;;
(define (initial-sa VALSI-sa SA-genpau*)
  `(SA-genpau ,@VALSI-sa ,@SA-genpau*))

(define (initial-sa-FAhO FAhO-sa SA-genpau*)
  `(SA-genpau ,@FAhO-sa ,@SA-genpau*))

(define (SA-mluvla SA)
  `(SA-mluvla ,SA))

(define (SA-sa SA-genvla* SA-genpau)
  `(,@SA-genvla* ,SA-genpau))


;;
;; SI
;;
(define (initial-si SI-genpau)
  `(SI-genpau ,SI-genpau))

; a special initial-si for bareword {bu} or {zei}.
;
(define (initial-si-mluvla SI-genvla SI-genpau? SI)
  `(SI-mluvla ,@SI-genvla ,@(?-null SI-genpau?) ,SI))
; XXX: I can delete?
;  `(SI-genpau ,SI-genpau))

(define (initial-si-SI SI)
  `(SI-mluvla ,SI))

(define (SI-genpau SI-mlupau)
  SI-mlupau)

(define (SI-mluvla SI-genvla SI-fanmo)
  ;XXX: ,SI-genvla: where does this come from?
  `(SI-mluvla ,@SI-genvla ,@SI-fanmo))

(define (SI-fanmo SI-genpau? SI)
  `(,@(?-null SI-genpau?) ,SI))

(define (SI-sa SA-genvla* SA-genpau)
  `(,@SA-genvla* ,SA-genpau))


;;
;; SU
;;
(define (initial-su SU-genpau)
  `(SU-genpau ,SU-genpau))

(define (SU-genpau SU-mlupau)
  SU-mlupau)

(define (SU-mluvla SU-genvla* SU vimcu-genpau?)
  `(SU-mluvla ,@SU-genvla* ,SU ,@(?*-null vimcu-genpau?)))

(define (SU-sa SA-genvla* SA-genpau)
  `(,@SA-genvla* ,SA-genpau))


;;
;; Y
;;
(define (Y-genpau Y-mlupau)
  `(Y-genpau ,@Y-mlupau))

(define (Y-mlupau Y-mluvla SI-genpau?)
  `(,@Y-mluvla ,@(?-null SI-genpau?)))

(define (Y-mluvla Y)
  `(Y-mluvla ,Y))


;;
;; ZEI
;;
; XXX: permit ba'e?
(define (zei-genpau zei-vimpau)
  `(ZEI-genpau ,@zei-vimpau))

(define (zei-vimpau zei-sa* ZEI-mlupau)
  `(,@(map-apply sa* zei-sa*) ,ZEI-mlupau))

(define (zei-mluvla ZEI vimcu-genpau?)
  `(ZEI-mluvla ,ZEI ,@(?*-null vimcu-genpau?)))


(define (ZEI-genpau BAhE-genpau* ZEI-vimpau)
  `(ZEI-genpau ,@(?*-null BAhE-genpau*) ,@ZEI-vimpau))

(define (ZEI-vimpau ZEI-sa* ZEI-mlupau)
  `(,@(map-apply sa* ZEI-sa*) ,ZEI-mlupau))

(define (ZEI-mluvla ZEI-genvla ZEI-fanmo+)
  `(ZEI-mlulva ,ZEI-genvla ,@(apply append ZEI-fanmo+)))

;XXX
;(define (ZEI-fanmo BAhE-genpau* ZEI vimcu-genpau? ZEI-genvla)
;  `(,@(?*-null BAhE-genpau*) ,ZEI ,@(?*-null vimcu-genpau?) ,ZEI-genvla))
(define (ZEI-fanmo BAhE-genpau* ZEI ZEI-genvla)
  `(,@(?*-null BAhE-genpau*) ,ZEI ,ZEI-genvla))

(define (ZEI-sa SA-genvla* ZEI-sa* SA-genpau)
  `(,@SA-genvla* ,@(map-apply sa* ZEI-sa*) ,SA-genpau))


;;
;; ZO
;;
(define (zo-vimpau zo-sa* ZO-mlupau)
  `(,@(map-apply sa* zo-sa*) ,@ZO-mlupau))

(define (zo-mluvla ZO vimcu-genpau?)
  `(ZO-mluvla ,ZO ,@(?*-null vimcu-genpau?)))


(define (ZO-genpau BAhE-genpau* ZO-vimpau)
  `(ZO-genpau ,@(?*-null BAhE-genpau*) ,@ZO-vimpau))

(define (ZO-vimpau ZO-sa* ZO-mlupau)
  `(,@(map-apply sa* ZO-sa*) ,ZO-mlupau))

(define (ZO-mluvla ZO ZO-genvla vimcu-genpau?)
  `(ZO-mluvla ,ZO ,ZO-genvla ,@(?*-null vimcu-genpau?)))

(define (ZO-sa SA-genvla* ZO-sa* SA-genpau)
  `(,@SA-genvla* ,@(map-apply sa* ZO-sa*) ,SA-genpau))


;;
;; ZOI
;;
(define (ZOI-genpau BAhE-genpau* ZOI-vimpau)
  `(ZOI-genpau ,@(?*-null BAhE-genpau*) ,@ZOI-vimpau))

(define (ZOI-vimpau ZOI-sa* ZOI-mlupau)
  `(,@(map-apply sa* ZOI-sa*) ,ZOI-mlupau))

(define (ZOI-mluvla ZOI ZOI-open ZOI-word* ZOI-close vimcu-genpau?)
  `(ZOI-mluvla ,ZOI
               ,ZOI-open
               ,ZOI-word*
               ,ZOI-close
               ,@(?*-null vimcu-genpau?)))

(define-values (zoi-open zoi-word zoi-close)
  (let ((zoi '()))
    (values
      (lambda (any-word)
        (set! zoi any-word)
        any-word)

      (lambda (any-word)
        (if (not (equal=? zoi any-word))
            any-word
            #f))

      (lambda (any-word)
        (if (equal=? zoi any-word)
            any-word
            #f)))))

(define (ZOI-sa SA-genvla* ZOI-sa* SA-genpau)
  `(,@SA-genvla* ,@(map-apply sa* ZOI-sa*) ,SA-genpau))


;;
;; tests
;;
(secuxna-debug #t)
;(secuxna-start-production "initial-sa-t")

(let* ((makfa-cmene      "magic-words.peg")
       (makfa-samselpla  (call-with-input-file makfa-cmene genturfahi-peg))
       (makfa-genturfahi (genturfahi* (eval makfa-samselpla))))

  (define (makfa-mapti lefpoi selkarbi #!optional (rest ""))
    (let ((jalge (makfa-genturfahi lefpoi)))
      (test lefpoi selkarbi (car jalge))
      (test lefpoi rest     (cadr jalge))))

  (define (makfa-narmapti lefpoi)
    (makfa-mapti lefpoi '(gerna) lefpoi))

; XXX: test this.
;      broda sa brode sa brodi si brodu => brodu

;    (makfa-mapti
;      "broda broda sa ba'e broda"
;      '(gerna (SA-genpau (GISMU-genpau (GISMU-mluvla (gismu "broda")))
;                         (GISMU-genpau (GISMU-mluvla (gismu "broda")))
;                         (SA-mluvla (SA "sa")))
;              (GISMU-genpau (BAhE-genpau (BAhE-mluvla (BAhE "ba'e")))
;                            (GISMU-mluvla (gismu "broda")))))
;

    ; I can have a trailing {bu si} that doesn't bind with my
    ; left side, and I can have {zei si} that does the same.
    ; so I need to mask my erasure when I'm in the middle of
    ; parsing bu or zei so I don't accidentally swallow the
    ; word I'm trying to parse with an errant si-clause.
    ;
    ; am I happy with these cases, below?  They're a little
    ; squirely, because you have to know bu doesn't bind to
    ; the left--that that is a syntax error.  I think sa has
    ; even worse cases, here.
    ;
    ; lo'u le'u bu si
    ; bu si
    ; broda bu si
    ; broda zei si
;

  ; BAhE tests
  ;
  (define (test-BAhE)
    (makfa-mapti
      "ba'e"
      '(gerna (BAhE-genpau (BAhE-mluvla (BAhE "ba'e")))))

    (makfa-mapti
      "ba'e broda"
      '(gerna (GISMU-genpau
                (BAhE-genpau (BAhE-mluvla (BAhE "ba'e")))
                (GISMU-mluvla (gismu "broda")))))

    ; {ba'e bu} is not the ba'e letteral.  I want to permit
    ; {broda ba'e bu} to emphasize the bu-ness of broda, and
    ; therefor don't permit ba'e to be bu-ed.
    ;
    (makfa-mapti
      "ba'e bu"
      '(gerna (BAhE-genpau (BAhE-mluvla (BAhE "ba'e"))))
      "bu")


    (makfa-mapti
      "ba'e sa"
      '(gerna (SA-genpau
                (BAhE-genpau
                  (BAhE-mluvla (BAhE "ba'e")))
                (SA-mluvla (SA "sa")))))

    (makfa-mapti
      "ba'e sa ba'e broda"
      '(gerna (GISMU-genpau
                (BAhE-genpau
                  (SA-genpau
                    (BAhE-mluvla (BAhE "ba'e"))
                    (SA-mluvla (SA "sa")))
                  (BAhE-mluvla (BAhE "ba'e")))
                (GISMU-mluvla (gismu "broda")))))

    (makfa-mapti
      "broda sa ba'e broda"
      '(gerna (SA-genpau (GISMU-genpau (GISMU-mluvla (gismu "broda")))
                         (SA-mluvla (SA "sa")))
              (GISMU-genpau (BAhE-genpau (BAhE-mluvla (BAhE "ba'e")))
                            (GISMU-mluvla (gismu "broda"))))))

  ; BU tests
  ;
  (define (test-BU)
    (makfa-narmapti "bu")

    (makfa-narmapti "bu ba'e")
    (makfa-narmapti "bu bu")
    (makfa-narmapti "bu broda")
    (makfa-narmapti "bu le'u")
    (makfa-narmapti "bu zo")
    (makfa-narmapti "bu zei")
    (makfa-narmapti "bu broda zei")
    (makfa-narmapti "bu zei brode")
    (makfa-narmapti "bu broda zei broda")
    (makfa-narmapti "bu zo broda")

    ;; erase words are able to skip an otherwise
    ;; ungrammatical "bu"
    ;;

    ; bu + sa
    (makfa-mapti
      "bu sa"
      '(gerna (SA-genpau
                (BU-genpau
                  (BU-mluvla (BU "bu")))
                (SA-mluvla (SA "sa")))))

    (makfa-narmapti "bu sa bu")

    ; bu + si
    (makfa-mapti
      "bu si"
      '(gerna (SI-genpau (SI-mluvla (BU-mluvla (BU "bu")) (SI "si")))))

    ; bu + sa + si
    (makfa-mapti
      "bu sa bu si"
      '(gerna (SI-genpau
                (SI-mluvla
                  (SA-genpau (BU-mluvla (BU "bu")) (SA-mluvla (SA "sa")))
                  (BU-mluvla (BU "bu"))
                  (SI "si")))))

    ; bu + su
    (makfa-mapti
      "bu su" 
      '(gerna (SU-genpau
                (SU-mluvla
                  (BU-genpau
                    (BU-mluvla (BU "bu")))
                  (SU "su")))))

    (makfa-mapti
      "broda ba'e bu"
      '(gerna (BU-genpau
                (BU-mluvla (GISMU-mluvla (gismu "broda"))
                           (BAhE-genpau (BAhE-mluvla (BAhE "ba'e")))
                           (BU "bu")))))
      '(gerna (BU-genpau (gismu "broda")
                         (BAhE-genpau (BAhE "ba'e"))
                         (BU "bu")))

    (makfa-mapti
      "broda bu"
      '(gerna (BU-genpau
                (BU-mluvla (GISMU-mluvla (gismu "broda"))
                           (BU "bu")))))
    (makfa-mapti
      "broda bu bu"
      '(gerna (BU-genpau
                (BU-mluvla (GISMU-mluvla (gismu "broda"))
                           (BU "bu")
                           (BU "bu")))))
    (makfa-mapti
      "broda bu bu bu"
      '(gerna (BU-genpau
                (BU-mluvla (GISMU-mluvla (gismu "broda"))
                           (BU "bu")
                           (BU "bu")
                           (BU "bu"))))))

  ;; LOhU ... LEhU tests
  ;;
  (define (test-LOhU)
    (makfa-mapti
      "le'u bu"
      '(gerna (BU-genpau
                (BU-mluvla (LEhU-mluvla (LEhU "le'u")) (BU "bu")))))

    ; {le'u bu} is the le'u letteral, so we cannot {bu} a quote.
    ;
    (makfa-narmapti "lo'u le'u bu")

    (makfa-mapti
      "lo'u le'u si lo'u le'u"
      '(gerna (SI-genpau
                (SI-mluvla
                  (LOhU-mluvla (LOhU "lo'u") (LEhU-mluvla (LEhU "le'u")))
                  (SI "si")))
              (LOhU-genpau
                (LOhU-mluvla (LOhU "lo'u")
                (LEhU-mluvla (LEhU "le'u"))))))

    (makfa-mapti
      "lo'u zei le'u"
      '(gerna (LOhU-genpau
                (LOhU-mluvla (LOhU "lo'u")
                (ZEI "zei")
                (LEhU-mluvla (LEhU "le'u"))))))

    (makfa-mapti
      "lo'u le'u sa"
      '(gerna (SA-genpau
                (LOhU-genpau
                  (LOhU-mluvla (LOhU "lo'u")
                               (LEhU-mluvla (LEhU "le'u"))))
                (SA-mluvla (SA "sa")))))

    (makfa-mapti
      "lo'u le'u zei"
      '(gerna (LOhU-genpau
                (LOhU-mluvla (LOhU "lo'u")
                (LEhU-mluvla (LEhU "le'u")))))
      "zei")

    (makfa-mapti
      "zei lo'u le'u"
      '(gerna)
      "zei lo'u le'u")

    ; {lo'u ... le'u} cannot be bound to a zei.
    ;
    (makfa-narmapti "lo'u le'u zei lo'u le'u")

    (makfa-mapti
      "lo'u le'u"
      '(gerna (LOhU-genpau
                (LOhU-mluvla (LOhU "lo'u")
                             (LEhU-mluvla (LEhU "le'u")))))))

  ; zo lo'u, zo le'u are in zo.


  ;; fa'o tests
  ;;
  (define (test-FAhO)
    (makfa-mapti
      "fa'o"
      '(gerna (FAhO-genpau (FAhO-mluvla (FAhO "fa'o")))))

    ; no magic work processing is done after fa'o, including sa,
    ; si, or su erasure.
    ;
    (makfa-mapti
      "fa'o bu"
      '(gerna (FAhO-genpau (FAhO-mluvla (FAhO "fa'o")))))
    (makfa-mapti
      "fa'o fa'o"
      '(gerna (FAhO-genpau (FAhO-mluvla (FAhO "fa'o")))))
    (makfa-mapti
      "fa'o lo'u"
      '(gerna (FAhO-genpau (FAhO-mluvla (FAhO "fa'o")))))
    (makfa-mapti
      "fa'o lo'u le'u"
      '(gerna (FAhO-genpau (FAhO-mluvla (FAhO "fa'o")))))
    (makfa-mapti
      "fa'o le'u"
      '(gerna (FAhO-genpau (FAhO-mluvla (FAhO "fa'o")))))
    (makfa-mapti
      "fa'o sa"
      '(gerna (FAhO-genpau (FAhO-mluvla (FAhO "fa'o")))))
    (makfa-mapti
      "fa'o sa fa'o"
      '(gerna (FAhO-genpau (FAhO-mluvla (FAhO "fa'o")))))
    (makfa-mapti
      "fa'o si"
      '(gerna (FAhO-genpau (FAhO-mluvla (FAhO "fa'o")))))
    (makfa-mapti
      "fa'o su"
      '(gerna (FAhO-genpau (FAhO-mluvla (FAhO "fa'o")))))
    (makfa-mapti
      "fa'o zei"
      '(gerna (FAhO-genpau (FAhO-mluvla (FAhO "fa'o")))))
    (makfa-mapti
      "fa'o zei brode"
      '(gerna (FAhO-genpau (FAhO-mluvla (FAhO "fa'o")))))
    (makfa-mapti
      "fa'o broda zei brode"
      '(gerna (FAhO-genpau (FAhO-mluvla (FAhO "fa'o")))))
    (makfa-mapti
      "fa'o zo"
      '(gerna (FAhO-genpau (FAhO-mluvla (FAhO "fa'o")))))
    (makfa-mapti
      "fa'o zo fa'o"
      '(gerna (FAhO-genpau (FAhO-mluvla (FAhO "fa'o")))))
    (makfa-mapti
      "fa'o zoi"
      '(gerna (FAhO-genpau (FAhO-mluvla (FAhO "fa'o")))))
    (makfa-mapti
      "fa'o zoi fa'o"
      '(gerna (FAhO-genpau (FAhO-mluvla (FAhO "fa'o")))))
    (makfa-mapti
      "fa'o zoi fa'o fa'o"
      '(gerna (FAhO-genpau (FAhO-mluvla (FAhO "fa'o")))))
    (makfa-mapti
      "fa'o zoi fa'o fa'o fa'o"
      '(gerna (FAhO-genpau (FAhO-mluvla (FAhO "fa'o"))))))



  ;; sa tests
  ;;
  (define (test-SA)

    ;; initial sa
    ;;
    (makfa-mapti
      "sa"
      '(gerna (SA-genpau (SA-mluvla (SA "sa")))))

    (makfa-mapti
      "sa ba'e"
      '(gerna (SA-genpau (SA-mluvla (SA "sa")))
              (BAhE-genpau (BAhE-mluvla (BAhE "ba'e")))))

    ; we permit bu after sa, but we don't permit bu at the beginning
    ; of a parse.  sa backtracks here but the whole parse doesn't
    ; match.
    ;
    (makfa-mapti
      "sa bu"
      '(gerna (SA-genpau (SA-mluvla (SA "sa"))))
      "bu")

    (makfa-mapti
      "sa broda bu"
      '(gerna (SA-genpau (SA-mluvla (SA "sa")))
              (BU-genpau
                (BU-mluvla
                  (GISMU-mluvla (gismu "broda"))
                  (BU "bu")))))

    (makfa-mapti
      "sa broda"
      '(gerna (SA-genpau (SA-mluvla (SA "sa")))
              (GISMU-genpau (GISMU-mluvla (gismu "broda")))))

    (makfa-mapti
      "sa fa'o"
      '(gerna (SA-genpau (SA-mluvla (SA "sa")))
              (FAhO-genpau (FAhO-mluvla (FAhO "fa'o")))))

    (makfa-mapti
      "sa sa fa'o"
      '(gerna (SA-genpau
                (SA-mluvla (SA "sa"))
                (SA-mluvla (SA "sa")))
              (FAhO-genpau (FAhO-mluvla (FAhO "fa'o")))))

    (makfa-mapti
      "sa sa sa fa'o"
      '(gerna (SA-genpau
                (SA-mluvla (SA "sa"))
                (SA-mluvla (SA "sa"))
                (SA-mluvla (SA "sa")))
              (FAhO-genpau (FAhO-mluvla (FAhO "fa'o")))))

    (makfa-mapti
      "sa le'u"
      '(gerna (SA-genpau (SA-mluvla (SA "sa"))))
      "le'u")

    (makfa-mapti
      "sa sa"
      '(gerna (SA-genpau
                (SA-mluvla (SA "sa"))
                (SA-mluvla (SA "sa")))))

    (makfa-mapti
      "sa sa sa"
      '(gerna (SA-genpau
                (SA-mluvla (SA "sa"))
                (SA-mluvla (SA "sa"))
                (SA-mluvla (SA "sa")))))

    (makfa-mapti
      "sa zei"
      '(gerna (SA-genpau (SA-mluvla (SA "sa"))))
      "zei")

    (makfa-mapti
      "sa broda zei"
      '(gerna (SA-genpau (SA-mluvla (SA "sa")))
              (GISMU-genpau (GISMU-mluvla (gismu "broda"))))
      "zei")

    (makfa-mapti
      "sa zei brode"
      '(gerna (SA-genpau (SA-mluvla (SA "sa"))))
      "zei brode")

    (makfa-mapti
      "sa broda zei brode"
      '(gerna (SA-genpau
                (SA-mluvla (SA "sa")))
              (ZEI-genpau
                (ZEI-mlulva
                  (GISMU-mluvla (gismu "broda"))
                  (ZEI "zei")
                  (GISMU-mluvla (gismu "brode"))))))

    (makfa-mapti
      "sa zo"
      '(gerna (SA-genpau (SA-mluvla (SA "sa"))))
      "zo")

    (makfa-mapti
      "sa zo broda"
      '(gerna (SA-genpau
                (SA-mluvla (SA "sa")))
              (ZO-genpau (ZO-mluvla (ZO "zo") (gismu "broda")))))

    (makfa-mapti
      "broda sa ba'e broda"
      '(gerna (SA-genpau
                (GISMU-genpau (GISMU-mluvla (gismu "broda")))
                (SA-mluvla (SA "sa")))
              (GISMU-genpau
                (BAhE-genpau (BAhE-mluvla (BAhE "ba'e")))
                (GISMU-mluvla (gismu "broda")))))


    ;; backtracking SA
    ;;
    (makfa-mapti
      "broda brode brodi sa sa sa brodo"
      '(gerna (GISMU-genpau
                (SA-genpau
                  (GISMU-mluvla (gismu "broda"))
                  (SA-genpau
                    (GISMU-mluvla (gismu "brode"))
                    (SA-genpau (GISMU-mluvla (gismu "brodi"))
                      (SA-mluvla (SA "sa")))
                    (SA-mluvla (SA "sa")))
                  (SA-mluvla (SA "sa")))
                (GISMU-mluvla (gismu "brodo")))))


    ; this did not match my initial expectation, where I considered
    ; the ba'e to be part of brod?, rather than a word in it's own
    ; right.  I expected instead for ba'e to bind with brod? and
    ; become a pseudo-word before sa processing.  That would instead
    ; produce the following:
    ;
    ;  '(gerna (GISMU-genpau
    ;            (SA-genpau
    ;              (GISMU-genpau (BAhE-genpau (BAhE "ba'e"))
    ;                            (gismu "broda"))
    ;              (SA "sa"))
    ;            (BAhE-genpau (BAhE "ba'e"))
    ;            (gismu "brode")))
    ;
    (makfa-mapti
      "ba'e broda sa ba'e brode"
      '(gerna
         (GISMU-genpau
           (BAhE-genpau
             (SA-genpau
               (BAhE-mluvla (BAhE "ba'e"))
               (GISMU-genpau (GISMU-mluvla (gismu "broda")))
               (SA-mluvla (SA "sa")))
             (BAhE-mluvla (BAhE "ba'e")))
           (GISMU-mluvla (gismu "brode")))))

    (makfa-mapti
      "ba'e sa ba'e broda"
      '(gerna (GISMU-genpau
                (BAhE-genpau
                  (SA-genpau
                    (BAhE-mluvla (BAhE "ba'e"))
                    (SA-mluvla (SA "sa")))
                  (BAhE-mluvla (BAhE "ba'e")))
                (GISMU-mluvla (gismu "broda")))))


    (makfa-mapti
      "broda sa brode"
      '(gerna (GISMU-genpau (SA-genpau (GISMU-mluvla (gismu "broda"))
                                       (SA-mluvla (SA "sa")))
                            (GISMU-mluvla (gismu "brode")))))

    (makfa-mapti
      "broda sa sa sa brode"
      '(gerna (SA-genpau
                (SA-genpau (GISMU-mluvla (gismu "broda"))
                           (SA-mluvla (SA "sa")))
                (SA-mluvla (SA "sa"))
                (SA-mluvla (SA "sa")))
              (GISMU-genpau (GISMU-mluvla (gismu "brode")))))

    ; XXX: duplicate
    (makfa-narmapti "bu sa bu")

    ; initial sa, with some complex cases.
    ;
    (makfa-mapti
      "broda brode sa brodi bu"
      '(gerna (SA-genpau
                (GISMU-genpau (GISMU-mluvla (gismu "broda")))
                (GISMU-genpau (GISMU-mluvla (gismu "brode")))
                (SA-mluvla (SA "sa")))
              (BU-genpau
                (BU-mluvla (GISMU-mluvla (gismu "brodi")) (BU "bu")))))

    (makfa-mapti
      "broda bu sa broda bu"
      '(gerna (BU-genpau
                (SA-genpau (BU-mluvla (GISMU-mluvla (gismu "broda")) (BU "bu"))
                           (SA-mluvla (SA "sa")))
                (BU-mluvla (GISMU-mluvla (gismu "broda")) (BU "bu")))))

    (makfa-mapti
      "broda si broda sa si"
      '(gerna (SI-genpau
                (SI-mluvla (GISMU-mluvla (gismu "broda")) (SI "si")))
              (SA-genpau (GISMU-genpau (GISMU-mluvla (gismu "broda")))
                         (SA-mluvla (SA "sa")))
              (SI-genpau (SI-mluvla (SI "si")))))

    (makfa-mapti
      "broda broda si sa si"
      '(gerna (SA-genpau (GISMU-genpau
                           (GISMU-mluvla (gismu "broda")
                                         (SI-mluvla
                                           (GISMU-mluvla (gismu "broda"))
                                           (SI "si"))))
                         (SA-mluvla (SA "sa")))
              (SI-genpau (SI-mluvla (SI "si")))))

    (makfa-mapti
      "sa fa'o"
      '(gerna (SA-genpau (SA-mluvla (SA "sa")))
              (FAhO-genpau (FAhO-mluvla (FAhO "fa'o")))))

    ; fa'o takes precedence over si.
    ;
    (makfa-mapti
      "sa fa'o si"
      '(gerna (SA-genpau (SA-mluvla (SA "sa")))
              (FAhO-genpau (FAhO-mluvla (FAhO "fa'o")))))

    ; initial sa works up to and including fa'o...
    ;
    (makfa-mapti
      "sa broda sa fa'o"
      '(gerna (SA-genpau (SA-mluvla (SA "sa")))
              (SA-genpau (GISMU-genpau (GISMU-mluvla (gismu "broda")))
                         (SA-mluvla (SA "sa")))
              (FAhO-genpau (FAhO-mluvla (FAhO "fa'o")))))

    ; ...but once we see a fa'o, stop initial-sa processing
    ;
    (makfa-mapti
      "sa fa'o sa broda"
      '(gerna (SA-genpau (SA-mluvla (SA "sa")))
              (FAhO-genpau (FAhO-mluvla (FAhO "fa'o")))))

    ; nested SA
    ;
    (makfa-mapti
      "broda brode brodi sa sa sa brodo"
      '(gerna (GISMU-genpau
                (SA-genpau
                  (GISMU-mluvla (gismu "broda"))
                  (SA-genpau
                    (GISMU-mluvla (gismu "brode"))
                    (SA-genpau (GISMU-mluvla (gismu "brodi"))
                      (SA-mluvla (SA "sa")))
                    (SA-mluvla (SA "sa")))
                  (SA-mluvla (SA "sa")))
                (GISMU-mluvla (gismu "brodo")))))

    (makfa-mapti
      "ba'e ba'e ba'e sa sa sa ba'e"
       '(gerna (BAhE-genpau
                 (SA-genpau (BAhE-mluvla (BAhE "ba'e"))
                   (SA-genpau (BAhE-mluvla (BAhE "ba'e"))
                     (SA-genpau (BAhE-mluvla (BAhE "ba'e"))
                       (SA-mluvla (SA "sa")))
                     (SA-mluvla (SA "sa")))
                   (SA-mluvla (SA "sa")))
                 (BAhE-mluvla (BAhE "ba'e")))))


    ; SA + SI
    ;
    ; we test both the pathological case and ensure that sa is
    ; backing up before si erases.
    ;
    (makfa-mapti
      "sa si"
      '(gerna (SA-genpau
                (SA-mluvla (SA "sa")))
              (SI-genpau (SI-mluvla (SI "si")))))

    (makfa-mapti
      "sa bu si"
      '(gerna (SA-genpau (SA-mluvla (SA "sa")))
              (SI-genpau (SI-mluvla (BU-mluvla (BU "bu")) (SI "si")))))

    (makfa-mapti
      "bu sa bu si"
      '(gerna (SI-genpau
                (SI-mluvla
                  (SA-genpau (BU-mluvla (BU "bu"))
                             (SA-mluvla (SA "sa")))
                  (BU-mluvla (BU "bu"))
                  (SI "si")))))

    (makfa-mapti
      "sa broda bu si"
      '(gerna (SA-genpau
                (SA-mluvla (SA "sa")))
              (SI-genpau
                (SI-mluvla
                  (BU-mluvla (GISMU-mluvla (gismu "broda"))
                             (BU "bu"))
                  (SI "si")))))

    (makfa-mapti
      "sa lo'u le'u si"
      '(gerna (SA-genpau
                (SA-mluvla (SA "sa")))
              (SI-genpau
                (SI-mluvla
                  (LOhU-mluvla (LOhU "lo'u")
                               (LEhU-mluvla (LEhU "le'u")))
                  (SI "si")))))

    ; XXX: test each of these cases, they all call unique code.

    (makfa-mapti
      "sa le'u si"
      '(gerna (SA-genpau
                (SA-mluvla (SA "sa")))
              (SI-genpau
                (SI-mluvla (LEhU-mluvla (LEhU "le'u"))
                           (SI "si")))))


    (makfa-mapti
      "sa si si"
      '(gerna (SA-genpau (SA-mluvla (SA "sa")))
              (SI-genpau (SI-mluvla (SI "si")))
              (SI-genpau (SI-mluvla (SI "si")))))

    (makfa-mapti
      "sa su si"
      '(gerna (SA-genpau (SA-mluvla (SA "sa")))
              (SU-genpau (SU-mluvla (SU "su")))
              (SI-genpau (SI-mluvla (SI "si")))))

    (makfa-mapti
      "sa zei si"
      '(gerna (SA-genpau (SA-mluvla (SA "sa")))
              (SI-genpau
                (SI-mluvla (ZEI-mluvla (ZEI "zei"))
                           (SI "si")))))

    (makfa-mapti
      "sa broda zei brode si"
      '(gerna (SA-genpau (SA-mluvla (SA "sa")))
              (SI-genpau
                (SI-mluvla
                  (ZEI-mlulva (GISMU-mluvla (gismu "broda"))
                              (ZEI "zei")
                              (GISMU-mluvla (gismu "brode")))
                  (SI "si")))))

    (makfa-mapti
      "sa zo si si"
      '(gerna (SA-genpau
                (SA-mluvla (SA "sa")))
              (SI-genpau
                (SI-mluvla
                  (ZO-mluvla (ZO "zo") (SI "si"))
                  (SI "si")))))

    (makfa-mapti
      "zo broda sa zo brode si"
      '(gerna (SI-genpau
                (SI-mluvla
                  (SA-genpau (ZO-mluvla (ZO "zo") (gismu "broda"))
                             (SA-mluvla (SA "sa")))
                  (ZO-mluvla (ZO "zo") (gismu "brode"))
                  (SI "si")))))

    (makfa-mapti
      "broda zo brode sa zo brodi si"
      '(gerna (GISMU-genpau
                (GISMU-mluvla
                  (gismu "broda")
                  (SI-mluvla
                    (SA-genpau
                      (ZO-mluvla (ZO "zo") (gismu "brode"))
                      (SA-mluvla (SA "sa")))
                    (ZO-mluvla (ZO "zo") (gismu "brodi"))
                    (SI "si"))))))

    (makfa-mapti
      "sa zoi si si si"
      '(gerna (SA-genpau (SA-mluvla (SA "sa")))
              (SI-genpau
                (SI-mluvla
                  (ZOI-mluvla (ZOI "zoi")
                              (SI "si")
                              ()
                              (SI "si"))
                  (SI "si")))))

    ; XXX: more examples
    (makfa-mapti
      "broda sa brode si"
      '(gerna (SI-genpau
                (SI-mluvla
                  (SA-genpau (GISMU-mluvla (gismu "broda"))
                             (SA-mluvla (SA "sa")))
                  (GISMU-mluvla (gismu "brode"))
                  (SI "si")))))




    (makfa-mapti
      "sa su"
      '(gerna (SA-genpau (SA-mluvla (SA "sa")))
              (SU-genpau (SU-mluvla (SU "su")))))

    (makfa-narmapti "le'u sa le'u")

    (makfa-mapti
      "broda zei brode sa brodi zei brodo"
      '(gerna (ZEI-genpau
                (SA-genpau
                  (ZEI-mlulva (GISMU-mluvla (gismu "broda"))
                              (ZEI "zei")
                              (GISMU-mluvla (gismu "brode")))
                  (SA-mluvla (SA "sa")))
                (ZEI-mlulva (GISMU-mluvla (gismu "brodi"))
                            (ZEI "zei")
                            (GISMU-mluvla (gismu "brodo"))))))

    (makfa-mapti
      "zo broda sa zo brode"
      '(gerna (ZO-genpau (SA-genpau (ZO-mluvla (ZO "zo") (gismu "broda"))
                                    (SA-mluvla (SA "sa")))
                         (ZO-mluvla (ZO "zo") (gismu "brode")))))

    ; make sure that sa+bu is not fooled by other pseudo-words
    ; between it and the previous bu.
    (makfa-mapti
      "broda bu zo broda broda broda si sa broda bu"
      '(gerna (BU-genpau
                (SA-genpau (BU-mluvla (GISMU-mluvla (gismu "broda"))
                                      (BU "bu"))
                           (ZO-genpau (ZO-mluvla (ZO "zo")
                                      (gismu "broda")))
                           (GISMU-genpau
                             (GISMU-mluvla
                               (gismu "broda")
                               (SI-mluvla (GISMU-mluvla (gismu "broda"))
                                          (SI "si"))))
                           (SA-mluvla (SA "sa")))
                (BU-mluvla (GISMU-mluvla (gismu "broda")) (BU "bu")))))

    (makfa-mapti
      "zo broda broda bu broda broda si sa zo broda"
      '(gerna (ZO-genpau
                (SA-genpau (ZO-mluvla (ZO "zo")
                                      (gismu "broda"))
                           (BU-genpau
                             (BU-mluvla (GISMU-mluvla (gismu "broda"))
                                        (BU "bu")))
                           (GISMU-genpau
                             (GISMU-mluvla
                               (gismu "broda")
                               (SI-mluvla (GISMU-mluvla (gismu "broda"))
                                          (SI "si"))))
                           (SA-mluvla (SA "sa")))
                (ZO-mluvla (ZO "zo") (gismu "broda")))))

    (makfa-mapti
      "broda zo broda broda bu broda si sa broda"
      '(gerna (GISMU-genpau
                (SA-genpau (GISMU-mluvla (gismu "broda"))
                           (ZO-genpau (ZO-mluvla (ZO "zo")
                                                 (gismu "broda")))
                           (BU-genpau
                             (BU-mluvla
                               (GISMU-mluvla (gismu "broda"))
                               (BU "bu")
                               (SI-mluvla (GISMU-mluvla (gismu "broda"))
                                          (SI "si"))))
                           (SA-mluvla (SA "sa")))
                (GISMU-mluvla (gismu "broda"))))))


  ;; si tests
  ;;
  (define (test-SI)
    ; initial-si
    ;
    (makfa-mapti
      "si"
      '(gerna (SI-genpau (SI-mluvla (SI "si")))))
    (makfa-mapti
      "si si"
      '(gerna (SI-genpau (SI-mluvla (SI "si")))
              (SI-genpau (SI-mluvla (SI "si")))))
    (makfa-mapti
      "si si si"
      '(gerna (SI-genpau (SI-mluvla (SI "si")))
              (SI-genpau (SI-mluvla (SI "si")))
              (SI-genpau (SI-mluvla (SI "si")))))
    (makfa-mapti
      "si si si si"
      '(gerna (SI-genpau (SI-mluvla (SI "si")))
              (SI-genpau (SI-mluvla (SI "si")))
              (SI-genpau (SI-mluvla (SI "si")))
              (SI-genpau (SI-mluvla (SI "si")))))

    ; also in test-BU
    (makfa-mapti
      "bu si"
      '(gerna (SI-genpau (SI-mluvla (BU-mluvla (BU "bu")) (SI "si")))))

    (makfa-mapti
      "broda bu si"
      '(gerna (SI-genpau
                (SI-mluvla
                  (BU-mluvla (GISMU-mluvla (gismu "broda"))
                             (BU "bu"))
                  (SI "si")))))


    (makfa-mapti
      "broda bu bu si"
      '(gerna (SI-genpau
                (SI-mluvla
                  (BU-mluvla (GISMU-mluvla (gismu "broda"))
                             (BU "bu")
                             (BU "bu"))
                  (SI "si")))))

    (makfa-mapti
      "broda bu bu bu si"
      '(gerna (SI-genpau
                (SI-mluvla
                  (BU-mluvla (GISMU-mluvla (gismu "broda"))
                             (BU "bu")
                             (BU "bu")
                             (BU "bu"))
                  (SI "si")))))

    ;; si within a BU-genpau
    ;;
    (makfa-mapti
      "broda brode si bu"
      '(gerna (BU-genpau
                (BU-mluvla
                  (GISMU-mluvla (gismu "broda")
                                (SI-mluvla (GISMU-mluvla (gismu "brode"))
                                           (SI "si")))
                  (BU "bu")))))

    ;; XXX: verify word classes other than gismu here. 
    ;;
    (makfa-mapti
      "broda bu brode si bu"
      '(gerna (BU-genpau
                (BU-mluvla
                  (GISMU-mluvla (gismu "broda"))
                  (BU "bu")
                  (SI-mluvla (GISMU-mluvla (gismu "brode")) (SI "si"))
                  (BU "bu")))))

    ;; note this special case: you can't erase just a single bu
    ;; with si, you erase the entire pseudo-word.
    ;;
    (makfa-mapti
      "broda bu bu si bu"
      '(gerna (SI-genpau
                (SI-mluvla
                  (BU-mluvla (GISMU-mluvla (gismu "broda"))
                             (BU "bu")
                             (BU "bu"))
                  (SI "si"))))
      "bu")

    (makfa-mapti
      "broda si"
      '(gerna (SI-genpau
                (SI-mluvla
                  (GISMU-mluvla (gismu "broda"))
                  (SI "si")))))

    (makfa-mapti
      "le'u si"
      '(gerna (SI-genpau
                (SI-mluvla
                  (LEhU-mluvla (LEhU "le'u"))
                  (SI "si")))))

    ; si after su.  Note that si does not bind su, this is like
    ; an initial si.
    ;
    (makfa-mapti
      "su si"
      '(gerna (SU-genpau (SU-mluvla (SU "su")))
              (SI-genpau (SI-mluvla (SI "si")))))


    (makfa-mapti
      "zei si"
      '(gerna (SI-genpau (SI-mluvla (ZEI-mluvla (ZEI "zei")) (SI "si")))))

    (makfa-mapti
      "broda zei si"
      '(gerna (GISMU-genpau
                (GISMU-mluvla (gismu "broda")
                              (SI-mluvla (ZEI-mluvla (ZEI "zei"))
                                         (SI "si"))))))

    (makfa-mapti
      "zei brode si"
      '(gerna)
      "zei brode si")

    (makfa-mapti
      "broda zei brode si"
      '(gerna (SI-genpau
                (SI-mluvla
                  (ZEI-mlulva (GISMU-mluvla (gismu "broda"))
                              (ZEI "zei")
                              (GISMU-mluvla (gismu "brode")))
                  (SI "si")))))

    (makfa-mapti
      "broda zei brode si brodi zei brodo"
      '(gerna (SI-genpau
                (SI-mluvla (ZEI-mlulva (GISMU-mluvla (gismu "broda"))
                                       (ZEI "zei")
                                       (GISMU-mluvla (gismu "brode")))
                           (SI "si")))
              (ZEI-genpau
                (ZEI-mlulva (GISMU-mluvla (gismu "brodi"))
                            (ZEI "zei")
                            (GISMU-mluvla (gismu "brodo"))))))

    ; zo wins zo si, find the test under zo.

    (makfa-mapti
      "zo broda si"
      '(gerna (SI-genpau
                (SI-mluvla (ZO-mluvla (ZO "zo") (gismu "broda"))
                           (SI "si")))))

    (makfa-mapti
      "zo si si"
      '(gerna (SI-genpau
                (SI-mluvla (ZO-mluvla (ZO "zo") (SI "si"))
                           (SI "si")))))

    ; si after bu
    ;
    (makfa-mapti
      "broda broda si bu"
      '(gerna (BU-genpau
                (BU-mluvla (GISMU-mluvla
                             (gismu "broda")
                             (SI-mluvla (GISMU-mluvla (gismu "broda"))
                                        (SI "si")))
                           (BU "bu")))))

    (makfa-mapti
      "broda bu broda si"
      '(gerna (BU-genpau
                (BU-mluvla (GISMU-mluvla (gismu "broda"))
                           (BU "bu")
                           (SI-mluvla (GISMU-mluvla (gismu "broda"))
                                      (SI "si"))))))

    (makfa-mapti
      "broda le'u si bu"
      '(gerna (BU-genpau
                (BU-mluvla
                  (GISMU-mluvla
                    (gismu "broda")
                    (SI-mluvla (LEhU-mluvla (LEhU "le'u"))
                               (SI "si")))
                  (BU "bu")))))

    (makfa-mapti
      "broda bu le'u si"
      '(gerna (BU-genpau
                (BU-mluvla
                  (GISMU-mluvla (gismu "broda"))
                  (BU "bu")
                  (SI-mluvla (LEhU-mluvla (LEhU "le'u"))
                             (SI "si"))))))

    (makfa-mapti
      "broda broda bu si bu"
      '(gerna (BU-genpau
                (BU-mluvla (GISMU-mluvla
                             (gismu "broda")
                             (SI-mluvla
                               (BU-mluvla (GISMU-mluvla (gismu "broda"))
                                          (BU "bu"))
                               (SI "si")))
                           (BU "bu")))))

    (makfa-mapti
      "broda bu broda bu si"
      '(gerna (BU-genpau
                (BU-mluvla (GISMU-mluvla (gismu "broda"))
                           (BU "bu")
                           (SI-mluvla
                             (BU-mluvla (GISMU-mluvla (gismu "broda"))
                                        (BU "bu"))
                             (SI "si"))))))

    (makfa-mapti
      "broda zo broda si bu"
      '(gerna (BU-genpau
                (BU-mluvla (GISMU-mluvla
                             (gismu "broda")
                             (SI-mluvla (ZO-mluvla (ZO "zo")
                                                   (gismu "broda"))
                                        (SI "si")))
                           (BU "bu")))))
    (makfa-mapti
      "broda bu zo broda si"
      '(gerna (BU-genpau
                (BU-mluvla (GISMU-mluvla (gismu "broda"))
                           (BU "bu")
                           (SI-mluvla (ZO-mluvla (ZO "zo")
                                                 (gismu "broda"))
                                      (SI "si"))))))

    ; si after zei
    ;
    (makfa-mapti
      "broda brode si zei brodi"
      '(gerna (ZEI-genpau
                (ZEI-mlulva (GISMU-mluvla
                              (gismu "broda")
                              (SI-mluvla (GISMU-mluvla (gismu "brode"))
                                         (SI "si")))
                            (ZEI "zei")
                            (GISMU-mluvla (gismu "brodi"))))))

    (makfa-mapti
      "broda zei brode si brodi"
      '(gerna (SI-genpau
                (SI-mluvla
                  (ZEI-mlulva (GISMU-mluvla (gismu "broda"))
                              (ZEI "zei")
                              (GISMU-mluvla (gismu "brode")))
                  (SI "si")))
              (GISMU-genpau (GISMU-mluvla (gismu "brodi")))))

    (makfa-mapti
      "broda zei brode brodi si"
      '(gerna (ZEI-genpau
                (ZEI-mlulva (GISMU-mluvla (gismu "broda"))
                            (ZEI "zei")
                            (GISMU-mluvla
                              (gismu "brode")
                              (SI-mluvla (GISMU-mluvla (gismu "brodi"))
                                         (SI "si")))))))

    (makfa-mapti
      "broda le'u si zei brode"
      '(gerna (ZEI-genpau
                (ZEI-mlulva (GISMU-mluvla
                              (gismu "broda")
                              (SI-mluvla (LEhU-mluvla (LEhU "le'u"))
                                         (SI "si")))
                            (ZEI "zei")
                            (GISMU-mluvla (gismu "brode"))))))

    (makfa-mapti
      "broda zei le'u si brode"
      '(gerna (SI-genpau
                (SI-mluvla
                  (ZEI-mlulva (GISMU-mluvla (gismu "broda"))
                              (ZEI "zei")
                              (LEhU-mluvla (LEhU "le'u")))
                  (SI "si")))
              (GISMU-genpau (GISMU-mluvla (gismu "brode")))))

    (makfa-mapti
      "broda zei brode le'u si"
      '(gerna (ZEI-genpau
                (ZEI-mlulva (GISMU-mluvla (gismu "broda"))
                            (ZEI "zei")
                            (GISMU-mluvla
                              (gismu "brode")
                              (SI-mluvla (LEhU-mluvla (LEhU "le'u"))
                                         (SI "si")))))))

    (makfa-mapti
      "broda brode bu si zei brodi"
      '(gerna (ZEI-genpau
                (ZEI-mlulva (GISMU-mluvla
                              (gismu "broda")
                              (SI-mluvla
                                (BU-mluvla (GISMU-mluvla (gismu "brode"))
                                           (BU "bu"))
                                (SI "si")))
                            (ZEI "zei")
                            (GISMU-mluvla (gismu "brodi"))))))

    (makfa-mapti
      "broda zei brode bu si brodi"
      '(gerna (SI-genpau
                (SI-mluvla
                  (ZEI-mlulva (GISMU-mluvla (gismu "broda"))
                              (ZEI "zei")
                              (BU-mluvla (GISMU-mluvla (gismu "brode"))
                                         (BU "bu")))
                  (SI "si")))
              (GISMU-genpau (GISMU-mluvla (gismu "brodi")))))

    (makfa-mapti
      "broda zei brode brodi bu si"
      '(gerna (ZEI-genpau
                (ZEI-mlulva
                  (GISMU-mluvla (gismu "broda"))
                  (ZEI "zei")
                  (GISMU-mluvla (gismu "brode")
                                (SI-mluvla
                                  (BU-mluvla (GISMU-mluvla (gismu "brodi"))
                                             (BU "bu"))
                                  (SI "si")))))))

    (makfa-mapti
      "broda zo brode si zei brodi"
      '(gerna (ZEI-genpau
                (ZEI-mlulva (GISMU-mluvla (gismu "broda")
                                          (SI-mluvla
                                            (ZO-mluvla (ZO "zo")
                                                       (gismu "brode"))
                                            (SI "si")))
                            (ZEI "zei")
                            (GISMU-mluvla (gismu "brodi"))))))

    (makfa-mapti
      "broda zei zo brode si brodi"
      '(gerna (SI-genpau
                (SI-mluvla
                  (ZEI-mlulva (GISMU-mluvla (gismu "broda"))
                              (ZEI "zei")
                              (ZO-mluvla (ZO "zo") (gismu "brode")))
                  (SI "si")))
              (GISMU-genpau (GISMU-mluvla (gismu "brodi")))))

    (makfa-mapti
      "broda zei brode zo brodi si"
      '(gerna (ZEI-genpau
                (ZEI-mlulva (GISMU-mluvla (gismu "broda"))
                            (ZEI "zei")
                            (GISMU-mluvla (gismu "brode")
                                          (SI-mluvla
                                            (ZO-mluvla (ZO "zo")
                                                       (gismu "brodi"))
                                            (SI "si")))))))


    ; si after zo
    ;
    (makfa-mapti
      "zo broda broda si"
      '(gerna (ZO-genpau
                (ZO-mluvla (ZO "zo")
                           (gismu "broda")
                           (SI-mluvla
                             (GISMU-mluvla (gismu "broda"))
                             (SI "si"))))))

    (makfa-mapti
      "zo broda le'u si"
      '(gerna (ZO-genpau
                (ZO-mluvla (ZO "zo")
                           (gismu "broda")
                           (SI-mluvla
                             (LEhU-mluvla (LEhU "le'u"))
                             (SI "si"))))))

    (makfa-mapti
      "zo broda broda bu si"
      '(gerna (ZO-genpau
                (ZO-mluvla (ZO "zo")
                           (gismu "broda")
                           (SI-mluvla
                             (BU-mluvla (GISMU-mluvla (gismu "broda"))
                                        (BU "bu"))
                             (SI "si"))))))

    (makfa-mapti
      "zo broda zo broda si"
      '(gerna (ZO-genpau
                (ZO-mluvla (ZO "zo")
                           (gismu "broda")
                           (SI-mluvla (ZO-mluvla (ZO "zo")
                                      (gismu "broda"))
                                      (SI "si")))))))


  ;; su tests
  ;;
  (define (test-SU)
    ; initial-su
    ;
    (makfa-mapti
      "su"
      '(gerna (SU-genpau (SU-mluvla (SU "su")))))
    (makfa-mapti
      "su su"
      '(gerna (SU-genpau (SU-mluvla (SU "su")))
              (SU-genpau (SU-mluvla (SU "su")))))
    (makfa-mapti
      "su su su"
      '(gerna (SU-genpau (SU-mluvla (SU "su")))
              (SU-genpau (SU-mluvla (SU "su")))
              (SU-genpau (SU-mluvla (SU "su")))))

    (makfa-mapti
      "bu su"
      '(gerna (SU-genpau
                (SU-mluvla
                  (BU-genpau
                    (BU-mluvla (BU "bu")))
                  (SU "su")))))

    (makfa-mapti
      "broda bu su"
      '(gerna (SU-genpau
                (SU-mluvla
                  (BU-genpau
                    (BU-mluvla (GISMU-mluvla (gismu "broda"))
                               (BU "bu")))
                  (SU "su")))))

    (makfa-mapti
      "broda su"
      '(gerna (SU-genpau
                (SU-mluvla
                  (GISMU-genpau (GISMU-mluvla (gismu "broda")))
                  (SU "su")))))

    (makfa-mapti
      "le'u su"
      '(gerna (SU-genpau
                (SU-mluvla
                  (LEhU-genpau
                    (LEhU-mluvla (LEhU "le'u")))
                  (SU "su")))))

    (makfa-mapti
      "si su"
      '(gerna (SI-genpau (SI-mluvla (SI "si")))
              (SU-genpau (SU-mluvla (SU "su")))))

    (makfa-mapti
      "broda si su"
      '(gerna (SI-genpau
                (SI-mluvla
                  (GISMU-mluvla (gismu "broda"))
                  (SI "si")))
              (SU-genpau (SU-mluvla (SU "su")))))

    (makfa-mapti
      "zei su"
      '(gerna (SU-genpau
                (SU-mluvla
                  (ZEI-genpau (ZEI-mluvla (ZEI "zei")))
                  (SU "su")))))

    (makfa-mapti
      "broda zei su"
      '(gerna (SU-genpau
                (SU-mluvla
                  (GISMU-genpau (GISMU-mluvla (gismu "broda")))
                  (ZEI-genpau (ZEI-mluvla (ZEI "zei")))
                  (SU "su")))))

    (makfa-mapti
      "broda zei brode su"
      '(gerna (SU-genpau
                (SU-mluvla
                  (ZEI-genpau
                    (ZEI-mlulva (GISMU-mluvla (gismu "broda"))
                                (ZEI "zei")
                                (GISMU-mluvla (gismu "brode"))))
                  (SU "su")))))

    ; zo wins zo su, find that test in zo.

    (makfa-mapti
      "zo su su"
      '(gerna (SU-genpau
                (SU-mluvla
                  (ZO-genpau (ZO-mluvla (ZO "zo") (SU "su")))
                  (SU"su")))))

    (makfa-mapti
      "zo broda su"
      '(gerna (SU-genpau
                (SU-mluvla
                  (ZO-genpau
                    (ZO-mluvla (ZO "zo")
                               (gismu "broda")))
                  (SU "su"))))))


  ;; y tests
  ;;
  (define (test-Y)
    (makfa-mapti
      "y"
      '(gerna))
    
    (makfa-mapti
      "ybu"
      '(gerna)))

  ;; zo tests
  ;;
  (define (test-ZO)
    (makfa-narmapti "zo")

    (makfa-mapti
      "zo bu"
      '(gerna (ZO-genpau (ZO "zo") (BU "bu"))))

    (makfa-mapti
      "zo bu bu"
      '(gerna (BU-genpau (ZO-genpau (ZO "zo") (BU "bu"))
                         (BU "bu"))))

    (makfa-mapti
      "zo broda"
      '(gerna (ZO-genpau (ZO "zo") (gismu "broda"))))

    (makfa-mapti
      "zo lo'u"
      '(gerna (ZO-genpau (ZO "zo") (LOhU "lo'u"))))

    (makfa-mapti
      "zo le'u"
      '(gerna (ZO-genpau (ZO "zo") (LEhU "le'u"))))

    (makfa-mapti
      "zo sa"
      '(gerna (ZO-genpau (ZO "zo") (SA "sa"))))

    (makfa-mapti
      "zo si"
      '(gerna (ZO-genpau (ZO "zo") (SI "si"))))

    (makfa-mapti
      "zo su"
      '(gerna (ZO-genpau (ZO "zo") (SU "su"))))

    (makfa-mapti
      "zo zei"
      '(gerna (ZO-genpau (ZO "zo") (ZEI "zei"))))

    (makfa-mapti
      "zo zo"
      '(gerna (ZO-genpau (ZO "zo") (ZO "zo")))))


  ;; zei tests
  ;;
  (define (test-ZEI)
    (makfa-narmapti "zei")

    (makfa-narmapti "zei zei")
    (makfa-narmapti "zei zei zei")

    (makfa-mapti
      "broda zei"
      '(gerna (GISMU-genpau (GISMU-mluvla (gismu "broda"))))
      "zei")

    (makfa-mapti
      "zei brode"
      '(gerna)
      "zei brode")

    (makfa-mapti
      "broda zei brode"
      '(gerna (ZEI-genpau
                (ZEI-mlulva
                  (GISMU-mluvla (gismu "broda"))
                  (ZEI "zei")
                  (GISMU-mluvla (gismu "brode"))))))

    (makfa-mapti
      "broda zei brode zei brodi"
      '(gerna (ZEI-genpau
                (ZEI-mlulva
                  (GISMU-mluvla (gismu "broda"))
                  (ZEI "zei")
                  (GISMU-mluvla (gismu "brode"))
                  (ZEI "zei")
                  (GISMU-mluvla (gismu "brodi"))))))

    (makfa-mapti
      "broda bu zei brode"
      '(gerna (ZEI-genpau
                (ZEI-mlulva
                  (BU-mluvla (GISMU-mluvla (gismu "broda")) (BU "bu"))
                  (ZEI "zei")
                  (GISMU-mluvla (gismu "brode"))))))

    (makfa-mapti
      "broda zei brode bu"
      '(gerna (ZEI-genpau
                (ZEI-mlulva
                  (GISMU-mluvla (gismu "broda"))
                  (ZEI "zei")
                  (BU-mluvla (GISMU-mluvla (gismu "brode")) (BU "bu"))))))

    (makfa-mapti
      "broda bu zei brode bu"
      '(gerna (ZEI-genpau (BU-genpau (gismu "broda") (BU "bu"))
                          (ZEI "zei")
                          (BU-genpau (gismu "brode") (BU "bu")))))

    ; fa'o cannot be used in zei.
    ;
    (makfa-mapti
      "broda zei fa'o"
      '(gerna (GISMU-genpau (GISMU-mluvla (gismu "broda"))))
      "zei fa'o")


    ; lo'u ... le'u
    (makfa-mapti
      "lo'u broda le'u zei brode"
      '(gerna (ZEI-genpau
                (ZEI-mlulva
                  (LOhU-mluvla (LOhU "lo'u")
                               (gismu "broda")
                               (LEhU-mluvla (LEhU "le'u")))
                  (ZEI "zei")
                  (GISMU-mluvla (gismu "brode"))))))

    (makfa-mapti
      "broda zei lo'u brode le'u"
      '(gerna (ZEI-genpau
                (ZEI-mlulva
                  (GISMU-mluvla (gismu "broda"))
                  (ZEI "zei")
                  (LOhU-mluvla (LOhU "lo'u")
                               (gismu "brode")
                               (LEhU-mluvla (LEhU "le'u")))))))

    (makfa-mapti
      "lo'u broda le'u zei lo'u brode le'u"
      '(gerna (ZEI-genpau (LOhU-genpau (LOhU "lo'u")
                                       (gismu "broda")
                                       (LEhU "le'u"))
                          (ZEI "zei")
                          (LOhU-genpau (LOhU "lo'u")
                                       (gismu "brode")
                                       (LEhU "le'u")))))

    (makfa-mapti
      "zei si"
      '(gerna (SI-genpau (ZEI "zei")
                         (SI "si"))))

    (makfa-mapti
      "broda zei si"
      '(gerna (GISMU-genpau (gismu "broda")
              (SI-genpau (ZEI "zei")
                         (SI "si")))))

    (makfa-mapti
      "zei brode si"
      '(gerna)
      "zei brode si")

    (makfa-mapti
      "broda zei brode si"
      '(gerna (SI-genpau
                (SI-mluvla
                  (ZEI-mlulva
                    (GISMU-mluvla (gismu "broda"))
                    (ZEI "zei")
                    (GISMU-mluvla (gismu "brode")))
                  (SI "si")))))

    (makfa-mapti
      "zei sa zei"
      '(gerna (SA-genpau (ZEI "zei") (SA "sa")))
      "zei")

    (makfa-mapti
      "broda zei sa zei"
      '(gerna (GISMU-genpau (gismu "broda"))
              (SA-genpau (ZEI "zei") (SA "sa")))
      "zei")

    (makfa-mapti
      "broda zei brode sa zei"
      '(gerna (SA-genpau (ZEI-genpau (gismu "broda")
                                     (ZEI "zei")
                                     (gismu "brode"))
                         (SA "sa")))
      "zei")

    (makfa-mapti
      "zei su"
      '(gerna (SU-genpau
                (SU-mluvla
                  (ZEI-genpau (ZEI-mluvla (ZEI "zei")))
                  (SU "su")))))

    (makfa-mapti
      "zei zei su"
      '(gerna (SU-genpau
                (SU-mluvla
                  (ZEI-genpau (ZEI-mluvla (ZEI "zei")))
                  (ZEI-genpau (ZEI-mluvla (ZEI "zei")))
                  (SU "su")))))

    (makfa-mapti
      "zei zei zei su"
      '(gerna (SU-genpau
                (SU-mluvla
                  (ZEI-genpau (ZEI-mluvla (ZEI "zei")))
                  (ZEI-genpau (ZEI-mluvla (ZEI "zei")))
                  (ZEI-genpau (ZEI-mluvla (ZEI "zei")))
                  (SU "su")))))

    (makfa-mapti
      "broda zei su"
      '(gerna (SU-genpau
                (SU-mluvla
                  (GISMU-genpau (GISMU-mluvla (gismu "broda")))
                  (ZEI-genpau   (ZEI-mluvla   (ZEI   "zei")))
                  (SU "su")))))

    (makfa-mapti
      "zei brode su"
      '(gerna (SU-genpau
                (SU-mluvla
                  (ZEI-genpau   (ZEI-mluvla   (ZEI   "zei")))
                  (GISMU-genpau (GISMU-mluvla (gismu "brode")))
                  (SU "su")))))

    (makfa-mapti
      "broda zei brode su"
      '(gerna (SU-genpau
                (SU-mluvla
                  (ZEI-genpau
                    (ZEI-mlulva
                      (GISMU-mluvla (gismu "broda"))
                      (ZEI "zei")
                      (GISMU-mluvla (gismu "brode"))))
                  (SU "su")))))

    (makfa-mapti
      "zo zei broda"
      '(gerna (ZO-genpau (ZO-mluvla (ZO "zo") (ZEI "zei")))
              (GISMU-genpau (GISMU-mluvla (gismu "broda")))))

    (makfa-mapti
      "zo broda zei brode"
      '(gerna (ZEI-genpau (ZEI-mlulva (ZO-mluvla (ZO "zo") 
      (gismu "broda")) (ZEI "zei") (GISMU-mluvla (gismu "brode"))))))

    (makfa-mapti
      "broda zei zo brode"
      '(gerna (ZEI-genpau
                (ZEI-mlulva
                  (GISMU-mluvla (gismu "broda"))
                  (ZEI "zei")
                  (ZO-mluvla (ZO "zo") (gismu "brode"))))))

    (makfa-mapti
      "zo broda zei zo brode"
      '(gerna (ZEI-genpau
                (ZEI-mlulva
                  (ZO-mluvla (ZO "zo") (gismu "broda"))
                  (ZEI "zei")
                  (ZO-mluvla (ZO "zo") (gismu "brode"))))))

    (makfa-mapti
      "zoi zei zei zei brode"
      '(gerna (ZEI-genpau
                (ZEI-mlulva
                  (ZOI-mluvla (ZOI "zoi") (ZEI "zei") () (ZEI "zei"))
                  (ZEI "zei")
                  (GISMU-mluvla (gismu "brode"))))))

    (makfa-mapti
      "broda zei zoi zei zei"
      '(gerna (ZEI-genpau
                (ZEI-mlulva
                  (GISMU-mluvla (gismu "broda"))
                  (ZEI "zei")
                  (ZOI-mluvla (ZOI "zoi") (ZEI "zei") () (ZEI "zei"))))))

    (makfa-mapti
      "zoi zei zei zei zoi zei zei"
      '(gerna (ZEI-genpau
                (ZEI-mlulva
                  (ZOI-mluvla (ZOI "zoi") (ZEI "zei") () (ZEI "zei"))
                  (ZEI "zei")
                  (ZOI-mluvla (ZOI "zoi") (ZEI "zei") () (ZEI "zei")))))))

  ;; zoi
  ;;
  (define (test-ZOI)
    (makfa-narmapti "zoi")

    ; zoi delimiter has the highest precedence, magic
    ; words used as delimiters are always treated as
    ; delimiters.  In this case, making an invalid
    ; zoi genpau.
    ;
    (makfa-narmapti "zoi bu")
    (makfa-narmapti "zoi lo'u")
    (makfa-narmapti "zoi le'u")
    (makfa-narmapti "zoi sa")
    (makfa-narmapti "zoi si")
    (makfa-narmapti "zoi su")
    (makfa-narmapti "zoi zo")
    (makfa-narmapti "zoi zoi")
    (makfa-narmapti "zoi zei")

    (makfa-mapti "zoi bu bu"
      '(gerna (ZOI-genpau (ZOI "zoi") (BU "bu") () (BU "bu"))))
    (makfa-mapti "zoi lo'u lo'u"
      '(gerna (ZOI-genpau (ZOI "zoi") (LOhU "lo'u") () (LOhU "lo'u"))))
    (makfa-mapti "zoi le'u le'u"
      '(gerna (ZOI-genpau (ZOI "zoi") (LEhU "le'u") () (LEhU "le'u"))))
    (makfa-mapti "zoi sa sa"
      '(gerna (ZOI-genpau (ZOI "zoi") (SA "sa") () (SA "sa"))))
    (makfa-mapti "zoi si si"
      '(gerna (ZOI-genpau (ZOI "zoi") (SI "si") () (SI "si"))))
    (makfa-mapti "zoi su su"
      '(gerna (ZOI-genpau (ZOI "zoi") (SU "su") () (SU "su"))))
    (makfa-mapti "zoi zo zo"
      '(gerna (ZOI-genpau (ZOI "zoi") (ZO "zo") () (ZO "zo"))))
    (makfa-mapti "zoi zoi zoi"
      '(gerna (ZOI-genpau (ZOI "zoi") (ZOI "zoi") () (ZOI "zoi"))))
    (makfa-mapti "zoi zei zei"
      '(gerna (ZOI-genpau (ZOI "zoi") (ZEI "zei") () (ZEI "zei"))))

    ; make sure zoi-open takes precedence over all other magic words.
    ;
    (makfa-mapti "zoi broda bu broda"
      '(gerna (ZOI-genpau (ZOI "zoi")
                          (gismu "broda")
                          ((BU "bu"))
                          (gismu "broda"))))

    (makfa-mapti "zoi fa'o broda fa'o"
      '(gerna (ZOI-genpau (ZOI "zoi")
                          (FAhO "fa'o")
                          ((gismu "broda"))
                          (FAhO "fa'o"))))

    (makfa-mapti "zoi lo'u le'u lo'u"
      '(gerna (ZOI-genpau (ZOI "zoi")
                          (LOhU "lo'u")
                          ((LEhU "le'u"))
                          (LOhU "lo'u"))))

    (makfa-mapti "zoi sa zoi sa"
      '(gerna (ZOI-genpau (ZOI "zoi")
                          (SA "sa")
                          ((ZOI "zoi"))
                          (SA "sa"))))

    (makfa-mapti "zoi si zoi si"
      '(gerna (ZOI-genpau (ZOI "zoi")
                          (SI "si")
                          ((ZOI "zoi"))
                          (SI "si"))))

    (makfa-mapti "zoi su zoi su"
      '(gerna (ZOI-genpau (ZOI "zoi")
                          (SU "su")
                          ((ZOI "zoi"))
                          (SU "su"))))

    (makfa-mapti "zoi zo broda zo"
      '(gerna (ZOI-genpau (ZOI "zoi")
                          (ZO "zo")
                          ((gismu "broda"))
                          (ZO "zo"))))

    (makfa-mapti "zoi zoi broda broda zoi"
      '(gerna (ZOI-genpau (ZOI "zoi")
                          (ZOI "zoi")
                          ((gismu "broda") (gismu "broda"))
                          (ZOI "zoi"))))

    (makfa-mapti "zoi zei zoi zei"
      '(gerna (ZOI-genpau (ZOI "zoi")
                          (ZEI "zei")
                          ((ZOI "zoi"))
                          (ZEI "zei"))))

    (makfa-mapti "zoi zei zoi zei"
      '(gerna (ZOI-genpau (ZOI "zoi")
                          (ZEI "zei")
                          ((ZOI "zoi"))
                          (ZEI "zei")))))


  ;; basic gismu test
  ;;
  (define (test-gismu)
    (makfa-mapti
      "broda"
      '(gerna (GISMU-genpau (gismu "broda")))))


  ;; test the empty string.
  ;;
  (define (test-E)
    (makfa-mapti "" '(gerna)))


  ;(test-BAhE)
  ;(test-BU)
  ;(test-FAhO)
  ;(test-LOhU)
  ;(test-SA)
  ;(test-SI)
  ;(test-SU)
  (test-ZEI)
  (exit)
  (test-Y)
  (test-ZO)
  (test-ZOI)
  (test-gismu)
  (test-E))

(exit)
