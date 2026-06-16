bench_s3_soa:
                // src\benches_s3.rs:53
                pub fn bench_s3_soa(iterations: usize, chunk_size: usize, planets: &mut PlanetsSoA, _rng: &mut StdRng) -> u128 {
        push r15
        push r14
        push r13
        push r12
        push rsi
        push rdi
        push rbp
        push rbx
        sub rsp, 2152
        mov rsi, r8
        mov qword ptr [rsp + 40], rdx
        mov rdi, rcx
                // src\benches_s3.rs:54
                let now = Instant::now();
        call <std::time::Instant>::now
        mov qword ptr [rsp + 128], rax
        mov dword ptr [rsp + 136], edx
        mov qword ptr [rsp + 56], rdi
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\cmp.rs:1916
                fn lt(&self, other: &Self) -> bool { *self <  *other }
        test rdi, rdi
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\iter\range.rs:772
                if self.start < self.end {
        je .LBB166_42
        xor eax, eax
        jmp .LBB166_3
.LBB166_2:
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\cmp.rs:1916
                fn lt(&self, other: &Self) -> bool { *self <  *other }
        mov rax, qword ptr [rsp + 64]
        inc rax
        cmp rax, qword ptr [rsp + 56]
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\iter\range.rs:772
                if self.start < self.end {
        je .LBB166_42
.LBB166_3:
        mov rcx, qword ptr [rsp + 40]
        mov qword ptr [rsp + 64], rax
        mov rdi, rcx
        test rcx, rcx
        jne .LBB166_4
        jmp .LBB166_2
.LBB166_18:
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\ptr\mut_ptr.rs:961
                unsafe { intrinsics::offset(self, count) }
        imul rcx, rbx, 1000
        add rcx, qword ptr [rsi + 152]
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\ptr\mod.rs:1917
                intrinsics::write_via_move(dst, src)
        mov r8d, 1000
        xor edx, edx
        call memset
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\alloc\src\vec\mod.rs:1034
                self.len = len + 1;
        inc rbx
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\cmp.rs:1916
                fn lt(&self, other: &Self) -> bool { *self <  *other }
        dec rdi
        lea r8, [rsp + 148]
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\alloc\src\vec\mod.rs:1034
                self.len = len + 1;
        mov qword ptr [rsi + 160], rbx
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\iter\range.rs:772
                if self.start < self.end {
        je .LBB166_19
.LBB166_4:
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\alloc\src\vec\mod.rs:1025
                let len = self.len;
        mov rbx, qword ptr [rsi + 88]
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\alloc\src\vec\mod.rs:1028
                if len == self.buf.capacity() {
        cmp rbx, qword ptr [rsi + 72]
        je .LBB166_5
.LBB166_6:
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\alloc\src\raw_vec\mod.rs:612
                self.ptr.cast().as_non_null_ptr()
        mov rax, qword ptr [rsi + 80]
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\ptr\mod.rs:1917
                intrinsics::write_via_move(dst, src)
        mov dword ptr [rax + 4*rbx], 0
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\alloc\src\vec\mod.rs:1034
                self.len = len + 1;
        inc rbx
        mov qword ptr [rsi + 88], rbx
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\alloc\src\vec\mod.rs:1025
                let len = self.len;
        mov rbx, qword ptr [rsi + 112]
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\alloc\src\vec\mod.rs:1028
                if len == self.buf.capacity() {
        cmp rbx, qword ptr [rsi + 96]
        je .LBB166_7
.LBB166_8:
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\alloc\src\raw_vec\mod.rs:612
                self.ptr.cast().as_non_null_ptr()
        mov rax, qword ptr [rsi + 104]
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\ptr\mod.rs:1917
                intrinsics::write_via_move(dst, src)
        mov dword ptr [rax + 4*rbx], 0
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\alloc\src\vec\mod.rs:1034
                self.len = len + 1;
        inc rbx
        mov qword ptr [rsi + 112], rbx
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\alloc\src\vec\mod.rs:1025
                let len = self.len;
        mov rbx, qword ptr [rsi + 136]
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\alloc\src\vec\mod.rs:1028
                if len == self.buf.capacity() {
        cmp rbx, qword ptr [rsi + 120]
        je .LBB166_9
.LBB166_10:
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\alloc\src\raw_vec\mod.rs:612
                self.ptr.cast().as_non_null_ptr()
        mov rax, qword ptr [rsi + 128]
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\ptr\mod.rs:1917
                intrinsics::write_via_move(dst, src)
        mov dword ptr [rax + 4*rbx], 0
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\alloc\src\vec\mod.rs:1034
                self.len = len + 1;
        inc rbx
        mov qword ptr [rsi + 136], rbx
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\alloc\src\vec\mod.rs:1025
                let len = self.len;
        mov rbx, qword ptr [rsi + 16]
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\alloc\src\vec\mod.rs:1028
                if len == self.buf.capacity() {
        cmp rbx, qword ptr [rsi]
        je .LBB166_11
.LBB166_12:
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\alloc\src\raw_vec\mod.rs:612
                self.ptr.cast().as_non_null_ptr()
        mov rax, qword ptr [rsi + 8]
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\ptr\mod.rs:1917
                intrinsics::write_via_move(dst, src)
        mov dword ptr [rax + 4*rbx], 0
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\alloc\src\vec\mod.rs:1034
                self.len = len + 1;
        inc rbx
        mov qword ptr [rsi + 16], rbx
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\alloc\src\vec\mod.rs:1025
                let len = self.len;
        mov rbx, qword ptr [rsi + 40]
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\alloc\src\vec\mod.rs:1028
                if len == self.buf.capacity() {
        cmp rbx, qword ptr [rsi + 24]
        je .LBB166_13
.LBB166_14:
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\alloc\src\raw_vec\mod.rs:612
                self.ptr.cast().as_non_null_ptr()
        mov rax, qword ptr [rsi + 32]
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\ptr\mod.rs:1917
                intrinsics::write_via_move(dst, src)
        mov dword ptr [rax + 4*rbx], 0
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\alloc\src\vec\mod.rs:1034
                self.len = len + 1;
        inc rbx
        mov qword ptr [rsi + 40], rbx
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\alloc\src\vec\mod.rs:1025
                let len = self.len;
        mov rbx, qword ptr [rsi + 64]
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\alloc\src\vec\mod.rs:1028
                if len == self.buf.capacity() {
        cmp rbx, qword ptr [rsi + 48]
        je .LBB166_15
.LBB166_16:
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\alloc\src\raw_vec\mod.rs:612
                self.ptr.cast().as_non_null_ptr()
        mov rax, qword ptr [rsi + 56]
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\ptr\mod.rs:1917
                intrinsics::write_via_move(dst, src)
        mov dword ptr [rax + 4*rbx], 0
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\alloc\src\vec\mod.rs:1034
                self.len = len + 1;
        inc rbx
        mov qword ptr [rsi + 64], rbx
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\alloc\src\vec\mod.rs:1025
                let len = self.len;
        mov rbx, qword ptr [rsi + 160]
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\alloc\src\vec\mod.rs:1028
                if len == self.buf.capacity() {
        cmp rbx, qword ptr [rsi + 144]
        jne .LBB166_18
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\alloc\src\vec\mod.rs:1029
                self.buf.grow_one();
        lea rcx, [rsi + 144]
        call alloc::raw_vec::RawVec<T,A>::grow_one
        jmp .LBB166_18
.LBB166_5:
        lea rcx, [rsi + 72]
        call alloc::raw_vec::RawVec<T,A>::grow_one
        jmp .LBB166_6
.LBB166_7:
        lea rcx, [rsi + 96]
        call alloc::raw_vec::RawVec<T,A>::grow_one
        jmp .LBB166_8
.LBB166_9:
        lea rcx, [rsi + 120]
        call alloc::raw_vec::RawVec<T,A>::grow_one
        jmp .LBB166_10
.LBB166_11:
        mov rcx, rsi
        call alloc::raw_vec::RawVec<T,A>::grow_one
        jmp .LBB166_12
.LBB166_13:
        lea rcx, [rsi + 24]
        call alloc::raw_vec::RawVec<T,A>::grow_one
        jmp .LBB166_14
.LBB166_15:
        lea rcx, [rsi + 48]
        call alloc::raw_vec::RawVec<T,A>::grow_one
        jmp .LBB166_16
.LBB166_19:
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\alloc\src\vec\mod.rs:2791
                if self.len == 0 {
        mov rdx, qword ptr [rsi + 104]
        mov rcx, qword ptr [rsi + 128]
        mov rax, qword ptr [rsi + 80]
        mov r9, qword ptr [rsi + 88]
        mov r10, qword ptr [rsi + 16]
        mov r11, qword ptr [rsi + 112]
        mov r15, qword ptr [rsi + 136]
        mov rbx, qword ptr [rsi + 40]
        mov r14, qword ptr [rsi + 64]
        mov r12, qword ptr [rsi + 160]
        mov rbp, qword ptr [rsp + 40]
        mov qword ptr [rsp + 112], rdx
        mov qword ptr [rsp + 104], rcx
        mov rdx, qword ptr [rsi + 8]
        mov rcx, qword ptr [rsi + 32]
        mov qword ptr [rsp + 120], rax
        mov qword ptr [rsp + 96], rdx
        mov qword ptr [rsp + 88], rcx
        mov rdx, qword ptr [rsi + 56]
        mov rcx, qword ptr [rsi + 152]
        mov qword ptr [rsp + 80], rdx
        mov qword ptr [rsp + 72], rcx
        jmp .LBB166_20
.LBB166_40:
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\alloc\src\vec\mod.rs:2795
                self.len -= 1;
        dec r12
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\ptr\mod.rs:1717
                crate::intrinsics::read_via_copy(src)
        mov r8d, 1000
        mov rcx, r9
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\ptr\const_ptr.rs:863
                unsafe { intrinsics::offset(self, count) }
        imul rdx, r12, 1000
        add rdx, qword ptr [rsp + 72]
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\alloc\src\vec\mod.rs:2795
                self.len -= 1;
        mov qword ptr [rsi + 160], r12
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\ptr\mod.rs:1717
                crate::intrinsics::read_via_copy(src)
        call memcpy
        lea r9, [rsp + 1152]
        mov al, 1
.LBB166_41:
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\hint.rs:491
                crate::intrinsics::black_box(dummy)
        mov r8d, 1000
        lea rcx, [rsp + 149]
        mov rdx, r9
        mov byte ptr [rsp + 148], al
        call memcpy
        lea r8, [rsp + 148]
        #APP
        #NO_APP
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\cmp.rs:1916
                fn lt(&self, other: &Self) -> bool { *self <  *other }
        dec rbp
        mov r10, r15
        mov r11, r13
        mov r15, rdi
        mov r9, qword ptr [rsp + 48]
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\iter\range.rs:772
                if self.start < self.end {
        je .LBB166_2
.LBB166_20:
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\alloc\src\vec\mod.rs:2791
                if self.len == 0 {
        xor eax, eax
        test r9, r9
        je .LBB166_21
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\alloc\src\vec\mod.rs:2795
                self.len -= 1;
        mov rcx, qword ptr [rsp + 120]
        lea rdx, [r9 - 1]
        mov qword ptr [rsi + 88], rdx
        mov qword ptr [rsp + 48], rdx
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\ptr\mod.rs:1717
                crate::intrinsics::read_via_copy(src)
        vmovss xmm0, dword ptr [rcx + 4*r9 - 4]
        mov ecx, 1
        jmp .LBB166_23
.LBB166_21:
        mov qword ptr [rsp + 48], 0
        xor ecx, ecx
.LBB166_23:
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\hint.rs:491
                crate::intrinsics::black_box(dummy)
        mov dword ptr [rsp + 148], ecx
        vmovss dword ptr [rsp + 152], xmm0
        lea r9, [rsp + 1152]
        #APP
        #NO_APP
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\alloc\src\vec\mod.rs:2791
                if self.len == 0 {
        test r11, r11
        je .LBB166_24
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\alloc\src\vec\mod.rs:2795
                self.len -= 1;
        mov rax, qword ptr [rsp + 112]
        lea rcx, [r11 - 1]
        mov qword ptr [rsi + 112], rcx
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\ptr\mod.rs:1717
                crate::intrinsics::read_via_copy(src)
        vmovss xmm0, dword ptr [rax + 4*r11 - 4]
        mov eax, 1
        mov r11, rcx
        jmp .LBB166_26
.LBB166_24:
.LBB166_26:
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\hint.rs:491
                crate::intrinsics::black_box(dummy)
        mov dword ptr [rsp + 148], eax
        vmovss dword ptr [rsp + 152], xmm0
        xor eax, eax
        #APP
        #NO_APP
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\alloc\src\vec\mod.rs:2791
                if self.len == 0 {
        test r15, r15
        je .LBB166_27
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\alloc\src\vec\mod.rs:2795
                self.len -= 1;
        mov rcx, qword ptr [rsp + 104]
        lea rdx, [r15 - 1]
        mov qword ptr [rsi + 136], rdx
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\ptr\mod.rs:1717
                crate::intrinsics::read_via_copy(src)
        vmovss xmm0, dword ptr [rcx + 4*r15 - 4]
        mov ecx, 1
        mov r15, rdx
        jmp .LBB166_29
.LBB166_27:
        xor ecx, ecx
.LBB166_29:
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\hint.rs:491
                crate::intrinsics::black_box(dummy)
        mov dword ptr [rsp + 148], ecx
        vmovss dword ptr [rsp + 152], xmm0
        #APP
        #NO_APP
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\alloc\src\vec\mod.rs:2791
                if self.len == 0 {
        test r10, r10
        je .LBB166_30
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\alloc\src\vec\mod.rs:2795
                self.len -= 1;
        mov rax, qword ptr [rsp + 96]
        lea rcx, [r10 - 1]
        mov qword ptr [rsi + 16], rcx
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\ptr\mod.rs:1717
                crate::intrinsics::read_via_copy(src)
        vmovss xmm0, dword ptr [rax + 4*r10 - 4]
        mov eax, 1
        mov r10, rcx
        jmp .LBB166_32
.LBB166_30:
.LBB166_32:
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\hint.rs:491
                crate::intrinsics::black_box(dummy)
        mov dword ptr [rsp + 148], eax
        vmovss dword ptr [rsp + 152], xmm0
        xor eax, eax
        #APP
        #NO_APP
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\alloc\src\vec\mod.rs:2791
                if self.len == 0 {
        test rbx, rbx
        je .LBB166_33
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\alloc\src\vec\mod.rs:2795
                self.len -= 1;
        mov rcx, qword ptr [rsp + 88]
        lea rdx, [rbx - 1]
        mov qword ptr [rsi + 40], rdx
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\ptr\mod.rs:1717
                crate::intrinsics::read_via_copy(src)
        vmovss xmm0, dword ptr [rcx + 4*rbx - 4]
        mov ecx, 1
        mov rbx, rdx
        jmp .LBB166_35
.LBB166_33:
        xor ecx, ecx
.LBB166_35:
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\hint.rs:491
                crate::intrinsics::black_box(dummy)
        mov dword ptr [rsp + 148], ecx
        vmovss dword ptr [rsp + 152], xmm0
        mov rdi, r15
        #APP
        #NO_APP
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\alloc\src\vec\mod.rs:2791
                if self.len == 0 {
        test r14, r14
        je .LBB166_36
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\alloc\src\vec\mod.rs:2795
                self.len -= 1;
        mov rax, qword ptr [rsp + 80]
        lea rcx, [r14 - 1]
        mov qword ptr [rsi + 64], rcx
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\ptr\mod.rs:1717
                crate::intrinsics::read_via_copy(src)
        vmovss xmm0, dword ptr [rax + 4*r14 - 4]
        mov eax, 1
        mov r14, rcx
        jmp .LBB166_38
.LBB166_36:
.LBB166_38:
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\hint.rs:491
                crate::intrinsics::black_box(dummy)
        mov dword ptr [rsp + 148], eax
        vmovss dword ptr [rsp + 152], xmm0
        mov r13, r11
        mov r15, r10
        #APP
        #NO_APP
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\alloc\src\vec\mod.rs:2791
                if self.len == 0 {
        test r12, r12
        jne .LBB166_40
        xor eax, eax
        jmp .LBB166_41
.LBB166_42:
                // src\benches_s3.rs:87
                now.elapsed().as_nanos()
        lea rcx, [rsp + 128]
        call <std::time::Instant>::elapsed
        mov r8d, 1000000000
        mov ecx, edx
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\time.rs:632
                self.secs as u128 * NANOS_PER_SEC as u128 + self.nanos.as_inner() as u128
        mov rdx, rax
        mov eax, ecx
                // src\benches_s3.rs:88
                }
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\time.rs:632
                self.secs as u128 * NANOS_PER_SEC as u128 + self.nanos.as_inner() as u128
        mulx rdx, r8, r8
        add rax, r8
        adc rdx, 0
                // src\benches_s3.rs:88
                }
        add rsp, 2152
        pop rbx
        pop rbp
        pop rdi
        pop rsi
        pop r12
        pop r13
        pop r14
        pop r15
        ret