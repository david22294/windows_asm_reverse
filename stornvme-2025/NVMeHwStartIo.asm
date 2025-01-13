stornvme!NVMeHwStartIo:
fffff804`21525930 48895c2420      mov     qword ptr [rsp+20h],rbx
fffff804`21525935 55              push    rbp
fffff804`21525936 56              push    rsi
fffff804`21525937 57              push    rdi
fffff804`21525938 4883ec30        sub     rsp,30h
fffff804`2152593c 488bda          mov     rbx,rdx
fffff804`2152593f 488bf9          mov     rdi,rcx
fffff804`21525942 0fb65202        movzx   edx,byte ptr [rdx+2]
fffff804`21525946 80fa28          cmp     dl,28h // scsi_request_block->Function == 0x28 (SRB_FUNCTION_STORAGE_REQUEST_BLOCK)
fffff804`21525949 7505            jne     stornvme!NVMeHwStartIo+0x20 (fffff804`21525950)  Branch

stornvme!NVMeHwStartIo+0x1b:
fffff804`2152594b 8b7314          mov     esi,dword ptr [rbx+14h] // esi = srb->SrbFunction
fffff804`2152594e eb02            jmp     stornvme!NVMeHwStartIo+0x22 (fffff804`21525952)  Branch

stornvme!NVMeHwStartIo+0x20:
fffff804`21525950 8bf2            mov     esi,edx

stornvme!NVMeHwStartIo+0x22:
fffff804`21525952 488bcb          mov     rcx,rbx
fffff804`21525955 e8565dffff      call    stornvme!GetSrbExtension (fffff804`2151b6b0)
fffff804`2152595a 488be8          mov     rbp,rax // rbp = srbext
fffff804`2152595d 4885ff          test    rdi,rdi
fffff804`21525960 7410            je      stornvme!NVMeHwStartIo+0x42 (fffff804`21525972)  Branch

stornvme!NVMeHwStartIo+0x32:
fffff804`21525962 f787c80f000000100000 test dword ptr [rdi+0FC8h],1000h
fffff804`2152596c 0f854e010000    jne     stornvme!NVMeHwStartIo+0x190 (fffff804`21525ac0)  Branch

stornvme!NVMeHwStartIo+0x42:
fffff804`21525972 8bce            mov     ecx,esi
fffff804`21525974 85f6            test    esi,esi
fffff804`21525976 0f84d7000000    je      stornvme!NVMeHwStartIo+0x123 (fffff804`21525a53)  Branch

stornvme!NVMeHwStartIo+0x4c:
fffff804`2152597c 83e902          sub     ecx,2
fffff804`2152597f 0f84ce000000    je      stornvme!NVMeHwStartIo+0x123 (fffff804`21525a53)  Branch

stornvme!NVMeHwStartIo+0x55:
fffff804`21525985 83e905          sub     ecx,5
fffff804`21525988 747c            je      stornvme!NVMeHwStartIo+0xd6 (fffff804`21525a06)  Branch

stornvme!NVMeHwStartIo+0x5a:
fffff804`2152598a 83e902          sub     ecx,2
fffff804`2152598d 0f84c0000000    je      stornvme!NVMeHwStartIo+0x123 (fffff804`21525a53)  Branch

stornvme!NVMeHwStartIo+0x63:
fffff804`21525993 83e901          sub     ecx,1
fffff804`21525996 0f84b7000000    je      stornvme!NVMeHwStartIo+0x123 (fffff804`21525a53)  Branch

stornvme!NVMeHwStartIo+0x6c:
fffff804`2152599c 83e908          sub     ecx,8
fffff804`2152599f 740f            je      stornvme!NVMeHwStartIo+0x80 (fffff804`215259b0)  Branch

stornvme!NVMeHwStartIo+0x71:
fffff804`215259a1 83e901          sub     ecx,1
fffff804`215259a4 740a            je      stornvme!NVMeHwStartIo+0x80 (fffff804`215259b0)  Branch

stornvme!NVMeHwStartIo+0x76:
fffff804`215259a6 83e90d          sub     ecx,0Dh
fffff804`215259a9 7405            je      stornvme!NVMeHwStartIo+0x80 (fffff804`215259b0)  Branch

stornvme!NVMeHwStartIo+0x7b:
fffff804`215259ab 83f905          cmp     ecx,5
fffff804`215259ae 7409            je      stornvme!NVMeHwStartIo+0x89 (fffff804`215259b9)  Branch

stornvme!NVMeHwStartIo+0x80:
fffff804`215259b0 c6430306        mov     byte ptr [rbx+3],6
fffff804`215259b4 e9bf000000      jmp     stornvme!NVMeHwStartIo+0x148 (fffff804`21525a78)  Branch

stornvme!NVMeHwStartIo+0x89:
fffff804`215259b9 80fa28          cmp     dl,28h
fffff804`215259bc 750e            jne     stornvme!NVMeHwStartIo+0x9c (fffff804`215259cc)  Branch

stornvme!NVMeHwStartIo+0x8e:
fffff804`215259be 8b4378          mov     eax,dword ptr [rbx+78h]
fffff804`215259c1 8b4c180c        mov     ecx,dword ptr [rax+rbx+0Ch]
fffff804`215259c5 837c181001      cmp     dword ptr [rax+rbx+10h],1
fffff804`215259ca eb07            jmp     stornvme!NVMeHwStartIo+0xa3 (fffff804`215259d3)  Branch

stornvme!NVMeHwStartIo+0x9c:
fffff804`215259cc 8b4b08          mov     ecx,dword ptr [rbx+8]
fffff804`215259cf 837b4001        cmp     dword ptr [rbx+40h],1

stornvme!NVMeHwStartIo+0xa3:
fffff804`215259d3 0f94c0          sete    al
fffff804`215259d6 84c0            test    al,al
fffff804`215259d8 74d6            je      stornvme!NVMeHwStartIo+0x80 (fffff804`215259b0)  Branch

stornvme!NVMeHwStartIo+0xaa:
fffff804`215259da 83f902          cmp     ecx,2
fffff804`215259dd 741a            je      stornvme!NVMeHwStartIo+0xc9 (fffff804`215259f9)  Branch

stornvme!NVMeHwStartIo+0xaf:
fffff804`215259df 83f917          cmp     ecx,17h
fffff804`215259e2 7415            je      stornvme!NVMeHwStartIo+0xc9 (fffff804`215259f9)  Branch

stornvme!NVMeHwStartIo+0xb4:
fffff804`215259e4 83f904          cmp     ecx,4
fffff804`215259e7 75c7            jne     stornvme!NVMeHwStartIo+0x80 (fffff804`215259b0)  Branch

stornvme!NVMeHwStartIo+0xb9:
fffff804`215259e9 8b4718          mov     eax,dword ptr [rdi+18h]
fffff804`215259ec 25fefdffff      and     eax,0FFFFFDFEh
fffff804`215259f1 83c802          or      eax,2

stornvme!NVMeHwStartIo+0xc4:
fffff804`215259f4 894718          mov     dword ptr [rdi+18h],eax
fffff804`215259f7 eb54            jmp     stornvme!NVMeHwStartIo+0x11d (fffff804`21525a4d)  Branch

stornvme!NVMeHwStartIo+0xc9:
fffff804`215259f9 8b4718          mov     eax,dword ptr [rdi+18h]
fffff804`215259fc 25fefdffff      and     eax,0FFFFFDFEh
fffff804`21525a01 83c808          or      eax,8
fffff804`21525a04 ebee            jmp     stornvme!NVMeHwStartIo+0xc4 (fffff804`215259f4)  Branch

stornvme!NVMeHwStartIo+0xd6:
fffff804`21525a06 8364245000      and     dword ptr [rsp+50h],0
fffff804`21525a0b 807f1400        cmp     byte ptr [rdi+14h],0
fffff804`21525a0f 7408            je      stornvme!NVMeHwStartIo+0xe9 (fffff804`21525a19)  Branch

stornvme!NVMeHwStartIo+0xe1:
fffff804`21525a11 488bcf          mov     rcx,rdi
fffff804`21525a14 e837ccfeff      call    stornvme!NVMeControllerPowerDown (fffff804`21512650)

stornvme!NVMeHwStartIo+0xe9:
fffff804`21525a19 4c8d4c2450      lea     r9,[rsp+50h]
fffff804`21525a1e 488bcb          mov     rcx,rbx
fffff804`21525a21 4c8d442458      lea     r8,[rsp+58h]
fffff804`21525a26 488d542460      lea     rdx,[rsp+60h]
fffff804`21525a2b e81092ffff      call    stornvme!GetSrbScsiAddress (fffff804`2151ec40)
fffff804`21525a30 8b542450        mov     edx,dword ptr [rsp+50h]
fffff804`21525a34 3b97e0000000    cmp     edx,dword ptr [rdi+0E0h]
fffff804`21525a3a 7311            jae     stornvme!NVMeHwStartIo+0x11d (fffff804`21525a4d)  Branch

stornvme!NVMeHwStartIo+0x10c:
fffff804`21525a3c 488b8cd778060000 mov     rcx,qword ptr [rdi+rdx*8+678h]
fffff804`21525a44 4885c9          test    rcx,rcx
fffff804`21525a47 7404            je      stornvme!NVMeHwStartIo+0x11d (fffff804`21525a4d)  Branch

stornvme!NVMeHwStartIo+0x119:
fffff804`21525a49 83491402        or      dword ptr [rcx+14h],2

stornvme!NVMeHwStartIo+0x11d:
fffff804`21525a4d c6430301        mov     byte ptr [rbx+3],1
fffff804`21525a51 eb25            jmp     stornvme!NVMeHwStartIo+0x148 (fffff804`21525a78)  Branch

stornvme!NVMeHwStartIo+0x123:
fffff804`21525a53 8b4718          mov     eax,dword ptr [rdi+18h]
fffff804`21525a56 a801            test    al,1
fffff804`21525a58 750a            jne     stornvme!NVMeHwStartIo+0x134 (fffff804`21525a64)  Branch

stornvme!NVMeHwStartIo+0x12a:
fffff804`21525a5a 41b125          mov     r9b,25h
fffff804`21525a5d 41b005          mov     r8b,5
fffff804`21525a60 b208            mov     dl,8
fffff804`21525a62 eb0c            jmp     stornvme!NVMeHwStartIo+0x140 (fffff804`21525a70)  Branch

stornvme!NVMeHwStartIo+0x134:
fffff804`21525a64 a810            test    al,10h
fffff804`21525a66 7410            je      stornvme!NVMeHwStartIo+0x148 (fffff804`21525a78)  Branch

stornvme!NVMeHwStartIo+0x138:
fffff804`21525a68 4533c9          xor     r9d,r9d
fffff804`21525a6b b20e            mov     dl,0Eh
fffff804`21525a6d 4533c0          xor     r8d,r8d

stornvme!NVMeHwStartIo+0x140:
fffff804`21525a70 488bcb          mov     rcx,rbx
fffff804`21525a73 e8b82cffff      call    stornvme!NVMeSetSenseData (fffff804`21518730)

stornvme!NVMeHwStartIo+0x148:
fffff804`21525a78 807b0300        cmp     byte ptr [rbx+3],0
fffff804`21525a7c 7416            je      stornvme!NVMeHwStartIo+0x164 (fffff804`21525a94)  Branch

stornvme!NVMeHwStartIo+0x14e:
fffff804`21525a7e 4c8bc3          mov     r8,rbx
fffff804`21525a81 488bd7          mov     rdx,rdi
fffff804`21525a84 33c9            xor     ecx,ecx
fffff804`21525a86 4c8b1523e60200  mov     r10,qword ptr [stornvme!_imp_StorPortNotification (fffff804`215540b0)]
fffff804`21525a8d e8cef0d3ff      call    storport!StorPortNotification (fffff804`21264b60)
fffff804`21525a92 eb2c            jmp     stornvme!NVMeHwStartIo+0x190 (fffff804`21525ac0)  Branch

stornvme!NVMeHwStartIo+0x164:
fffff804`21525a94 488bd3          mov     rdx,rbx
fffff804`21525a97 488bcf          mov     rcx,rdi
fffff804`21525a9a e8f1eefeff      call    stornvme!ProcessCommand (fffff804`21514990)
fffff804`21525a9f 83fe0a          cmp     esi,0Ah
fffff804`21525aa2 751c            jne     stornvme!NVMeHwStartIo+0x190 (fffff804`21525ac0)  Branch

stornvme!NVMeHwStartIo+0x174:
fffff804`21525aa4 8a8d79100000    mov     cl,byte ptr [rbp+1079h]
fffff804`21525aaa 80e121          and     cl,21h
fffff804`21525aad 80f901          cmp     cl,1
fffff804`21525ab0 750e            jne     stornvme!NVMeHwStartIo+0x190 (fffff804`21525ac0)  Branch

stornvme!NVMeHwStartIo+0x182:
fffff804`21525ab2 448ac1          mov     r8b,cl
fffff804`21525ab5 488bd3          mov     rdx,rbx
fffff804`21525ab8 488bcf          mov     rcx,rdi
fffff804`21525abb e810ddfeff      call    stornvme!WaitForCommandComplete (fffff804`215137d0)

stornvme!NVMeHwStartIo+0x190:
fffff804`21525ac0 488b5c2468      mov     rbx,qword ptr [rsp+68h]
fffff804`21525ac5 b001            mov     al,1
fffff804`21525ac7 4883c430        add     rsp,30h
fffff804`21525acb 5f              pop     rdi
fffff804`21525acc 5e              pop     rsi
fffff804`21525acd 5d              pop     rbp
fffff804`21525ace c3              ret
