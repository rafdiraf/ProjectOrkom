;perhitungan nilai yang sudah di konfersi dari fungsi stack 
hitipk1:
	pop eax		;mengambil nilai yang di simpan pada stack
	pop eax
	mov edx, 3	;memberi nilai ke edx sesuai jumlah sks
	mul edx		;nilai yang ada di eax x edx
	mov ecx,eax ;pindahkan nilai ke ecx
	pop eax
	mov edx, 3	;memberi nilai ke edx sesuai jumlah sks
	mul edx
	add eax,ecx ;tambah nilai
	mov ecx,eax
	pop eax
	mov edx, 3	;memberi nilai ke edx sesuai jumlah sks
	mul edx
	add eax,ecx
	mov ecx,eax
	pop eax
	mov edx, 3	;memberi nilai ke edx sesuai jumlah sks
	mul edx
	add eax,ecx
	
	mov [sum1],eax ; simpan total penjumlahan untuk perhitungan IPK
	
	mov ecx, 12
	
	mov edx,0 	;mengosongkan edx untuk oprasi pembagian
	idiv ecx 	; nilai yang ada di eax / ecx
	mov ecx, 100
	mov edx,0
	idiv ecx
	; Rumus IPK = sigma Jumlah SKS*Nila mutui/Sigma sks 
	mov [ipk1], eax			;simpan nilai eax ke variabel
	mov [floatipk1], edx	;simpan sisa bagi ke variabel
	jmp print1
	
hitipk2:
	pop eax
	pop eax
	mov edx, 3
	mul edx
	mov ecx,eax
	pop eax
	mov edx, 2
	mul edx
	add eax,ecx
	mov ecx,eax
	pop eax
	mov edx, 2
	mul edx
	add eax,ecx
	mov ecx,eax
	pop eax
	mov edx, 3
	mul edx
	add eax,ecx
	
	mov [sum2],eax
	
	mov ecx, 10
	
	mov edx,0 
	idiv ecx 
	mov ecx, 100
	mov edx,0
	idiv ecx
	
	mov [ipk2], eax
	mov [floatipk2], edx
	jmp print2
	
hitipk3:
	pop eax
	pop eax
	mov edx, 3
	mul edx
	mov ecx,eax
	pop eax
	mov edx, 3
	mul edx
	add eax,ecx
	mov ecx,eax
	pop eax
	mov edx, 3
	mul edx
	add eax,ecx
	mov ecx,eax
	pop eax
	mov edx, 3
	mul edx
	add eax,ecx

	mov [sum3],eax
	
	mov ecx, 12
	
	mov edx,0 
	idiv ecx 
	mov ecx, 100
	mov edx,0
	idiv ecx
	
	mov [ipk3], eax
	mov [floatipk3], edx
	jmp print3
	
hitipk4:
	pop eax
	pop eax
	mov edx, 4
	mul edx
	mov ecx,eax
	pop eax
	mov edx, 1
	mul edx
	add eax,ecx
	mov ecx,eax
	pop eax
	mov edx, 1
	mul edx
	add eax,ecx
	mov ecx,eax
	pop eax
	mov edx, 3
	mul edx
	add eax,ecx
	
	mov [sum4],eax
	mov ecx, 9
	
	mov edx,0 
	idiv ecx 
	mov ecx, 100
	mov edx,0
	idiv ecx
	
	mov [ipk4], eax
	mov [floatipk4], edx
	jmp print4
	
hitipkakhir:
	;Perhitungan nilai IPK
	mov eax,[sum1]
	mov ebx,[sum2]
	add eax,ebx
	mov ebx,[sum3]
	add eax,ebx
	mov ebx,[sum4]
	add eax,ebx
	
	mov ecx,43	; total keseluruhan jumlah SKS
	
	mov edx,0
	idiv ecx
	mov ecx, 100
	mov edx,0
	idiv ecx
	
	mov [ipk], eax
	mov [floatipk], edx
	jmp print5
	
	
