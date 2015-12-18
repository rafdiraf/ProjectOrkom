semester1:
	;fungsi mencetak
	mov eax, 4
	mov ebx, 1
	mov ecx, mk1
	mov edx, mk1_len
	int 0x80
	;fungsi scan
	mov eax, 3
	mov ebx, 2
	mov ecx, nm1
	mov edx, max_digit
	int 0x80
	;Cek nilai inputan sudah sesuai atau belum
	cmp dword [nm1],0xa41		; compare variabel dengan 0xa41 yaitu merupakan bentuk hexa dari scan nilai enter =a dan A=41(ascii)
	je next1
	cmp dword [nm1],0xa4241		;compare inputan dengan AB
	je next1
	cmp dword [nm1],0xa42		;compare inputan dengan B
	je next1
	cmp dword [nm1],0xa4342		;compare inputan dengan BC
	je next1
	cmp dword [nm1],0xa43		;compare inputan dengan C
	je next1
	cmp dword [nm1],0xa44		;compare inputan dengan D
	je next1
	cmp dword [nm1],0xa45		;compare inputan dengan E
	je next1
	jne salahinput				;lompat ke salahinput jika tidak ada yang sama
	
next1:	
	mov eax, 4
	mov ebx, 1
	mov ecx, mk2
	mov edx, mk2_len
	int 0x80
	
	mov eax, 3
	mov ebx, 2
	mov ecx, nm2
	mov edx, max_digit
	int 0x80
	
	cmp dword [nm2],0xa41
	je next2
	cmp dword [nm2],0xa4241
	je next2
	cmp dword [nm2],0xa42
	je next2
	cmp dword [nm2],0xa4342
	je next2
	cmp dword [nm2],0xa43
	je next2
	cmp dword [nm2],0xa44
	je next2
	cmp dword [nm2],0xa45
	je next2
	jne salahinput
	
next2:	
	mov eax, 4
	mov ebx, 1
	mov ecx, mk3
	mov edx, mk3_len
	int 0x80
	
	mov eax, 3
	mov ebx, 2
	mov ecx, nm3
	mov edx, max_digit
	int 0x80
	
	cmp dword [nm3],0xa41
	je next3
	cmp dword [nm3],0xa4241
	je next3
	cmp dword [nm3],0xa42
	je next3
	cmp dword [nm3],0xa4342
	je next3
	cmp dword [nm3],0xa43
	je next3
	cmp dword [nm3],0xa44
	je next3
	cmp dword [nm3],0xa45
	je next3
	jne salahinput
	
next3:
	mov eax, 4
	mov ebx, 1
	mov ecx, mk4
	mov edx, mk4_len
	int 0x80
	
	mov eax, 3
	mov ebx, 2
	mov ecx, nm4
	mov edx, max_digit
	int 0x80
	
	cmp dword [nm4],0xa41
	je next4
	cmp dword [nm4],0xa4241
	je next4
	cmp dword [nm4],0xa42
	je next4
	cmp dword [nm4],0xa4342
	je next4
	cmp dword [nm4],0xa43
	je next4
	cmp dword [nm4],0xa44
	je next4
	cmp dword [nm4],0xa45
	je next4
	jne salahinput
	
next4:
	jmp tabelnilai1
	
semester2:
	; print semester 2
	push smstr2
    call printf
    add esp, 4
	
	mov eax, 4
	mov ebx, 1
	mov ecx, mk5
	mov edx, mk5_len
	int 0x80
	
	mov eax, 3
	mov ebx, 2
	mov ecx, nm1
	mov edx, max_digit
	int 0x80
	
	cmp dword [nm1],0xa41
	je next5
	cmp dword [nm1],0xa4241
	je next5
	cmp dword [nm1],0xa42
	je next5
	cmp dword [nm1],0xa4342
	je next5
	cmp dword [nm1],0xa43
	je next5
	cmp dword [nm1],0xa44
	je next5
	cmp dword [nm1],0xa45
	je next5
	jne salahinput
	
next5:
	mov eax, 4
	mov ebx, 1
	mov ecx, mk6
	mov edx, mk6_len
	int 0x80
	
	mov eax, 3
	mov ebx, 2
	mov ecx, nm2
	mov edx, max_digit
	int 0x80

	cmp dword [nm2],0xa41
	je next6
	cmp dword [nm2],0xa4241
	je next6
	cmp dword [nm2],0xa42
	je next6
	cmp dword [nm2],0xa4342
	je next6
	cmp dword [nm2],0xa43
	je next6
	cmp dword [nm2],0xa44
	je next6
	cmp dword [nm2],0xa45
	je next6
	jne salahinput
	
next6:
	mov eax, 4
	mov ebx, 1
	mov ecx, mk7
	mov edx, mk7_len
	int 0x80
	
	mov eax, 3
	mov ebx, 2
	mov ecx, nm3
	mov edx, max_digit
	int 0x80
	
	cmp dword [nm3],0xa41
	je next7
	cmp dword [nm3],0xa4241
	je next7
	cmp dword [nm3],0xa42
	je next7
	cmp dword [nm3],0xa4342
	je next7
	cmp dword [nm3],0xa43
	je next7
	cmp dword [nm3],0xa44
	je next7
	cmp dword [nm3],0xa45
	je next7
	jne salahinput
	
next7:
	mov eax, 4
	mov ebx, 1
	mov ecx, mk8
	mov edx, mk8_len
	int 0x80
	
	mov eax, 3
	mov ebx, 2
	mov ecx, nm4
	mov edx, max_digit
	int 0x80
	
	cmp dword [nm4],0xa41
	je next8
	cmp dword [nm4],0xa4241
	je next8
	cmp dword [nm4],0xa42
	je next8
	cmp dword [nm4],0xa4342
	je next8
	cmp dword [nm4],0xa43
	je next8
	cmp dword [nm4],0xa44
	je next8
	cmp dword [nm4],0xa45
	je next8
	jne salahinput
	
next8:
	jmp tabelnilai2
	
semester3:
	; print semester 3
	push smstr3
    call printf
    add esp, 4
	
	mov eax, 4
	mov ebx, 1
	mov ecx, mk9
	mov edx, mk9_len
	int 0x80
	
	mov eax, 3
	mov ebx, 2
	mov ecx, nm1
	mov edx, max_digit
	int 0x80
	
	mov eax, 4
	mov ebx, 1
	mov ecx, mk10
	mov edx, mk10_len
	int 0x80
	
	mov eax, 3
	mov ebx, 2
	mov ecx, nm2
	mov edx, max_digit
	int 0x80
	
	mov eax, 4
	mov ebx, 1
	mov ecx, mk11
	mov edx, mk11_len
	int 0x80
	
	mov eax, 3
	mov ebx, 2
	mov ecx, nm3
	mov edx, max_digit
	int 0x80
	
	mov eax, 4
	mov ebx, 1
	mov ecx, mk12
	mov edx, mk12_len
	int 0x80
	
	mov eax, 3
	mov ebx, 2
	mov ecx, nm4
	mov edx, max_digit
	int 0x80
	
	jmp tabelnilai3
	
semester4:
	; print semester 3
	push smstr4
    call printf
    add esp, 4
	
	mov eax, 4
	mov ebx, 1
	mov ecx, mk13
	mov edx, mk13_len
	int 0x80
	
	mov eax, 3
	mov ebx, 2
	mov ecx, nm1
	mov edx, max_digit
	int 0x80
	
	mov eax, 4
	mov ebx, 1
	mov ecx, mk14
	mov edx, mk14_len
	int 0x80
	
	mov eax, 3
	mov ebx, 2
	mov ecx, nm2
	mov edx, max_digit
	int 0x80
	
	mov eax, 4
	mov ebx, 1
	mov ecx, mk15
	mov edx, mk15_len
	int 0x80
	
	mov eax, 3
	mov ebx, 2
	mov ecx, nm3
	mov edx, max_digit
	int 0x80
	
	mov eax, 4
	mov ebx, 1
	mov ecx, mk16
	mov edx, mk16_len
	int 0x80
	
	mov eax, 3
	mov ebx, 2
	mov ecx, nm4
	mov edx, max_digit
	int 0x80
	
	jmp tabelnilai4
	
tabelnilai1:
	
	call tabel1
	jmp ext
	
tabelnilai2:
	call tabel2
	jmp ext
	
tabelnilai3:
	call tabel3
	
tabelnilai4:
	call tabel4
	
salahinput:
	mov eax, error1		;menampilkan pesan error inputan
	mov ebx, 1 ;stdout
	call printStr 
	
    jmp cekvalidasi ;melompat ke fungsi validasi

    
    
	
ext:

ret
	
