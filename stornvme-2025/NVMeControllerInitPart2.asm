stornvme!NVMeControllerInitPart2:
fffff804`232d6a40 4c8bdc          mov     r11,rsp
fffff804`232d6a43 49895b10        mov     qword ptr [r11+10h],rbx
fffff804`232d6a47 55              push    rbp
fffff804`232d6a48 56              push    rsi
fffff804`232d6a49 57              push    rdi
fffff804`232d6a4a 4156            push    r14
fffff804`232d6a4c 4157            push    r15
fffff804`232d6a4e 4881ece0000000  sub     rsp,0E0h
fffff804`232d6a55 488b05a4950300  mov     rax,qword ptr [stornvme!_security_cookie (fffff804`23310000)]
fffff804`232d6a5c 4833c4          xor     rax,rsp
fffff804`232d6a5f 48898424d0000000 mov     qword ptr [rsp+0D0h],rax
fffff804`232d6a67 0f57c0          xorps   xmm0,xmm0
fffff804`232d6a6a 33c0            xor     eax,eax
fffff804`232d6a6c 0f11442470      movups  xmmword ptr [rsp+70h],xmm0
fffff804`232d6a71 4533ff          xor     r15d,r15d
fffff804`232d6a74 4532f6          xor     r14b,r14b
fffff804`232d6a77 f7413800008000  test    dword ptr [rcx+38h],800000h
fffff804`232d6a7e 410fb6e8        movzx   ebp,r8b
fffff804`232d6a82 0f11842480000000 movups  xmmword ptr [rsp+80h],xmm0
fffff804`232d6a8a 498943b8        mov     qword ptr [r11-48h],rax
fffff804`232d6a8e 0fb6fa          movzx   edi,dl
fffff804`232d6a91 410f114388      movups  xmmword ptr [r11-78h],xmm0
fffff804`232d6a96 488bd9          mov     rbx,rcx
fffff804`232d6a99 418bf7          mov     esi,r15d
fffff804`232d6a9c 410f114398      movups  xmmword ptr [r11-68h],xmm0
fffff804`232d6aa1 410f1143a8      movups  xmmword ptr [r11-58h],xmm0
fffff804`232d6aa6 0f857f010000    jne     stornvme!NVMeControllerInitPart2+0x1eb (fffff804`232d6c2b)  Branch

stornvme!NVMeControllerInitPart2+0x6c:
fffff804`232d6aac 4084ff          test    dil,dil
fffff804`232d6aaf 0f8542010000    jne     stornvme!NVMeControllerInitPart2+0x1b7 (fffff804`232d6bf7)  Branch

stornvme!NVMeControllerInitPart2+0x75:
fffff804`232d6ab5 4584f6          test    r14b,r14b
fffff804`232d6ab8 0f85c4000000    jne     stornvme!NVMeControllerInitPart2+0x142 (fffff804`232d6b82)  Branch

stornvme!NVMeControllerInitPart2+0x7e:
fffff804`232d6abe 8b8380000000    mov     eax,dword ptr [rbx+80h]
fffff804`232d6ac4 a810            test    al,10h
fffff804`232d6ac6 0f849d000000    je      stornvme!NVMeControllerInitPart2+0x129 (fffff804`232d6b69)  Branch

stornvme!NVMeControllerInitPart2+0x8c:
fffff804`232d6acc 4084ff          test    dil,dil
fffff804`232d6acf 440fb6c5        movzx   r8d,bpl
fffff804`232d6ad3 488bcb          mov     rcx,rbx
fffff804`232d6ad6 0f94c2          sete    dl
fffff804`232d6ad9 e8e2010000      call    stornvme!NVMeSetIoQueueCount (fffff804`232d6cc0)
fffff804`232d6ade 8bf0            mov     esi,eax
fffff804`232d6ae0 85c0            test    eax,eax
fffff804`232d6ae2 0f85ef000000    jne     stornvme!NVMeControllerInitPart2+0x197 (fffff804`232d6bd7)  Branch

stornvme!NVMeControllerInitPart2+0xa8:
fffff804`232d6ae8 664439bbc6030000 cmp     word ptr [rbx+3C6h],r15w
fffff804`232d6af0 0f841b010000    je      stornvme!NVMeControllerInitPart2+0x1d1 (fffff804`232d6c11)  Branch

stornvme!NVMeControllerInitPart2+0xb6:
fffff804`232d6af6 8b4b38          mov     ecx,dword ptr [rbx+38h]
fffff804`232d6af9 f6c104          test    cl,4
fffff804`232d6afc 0f8452010000    je      stornvme!NVMeControllerInitPart2+0x214 (fffff804`232d6c54)  Branch

stornvme!NVMeControllerInitPart2+0xc2:
fffff804`232d6b02 8b4338          mov     eax,dword ptr [rbx+38h]
fffff804`232d6b05 a804            test    al,4
fffff804`232d6b07 7452            je      stornvme!NVMeControllerInitPart2+0x11b (fffff804`232d6b5b)  Branch

stornvme!NVMeControllerInitPart2+0xc9:
fffff804`232d6b09 4084ff          test    dil,dil
fffff804`232d6b0c 0f85a4aa0200    jne     stornvme!NVMeControllerInitPart2+0x2ab76 (fffff804`233015b6)  Branch

stornvme!NVMeControllerInitPart2+0xd2:
fffff804`232d6b12 664439bb4c010000 cmp     word ptr [rbx+14Ch],r15w
fffff804`232d6b1a 7466            je      stornvme!NVMeControllerInitPart2+0x142 (fffff804`232d6b82)  Branch

stornvme!NVMeControllerInitPart2+0xdc:
fffff804`232d6b1c 664439bb4a010000 cmp     word ptr [rbx+14Ah],r15w
fffff804`232d6b24 745c            je      stornvme!NVMeControllerInitPart2+0x142 (fffff804`232d6b82)  Branch

stornvme!NVMeControllerInitPart2+0xe6:
fffff804`232d6b26 8b8380000000    mov     eax,dword ptr [rbx+80h]
fffff804`232d6b2c a804            test    al,4
fffff804`232d6b2e 7509            jne     stornvme!NVMeControllerInitPart2+0xf9 (fffff804`232d6b39)  Branch

stornvme!NVMeControllerInitPart2+0xf0:
fffff804`232d6b30 4084ed          test    bpl,bpl
fffff804`232d6b33 0f842c010000    je      stornvme!NVMeControllerInitPart2+0x225 (fffff804`232d6c65)  Branch

stornvme!NVMeControllerInitPart2+0xf9:
fffff804`232d6b39 400fb6d5        movzx   edx,bpl
fffff804`232d6b3d 488bcb          mov     rcx,rbx
fffff804`232d6b40 e81b030000      call    stornvme!IoQueuesCreation (fffff804`232d6e60)
fffff804`232d6b45 8bf0            mov     esi,eax
fffff804`232d6b47 85c0            test    eax,eax
fffff804`232d6b49 0f8434010000    je      stornvme!NVMeControllerInitPart2+0x243 (fffff804`232d6c83)  Branch

stornvme!NVMeControllerInitPart2+0x10f:
fffff804`232d6b4f 488d3d7af70200  lea     rdi,[stornvme!`string' (fffff804`233062d0)]
fffff804`232d6b56 e900ab0200      jmp     stornvme!NVMeControllerInitPart2+0x2ac1b (fffff804`2330165b)  Branch

stornvme!NVMeControllerInitPart2+0x11b:
fffff804`232d6b5b 400fb6d5        movzx   edx,bpl
fffff804`232d6b5f 488bcb          mov     rcx,rbx
fffff804`232d6b62 e809070000      call    stornvme!NVMeSetArbitration (fffff804`232d7270)
fffff804`232d6b67 eba0            jmp     stornvme!NVMeControllerInitPart2+0xc9 (fffff804`232d6b09)  Branch

stornvme!NVMeControllerInitPart2+0x129:
fffff804`232d6b69 f7431800200000  test    dword ptr [rbx+18h],2000h
fffff804`232d6b70 0f8456ffffff    je      stornvme!NVMeControllerInitPart2+0x8c (fffff804`232d6acc)  Branch

stornvme!NVMeControllerInitPart2+0x136:
fffff804`232d6b76 c7437cffff0000  mov     dword ptr [rbx+7Ch],0FFFFh
fffff804`232d6b7d e94affffff      jmp     stornvme!NVMeControllerInitPart2+0x8c (fffff804`232d6acc)  Branch

stornvme!NVMeControllerInitPart2+0x142:
fffff804`232d6b82 488bcb          mov     rcx,rbx
fffff804`232d6b85 e806090000      call    stornvme!NVMeInitHostMemoryBuffer (fffff804`232d7490)
fffff804`232d6b8a 4584f6          test    r14b,r14b
fffff804`232d6b8d 0f84f8000000    je      stornvme!NVMeControllerInitPart2+0x24b (fffff804`232d6c8b)  Branch

stornvme!NVMeControllerInitPart2+0x153:
fffff804`232d6b93 488bcb          mov     rcx,rbx
fffff804`232d6b96 e8d5070000      call    stornvme!NVMeControllerGetFeaturesSupportedCacheCapabilities (fffff804`232d7370)

stornvme!NVMeControllerInitPart2+0x15b:
fffff804`232d6b9b ff8350100000    inc     dword ptr [rbx+1050h]
fffff804`232d6ba1 eb0a            jmp     stornvme!NVMeControllerInitPart2+0x16d (fffff804`232d6bad)  Branch

stornvme!NVMeControllerInitPart2+0x163:
fffff804`232d6ba3 85f6            test    esi,esi
fffff804`232d6ba5 74f4            je      stornvme!NVMeControllerInitPart2+0x15b (fffff804`232d6b9b)  Branch

stornvme!NVMeControllerInitPart2+0x167:
fffff804`232d6ba7 ff8354100000    inc     dword ptr [rbx+1054h]

stornvme!NVMeControllerInitPart2+0x16d:
fffff804`232d6bad 8bc6            mov     eax,esi
fffff804`232d6baf 488b8c24d0000000 mov     rcx,qword ptr [rsp+0D0h]
fffff804`232d6bb7 4833cc          xor     rcx,rsp
fffff804`232d6bba e8c17c0200      call    stornvme!_security_check_cookie (fffff804`232fe880)
fffff804`232d6bbf 488b9c2418010000 mov     rbx,qword ptr [rsp+118h]
fffff804`232d6bc7 4881c4e0000000  add     rsp,0E0h
fffff804`232d6bce 415f            pop     r15
fffff804`232d6bd0 415e            pop     r14
fffff804`232d6bd2 5f              pop     rdi
fffff804`232d6bd3 5e              pop     rsi
fffff804`232d6bd4 5d              pop     rbp
fffff804`232d6bd5 c3              ret

stornvme!NVMeControllerInitPart2+0x197:
fffff804`232d6bd7 c7431c0c000000  mov     dword ptr [rbx+1Ch],0Ch
fffff804`232d6bde 488d3dc3f70200  lea     rdi,[stornvme!`string' (fffff804`233063a8)]
fffff804`232d6be5 85c0            test    eax,eax
fffff804`232d6be7 0f856eaa0200    jne     stornvme!NVMeControllerInitPart2+0x2ac1b (fffff804`2330165b)  Branch

stornvme!NVMeControllerInitPart2+0x1ad:
fffff804`232d6bed be010000c1      mov     esi,0C1000001h
fffff804`232d6bf2 e964aa0200      jmp     stornvme!NVMeControllerInitPart2+0x2ac1b (fffff804`2330165b)  Branch

stornvme!NVMeControllerInitPart2+0x1b7:
fffff804`232d6bf7 e854d10000      call    stornvme!GetInterruptMessageInformation (fffff804`232e3d50)
fffff804`232d6bfc 84c0            test    al,al
fffff804`232d6bfe 7444            je      stornvme!NVMeControllerInitPart2+0x204 (fffff804`232d6c44)  Branch

stornvme!NVMeControllerInitPart2+0x1c0:
fffff804`232d6c00 400fb6d5        movzx   edx,bpl
fffff804`232d6c04 488bcb          mov     rcx,rbx
fffff804`232d6c07 e8accc0100      call    stornvme!NVMeBuildPollingConfiguration (fffff804`232f38b8)
fffff804`232d6c0c e9a4feffff      jmp     stornvme!NVMeControllerInitPart2+0x75 (fffff804`232d6ab5)  Branch

stornvme!NVMeControllerInitPart2+0x1d1:
fffff804`232d6c11 664439bb4c010000 cmp     word ptr [rbx+14Ch],r15w
fffff804`232d6c19 74bc            je      stornvme!NVMeControllerInitPart2+0x197 (fffff804`232d6bd7)  Branch

stornvme!NVMeControllerInitPart2+0x1db:
fffff804`232d6c1b 664439bb4a010000 cmp     word ptr [rbx+14Ah],r15w
fffff804`232d6c23 0f85cdfeffff    jne     stornvme!NVMeControllerInitPart2+0xb6 (fffff804`232d6af6)  Branch

stornvme!NVMeControllerInitPart2+0x1e9:
fffff804`232d6c29 ebac            jmp     stornvme!NVMeControllerInitPart2+0x197 (fffff804`232d6bd7)  Branch

stornvme!NVMeControllerInitPart2+0x1eb:
fffff804`232d6c2b 4439b9d4000000  cmp     dword ptr [rcx+0D4h],r15d
fffff804`232d6c32 b801000000      mov     eax,1
fffff804`232d6c37 450fb6f6        movzx   r14d,r14b
fffff804`232d6c3b 440f44f0        cmove   r14d,eax
fffff804`232d6c3f e968feffff      jmp     stornvme!NVMeControllerInitPart2+0x6c (fffff804`232d6aac)  Branch

stornvme!NVMeControllerInitPart2+0x204:
fffff804`232d6c44 c7431c0b000000  mov     dword ptr [rbx+1Ch],0Bh
fffff804`232d6c4b 488d3dfe080300  lea     rdi,[stornvme!`string' (fffff804`23307550)]
fffff804`232d6c52 eb99            jmp     stornvme!NVMeControllerInitPart2+0x1ad (fffff804`232d6bed)  Branch

stornvme!NVMeControllerInitPart2+0x214:
fffff804`232d6c54 400fb6d5        movzx   edx,bpl
fffff804`232d6c58 488bcb          mov     rcx,rbx
fffff804`232d6c5b e8c0950000      call    stornvme!NVMeSetInterruptCoalescing (fffff804`232e0220)
fffff804`232d6c60 e99dfeffff      jmp     stornvme!NVMeControllerInitPart2+0xc2 (fffff804`232d6b02)  Branch

stornvme!NVMeControllerInitPart2+0x225:
fffff804`232d6c65 33d2            xor     edx,edx
fffff804`232d6c67 488bcb          mov     rcx,rbx
fffff804`232d6c6a e821fe0000      call    stornvme!IoQueuesCreationAsync (fffff804`232e6a90)
fffff804`232d6c6f 84c0            test    al,al
fffff804`232d6c71 0f850bffffff    jne     stornvme!NVMeControllerInitPart2+0x142 (fffff804`232d6b82)  Branch

stornvme!NVMeControllerInitPart2+0x237:
fffff804`232d6c77 488d3df2090300  lea     rdi,[stornvme!`string' (fffff804`23307670)]
fffff804`232d6c7e e96affffff      jmp     stornvme!NVMeControllerInitPart2+0x1ad (fffff804`232d6bed)  Branch

stornvme!NVMeControllerInitPart2+0x243:
fffff804`232d6c83 488bcb          mov     rcx,rbx
fffff804`232d6c86 e805080000      call    stornvme!NVMeInitHostMemoryBuffer (fffff804`232d7490)

stornvme!NVMeControllerInitPart2+0x24b:
fffff804`232d6c8b 0fb683800e0000  movzx   eax,byte ptr [rbx+0E80h]
fffff804`232d6c92 2405            and     al,5
fffff804`232d6c94 3c05            cmp     al,5
fffff804`232d6c96 0f85f7feffff    jne     stornvme!NVMeControllerInitPart2+0x153 (fffff804`232d6b93)  Branch

stornvme!NVMeControllerInitPart2+0x25c:
fffff804`232d6c9c b2ff            mov     dl,0FFh
fffff804`232d6c9e 488bcb          mov     rcx,rbx
fffff804`232d6ca1 e8823c0100      call    stornvme!NVMeInitStreams (fffff804`232ea928)
fffff804`232d6ca6 e9e8feffff      jmp     stornvme!NVMeControllerInitPart2+0x153 (fffff804`232d6b93)  Branch

stornvme!NVMeControllerInitPart2+0x2ab76:
fffff804`233015b6 664439bb4c010000 cmp     word ptr [rbx+14Ch],r15w
fffff804`233015be 7460            je      stornvme!NVMeControllerInitPart2+0x2abe0 (fffff804`23301620)  Branch

stornvme!NVMeControllerInitPart2+0x2ab80:
fffff804`233015c0 664439bb4a010000 cmp     word ptr [rbx+14Ah],r15w
fffff804`233015c8 7456            je      stornvme!NVMeControllerInitPart2+0x2abe0 (fffff804`23301620)  Branch

stornvme!NVMeControllerInitPart2+0x2ab8a:
fffff804`233015ca f7431800008000  test    dword ptr [rbx+18h],800000h
fffff804`233015d1 7526            jne     stornvme!NVMeControllerInitPart2+0x2abb9 (fffff804`233015f9)  Branch

stornvme!NVMeControllerInitPart2+0x2ab93:
fffff804`233015d3 488bcb          mov     rcx,rbx
fffff804`233015d6 e85153feff      call    stornvme!InitializePerfOptions (fffff804`232e692c)
fffff804`233015db 84c0            test    al,al
fffff804`233015dd 751a            jne     stornvme!NVMeControllerInitPart2+0x2abb9 (fffff804`233015f9)  Branch

stornvme!NVMeControllerInitPart2+0x2ab9f:
fffff804`233015df 4489bb4a010000  mov     dword ptr [rbx+14Ah],r15d
fffff804`233015e6 488d3dbb5f0000  lea     rdi,[stornvme!`string' (fffff804`233075a8)]
fffff804`233015ed c7431c15000000  mov     dword ptr [rbx+1Ch],15h
fffff804`233015f4 e9f455fdff      jmp     stornvme!NVMeControllerInitPart2+0x1ad (fffff804`232d6bed)  Branch

stornvme!NVMeControllerInitPart2+0x2abb9:
fffff804`233015f9 488bcb          mov     rcx,rbx
fffff804`233015fc e84358feff      call    stornvme!IoQueuesInitialize (fffff804`232e6e44)
fffff804`23301601 84c0            test    al,al
fffff804`23301603 7513            jne     stornvme!NVMeControllerInitPart2+0x2abd8 (fffff804`23301618)  Branch

stornvme!NVMeControllerInitPart2+0x2abc5:
fffff804`23301605 c7431c0d000000  mov     dword ptr [rbx+1Ch],0Dh
fffff804`2330160c 488d3dd55f0000  lea     rdi,[stornvme!`string' (fffff804`233075e8)]
fffff804`23301613 e9d555fdff      jmp     stornvme!NVMeControllerInitPart2+0x1ad (fffff804`232d6bed)  Branch

stornvme!NVMeControllerInitPart2+0x2abd8:
fffff804`23301618 488bcb          mov     rcx,rbx
fffff804`2330161b e84c60feff      call    stornvme!IoSqToIoCqMapping (fffff804`232e766c)

stornvme!NVMeControllerInitPart2+0x2abe0:
fffff804`23301620 44387b14        cmp     byte ptr [rbx+14h],r15b
fffff804`23301624 0f85e854fdff    jne     stornvme!NVMeControllerInitPart2+0xd2 (fffff804`232d6b12)  Branch

stornvme!NVMeControllerInitPart2+0x2abea:
fffff804`2330162a 664439bbc6030000 cmp     word ptr [rbx+3C6h],r15w
fffff804`23301632 0f84da54fdff    je      stornvme!NVMeControllerInitPart2+0xd2 (fffff804`232d6b12)  Branch

stornvme!NVMeControllerInitPart2+0x2abf8:
fffff804`23301638 488bcb          mov     rcx,rbx
fffff804`2330163b e81c5ffeff      call    stornvme!IoReservedQueuesInitialize (fffff804`232e755c)
fffff804`23301640 84c0            test    al,al
fffff804`23301642 0f85ca54fdff    jne     stornvme!NVMeControllerInitPart2+0xd2 (fffff804`232d6b12)  Branch

stornvme!NVMeControllerInitPart2+0x2ac08:
fffff804`23301648 c7431c11000000  mov     dword ptr [rbx+1Ch],11h
fffff804`2330164f 488d3dca5f0000  lea     rdi,[stornvme!`string' (fffff804`23307620)]
fffff804`23301656 e99255fdff      jmp     stornvme!NVMeControllerInitPart2+0x1ad (fffff804`232d6bed)  Branch

stornvme!NVMeControllerInitPart2+0x2ac1b:
fffff804`2330165b 44387b14        cmp     byte ptr [rbx+14h],r15b
fffff804`2330165f 0f853e55fdff    jne     stornvme!NVMeControllerInitPart2+0x163 (fffff804`232d6ba3)  Branch

stornvme!NVMeControllerInitPart2+0x2ac25:
fffff804`23301665 488d542470      lea     rdx,[rsp+70h]
fffff804`2330166a 488bcb          mov     rcx,rbx
fffff804`2330166d e87236feff      call    stornvme!FillControllerRuntimeLog (fffff804`232e4ce4)
fffff804`23301672 8b4318          mov     eax,dword ptr [rbx+18h]
fffff804`23301675 4533c9          xor     r9d,r9d
fffff804`23301678 89442468        mov     dword ptr [rsp+68h],eax
fffff804`2330167c 4533c0          xor     r8d,r8d
fffff804`2330167f 8b431c          mov     eax,dword ptr [rbx+1Ch]
fffff804`23301682 488bd3          mov     rdx,rbx
fffff804`23301685 0fb7c8          movzx   ecx,ax
fffff804`23301688 8944246c        mov     dword ptr [rsp+6Ch],eax
fffff804`2330168c 488d442460      lea     rax,[rsp+60h]
fffff804`23301691 4889442450      mov     qword ptr [rsp+50h],rax
fffff804`23301696 488d442468      lea     rax,[rsp+68h]
fffff804`2330169b 4889442448      mov     qword ptr [rsp+48h],rax
fffff804`233016a0 488d442470      lea     rax,[rsp+70h]
fffff804`233016a5 c744244008000000 mov     dword ptr [rsp+40h],8
fffff804`233016ad 4889442438      mov     qword ptr [rsp+38h],rax
fffff804`233016b2 c744243058000000 mov     dword ptr [rsp+30h],58h
fffff804`233016ba 48897c2428      mov     qword ptr [rsp+28h],rdi
fffff804`233016bf 894c2420        mov     dword ptr [rsp+20h],ecx
fffff804`233016c3 b90d100000      mov     ecx,100Dh
fffff804`233016c8 c7442460020000c1 mov     dword ptr [rsp+60h],0C1000002h
fffff804`233016d0 4c8b15d9290100  mov     r10,qword ptr [stornvme!_imp_StorPortNotification (fffff804`233140b0)]
fffff804`233016d7 e88434f6fd      call    storport!StorPortNotification (fffff804`21264b60)
fffff804`233016dc 90              nop
fffff804`233016dd e9c154fdff      jmp     stornvme!NVMeControllerInitPart2+0x163 (fffff804`232d6ba3)  Branch
