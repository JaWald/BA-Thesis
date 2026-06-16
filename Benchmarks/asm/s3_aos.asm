bench_s3_aos:
                // src\benches_s3.rs:32
                pub fn bench_s3_aos(iterations: usize, chunk_size: usize, planets: &mut Vec<PlanetAoS>, _rng: &mut StdRng) -> u128 {
        push r15
        push r14
        push r13
        push r12
        push rsi
        push rdi
        push rbp
        push rbx
        sub rsp, 2136
        mov rsi, r8
        mov qword ptr [rsp + 40], rdx
        mov rdi, rcx
                // src\benches_s3.rs:33
                let now = Instant::now();
        call <std::time::Instant>::now
        mov qword ptr [rsp + 64], rax
        mov dword ptr [rsp + 72], edx
        mov qword ptr [rsp + 48], rdi
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\cmp.rs:1916
                fn lt(&self, other: &Self) -> bool { *self <  *other }
        test rdi, rdi
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\iter\range.rs:772
                if self.start < self.end {
        je .LBB163_13
        cmp qword ptr [rsp + 40], 0
        je .LBB163_13
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\alloc\src\vec\mod.rs:1025
                let len = self.len;
        mov rbp, qword ptr [rsi + 16]
        lea r14, [rsp + 88]
        lea r15, [rsp + 1112]
        lea r12, [rsp + 84]
        xor eax, eax
        jmp .LBB163_3
.LBB163_12:
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\num\uint_macros.rs:844
                intrinsics::unchecked_add(self, rhs)
        mov rax, qword ptr [rsp + 56]
        inc rax
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\cmp.rs:1916
                fn lt(&self, other: &Self) -> bool { *self <  *other }
        cmp rax, qword ptr [rsp + 48]
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\iter\range.rs:772
                if self.start < self.end {
        je .LBB163_13
.LBB163_3:
        mov r13, qword ptr [rsp + 40]
        mov rdi, rbp
        shl rdi, 10
        mov qword ptr [rsp + 56], rax
        jmp .LBB163_4
.LBB163_6:
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\alloc\src\raw_vec\mod.rs:612
                self.ptr.cast().as_non_null_ptr()
        mov rbx, qword ptr [rsi + 8]
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\ptr\mod.rs:1917
                intrinsics::write_via_move(dst, src)
        mov r8d, 1024
        xor edx, edx
        lea rcx, [rbx + rdi]
        call memset
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\alloc\src\vec\mod.rs:1034
                self.len = len + 1;
        inc rbp
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\cmp.rs:1916
                fn lt(&self, other: &Self) -> bool { *self <  *other }
        add rdi, 1024
        dec r13
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\alloc\src\vec\mod.rs:1034
                self.len = len + 1;
        mov qword ptr [rsi + 16], rbp
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\iter\range.rs:772
                if self.start < self.end {
        je .LBB163_7
.LBB163_4:
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\alloc\src\vec\mod.rs:1028
                if len == self.buf.capacity() {
        cmp rbp, qword ptr [rsi]
        jne .LBB163_6
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\alloc\src\vec\mod.rs:1029
                self.buf.grow_one();
        mov rcx, rsi
        call alloc::raw_vec::RawVec<T,A>::grow_one
        jmp .LBB163_6
.LBB163_7:
        mov rdi, qword ptr [rsp + 40]
        mov r13, rbp
        jmp .LBB163_8
.LBB163_10:
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\alloc\src\vec\mod.rs:2795
                self.len -= 1;
        dec r13
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\ptr\mod.rs:1717
                crate::intrinsics::read_via_copy(src)
        mov r8d, 1024
        mov rcx, r15
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\ptr\const_ptr.rs:863
                unsafe { intrinsics::offset(self, count) }
        mov rdx, r13
        shl rdx, 10
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\alloc\src\vec\mod.rs:2795
                self.len -= 1;
        mov qword ptr [rsi + 16], r13
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\ptr\const_ptr.rs:863
                unsafe { intrinsics::offset(self, count) }
        add rdx, rbx
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\ptr\mod.rs:1717
                crate::intrinsics::read_via_copy(src)
        call memcpy
        mov eax, 1
        mov rbp, r13
.LBB163_11:
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\hint.rs:491
                crate::intrinsics::black_box(dummy)
        mov r8d, 1024
        mov dword ptr [rsp + 84], eax
        mov rcx, r14
        mov rdx, r15
        call memcpy
        #APP
        #NO_APP
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\cmp.rs:1916
                fn lt(&self, other: &Self) -> bool { *self <  *other }
        dec rdi
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\iter\range.rs:772
                if self.start < self.end {
        je .LBB163_12
.LBB163_8:
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\alloc\src\vec\mod.rs:2791
                if self.len == 0 {
        test r13, r13
        jne .LBB163_10
        xor r13d, r13d
        xor eax, eax
        jmp .LBB163_11
.LBB163_13:
                // src\benches_s3.rs:48
                now.elapsed().as_nanos()
        lea rcx, [rsp + 64]
        call <std::time::Instant>::elapsed
        mov r8d, 1000000000
        mov ecx, edx
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\time.rs:632
                self.secs as u128 * NANOS_PER_SEC as u128 + self.nanos.as_inner() as u128
        mov rdx, rax
        mov eax, ecx
                // src\benches_s3.rs:49
                }
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\time.rs:632
                self.secs as u128 * NANOS_PER_SEC as u128 + self.nanos.as_inner() as u128
        mulx rdx, r8, r8
        add rax, r8
        adc rdx, 0
                // src\benches_s3.rs:49
                }
        add rsp, 2136
        pop rbx
        pop rbp
        pop rdi
        pop rsi
        pop r12
        pop r13
        pop r14
        pop r15
        ret