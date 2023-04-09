;------------------------------------------------------------------------------
;
; MemoryFence() for AArch64
;
; Copyright (c) 2013, ARM Ltd. All rights reserved.
;
; SPDX-License-Identifier: BSD-2-Clause-Patent
;
;------------------------------------------------------------------------------

    EXPORT MemoryFence

    AREA MemoryBarriers, CODE, READONLY

;/**
;  Used to serialize load and store operations.
;
;  All loads and stores that proceed calls to this function are guaranteed to be
;  globally visible when this function returns.
;
;**/
;VOID
;EFIAPI
;MemoryFence (
;  VOID
;  );
;
MemoryFence FUNCTION
    dmb
    bx      lr
    ENDFUNC

    END
