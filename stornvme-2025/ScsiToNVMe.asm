stornvme!ScsiToNVMe:
// rcx = DeviceExtension
// rdx = Srb
fffff804`21518cf0 4053            push    rbx
fffff804`21518cf2 55              push    rbp
fffff804`21518cf3 56              push    rsi
fffff804`21518cf4 57              push    rdi
fffff804`21518cf5 4155            push    r13
fffff804`21518cf7 4883ec40        sub     rsp,40h
fffff804`21518cfb 0fb67a02        movzx   edi,byte ptr [rdx+2]
fffff804`21518cff 4533c9          xor     r9d,r9d
fffff804`21518d02 33f6            xor     esi,esi
fffff804`21518d04 4532c0          xor     r8b,r8b
fffff804`21518d07 488bda          mov     rbx,rdx
fffff804`21518d0a 488be9          mov     rbp,rcx
fffff804`21518d0d 4080ff28        cmp     dil,28h
fffff804`21518d11 0f858c000000    jne     stornvme!ScsiToNVMe+0xb3 (fffff804`21518da3)  Branch

stornvme!ScsiToNVMe+0x27:
fffff804`21518d17 397214          cmp     dword ptr [rdx+14h],esi
fffff804`21518d1a 756c            jne     stornvme!ScsiToNVMe+0x98 (fffff804`21518d88)  Branch

stornvme!ScsiToNVMe+0x2c:
fffff804`21518d1c 8b4238          mov     eax,dword ptr [rdx+38h]   // rdx+0x38: srb->NumSrbExData
fffff804`21518d1f 85c0            test    eax,eax
fffff804`21518d21 7465            je      stornvme!ScsiToNVMe+0x98 (fffff804`21518d88)  Branch

stornvme!ScsiToNVMe+0x33:
fffff804`21518d23 4c8d5278        lea     r10,[rdx+78h] // srb->SrbExDataOffset
fffff804`21518d27 448bd8          mov     r11d,eax
fffff804`21518d2a 660f1f440000    nop     word ptr [rax+rax]

stornvme!ScsiToNVMe+0x40:  // Get SrbExData
fffff804`21518d30 418b02          mov     eax,dword ptr [r10]
fffff804`21518d33 3d80000000      cmp     eax,80h
fffff804`21518d38 723f            jb      stornvme!ScsiToNVMe+0x89 (fffff804`21518d79)  Branch

stornvme!ScsiToNVMe+0x4a:
fffff804`21518d3a 3b4310          cmp     eax,dword ptr [rbx+10h]
fffff804`21518d3d 773a            ja      stornvme!ScsiToNVMe+0x89 (fffff804`21518d79)  Branch

stornvme!ScsiToNVMe+0x4f:
fffff804`21518d3f 8b1403          mov     edx,dword ptr [rbx+rax] // edx = SRBEXDATATYPE
fffff804`21518d42 488d0c03        lea     rcx,[rbx+rax] // rcx = SRBEXDATAT
fffff804`21518d46 83ea40          sub     edx,40h
fffff804`21518d49 741d            je      stornvme!ScsiToNVMe+0x78 (fffff804`21518d68)  Branch // if SRBEXDATATYPE == SrbExDataTypeScsiCdb16, jmp

stornvme!ScsiToNVMe+0x5b:
fffff804`21518d4b 83ea01          sub     edx,1
fffff804`21518d4e 7418            je      stornvme!ScsiToNVMe+0x78 (fffff804`21518d68)  Branch

stornvme!ScsiToNVMe+0x60:
fffff804`21518d50 83fa01          cmp     edx,1
fffff804`21518d53 7524            jne     stornvme!ScsiToNVMe+0x89 (fffff804`21518d79)  Branch

stornvme!ScsiToNVMe+0x65:
fffff804`21518d55 448b490c        mov     r9d,dword ptr [rcx+0Ch]
fffff804`21518d59 440fb6c2        movzx   r8d,dl
fffff804`21518d5d 4585c9          test    r9d,r9d
fffff804`21518d60 7417            je      stornvme!ScsiToNVMe+0x89 (fffff804`21518d79)  Branch

stornvme!ScsiToNVMe+0x72:
fffff804`21518d62 488d7120        lea     rsi,[rcx+20h]
fffff804`21518d66 eb11            jmp     stornvme!ScsiToNVMe+0x89 (fffff804`21518d79)  Branch

stornvme!ScsiToNVMe+0x78:
fffff804`21518d68 440fb6490a      movzx   r9d,byte ptr [rcx+0Ah] // _SRBEX_DATA_SCSI_CDB16->CdbLength
fffff804`21518d6d 41b001          mov     r8b,1
fffff804`21518d70 4584c9          test    r9b,r9b
fffff804`21518d73 7404            je      stornvme!ScsiToNVMe+0x89 (fffff804`21518d79)  Branch

stornvme!ScsiToNVMe+0x85:
fffff804`21518d75 488d7118        lea     rsi,[rcx+18h] // _SRBEX_DATA_SCSI_CDB16->Cdb

stornvme!ScsiToNVMe+0x89: // get next SrbExData
fffff804`21518d79 4983c204        add     r10,4
fffff804`21518d7d 4983eb01        sub     r11,1
fffff804`21518d81 75ad            jne     stornvme!ScsiToNVMe+0x40 (fffff804`21518d30)  Branch

stornvme!ScsiToNVMe+0x93:
fffff804`21518d83 4584c0          test    r8b,r8b
fffff804`21518d86 7503            jne     stornvme!ScsiToNVMe+0x9b (fffff804`21518d8b)  Branch

stornvme!ScsiToNVMe+0x98:
fffff804`21518d88 4533c9          xor     r9d,r9d

stornvme!ScsiToNVMe+0x9b:
fffff804`21518d8b 4532ed          xor     r13b,r13b
fffff804`21518d8e 44886c2478      mov     byte ptr [rsp+78h],r13b
fffff804`21518d93 4080ff28        cmp     dil,28h
fffff804`21518d97 7525            jne     stornvme!ScsiToNVMe+0xce (fffff804`21518dbe)  Branch

stornvme!ScsiToNVMe+0xa9:
fffff804`21518d99 8b4334          mov     eax,dword ptr [rbx+34h]
fffff804`21518d9c 0fb64c180a      movzx   ecx,byte ptr [rax+rbx+0Ah]
fffff804`21518da1 eb1f            jmp     stornvme!ScsiToNVMe+0xd2 (fffff804`21518dc2)  Branch

stornvme!ScsiToNVMe+0xb3:
fffff804`21518da3 4084ff          test    dil,dil
fffff804`21518da6 75e0            jne     stornvme!ScsiToNVMe+0x98 (fffff804`21518d88)  Branch

stornvme!ScsiToNVMe+0xb8:
fffff804`21518da8 440fb64a0a      movzx   r9d,byte ptr [rdx+0Ah]
fffff804`21518dad 4584c9          test    r9b,r9b
fffff804`21518db0 74d9            je      stornvme!ScsiToNVMe+0x9b (fffff804`21518d8b)  Branch

stornvme!ScsiToNVMe+0xc2:
fffff804`21518db2 4532ed          xor     r13b,r13b
fffff804`21518db5 488d7248        lea     rsi,[rdx+48h]
fffff804`21518db9 44886c2478      mov     byte ptr [rsp+78h],r13b

stornvme!ScsiToNVMe+0xce:
fffff804`21518dbe 0fb64b07        movzx   ecx,byte ptr [rbx+7]

stornvme!ScsiToNVMe+0xd2:
fffff804`21518dc2 4183f906        cmp     r9d,6
fffff804`21518dc6 0f82250c0000    jb      stornvme!ScsiToNVMe+0xd01 (fffff804`215199f1)  Branch

stornvme!ScsiToNVMe+0xdc:
fffff804`21518dcc 4885f6          test    rsi,rsi
fffff804`21518dcf 0f841c0c0000    je      stornvme!ScsiToNVMe+0xd01 (fffff804`215199f1)  Branch

stornvme!ScsiToNVMe+0xe5:
fffff804`21518dd5 0fb616          movzx   edx,byte ptr [rsi]
fffff804`21518dd8 8d4260          lea     eax,[rdx+60h]
fffff804`21518ddb 3c15            cmp     al,15h
fffff804`21518ddd 770c            ja      stornvme!ScsiToNVMe+0xfb (fffff804`21518deb)  Branch

stornvme!ScsiToNVMe+0xef:
fffff804`21518ddf 41b805002000    mov     r8d,200005h
fffff804`21518de5 410fa3c0        bt      r8d,eax
fffff804`21518de9 721e            jb      stornvme!ScsiToNVMe+0x119 (fffff804`21518e09)  Branch

stornvme!ScsiToNVMe+0xfb:
fffff804`21518deb 0fb6c1          movzx   eax,cl
fffff804`21518dee 488b8cc578060000 mov     rcx,qword ptr [rbp+rax*8+678h]
fffff804`21518df6 4885c9          test    rcx,rcx
fffff804`21518df9 0f84ed0b0000    je      stornvme!ScsiToNVMe+0xcfc (fffff804`215199ec)  Branch

stornvme!ScsiToNVMe+0x10f:
fffff804`21518dff 83793400        cmp     dword ptr [rcx+34h],0
fffff804`21518e03 0f84e30b0000    je      stornvme!ScsiToNVMe+0xcfc (fffff804`215199ec)  Branch

stornvme!ScsiToNVMe+0x119:
fffff804`21518e09 4c89b42480000000 mov     qword ptr [rsp+80h],r14
fffff804`21518e11 488bc2          mov     rax,rdx
fffff804`21518e14 4c89bc2488000000 mov     qword ptr [rsp+88h],r15
fffff804`21518e1c 81fab5000000    cmp     edx,0B5h
fffff804`21518e22 0f87760a0000    ja      stornvme!ScsiToNVMe+0xbae (fffff804`2151989e)  Branch

stornvme!ScsiToNVMe+0x138:
fffff804`21518e28 488d15d171ffff  lea     rdx,[stornvme!NVMeControllerRemove <PERF> (stornvme+0x0) (fffff804`21510000)]
fffff804`21518e2f 0fb68402cfb80300 movzx   eax,byte ptr [rdx+rax+3B8CFh]
fffff804`21518e37 8b8c8283b80300  mov     ecx,dword ptr [rdx+rax*4+3B883h]
fffff804`21518e3e 4803ca          add     rcx,rdx
fffff804`21518e41 ffe1            jmp     rcx

stornvme!ScsiToNVMe+0xbae:
fffff804`2151989e 41b120          mov     r9b,20h
fffff804`215198a1 41b005          mov     r8b,5
fffff804`215198a4 b206            mov     dl,6
fffff804`215198a6 488bcb          mov     rcx,rbx
fffff804`215198a9 e882eeffff      call    stornvme!NVMeSetSenseData (fffff804`21518730)
fffff804`215198ae bf070000c1      mov     edi,0C1000007h
fffff804`215198b3 807b0300        cmp     byte ptr [rbx+3],0
fffff804`215198b7 4c8bbc2488000000 mov     r15,qword ptr [rsp+88h]
fffff804`215198bf 4c8bb42480000000 mov     r14,qword ptr [rsp+80h]
fffff804`215198c7 0f8511010000    jne     stornvme!ScsiToNVMe+0xcee (fffff804`215199de)  Branch

stornvme!ScsiToNVMe+0xbdd:
fffff804`215198cd 488bd3          mov     rdx,rbx
fffff804`215198d0 488bcd          mov     rcx,rbp
fffff804`215198d3 e818170000      call    stornvme!SetPrpFromSrb (fffff804`2151aff0)
fffff804`215198d8 8bf8            mov     edi,eax
fffff804`215198da 85c0            test    eax,eax
fffff804`215198dc 7512            jne     stornvme!ScsiToNVMe+0xc00 (fffff804`215198f0)  Branch

stornvme!ScsiToNVMe+0xbee:
fffff804`215198de 4584ed          test    r13b,r13b
fffff804`215198e1 7411            je      stornvme!ScsiToNVMe+0xc04 (fffff804`215198f4)  Branch

stornvme!ScsiToNVMe+0xbf3:
fffff804`215198e3 488bd3          mov     rdx,rbx
fffff804`215198e6 488bcd          mov     rcx,rbp
fffff804`215198e9 e882810100      call    stornvme!NVMeSplitIoCommand (fffff804`21531a70)
fffff804`215198ee eb04            jmp     stornvme!ScsiToNVMe+0xc04 (fffff804`215198f4)  Branch

stornvme!ScsiToNVMe+0xc00:
fffff804`215198f0 c6430304        mov     byte ptr [rbx+3],4

stornvme!ScsiToNVMe+0xc04:
fffff804`215198f4 f785c80f000000000100 test dword ptr [rbp+0FC8h],10000h
fffff804`215198fe 0f84da000000    je      stornvme!ScsiToNVMe+0xcee (fffff804`215199de)  Branch

stornvme!ScsiToNVMe+0xc14:
fffff804`21519904 0fb606          movzx   eax,byte ptr [rsi]
fffff804`21519907 3c28            cmp     al,28h
fffff804`21519909 7410            je      stornvme!ScsiToNVMe+0xc2b (fffff804`2151991b)  Branch

stornvme!ScsiToNVMe+0xc1b:
fffff804`2151990b 3c88            cmp     al,88h
fffff804`2151990d 740c            je      stornvme!ScsiToNVMe+0xc2b (fffff804`2151991b)  Branch

stornvme!ScsiToNVMe+0xc1f:
fffff804`2151990f 3c2a            cmp     al,2Ah
fffff804`21519911 7408            je      stornvme!ScsiToNVMe+0xc2b (fffff804`2151991b)  Branch

stornvme!ScsiToNVMe+0xc23:
fffff804`21519913 3c8a            cmp     al,8Ah
fffff804`21519915 0f85c3000000    jne     stornvme!ScsiToNVMe+0xcee (fffff804`215199de)  Branch

stornvme!ScsiToNVMe+0xc2b:
fffff804`2151991b 33ff            xor     edi,edi
fffff804`2151991d 807b0228        cmp     byte ptr [rbx+2],28h
fffff804`21519921 7506            jne     stornvme!ScsiToNVMe+0xc39 (fffff804`21519929)  Branch

stornvme!ScsiToNVMe+0xc33:
fffff804`21519923 488b5368        mov     rdx,qword ptr [rbx+68h]
fffff804`21519927 eb04            jmp     stornvme!ScsiToNVMe+0xc3d (fffff804`2151992d)  Branch

stornvme!ScsiToNVMe+0xc39:
fffff804`21519929 488b5338        mov     rdx,qword ptr [rbx+38h]

stornvme!ScsiToNVMe+0xc3d:
fffff804`2151992d 488bc2          mov     rax,rdx
fffff804`21519930 25ff0f0000      and     eax,0FFFh
fffff804`21519935 740a            je      stornvme!ScsiToNVMe+0xc51 (fffff804`21519941)  Branch

stornvme!ScsiToNVMe+0xc47:
fffff804`21519937 482bd0          sub     rdx,rax
fffff804`2151993a 4881c200100000  add     rdx,1000h

stornvme!ScsiToNVMe+0xc51:
fffff804`21519941 448b8274100000  mov     r8d,dword ptr [rdx+1074h]
fffff804`21519948 4585c0          test    r8d,r8d
fffff804`2151994b 7448            je      stornvme!ScsiToNVMe+0xca5 (fffff804`21519995)  Branch

stornvme!ScsiToNVMe+0xc5d:
fffff804`2151994d 8b8230100000    mov     eax,dword ptr [rdx+1030h]
fffff804`21519953 488d8a18100000  lea     rcx,[rdx+1018h]
fffff804`2151995a 4889542438      mov     qword ptr [rsp+38h],rdx
fffff804`2151995f 440fb7c8        movzx   r9d,ax
fffff804`21519963 488d8220100000  lea     rax,[rdx+1020h]
fffff804`2151996a 4889442430      mov     qword ptr [rsp+30h],rax
fffff804`2151996f 41ffc1          inc     r9d
fffff804`21519972 48894c2428      mov     qword ptr [rsp+28h],rcx
fffff804`21519977 488bd5          mov     rdx,rbp
fffff804`2151997a 4489442420      mov     dword ptr [rsp+20h],r8d
fffff804`2151997f b97e000000      mov     ecx,7Eh
fffff804`21519984 4c8bc3          mov     r8,rbx
fffff804`21519987 4c8b150aa70300  mov     r10,qword ptr [stornvme!_imp_StorPortExtendedFunction (fffff804`21554098)]
fffff804`2151998e e8edffd4ff      call    storport!StorPortExtendedFunction (fffff804`21269980)
fffff804`21519993 8bf8            mov     edi,eax

stornvme!ScsiToNVMe+0xca5:
fffff804`21519995 85ff            test    edi,edi
fffff804`21519997 7445            je      stornvme!ScsiToNVMe+0xcee (fffff804`215199de)  Branch

stornvme!ScsiToNVMe+0xca9:
fffff804`21519999 b004            mov     al,4
fffff804`2151999b 81ff090000c1    cmp     edi,0C1000009h
fffff804`215199a1 7436            je      stornvme!ScsiToNVMe+0xce9 (fffff804`215199d9)  Branch

stornvme!ScsiToNVMe+0xcb3:
fffff804`215199a3 81ff0c0000c1    cmp     edi,0C100000Ch
fffff804`215199a9 741b            je      stornvme!ScsiToNVMe+0xcd6 (fffff804`215199c6)  Branch

stornvme!ScsiToNVMe+0xcbb:
fffff804`215199ab 81ff0e0000c1    cmp     edi,0C100000Eh
fffff804`215199b1 7528            jne     stornvme!ScsiToNVMe+0xceb (fffff804`215199db)  Branch

stornvme!ScsiToNVMe+0xcc3:
fffff804`215199b3 b009            mov     al,9
fffff804`215199b5 884303          mov     byte ptr [rbx+3],al
fffff804`215199b8 8bc7            mov     eax,edi
fffff804`215199ba 4883c440        add     rsp,40h
fffff804`215199be 415d            pop     r13
fffff804`215199c0 5f              pop     rdi
fffff804`215199c1 5e              pop     rsi
fffff804`215199c2 5d              pop     rbp
fffff804`215199c3 5b              pop     rbx
fffff804`215199c4 c3              ret

stornvme!ScsiToNVMe+0xcd6:
fffff804`215199c6 b005            mov     al,5
fffff804`215199c8 884303          mov     byte ptr [rbx+3],al
fffff804`215199cb 8bc7            mov     eax,edi
fffff804`215199cd 4883c440        add     rsp,40h
fffff804`215199d1 415d            pop     r13
fffff804`215199d3 5f              pop     rdi
fffff804`215199d4 5e              pop     rsi
fffff804`215199d5 5d              pop     rbp
fffff804`215199d6 5b              pop     rbx
fffff804`215199d7 c3              ret

stornvme!ScsiToNVMe+0xce9:
fffff804`215199d9 b008            mov     al,8

stornvme!ScsiToNVMe+0xceb:
fffff804`215199db 884303          mov     byte ptr [rbx+3],al

stornvme!ScsiToNVMe+0xcee:
fffff804`215199de 8bc7            mov     eax,edi
fffff804`215199e0 4883c440        add     rsp,40h
fffff804`215199e4 415d            pop     r13
fffff804`215199e6 5f              pop     rdi
fffff804`215199e7 5e              pop     rsi
fffff804`215199e8 5d              pop     rbp
fffff804`215199e9 5b              pop     rbx
fffff804`215199ea c3              ret

stornvme!ScsiToNVMe+0xcfc:
fffff804`215199ec 41b125          mov     r9b,25h
fffff804`215199ef eb03            jmp     stornvme!ScsiToNVMe+0xd04 (fffff804`215199f4)  Branch

stornvme!ScsiToNVMe+0xd01:
fffff804`215199f1 41b120          mov     r9b,20h

stornvme!ScsiToNVMe+0xd04:
fffff804`215199f4 41b005          mov     r8b,5
fffff804`215199f7 b208            mov     dl,8
fffff804`215199f9 488bcb          mov     rcx,rbx
fffff804`215199fc e82fedffff      call    stornvme!NVMeSetSenseData (fffff804`21518730)
fffff804`21519a01 b8070000c1      mov     eax,0C1000007h
fffff804`21519a06 4883c440        add     rsp,40h
fffff804`21519a0a 415d            pop     r13
fffff804`21519a0c 5f              pop     rdi
fffff804`21519a0d 5e              pop     rsi
fffff804`21519a0e 5d              pop     rbp
fffff804`21519a0f 5b              pop     rbx
fffff804`21519a10 c3              ret
