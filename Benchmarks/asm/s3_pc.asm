bench_s3_pc:
                // src\benches_s3.rs:11
                pub fn bench_s3_pc(iterations: usize, chunk_size: usize, planets: &mut Vec<Box<PlanetAoS>>, _rng: &mut StdRng) -> u128 {
        push rbp
        push r15
        push r14
        push r13
        push r12
        push rsi
        push rdi
        push rbx
        sub rsp, 88
        lea rbp, [rsp + 80]
        mov qword ptr [rbp], -2
        mov rsi, r8
        mov rdi, rdx
        mov rbx, rcx
                // src\benches_s3.rs:12
                let now = Instant::now();
        call <std::time::Instant>::now
        mov qword ptr [rbp - 40], rax
        mov dword ptr [rbp - 32], edx
        mov qword ptr [rbp - 24], rbx
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\cmp.rs:1916
                fn lt(&self, other: &Self) -> bool { *self <  *other }
        test rbx, rbx
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\iter\range.rs:772
                if self.start < self.end {
        je .LBB165_15
        xor r14d, r14d
        lea r15, [rbp - 16]
        jmp .LBB165_3
.LBB165_2:
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\cmp.rs:1916
                fn lt(&self, other: &Self) -> bool { *self <  *other }
        inc r14
        cmp r14, qword ptr [rbp - 24]
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\iter\range.rs:772
                if self.start < self.end {
        je .LBB165_15
.LBB165_3:
        mov r12, rdi
        test rdi, rdi
        jne .LBB165_4
        jmp .LBB165_2
.LBB165_7:
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\alloc\src\raw_vec\mod.rs:612
                self.ptr.cast().as_non_null_ptr()
        mov rax, qword ptr [rsi + 8]
        mov rcx, qword ptr [rbp - 8]
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\ptr\mod.rs:1917
                intrinsics::write_via_move(dst, src)
        mov qword ptr [rax + 8*rbx], rcx
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\alloc\src\vec\mod.rs:1034
                self.len = len + 1;
        inc rbx
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\cmp.rs:1916
                fn lt(&self, other: &Self) -> bool { *self <  *other }
        dec r12
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\alloc\src\vec\mod.rs:1034
                self.len = len + 1;
        mov qword ptr [rsi + 16], rbx
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\iter\range.rs:772
                if self.start < self.end {
        je .LBB165_8
.LBB165_4:
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\alloc\src\alloc.rs:93
                __rust_no_alloc_shim_is_unstable_v2();
        call __rustc::__rust_no_alloc_shim_is_unstable_v2
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\alloc\src\alloc.rs:95
                __rust_alloc(layout.size(), layout.alignment())
        mov ecx, 1024
        mov edx, 4
        call __rustc::__rust_alloc_zeroed
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\alloc\src\boxed.rs:248
                match Global.allocate(layout) {
        test rax, rax
        je .LBB165_16
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\alloc\src\vec\mod.rs:1025
                let len = self.len;
        mov rbx, qword ptr [rsi + 16]
        mov qword ptr [rbp - 8], rax
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\alloc\src\vec\mod.rs:1028
                if len == self.buf.capacity() {
        cmp rbx, qword ptr [rsi]
        jne .LBB165_7
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\alloc\src\vec\mod.rs:1029
                self.buf.grow_one();
        mov rcx, rsi
        call alloc::raw_vec::RawVec<T,A>::grow_one
        nop
        jmp .LBB165_7
.LBB165_8:
        mov r12, qword ptr [rsi + 8]
        mov rbx, qword ptr [rsi + 16]
        mov r13, rdi
        jmp .LBB165_9
.LBB165_14:
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\cmp.rs:1916
                fn lt(&self, other: &Self) -> bool { *self <  *other }
        dec r13
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\iter\range.rs:772
                if self.start < self.end {
        je .LBB165_2
.LBB165_9:
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\alloc\src\vec\mod.rs:2791
                if self.len == 0 {
        test rbx, rbx
        je .LBB165_10
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\alloc\src\vec\mod.rs:2795
                self.len -= 1;
        lea rcx, [rbx - 1]
        mov qword ptr [rsi + 16], rcx
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\ptr\mod.rs:1717
                crate::intrinsics::read_via_copy(src)
        mov rax, qword ptr [r12 + 8*rbx - 8]
        mov rbx, rcx
        jmp .LBB165_12
.LBB165_10:
        xor ebx, ebx
        xor eax, eax
.LBB165_12:
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\hint.rs:491
                crate::intrinsics::black_box(dummy)
        mov qword ptr [rbp - 16], rax
        #APP
        #NO_APP
                // src\benches_s3.rs:24
                black_box(planets.pop());
        mov rcx, qword ptr [rbp - 16]
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\ptr\mod.rs:805
                pub const unsafe fn drop_in_place<T: PointeeSized>(to_drop: *mut T)
        test rcx, rcx
        je .LBB165_14
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\alloc\src\alloc.rs:115
                unsafe { __rust_dealloc(ptr, layout.size(), layout.alignment()) }
        mov edx, 1024
        mov r8d, 4
        call __rustc::__rust_dealloc
        jmp .LBB165_14
.LBB165_15:
                // src\benches_s3.rs:27
                now.elapsed().as_nanos()
        lea rcx, [rbp - 40]
        call <std::time::Instant>::elapsed
        mov r8d, 1000000000
        mov ecx, edx
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\time.rs:632
                self.secs as u128 * NANOS_PER_SEC as u128 + self.nanos.as_inner() as u128
        mov rdx, rax
        mov eax, ecx
                // src\benches_s3.rs:28
                }
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\time.rs:632
                self.secs as u128 * NANOS_PER_SEC as u128 + self.nanos.as_inner() as u128
        mulx rdx, r8, r8
        add rax, r8
        adc rdx, 0
                // src\benches_s3.rs:28
                }
        add rsp, 88
        pop rbx
        pop rdi
        pop rsi
        pop r12
        pop r13
        pop r14
        pop r15
        pop rbp
        ret
.LBB165_16:
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\alloc\src\boxed.rs:250
                Err(_) => handle_alloc_error(layout),
        mov ecx, 4
        mov edx, 1024
        call alloc::alloc::handle_alloc_error
        int3
        mov qword ptr [rsp + 16], rdx
        push rbp
        push r15
        push r14
        push r13
        push r12
        push rsi
        push rdi
        push rbx
        sub rsp, 40
        lea rbp, [rdx + 80]
        mov rcx, qword ptr [rbp - 8]
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\alloc\src\alloc.rs:115
                unsafe { __rust_dealloc(ptr, layout.size(), layout.alignment()) }
        mov edx, 1024
        mov r8d, 4
        call __rustc::__rust_dealloc
        nop
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\alloc\src\vec\mod.rs:1023
                pub fn push_mut(&mut self, value: T) -> &mut T {
        add rsp, 40
        pop rbx
        pop rdi
        pop rsi
        pop r12
        pop r13
        pop r14
        pop r15
        pop rbp
        ret