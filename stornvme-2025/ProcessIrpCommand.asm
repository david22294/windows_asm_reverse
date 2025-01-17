stornvme!ProcessIrpCommand:
fffff802`5724d720 48895c2408      mov     qword ptr [rsp+8],rbx
fffff802`5724d725 48896c2410      mov     qword ptr [rsp+10h],rbp
fffff802`5724d72a 4889742418      mov     qword ptr [rsp+18h],rsi
fffff802`5724d72f 57              push    rdi
fffff802`5724d730 4883ec40        sub     rsp,40h
fffff802`5724d734 448b4a10        mov     r9d,dword ptr [rdx+10h]
fffff802`5724d738 488bda          mov     rbx,rdx
fffff802`5724d73b 488b7218        mov     rsi,qword ptr [rdx+18h]
fffff802`5724d73f 488bf9          mov     rdi,rcx
fffff802`5724d742 488b2a          mov     rbp,qword ptr [rdx]
fffff802`5724d745 4585c9          test    r9d,r9d
fffff802`5724d748 750b            jne     stornvme!ProcessIrpCommand+0x35 (fffff802`5724d755)  Branch

stornvme!ProcessIrpCommand+0x2a:
fffff802`5724d74a 41b901000000    mov     r9d,1
fffff802`5724d750 e938010000      jmp     stornvme!ProcessIrpCommand+0x16d (fffff802`5724d88d)  Branch

stornvme!ProcessIrpCommand+0x35:
fffff802`5724d755 8b89c80f0000    mov     ecx,dword ptr [rcx+0FC8h]
fffff802`5724d75b 0fbae108        bt      ecx,8
fffff802`5724d75f 730b            jae     stornvme!ProcessIrpCommand+0x4c (fffff802`5724d76c)  Branch

stornvme!ProcessIrpCommand+0x41:
fffff802`5724d761 41b938000000    mov     r9d,38h
fffff802`5724d767 e921010000      jmp     stornvme!ProcessIrpCommand+0x16d (fffff802`5724d88d)  Branch

stornvme!ProcessIrpCommand+0x4c:
fffff802`5724d76c 8b4718          mov     eax,dword ptr [rdi+18h]
fffff802`5724d76f a801            test    al,1
fffff802`5724d771 7511            jne     stornvme!ProcessIrpCommand+0x64 (fffff802`5724d784)  Branch

stornvme!ProcessIrpCommand+0x53:
fffff802`5724d773 0fbae109        bt      ecx,9
fffff802`5724d777 720b            jb      stornvme!ProcessIrpCommand+0x64 (fffff802`5724d784)  Branch

stornvme!ProcessIrpCommand+0x59:
fffff802`5724d779 41b908000000    mov     r9d,8
fffff802`5724d77f e909010000      jmp     stornvme!ProcessIrpCommand+0x16d (fffff802`5724d88d)  Branch

stornvme!ProcessIrpCommand+0x64:
fffff802`5724d784 0fb6450a        movzx   eax,byte ptr [rbp+0Ah]
fffff802`5724d788 488b8cc778060000 mov     rcx,qword ptr [rdi+rax*8+678h]
fffff802`5724d790 80794200        cmp     byte ptr [rcx+42h],0
fffff802`5724d794 448b4134        mov     r8d,dword ptr [rcx+34h]
fffff802`5724d798 4c8b5938        mov     r11,qword ptr [rcx+38h]
fffff802`5724d79c 0f85e5000000    jne     stornvme!ProcessIrpCommand+0x167 (fffff802`5724d887)  Branch

stornvme!ProcessIrpCommand+0x82:
fffff802`5724d7a2 6683793000      cmp     word ptr [rcx+30h],0
fffff802`5724d7a7 0f85da000000    jne     stornvme!ProcessIrpCommand+0x167 (fffff802`5724d887)  Branch

stornvme!ProcessIrpCommand+0x8d:
fffff802`5724d7ad 4585c0          test    r8d,r8d
fffff802`5724d7b0 743d            je      stornvme!ProcessIrpCommand+0xcf (fffff802`5724d7ef)  Branch

stornvme!ProcessIrpCommand+0x92:
fffff802`5724d7b2 33d2            xor     edx,edx
fffff802`5724d7b4 418bc1          mov     eax,r9d
fffff802`5724d7b7 41f7f0          div     eax,r8d
fffff802`5724d7ba 85d2            test    edx,edx
fffff802`5724d7bc 7526            jne     stornvme!ProcessIrpCommand+0xc4 (fffff802`5724d7e4)  Branch

stornvme!ProcessIrpCommand+0x9e:
fffff802`5724d7be 488b4308        mov     rax,qword ptr [rbx+8]
fffff802`5724d7c2 4899            cqo
fffff802`5724d7c4 49f7f8          idiv    rax,r8
fffff802`5724d7c7 4c8bd0          mov     r10,rax
fffff802`5724d7ca 4885d2          test    rdx,rdx
fffff802`5724d7cd 7515            jne     stornvme!ProcessIrpCommand+0xc4 (fffff802`5724d7e4)  Branch

stornvme!ProcessIrpCommand+0xaf:
fffff802`5724d7cf 493bc3          cmp     rax,r11
fffff802`5724d7d2 7310            jae     stornvme!ProcessIrpCommand+0xc4 (fffff802`5724d7e4)  Branch

stornvme!ProcessIrpCommand+0xb4:
fffff802`5724d7d4 418bc1          mov     eax,r9d
fffff802`5724d7d7 4d2bda          sub     r11,r10
fffff802`5724d7da 41f7f0          div     eax,r8d
fffff802`5724d7dd 8bc8            mov     ecx,eax
fffff802`5724d7df 4c3bd9          cmp     r11,rcx
fffff802`5724d7e2 730b            jae     stornvme!ProcessIrpCommand+0xcf (fffff802`5724d7ef)  Branch

stornvme!ProcessIrpCommand+0xc4:
fffff802`5724d7e4 41b928000000    mov     r9d,28h
fffff802`5724d7ea e99e000000      jmp     stornvme!ProcessIrpCommand+0x16d (fffff802`5724d88d)  Branch

stornvme!ProcessIrpCommand+0xcf:
fffff802`5724d7ef 8b4338          mov     eax,dword ptr [rbx+38h]
fffff802`5724d7f2 488bcf          mov     rcx,rdi
fffff802`5724d7f5 440fb74334      movzx   r8d,word ptr [rbx+34h]
fffff802`5724d7fa 8b5330          mov     edx,dword ptr [rbx+30h]
fffff802`5724d7fd c1e804          shr     eax,4
fffff802`5724d800 2401            and     al,1
fffff802`5724d802 88442430        mov     byte ptr [rsp+30h],al
fffff802`5724d806 c644242800      mov     byte ptr [rsp+28h],0
fffff802`5724d80b c644242000      mov     byte ptr [rsp+20h],0
fffff802`5724d810 e8ab000000      call    stornvme!AssignQueueId (fffff802`5724d8c0)
fffff802`5724d815 0fb64d0a        movzx   ecx,byte ptr [rbp+0Ah]
fffff802`5724d819 884e03          mov     byte ptr [rsi+3],cl
fffff802`5724d81c 0fb7d0          movzx   edx,ax
fffff802`5724d81f b801000000      mov     eax,1
fffff802`5724d824 668906          mov     word ptr [rsi],ax
fffff802`5724d827 448b4310        mov     r8d,dword ptr [rbx+10h]
fffff802`5724d82b 44894604        mov     dword ptr [rsi+4],r8d
fffff802`5724d82f 894610          mov     dword ptr [rsi+10h],eax
fffff802`5724d832 448b4f78        mov     r9d,dword ptr [rdi+78h]
fffff802`5724d836 4585c9          test    r9d,r9d
fffff802`5724d839 7423            je      stornvme!ProcessIrpCommand+0x13e (fffff802`5724d85e)  Branch

stornvme!ProcessIrpCommand+0x11b:
fffff802`5724d83b 48837b0800      cmp     qword ptr [rbx+8],0
fffff802`5724d840 741c            je      stornvme!ProcessIrpCommand+0x13e (fffff802`5724d85e)  Branch

stornvme!ProcessIrpCommand+0x122:
fffff802`5724d842 488b8ccf78060000 mov     rcx,qword ptr [rdi+rcx*8+678h]
fffff802`5724d84a 8b4134          mov     eax,dword ptr [rcx+34h]
fffff802`5724d84d 418d49ff        lea     ecx,[r9-1]
fffff802`5724d851 03c8            add     ecx,eax
fffff802`5724d853 f7d8            neg     eax
fffff802`5724d855 23c8            and     ecx,eax
fffff802`5724d857 442bc1          sub     r8d,ecx
fffff802`5724d85a 44894604        mov     dword ptr [rsi+4],r8d

stornvme!ProcessIrpCommand+0x13e:
fffff802`5724d85e 488d0c52        lea     rcx,[rdx+rdx*2]
fffff802`5724d862 4c8bcb          mov     r9,rbx
fffff802`5724d865 488b9798030000  mov     rdx,qword ptr [rdi+398h]
fffff802`5724d86c 4c8bc6          mov     r8,rsi
fffff802`5724d86f 48c1e106        shl     rcx,6
fffff802`5724d873 4881c240ffffff  add     rdx,0FFFFFFFFFFFFFF40h
fffff802`5724d87a 4803d1          add     rdx,rcx
fffff802`5724d87d 488bcf          mov     rcx,rdi
fffff802`5724d880 e8cb030000      call    stornvme!ProcessPendingIoCommands (fffff802`5724dc50)
fffff802`5724d885 eb1d            jmp     stornvme!ProcessIrpCommand+0x184 (fffff802`5724d8a4)  Branch

stornvme!ProcessIrpCommand+0x167:
fffff802`5724d887 41b920000000    mov     r9d,20h

stornvme!ProcessIrpCommand+0x16d:
fffff802`5724d88d 4c8bc6          mov     r8,rsi
fffff802`5724d890 488bd7          mov     rdx,rdi
fffff802`5724d893 b900200000      mov     ecx,2000h
fffff802`5724d898 4c8b1511680300  mov     r10,qword ptr [stornvme!_imp_StorPortNotification (fffff802`572840b0)]
fffff802`5724d89f e8bc7202f6      call    storport!StorPortNotification (fffff802`4d274b60)

stornvme!ProcessIrpCommand+0x184:
fffff802`5724d8a4 488b5c2450      mov     rbx,qword ptr [rsp+50h]
fffff802`5724d8a9 488b6c2458      mov     rbp,qword ptr [rsp+58h]
fffff802`5724d8ae 488b742460      mov     rsi,qword ptr [rsp+60h]
fffff802`5724d8b3 4883c440        add     rsp,40h
fffff802`5724d8b7 5f              pop     rdi
fffff802`5724d8b8 c3              ret
