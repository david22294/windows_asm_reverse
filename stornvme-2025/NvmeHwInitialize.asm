stornvme!NVMeHwInitialize:
fffff804`232e5710 48895c2410      mov     qword ptr [rsp+10h],rbx
fffff804`232e5715 57              push    rdi
fffff804`232e5716 4883ec20        sub     rsp,20h
fffff804`232e571a 33db            xor     ebx,ebx
fffff804`232e571c 488bf9          mov     rdi,rcx
fffff804`232e571f 385914          cmp     byte ptr [rcx+14h],bl
fffff804`232e5722 741d            je      stornvme!NVMeHwInitialize+0x31 (fffff804`232e5741)  Branch

stornvme!NVMeHwInitialize+0x14:
fffff804`232e5724 41b001          mov     r8b,1
fffff804`232e5727 418ad0          mov     dl,r8b
fffff804`232e572a e81113ffff      call    stornvme!NVMeControllerInitPart2 (fffff804`232d6a40)
fffff804`232e572f 85c0            test    eax,eax
fffff804`232e5731 7536            jne     stornvme!NVMeHwInitialize+0x59 (fffff804`232e5769)  Branch

stornvme!NVMeHwInitialize+0x23:
fffff804`232e5733 b201            mov     dl,1
fffff804`232e5735 488bcf          mov     rcx,rdi
fffff804`232e5738 e813b0ffff      call    stornvme!NVMeControllerInitPart3 (fffff804`232e0750)
fffff804`232e573d 8ad8            mov     bl,al
fffff804`232e573f eb28            jmp     stornvme!NVMeHwInitialize+0x59 (fffff804`232e5769)  Branch

stornvme!NVMeHwInitialize+0x31:
fffff804`232e5741 4c8d4c2430      lea     r9,[rsp+30h]
fffff804`232e5746 895c2430        mov     dword ptr [rsp+30h],ebx
fffff804`232e574a 4c8d052f000000  lea     r8,[stornvme!NVMeHwPassiveInitialize (fffff804`232e5780)]
fffff804`232e5751 488bd7          mov     rdx,rdi
fffff804`232e5754 b900100000      mov     ecx,1000h
fffff804`232e5759 4c8b1550e90200  mov     r10,qword ptr [stornvme!_imp_StorPortNotification (fffff804`233140b0)]
fffff804`232e5760 e8fbf3f7fd      call    storport!StorPortNotification (fffff804`21264b60)
fffff804`232e5765 8a5c2430        mov     bl,byte ptr [rsp+30h]

stornvme!NVMeHwInitialize+0x59:
fffff804`232e5769 8ac3            mov     al,bl
fffff804`232e576b 488b5c2438      mov     rbx,qword ptr [rsp+38h]
fffff804`232e5770 4883c420        add     rsp,20h
fffff804`232e5774 5f              pop     rdi
fffff804`232e5775 c3              ret
