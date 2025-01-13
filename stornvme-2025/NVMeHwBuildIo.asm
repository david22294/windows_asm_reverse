stornvme!NVMeHwBuildIo:
fffff804`215188c0 4055            push    rbp
fffff804`215188c2 53              push    rbx
fffff804`215188c3 57              push    rdi
fffff804`215188c4 488bec          mov     rbp,rsp
fffff804`215188c7 4883ec60        sub     rsp,60h
fffff804`215188cb 807a0228        cmp     byte ptr [rdx+2],28h
fffff804`215188cf 488bda          mov     rbx,rdx
fffff804`215188d2 488bf9          mov     rdi,rcx
fffff804`215188d5 0f85b0010000    jne     stornvme!NVMeHwBuildIo+0x1cb (fffff804`21518a8b)  Branch

stornvme!NVMeHwBuildIo+0x1b:
fffff804`215188db 488b4268        mov     rax,qword ptr [rdx+68h]

stornvme!NVMeHwBuildIo+0x1f:
fffff804`215188df 488bc8          mov     rcx,rax
fffff804`215188e2 81e1ff0f0000    and     ecx,0FFFh
fffff804`215188e8 7409            je      stornvme!NVMeHwBuildIo+0x33 (fffff804`215188f3)  Branch

stornvme!NVMeHwBuildIo+0x2a:
fffff804`215188ea 482bc1          sub     rax,rcx
fffff804`215188ed 480500100000    add     rax,1000h

stornvme!NVMeHwBuildIo+0x33:
fffff804`215188f3 4885ff          test    rdi,rdi
fffff804`215188f6 7410            je      stornvme!NVMeHwBuildIo+0x48 (fffff804`21518908)  Branch

stornvme!NVMeHwBuildIo+0x38:
fffff804`215188f8 f787c80f000000100000 test dword ptr [rdi+0FC8h],1000h
fffff804`21518902 0f85d4020000    jne     stornvme!NVMeHwBuildIo+0x31c (fffff804`21518bdc)  Branch

stornvme!NVMeHwBuildIo+0x48:
fffff804`21518908 0f57c0          xorps   xmm0,xmm0
fffff804`2151890b 0f118000100000  movups  xmmword ptr [rax+1000h],xmm0
fffff804`21518912 0f118010100000  movups  xmmword ptr [rax+1010h],xmm0
fffff804`21518919 0f118020100000  movups  xmmword ptr [rax+1020h],xmm0
fffff804`21518920 0f118030100000  movups  xmmword ptr [rax+1030h],xmm0
fffff804`21518927 0f118040100000  movups  xmmword ptr [rax+1040h],xmm0
fffff804`2151892e 0f118050100000  movups  xmmword ptr [rax+1050h],xmm0
fffff804`21518935 0f118060100000  movups  xmmword ptr [rax+1060h],xmm0
fffff804`2151893c 0f118070100000  movups  xmmword ptr [rax+1070h],xmm0
fffff804`21518943 0fb65202        movzx   edx,byte ptr [rdx+2]
fffff804`21518947 80fa28          cmp     dl,28h
fffff804`2151894a 0f8534010000    jne     stornvme!NVMeHwBuildIo+0x1c4 (fffff804`21518a84)  Branch

stornvme!NVMeHwBuildIo+0x90:
fffff804`21518950 8b4314          mov     eax,dword ptr [rbx+14h]

stornvme!NVMeHwBuildIo+0x93:
fffff804`21518953 4889b42490000000 mov     qword ptr [rsp+90h],rsi
fffff804`2151895b 4c89742458      mov     qword ptr [rsp+58h],r14
fffff804`21518960 85c0            test    eax,eax
fffff804`21518962 0f85e9010000    jne     stornvme!NVMeHwBuildIo+0x291 (fffff804`21518b51)  Branch

stornvme!NVMeHwBuildIo+0xa8:
fffff804`21518968 8b4718          mov     eax,dword ptr [rdi+18h]
fffff804`2151896b 4c89a42498000000 mov     qword ptr [rsp+98h],r12
fffff804`21518973 4c897c2450      mov     qword ptr [rsp+50h],r15
fffff804`21518978 a801            test    al,1
fffff804`2151897a 7442            je      stornvme!NVMeHwBuildIo+0xfe (fffff804`215189be)  Branch

stornvme!NVMeHwBuildIo+0xbc:
fffff804`2151897c a810            test    al,10h
fffff804`2151897e 0f8510010000    jne     stornvme!NVMeHwBuildIo+0x1d4 (fffff804`21518a94)  Branch

stornvme!NVMeHwBuildIo+0xc4:
fffff804`21518984 488bd3          mov     rdx,rbx
fffff804`21518987 488bcf          mov     rcx,rdi
fffff804`2151898a e861030000      call    stornvme!ScsiToNVMe (fffff804`21518cf0)

stornvme!NVMeHwBuildIo+0xcf:
fffff804`2151898f 4c8ba42498000000 mov     r12,qword ptr [rsp+98h]
fffff804`21518997 4c8b7c2450      mov     r15,qword ptr [rsp+50h]

stornvme!NVMeHwBuildIo+0xdc:
fffff804`2151899c 807b0300        cmp     byte ptr [rbx+3],0
fffff804`215189a0 4c8b742458      mov     r14,qword ptr [rsp+58h]
fffff804`215189a5 488bb42490000000 mov     rsi,qword ptr [rsp+90h]
fffff804`215189ad 0f852d020000    jne     stornvme!NVMeHwBuildIo+0x320 (fffff804`21518be0)  Branch

stornvme!NVMeHwBuildIo+0xf3:
fffff804`215189b3 b001            mov     al,1

stornvme!NVMeHwBuildIo+0xf5:
fffff804`215189b5 4883c460        add     rsp,60h
fffff804`215189b9 5f              pop     rdi
fffff804`215189ba 5b              pop     rbx
fffff804`215189bb 5d              pop     rbp
fffff804`215189bc c3              ret

stornvme!NVMeHwBuildIo+0xfe:
fffff804`215189be 33c0            xor     eax,eax
fffff804`215189c0 c6430308        mov     byte ptr [rbx+3],8
fffff804`215189c4 0f1145d0        movups  xmmword ptr [rbp-30h],xmm0
fffff804`215189c8 668945e0        mov     word ptr [rbp-20h],ax
fffff804`215189cc 33f6            xor     esi,esi
fffff804`215189ce 0fb645d2        movzx   eax,byte ptr [rbp-2Eh]
fffff804`215189d2 4532f6          xor     r14b,r14b
fffff804`215189d5 24f5            and     al,0F5h
fffff804`215189d7 c645d0f0        mov     byte ptr [rbp-30h],0F0h
fffff804`215189db 0c05            or      al,5
fffff804`215189dd c645d70a        mov     byte ptr [rbp-29h],0Ah
fffff804`215189e1 4532d2          xor     r10b,r10b
fffff804`215189e4 8845d2          mov     byte ptr [rbp-2Eh],al
fffff804`215189e7 66c745dc2500    mov     word ptr [rbp-24h],25h
fffff804`215189ed 448bfe          mov     r15d,esi
fffff804`215189f0 80fa28          cmp     dl,28h
fffff804`215189f3 754e            jne     stornvme!NVMeHwBuildIo+0x183 (fffff804`21518a43)  Branch

stornvme!NVMeHwBuildIo+0x135:
fffff804`215189f5 397314          cmp     dword ptr [rbx+14h],esi
fffff804`215189f8 7549            jne     stornvme!NVMeHwBuildIo+0x183 (fffff804`21518a43)  Branch

stornvme!NVMeHwBuildIo+0x13a:
fffff804`215189fa 8b4338          mov     eax,dword ptr [rbx+38h]
fffff804`215189fd 85c0            test    eax,eax
fffff804`215189ff 7442            je      stornvme!NVMeHwBuildIo+0x183 (fffff804`21518a43)  Branch

stornvme!NVMeHwBuildIo+0x141:
fffff804`21518a01 4c8d4378        lea     r8,[rbx+78h]
fffff804`21518a05 448bc8          mov     r9d,eax

stornvme!NVMeHwBuildIo+0x148:
fffff804`21518a08 418b00          mov     eax,dword ptr [r8]
fffff804`21518a0b 3d80000000      cmp     eax,80h
fffff804`21518a10 7227            jb      stornvme!NVMeHwBuildIo+0x179 (fffff804`21518a39)  Branch

stornvme!NVMeHwBuildIo+0x152:
fffff804`21518a12 3b4310          cmp     eax,dword ptr [rbx+10h]
fffff804`21518a15 7722            ja      stornvme!NVMeHwBuildIo+0x179 (fffff804`21518a39)  Branch

stornvme!NVMeHwBuildIo+0x157:
fffff804`21518a17 8b0c03          mov     ecx,dword ptr [rbx+rax]
fffff804`21518a1a 488d1403        lea     rdx,[rbx+rax]
fffff804`21518a1e 83e940          sub     ecx,40h
fffff804`21518a21 0f849f020000    je      stornvme!NVMeHwBuildIo+0x406 (fffff804`21518cc6)  Branch

stornvme!NVMeHwBuildIo+0x167:
fffff804`21518a27 83e901          sub     ecx,1
fffff804`21518a2a 0f8496020000    je      stornvme!NVMeHwBuildIo+0x406 (fffff804`21518cc6)  Branch

stornvme!NVMeHwBuildIo+0x170:
fffff804`21518a30 83f901          cmp     ecx,1
fffff804`21518a33 0f8484020000    je      stornvme!NVMeHwBuildIo+0x3fd (fffff804`21518cbd)  Branch

stornvme!NVMeHwBuildIo+0x179:
fffff804`21518a39 4983c004        add     r8,4
fffff804`21518a3d 4983e901        sub     r9,1
fffff804`21518a41 75c5            jne     stornvme!NVMeHwBuildIo+0x148 (fffff804`21518a08)  Branch

stornvme!NVMeHwBuildIo+0x183:
fffff804`21518a43 807b0200        cmp     byte ptr [rbx+2],0
fffff804`21518a47 0f846b010000    je      stornvme!NVMeHwBuildIo+0x2f8 (fffff804`21518bb8)  Branch

stornvme!NVMeHwBuildIo+0x18d:
fffff804`21518a4d 4584d2          test    r10b,r10b
fffff804`21518a50 0f8439ffffff    je      stornvme!NVMeHwBuildIo+0xcf (fffff804`2151898f)  Branch

stornvme!NVMeHwBuildIo+0x196:
fffff804`21518a56 4885f6          test    rsi,rsi
fffff804`21518a59 7403            je      stornvme!NVMeHwBuildIo+0x19e (fffff804`21518a5e)  Branch

stornvme!NVMeHwBuildIo+0x19b:
fffff804`21518a5b c60602          mov     byte ptr [rsi],2

stornvme!NVMeHwBuildIo+0x19e:
fffff804`21518a5e 4d85ff          test    r15,r15
fffff804`21518a61 0f8428ffffff    je      stornvme!NVMeHwBuildIo+0xcf (fffff804`2151898f)  Branch

stornvme!NVMeHwBuildIo+0x1a7:
fffff804`21518a67 4584f6          test    r14b,r14b
fffff804`21518a6a 0f841fffffff    je      stornvme!NVMeHwBuildIo+0xcf (fffff804`2151898f)  Branch

stornvme!NVMeHwBuildIo+0x1b0:
fffff804`21518a70 be12000000      mov     esi,12h
fffff804`21518a75 4180fe12        cmp     r14b,12h
fffff804`21518a79 0f8671920200    jbe     stornvme!NVMeHwBuildIo+0x29430 (fffff804`21541cf0)  Branch

stornvme!NVMeHwBuildIo+0x1bf:
fffff804`21518a7f e970920200      jmp     stornvme!NVMeHwBuildIo+0x29434 (fffff804`21541cf4)  Branch

stornvme!NVMeHwBuildIo+0x1c4:
fffff804`21518a84 8bc2            mov     eax,edx
fffff804`21518a86 e9c8feffff      jmp     stornvme!NVMeHwBuildIo+0x93 (fffff804`21518953)  Branch

stornvme!NVMeHwBuildIo+0x1cb:
fffff804`21518a8b 488b4238        mov     rax,qword ptr [rdx+38h]
fffff804`21518a8f e94bfeffff      jmp     stornvme!NVMeHwBuildIo+0x1f (fffff804`215188df)  Branch

stornvme!NVMeHwBuildIo+0x1d4:
fffff804`21518a94 0f1145d0        movups  xmmword ptr [rbp-30h],xmm0
fffff804`21518a98 8065d2f0        and     byte ptr [rbp-2Eh],0F0h
fffff804`21518a9c 33c0            xor     eax,eax
fffff804`21518a9e 33f6            xor     esi,esi
fffff804`21518aa0 668945e0        mov     word ptr [rbp-20h],ax
fffff804`21518aa4 4532f6          xor     r14b,r14b
fffff804`21518aa7 c643030e        mov     byte ptr [rbx+3],0Eh
fffff804`21518aab 4532d2          xor     r10b,r10b
fffff804`21518aae c645d0f0        mov     byte ptr [rbp-30h],0F0h
fffff804`21518ab2 c645d70a        mov     byte ptr [rbp-29h],0Ah
fffff804`21518ab6 448bfe          mov     r15d,esi
fffff804`21518ab9 668945dc        mov     word ptr [rbp-24h],ax
fffff804`21518abd 80fa28          cmp     dl,28h
fffff804`21518ac0 754e            jne     stornvme!NVMeHwBuildIo+0x250 (fffff804`21518b10)  Branch

stornvme!NVMeHwBuildIo+0x202:
fffff804`21518ac2 394314          cmp     dword ptr [rbx+14h],eax
fffff804`21518ac5 7549            jne     stornvme!NVMeHwBuildIo+0x250 (fffff804`21518b10)  Branch

stornvme!NVMeHwBuildIo+0x207:
fffff804`21518ac7 8b4338          mov     eax,dword ptr [rbx+38h]
fffff804`21518aca 85c0            test    eax,eax
fffff804`21518acc 7442            je      stornvme!NVMeHwBuildIo+0x250 (fffff804`21518b10)  Branch

stornvme!NVMeHwBuildIo+0x20e:
fffff804`21518ace 4c8d4378        lea     r8,[rbx+78h]
fffff804`21518ad2 448bc8          mov     r9d,eax

stornvme!NVMeHwBuildIo+0x215:
fffff804`21518ad5 418b00          mov     eax,dword ptr [r8]
fffff804`21518ad8 3d80000000      cmp     eax,80h
fffff804`21518add 7227            jb      stornvme!NVMeHwBuildIo+0x246 (fffff804`21518b06)  Branch

stornvme!NVMeHwBuildIo+0x21f:
fffff804`21518adf 3b4310          cmp     eax,dword ptr [rbx+10h]
fffff804`21518ae2 7722            ja      stornvme!NVMeHwBuildIo+0x246 (fffff804`21518b06)  Branch

stornvme!NVMeHwBuildIo+0x224:
fffff804`21518ae4 8b0c03          mov     ecx,dword ptr [rbx+rax]
fffff804`21518ae7 488d1403        lea     rdx,[rbx+rax]
fffff804`21518aeb 83e940          sub     ecx,40h
fffff804`21518aee 0f84e4010000    je      stornvme!NVMeHwBuildIo+0x418 (fffff804`21518cd8)  Branch

stornvme!NVMeHwBuildIo+0x234:
fffff804`21518af4 83e901          sub     ecx,1
fffff804`21518af7 0f84db010000    je      stornvme!NVMeHwBuildIo+0x418 (fffff804`21518cd8)  Branch

stornvme!NVMeHwBuildIo+0x23d:
fffff804`21518afd 83f901          cmp     ecx,1
fffff804`21518b00 0f84c9010000    je      stornvme!NVMeHwBuildIo+0x40f (fffff804`21518ccf)  Branch

stornvme!NVMeHwBuildIo+0x246:
fffff804`21518b06 4983c004        add     r8,4
fffff804`21518b0a 4983e901        sub     r9,1
fffff804`21518b0e 75c5            jne     stornvme!NVMeHwBuildIo+0x215 (fffff804`21518ad5)  Branch

stornvme!NVMeHwBuildIo+0x250:
fffff804`21518b10 807b0200        cmp     byte ptr [rbx+2],0
fffff804`21518b14 0f84b0000000    je      stornvme!NVMeHwBuildIo+0x30a (fffff804`21518bca)  Branch

stornvme!NVMeHwBuildIo+0x25a:
fffff804`21518b1a 4584d2          test    r10b,r10b
fffff804`21518b1d 0f846cfeffff    je      stornvme!NVMeHwBuildIo+0xcf (fffff804`2151898f)  Branch

stornvme!NVMeHwBuildIo+0x263:
fffff804`21518b23 4885f6          test    rsi,rsi
fffff804`21518b26 7403            je      stornvme!NVMeHwBuildIo+0x26b (fffff804`21518b2b)  Branch

stornvme!NVMeHwBuildIo+0x268:
fffff804`21518b28 c60602          mov     byte ptr [rsi],2

stornvme!NVMeHwBuildIo+0x26b:
fffff804`21518b2b 4d85ff          test    r15,r15
fffff804`21518b2e 0f845bfeffff    je      stornvme!NVMeHwBuildIo+0xcf (fffff804`2151898f)  Branch

stornvme!NVMeHwBuildIo+0x274:
fffff804`21518b34 4584f6          test    r14b,r14b
fffff804`21518b37 0f8452feffff    je      stornvme!NVMeHwBuildIo+0xcf (fffff804`2151898f)  Branch

stornvme!NVMeHwBuildIo+0x27d:
fffff804`21518b3d be12000000      mov     esi,12h
fffff804`21518b42 4180fe12        cmp     r14b,12h
fffff804`21518b46 0f86a4910200    jbe     stornvme!NVMeHwBuildIo+0x29430 (fffff804`21541cf0)  Branch

stornvme!NVMeHwBuildIo+0x28c:
fffff804`21518b4c e9a3910200      jmp     stornvme!NVMeHwBuildIo+0x29434 (fffff804`21541cf4)  Branch

stornvme!NVMeHwBuildIo+0x291:
fffff804`21518b51 83c0fe          add     eax,0FFFFFFFEh
fffff804`21518b54 83f829          cmp     eax,29h
fffff804`21518b57 0f873ffeffff    ja      stornvme!NVMeHwBuildIo+0xdc (fffff804`2151899c)  Branch

stornvme!NVMeHwBuildIo+0x29d:
fffff804`21518b5d 4c8d059c74ffff  lea     r8,[stornvme!NVMeControllerRemove <PERF> (stornvme+0x0) (fffff804`21510000)]
fffff804`21518b64 410fb68400c8b50300 movzx eax,byte ptr [r8+rax+3B5C8h]
fffff804`21518b6d 418b8c80a0b50300 mov     ecx,dword ptr [r8+rax*4+3B5A0h]
fffff804`21518b75 4903c8          add     rcx,r8
fffff804`21518b78 ffe1            jmp     rcx

stornvme!NVMeHwBuildIo+0x2f8:
fffff804`21518bb8 4c8b7b20        mov     r15,qword ptr [rbx+20h]
fffff804`21518bbc 488d7304        lea     rsi,[rbx+4]
fffff804`21518bc0 440fb6730b      movzx   r14d,byte ptr [rbx+0Bh]
fffff804`21518bc5 e98cfeffff      jmp     stornvme!NVMeHwBuildIo+0x196 (fffff804`21518a56)  Branch

stornvme!NVMeHwBuildIo+0x30a:
fffff804`21518bca 4c8b7b20        mov     r15,qword ptr [rbx+20h]
fffff804`21518bce 488d7304        lea     rsi,[rbx+4]
fffff804`21518bd2 440fb6730b      movzx   r14d,byte ptr [rbx+0Bh]
fffff804`21518bd7 e947ffffff      jmp     stornvme!NVMeHwBuildIo+0x263 (fffff804`21518b23)  Branch

stornvme!NVMeHwBuildIo+0x31c:
fffff804`21518bdc c6420306        mov     byte ptr [rdx+3],6

stornvme!NVMeHwBuildIo+0x320:
fffff804`21518be0 4c8bc3          mov     r8,rbx
fffff804`21518be3 488bd7          mov     rdx,rdi
fffff804`21518be6 33c9            xor     ecx,ecx
fffff804`21518be8 4c8b15c1b40300  mov     r10,qword ptr [stornvme!_imp_StorPortNotification (fffff804`215540b0)]
fffff804`21518bef e86cbfd4ff      call    storport!StorPortNotification (fffff804`21264b60)
fffff804`21518bf4 32c0            xor     al,al
fffff804`21518bf6 e9bafdffff      jmp     stornvme!NVMeHwBuildIo+0xf5 (fffff804`215189b5)  Branch

stornvme!NVMeHwBuildIo+0x3fd:
fffff804`21518cbd 4c8b7a18        mov     r15,qword ptr [rdx+18h]
fffff804`21518cc1 e908900200      jmp     stornvme!NVMeHwBuildIo+0x2940e (fffff804`21541cce)  Branch

stornvme!NVMeHwBuildIo+0x406:
fffff804`21518cc6 4c8b7a10        mov     r15,qword ptr [rdx+10h]
fffff804`21518cca e9ff8f0200      jmp     stornvme!NVMeHwBuildIo+0x2940e (fffff804`21541cce)  Branch

stornvme!NVMeHwBuildIo+0x40f:
fffff804`21518ccf 4c8b7a18        mov     r15,qword ptr [rdx+18h]
fffff804`21518cd3 e907900200      jmp     stornvme!NVMeHwBuildIo+0x2941f (fffff804`21541cdf)  Branch

stornvme!NVMeHwBuildIo+0x418:
fffff804`21518cd8 4c8b7a10        mov     r15,qword ptr [rdx+10h]
fffff804`21518cdc e9fe8f0200      jmp     stornvme!NVMeHwBuildIo+0x2941f (fffff804`21541cdf)  Branch

stornvme!NVMeHwBuildIo+0x2940e:
fffff804`21541cce 440fb67209      movzx   r14d,byte ptr [rdx+9]
fffff804`21541cd3 488d7208        lea     rsi,[rdx+8]
fffff804`21541cd7 41b201          mov     r10b,1
fffff804`21541cda e95a6dfdff      jmp     stornvme!NVMeHwBuildIo+0x179 (fffff804`21518a39)  Branch

stornvme!NVMeHwBuildIo+0x2941f:
fffff804`21541cdf 440fb67209      movzx   r14d,byte ptr [rdx+9]
fffff804`21541ce4 488d7208        lea     rsi,[rdx+8]
fffff804`21541ce8 41b201          mov     r10b,1
fffff804`21541ceb e9166efdff      jmp     stornvme!NVMeHwBuildIo+0x246 (fffff804`21518b06)  Branch

stornvme!NVMeHwBuildIo+0x29430:
fffff804`21541cf0 410fb6f6        movzx   esi,r14b

stornvme!NVMeHwBuildIo+0x29434:
fffff804`21541cf4 448bc6          mov     r8d,esi
fffff804`21541cf7 488d55d0        lea     rdx,[rbp-30h]
fffff804`21541cfb 498bcf          mov     rcx,r15
fffff804`21541cfe 448be6          mov     r12d,esi
fffff804`21541d01 e87acdffff      call    stornvme!memcpy (fffff804`2153ea80)
fffff804`21541d06 804b0380        or      byte ptr [rbx+3],80h
fffff804`21541d0a 410fb6c6        movzx   eax,r14b
fffff804`21541d0e 3bc6            cmp     eax,esi
fffff804`21541d10 0f86796cfdff    jbe     stornvme!NVMeHwBuildIo+0xcf (fffff804`2151898f)  Branch

stornvme!NVMeHwBuildIo+0x29456:
fffff804`21541d16 2bc6            sub     eax,esi
fffff804`21541d18 4b8d0c3c        lea     rcx,[r12+r15]
fffff804`21541d1c a803            test    al,3
fffff804`21541d1e 751f            jne     stornvme!NVMeHwBuildIo+0x2947f (fffff804`21541d3f)  Branch

stornvme!NVMeHwBuildIo+0x29460:
fffff804`21541d20 c1e802          shr     eax,2
fffff804`21541d23 85c0            test    eax,eax
fffff804`21541d25 0f84646cfdff    je      stornvme!NVMeHwBuildIo+0xcf (fffff804`2151898f)  Branch

stornvme!NVMeHwBuildIo+0x2946b:
fffff804`21541d2b 448bc0          mov     r8d,eax
fffff804`21541d2e 33d2            xor     edx,edx
fffff804`21541d30 49c1e002        shl     r8,2
fffff804`21541d34 e887d2ffff      call    stornvme!_memset_spec_ermsb (fffff804`2153efc0)
fffff804`21541d39 90              nop
fffff804`21541d3a e9506cfdff      jmp     stornvme!NVMeHwBuildIo+0xcf (fffff804`2151898f)  Branch

stornvme!NVMeHwBuildIo+0x2947f:
fffff804`21541d3f 85c0            test    eax,eax
fffff804`21541d41 0f84486cfdff    je      stornvme!NVMeHwBuildIo+0xcf (fffff804`2151898f)  Branch

stornvme!NVMeHwBuildIo+0x29487:
fffff804`21541d47 448bc0          mov     r8d,eax
fffff804`21541d4a 33d2            xor     edx,edx
fffff804`21541d4c e86fd2ffff      call    stornvme!_memset_spec_ermsb (fffff804`2153efc0)
fffff804`21541d51 90              nop
fffff804`21541d52 e9386cfdff      jmp     stornvme!NVMeHwBuildIo+0xcf (fffff804`2151898f)  Branch
