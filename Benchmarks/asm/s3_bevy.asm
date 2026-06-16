bench_s3_bevy:
                // src\benches_s3.rs:91
                pub fn bench_s3_bevy(
        push rbp
        push r15
        push r14
        push r13
        push r12
        push rsi
        push rdi
        push rbx
        sub rsp, 1560
        lea rbp, [rsp + 128]
        vmovaps xmmword ptr [rbp + 1408], xmm9
        vmovdqa xmmword ptr [rbp + 1392], xmm8
        vmovdqa xmmword ptr [rbp + 1376], xmm7
        vmovdqa xmmword ptr [rbp + 1360], xmm6
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\num\uint_macros.rs:3051
                let (a, b) = intrinsics::mul_with_overflow(self as $ActualT, rhs as $ActualT);
        lea rdi, [8*rdx]
        mov rax, rdx
        shr rax, 61
        mov qword ptr [rbp + 1080], rcx
        movabs rcx, 9223372036854775800
        mov qword ptr [rbp + 1352], -2
        mov qword ptr [rbp + 1168], rdx
        setne al
        cmp rdi, rcx
        seta cl
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\intrinsics\mod.rs:457
                if b {
        or cl, al
        je .LBB164_3
        xor ebx, ebx
.LBB164_2:
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\alloc\src\raw_vec\mod.rs:441
                Err(err) => handle_error(err),
        mov rcx, rbx
        mov rdx, rdi
        call alloc::raw_vec::handle_error
.LBB164_3:
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\alloc\src\raw_vec\mod.rs:459
                if layout.size() == 0 {
        mov rsi, r8
        test rdi, rdi
        je .LBB164_4
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\alloc\src\alloc.rs:93
                __rust_no_alloc_shim_is_unstable_v2();
        call __rustc::__rust_no_alloc_shim_is_unstable_v2
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\alloc\src\alloc.rs:95
                __rust_alloc(layout.size(), layout.alignment())
        mov edx, 8
        mov rcx, rdi
        mov ebx, 8
        call __rustc::__rust_alloc
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\alloc\src\raw_vec\mod.rs:468
                let ptr = match result {
        test rax, rax
        je .LBB164_2
        mov rcx, qword ptr [rbp + 1168]
        jmp .LBB164_7
.LBB164_4:
        mov eax, 8
        xor ecx, ecx
.LBB164_7:
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\alloc\src\vec\mod.rs:965
                Vec { buf: RawVec::with_capacity_in(capacity, alloc), len: 0 }
        mov qword ptr [rbp + 1224], rcx
        mov qword ptr [rbp + 1232], rax
        mov qword ptr [rbp + 1240], 0
                // src\benches_s3.rs:98
                let now = Instant::now();
        call <std::time::Instant>::now
        nop
        mov qword ptr [rbp + 1008], rax
        lea rax, [rsi + 816]
        vpbroadcastb xmm6, byte ptr [rip + .LCPI164_2]
        vmovdqa xmm8, xmmword ptr [rip + __xmm@7e5987830ed9093ff1fe4bd41aee031a]
        vpcmpeqd xmm7, xmm7, xmm7
        mov dword ptr [rbp + 1016], edx
        mov qword ptr [rbp + 1056], rsi
        mov qword ptr [rbp + 1032], rax
        lea rax, [rsi + 24]
        mov qword ptr [rbp + 1144], rax
        lea rax, [rsi + 1376]
        mov qword ptr [rbp + 1040], rax
        lea rax, [rsi + 480]
        mov qword ptr [rbp + 1064], rax
        lea rax, [rsi + 280]
        mov qword ptr [rbp + 1160], rax
        lea rax, [rsi + 504]
        mov qword ptr [rbp + 1152], rax
        lea rax, [rsi + 192]
        mov qword ptr [rbp + 1048], rax
        lea rax, [rsi + 832]
        mov qword ptr [rbp + 1176], rax
        xor eax, eax
        jmp .LBB164_9
.LBB164_21:
        mov rax, qword ptr [rbp + 1072]
.LBB164_9:
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\cmp.rs:1916
                fn lt(&self, other: &Self) -> bool { *self <  *other }
        cmp rax, qword ptr [rbp + 1080]
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\iter\range.rs:772
                if self.start < self.end {
        jae .LBB164_10
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\num\uint_macros.rs:844
                intrinsics::unchecked_add(self, rhs)
        inc rax
        mov qword ptr [rbp + 1072], rax
        xor eax, eax
        jmp .LBB164_18
.LBB164_95:
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\alloc\src\raw_vec\mod.rs:612
                self.ptr.cast().as_non_null_ptr()
        mov rcx, qword ptr [rbp + 1024]
        mov rax, qword ptr [rbp + 1232]
        mov rdx, qword ptr [rbp + 1344]
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\ptr\mod.rs:1917
                intrinsics::write_via_move(dst, src)
        mov qword ptr [rax + 8*rdi], rdx
        inc rcx
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\alloc\src\vec\mod.rs:1034
                self.len = len + 1;
        inc rdi
        mov qword ptr [rbp + 1240], rdi
        mov rax, rcx
.LBB164_18:
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\cmp.rs:1916
                fn lt(&self, other: &Self) -> bool { *self <  *other }
        cmp rax, qword ptr [rbp + 1168]
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\iter\range.rs:772
                if self.start < self.end {
        jae .LBB164_19
                // src\benches_s3.rs:104
                Payload([0u8; PAYLOAD_SIZE]),
        mov r8d, 1000
        lea rcx, [rbp - 32]
        xor edx, edx
        mov qword ptr [rbp + 1024], rax
        call memset
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\mem\maybe_uninit.rs:397
                MaybeUninit { value: ManuallyDrop::new(val) }
        vpxor xmm0, xmm0, xmm0
        vmovdqu ymmword ptr [rbp - 64], ymm0
                // bevy-contiguous\crates\bevy_ecs\src\world\mod.rs:1277
                let entity = self.entity_allocator.alloc();
        mov rcx, qword ptr [rbp + 1032]
        vzeroupper
        call bevy_ecs::entity::EntityAllocator::alloc
        mov qword ptr [rbp + 1344], rax
                // bevy-contiguous\crates\bevy_ecs\src\world\mod.rs:3096
                let tick = *self.change_tick.get_mut();
        mov eax, dword ptr [rsi + 1408]
        mov rdx, qword ptr [rbp + 1144]
        mov rcx, qword ptr [rbp + 1040]
                // %userprofile%\.cargo\registry\src\index.crates.io-1949cf8c6b5b557f\hashbrown-0.17.0\src\raw.rs:2452
                pos: h1(hash) & self.bucket_mask,
        mov r8, qword ptr [rsi + 536]
        mov r9, qword ptr [rsi + 528]
        movabs r11, 9104457118665738559
        xor r10d, r10d
                // bevy-contiguous\crates\bevy_ecs\src\component\register.rs:87
                Self {
        mov qword ptr [rbp + 1208], rdx
        mov dword ptr [rbp + 1340], eax
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\alloc\src\raw_vec\mod.rs:612
                self.ptr.cast().as_non_null_ptr()
        mov rax, qword ptr [rsi + 512]
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\alloc\src\vec\mod.rs:1815
                &*core::intrinsics::aggregate_raw_ptr::<*const [T], _, _>(self.as_ptr(), self.len)
        mov rdx, qword ptr [rsi + 520]
                // bevy-contiguous\crates\bevy_ecs\src\component\register.rs:87
                Self {
        mov qword ptr [rbp + 1216], rcx
        mov qword ptr [rbp + 1184], 0
        mov qword ptr [rbp + 1192], 8
        mov qword ptr [rbp + 1200], 0
.LBB164_24:
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\ptr\mod.rs:547
                unsafe { crate::intrinsics::copy_nonoverlapping(src, dst, count) }
        and r11, r8
        vmovdqu xmm0, xmmword ptr [r9 + r11]
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\stdarch\crates\core_arch\src\x86\sse2.rs:1563
                simd_bitmask::<_, u16>(m) as u32 as i32
        vpcmpeqb xmm1, xmm0, xmm6
        vpmovmskb edi, xmm1
                // %userprofile%\.cargo\registry\src\index.crates.io-1949cf8c6b5b557f\hashbrown-0.17.0\src\control\bitmask.rs:40
                if let Some(nonzero) = NonZeroBitMaskWord::new(self.0) {
        test edi, edi
        je .LBB164_38
.LBB164_25:
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\num\nonzero.rs:641
                intrinsics::cttz_nonzero(self.get() as $Uint)
        tzcnt ecx, edi
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\ptr\mut_ptr.rs:1072
                unsafe { intrinsics::offset(self, intrinsics::unchecked_sub(0, count as isize)) }
        mov rbx, r9
                // %userprofile%\.cargo\registry\src\index.crates.io-1949cf8c6b5b557f\hashbrown-0.17.0\src\raw.rs:2032
                let index = (probe_seq.pos + bit) & self.bucket_mask;
        add rcx, r11
        and rcx, r8
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\ptr\mut_ptr.rs:1072
                unsafe { intrinsics::offset(self, intrinsics::unchecked_sub(0, count as isize)) }
        shl rcx, 3
        sub rbx, rcx
                // %userprofile%\.cargo\registry\src\index.crates.io-1949cf8c6b5b557f\hashbrown-0.17.0\src\raw.rs:1202
                .find_inner(hash, &mut |index| eq(self.bucket(index).as_ref()));
        mov rcx, qword ptr [rbx - 8]
                // %userprofile%\.cargo\registry\src\index.crates.io-1949cf8c6b5b557f\indexmap-2.14.0\src\inner.rs:46
                move |&i| Q::equivalent(key, &entries[i].key)
        cmp rcx, rdx
        jae .LBB164_26
        shl rcx, 5
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\any.rs:764
                crate::mem::transmute::<_, u128>(*this) == crate::mem::transmute::<_, u128>(*other)
        vpxor xmm1, xmm8, xmmword ptr [rax + rcx]
        vptest xmm1, xmm1
                // %userprofile%\.cargo\registry\src\index.crates.io-1949cf8c6b5b557f\hashbrown-0.17.0\src\util.rs:13
                if b {
        je .LBB164_29
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\num\nonzero.rs:499
                unsafe { intrinsics::transmute_unchecked(self) }
        lea ecx, [rdi - 1]
                // %userprofile%\.cargo\registry\src\index.crates.io-1949cf8c6b5b557f\hashbrown-0.17.0\src\control\bitmask.rs:40
                if let Some(nonzero) = NonZeroBitMaskWord::new(self.0) {
        and cx, di
        mov edi, ecx
        jne .LBB164_25
.LBB164_38:
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\stdarch\crates\core_arch\src\x86\sse2.rs:1563
                simd_bitmask::<_, u16>(m) as u32 as i32
        vpcmpeqb xmm0, xmm0, xmm7
        vpmovmskb ecx, xmm0
                // %userprofile%\.cargo\registry\src\index.crates.io-1949cf8c6b5b557f\hashbrown-0.17.0\src\util.rs:13
                if b {
        test ecx, ecx
        jne .LBB164_40
                // %userprofile%\.cargo\registry\src\index.crates.io-1949cf8c6b5b557f\hashbrown-0.17.0\src\raw.rs:90
                self.pos += self.stride;
        lea r11, [r11 + r10 + 16]
                // %userprofile%\.cargo\registry\src\index.crates.io-1949cf8c6b5b557f\hashbrown-0.17.0\src\raw.rs:89
                self.stride += Group::WIDTH;
        add r10, 16
                // %userprofile%\.cargo\registry\src\index.crates.io-1949cf8c6b5b557f\hashbrown-0.17.0\src\raw.rs:2012
                loop {
        jmp .LBB164_24
.LBB164_29:
                // bevy-contiguous\crates\bevy_ecs\src\bundle\info.rs:434
                *self.bundle_ids.entry(TypeId::of::<T>()).or_insert_with(|| {
        add rax, rcx
        mov rdi, qword ptr [rax + 24]
        jmp .LBB164_30
.LBB164_40:
                // bevy-contiguous\crates\bevy_ecs\src\component\register.rs:170
                self.register_component_checked(
        vmovdqu xmm0, xmmword ptr [rip + anon.491b95c9d59a03c1f0171d1fbdeb444b.160]
        mov rax, qword ptr [rbp + 1152]
                // %userprofile%\.cargo\registry\src\index.crates.io-1949cf8c6b5b557f\indexmap-2.14.0\src\inner\entry.rs:19
                Err(_) => Entry::Vacant(VacantEntry { map, hash, key }),
        mov qword ptr [rbp + 1088], rax
        movabs rax, 9104457118665738559
        mov qword ptr [rbp + 1096], rax
        mov qword ptr [rbp + 1112], rax
        movabs rax, -1009285892127456486
        mov qword ptr [rbp + 1104], rax
                // bevy-contiguous\crates\bevy_ecs\src\component\register.rs:170
                self.register_component_checked(
        vmovdqa xmmword ptr [rbp + 1248], xmm0
        lea rax, [rip + bevy_ecs::lifecycle::ComponentHooks::update_from_component]
        lea r15, [rbp + 1248]
        lea rcx, [rbp + 1184]
        lea r8, [rip + bevy_ecs::component::info::ComponentDescriptor::new]
        lea r9, [rip + <Benchmarks::setup::Payload as bevy_ecs::component::Component>::register_required_components]
        mov rdx, r15
        mov qword ptr [rsp + 32], rax
        call bevy_ecs::component::register::ComponentsRegistrator::register_component_checked
        nop
        vmovdqu xmm0, xmmword ptr [rip + anon.491b95c9d59a03c1f0171d1fbdeb444b.158]
                // bevy-contiguous\crates\bevy_ecs\src\bundle\impls.rs:77
                iter::empty()$(.chain(<$name as Bundle>::component_ids(components)))*
        mov rdi, rax
                // bevy-contiguous\crates\bevy_ecs\src\component\register.rs:170
                self.register_component_checked(
        vmovdqa xmmword ptr [rbp + 1248], xmm0
        lea rax, [rip + bevy_ecs::lifecycle::ComponentHooks::update_from_component]
        lea rcx, [rbp + 1184]
        lea r8, [rip + bevy_ecs::component::info::ComponentDescriptor::new]
        lea r9, [rip + <Benchmarks::setup::Payload as bevy_ecs::component::Component>::register_required_components]
        mov rdx, r15
        mov qword ptr [rsp + 32], rax
        call bevy_ecs::component::register::ComponentsRegistrator::register_component_checked
        nop
        vmovdqu xmm0, xmmword ptr [rip + anon.491b95c9d59a03c1f0171d1fbdeb444b.165]
                // bevy-contiguous\crates\bevy_ecs\src\bundle\impls.rs:77
                iter::empty()$(.chain(<$name as Bundle>::component_ids(components)))*
        mov rbx, rax
                // bevy-contiguous\crates\bevy_ecs\src\component\register.rs:170
                self.register_component_checked(
        vmovdqa xmmword ptr [rbp + 1248], xmm0
        lea rax, [rip + bevy_ecs::lifecycle::ComponentHooks::update_from_component]
        lea rcx, [rbp + 1184]
        lea r8, [rip + bevy_ecs::component::info::ComponentDescriptor::new]
        lea r9, [rip + <Benchmarks::setup::Payload as bevy_ecs::component::Component>::register_required_components]
        mov rdx, r15
        mov qword ptr [rsp + 32], rax
        call bevy_ecs::component::register::ComponentsRegistrator::register_component_checked
        nop
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\iter\adapters\chain.rs:37
                Chain { a: Some(a), b: Some(b) }
        mov qword ptr [rbp + 1264], 1
        mov qword ptr [rbp + 1272], rbx
        mov qword ptr [rbp + 1280], 1
        mov qword ptr [rbp + 1288], rdi
        mov byte ptr [rbp + 1296], 1
        mov qword ptr [rbp + 1248], 1
        mov qword ptr [rbp + 1256], rax
                // bevy-contiguous\crates\bevy_ecs\src\bundle\info.rs:435
                let component_ids = T::component_ids(components).collect::<Vec<_>>();
        lea rcx, [rbp + 984]
        mov rdx, r15
        call core::iter::traits::iterator::Iterator::collect
        nop
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\alloc\src\vec\mod.rs:2997
                let len = self.len;
        mov rdi, qword ptr [rsi + 496]
                // bevy-contiguous\crates\bevy_ecs\src\component\register.rs:75
                self.components
        mov rax, qword ptr [rbp + 1208]
                // bevy-contiguous\crates\bevy_ecs\src\bundle\info.rs:442
                unsafe { BundleInfo::new(core::any::type_name::<T>(), storages, components, component_ids, id) };
        mov r9, qword ptr [rbp + 1160]
        lea rcx, [rbp + 984]
        mov r8d, 86
        lea rdx, [rip + anon.491b95c9d59a03c1f0171d1fbdeb444b.164]
        mov qword ptr [rsp + 48], rdi
        mov qword ptr [rsp + 32], rax
        mov qword ptr [rsp + 40], rcx
        mov rcx, r15
        call bevy_ecs::bundle::info::BundleInfo::new
        nop
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\alloc\src\vec\mod.rs:1025
                let len = self.len;
        mov rbx, qword ptr [rsi + 496]
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\alloc\src\vec\mod.rs:1028
                if len == self.buf.capacity() {
        cmp rbx, qword ptr [rsi + 480]
        jne .LBB164_47
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\alloc\src\vec\mod.rs:1029
                self.buf.grow_one();
        mov rcx, qword ptr [rbp + 1064]
        call alloc::raw_vec::RawVec<T,A>::grow_one
        nop
.LBB164_47:
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\alloc\src\raw_vec\mod.rs:612
                self.ptr.cast().as_non_null_ptr()
        mov rax, qword ptr [rsi + 488]
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\ptr\mod.rs:1917
                intrinsics::write_via_move(dst, src)
        mov rdx, qword ptr [rbp + 1280]
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\ptr\mut_ptr.rs:961
                unsafe { intrinsics::offset(self, count) }
        lea rcx, [rbx + 4*rbx]
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\alloc\src\vec\mod.rs:1034
                self.len = len + 1;
        inc rbx
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\ptr\mod.rs:1917
                intrinsics::write_via_move(dst, src)
        mov qword ptr [rax + 8*rcx + 32], rdx
        vmovdqu ymm0, ymmword ptr [rbp + 1248]
        vmovdqu ymmword ptr [rax + 8*rcx], ymm0
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\alloc\src\vec\mod.rs:1034
                self.len = len + 1;
        mov qword ptr [rsi + 496], rbx
                // %userprofile%\.cargo\registry\src\index.crates.io-1949cf8c6b5b557f\indexmap-2.14.0\src\inner\entry.rs:283
                map.insert_unique(hash, key, value).value_mut()
        mov rcx, qword ptr [rbp + 1152]
        movabs rdx, 9104457118665738559
        lea r8, [rbp + 1104]
        mov r9, rdi
        vzeroupper
        call indexmap::inner::Core<K,V>::insert_unique
        nop
                // bevy-contiguous\crates\bevy_ecs\src\world\mod.rs:3336
                }
        mov rdx, qword ptr [rbp + 1184]
                // bevy-contiguous\crates\bevy_ecs\src\bundle\info.rs:434
                *self.bundle_ids.entry(TypeId::of::<T>()).or_insert_with(|| {
        mov rdi, qword ptr [rax + 24]
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\alloc\src\raw_vec\mod.rs:632
                if elem_layout.size() == 0 || self.cap.as_inner() == 0 {
        test rdx, rdx
        je .LBB164_30
                // bevy-contiguous\crates\bevy_ecs\src\world\mod.rs:3336
                }
        mov rcx, qword ptr [rbp + 1192]
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\num\uint_macros.rs:1232
                intrinsics::unchecked_mul(self, rhs)
        shl rdx, 3
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\alloc\src\alloc.rs:115
                unsafe { __rust_dealloc(ptr, layout.size(), layout.alignment()) }
        mov r8d, 8
        call __rustc::__rust_dealloc
.LBB164_30:
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\slice\index.rs:253
                slice_get_unchecked(slice, self)
        lea rcx, [rdi + 4*rdi]
        shl rcx, 3
        add rcx, qword ptr [rsi + 488]
                // bevy-contiguous\crates\bevy_ecs\src\bundle\spawner.rs:46
                let (new_archetype_id, is_new_created) = bundle_info.insert_bundle_into_archetype(
        mov rax, qword ptr [rbp + 1176]
        mov rdx, qword ptr [rbp + 1048]
        mov r8, qword ptr [rbp + 1160]
        mov r9, qword ptr [rbp + 1144]
        mov dword ptr [rsp + 40], 0
        mov qword ptr [rbp + 1312], rcx
        mov qword ptr [rsp + 32], rax
        call bevy_ecs::bundle::insert::<impl bevy_ecs::bundle::info::BundleInfo>::insert_bundle_into_archetype
        nop
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\alloc\src\vec\mod.rs:1851
                &mut *core::intrinsics::aggregate_raw_ptr::<*mut [T], _, _>(self.as_mut_ptr(), self.len)
        mov r9, qword ptr [rsi + 208]
                // bevy-contiguous\crates\bevy_ecs\src\archetype.rs:114
                self.0 as usize
        mov ecx, eax
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\slice\index.rs:278
                &mut (*slice)[self]
        cmp r9, rcx
        jbe .LBB164_53
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\alloc\src\raw_vec\mod.rs:612
                self.ptr.cast().as_non_null_ptr()
        mov r8, qword ptr [rsi + 200]
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\slice\index.rs:278
                &mut (*slice)[self]
        lea r15, [rcx + 4*rcx]
        mov r14d, eax
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\alloc\src\vec\mod.rs:1851
                &mut *core::intrinsics::aggregate_raw_ptr::<*mut [T], _, _>(self.as_mut_ptr(), self.len)
        mov rax, qword ptr [rsi + 368]
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\slice\index.rs:278
                &mut (*slice)[self]
        shl r15, 5
                // bevy-contiguous\crates\bevy_ecs\src\archetype.rs:470
                self.table_id
        mov ecx, dword ptr [r8 + r15 + 148]
        mov r12, r8
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\slice\index.rs:278
                &mut (*slice)[self]
        cmp rax, rcx
        jbe .LBB164_54
        lea rdi, [rcx + 8*rcx]
        shl rdi, 3
        add rdi, qword ptr [rsi + 360]
                // bevy-contiguous\crates\bevy_ecs\src\bundle\spawner.rs:63
                if is_new_created {
        test dl, 1
        je .LBB164_58
                // bevy-contiguous\crates\bevy_ecs\src\world\command_queue.rs:60
                #[derive(Clone)]
        mov r13, qword ptr [rsi + 1344]
                // bevy-contiguous\crates\bevy_ecs\src\system\commands\mod.rs:708
                match &mut self.queue {
        test r13, r13
        je .LBB164_55
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\alloc\src\raw_vec\mod.rs:617
                if elem_size == 0 { usize::MAX } else { self.cap.as_inner() }
        mov rax, qword ptr [r13]
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\alloc\src\vec\mod.rs:2997
                let len = self.len;
        mov rbx, qword ptr [r13 + 16]
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\num\uint_macros.rs:2494
                intrinsics::wrapping_sub(self, rhs)
        sub rax, rbx
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\alloc\src\raw_vec\mod.rs:765
                additional > self.capacity(elem_layout.size()).wrapping_sub(len)
        cmp rax, 11
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\alloc\src\raw_vec\mod.rs:671
                if self.needs_to_grow(len, additional, elem_layout) {
        ja .LBB164_57
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\alloc\src\raw_vec\mod.rs:673
                do_reserve_and_handle(self, len, additional, elem_layout);
        mov r8d, 12
        mov r9d, 1
        mov qword ptr [rsp + 32], 1
        mov rcx, r13
        mov rdx, rbx
        call alloc::raw_vec::RawVecInner<A>::reserve::do_reserve_and_handle
        nop
        jmp .LBB164_57
.LBB164_55:
                // bevy-contiguous\crates\bevy_ecs\src\world\deferred_world.rs:815
                self.commands().trigger(event);
        mov r13, qword ptr [rsi + 1352]
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\alloc\src\raw_vec\mod.rs:617
                if elem_size == 0 { usize::MAX } else { self.cap.as_inner() }
        mov rax, qword ptr [r13]
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\alloc\src\vec\mod.rs:2997
                let len = self.len;
        mov rbx, qword ptr [r13 + 16]
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\num\uint_macros.rs:2494
                intrinsics::wrapping_sub(self, rhs)
        sub rax, rbx
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\alloc\src\raw_vec\mod.rs:765
                additional > self.capacity(elem_layout.size()).wrapping_sub(len)
        cmp rax, 11
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\alloc\src\raw_vec\mod.rs:671
                if self.needs_to_grow(len, additional, elem_layout) {
        jbe .LBB164_56
.LBB164_57:
        mov rax, qword ptr [r13 + 8]
        lea rcx, [rip + core::ops::function::FnOnce::call_once]
        mov qword ptr [rax + rbx], rcx
        mov dword ptr [rax + rbx + 8], r14d
        add rbx, 12
        mov qword ptr [r13 + 16], rbx
.LBB164_58:
                // bevy-contiguous\crates\bevy_ecs\src\bundle\spawner.rs:108
                let table_row = table.allocate(entity);
        mov rdx, qword ptr [rbp + 1344]
        mov rcx, rdi
        call bevy_ecs::storage::table::Table::allocate
        nop
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\alloc\src\vec\mod.rs:2997
                let len = self.len;
        add r12, r15
        mov r13d, eax
        mov rax, qword ptr [r12 + 88]
        mov qword ptr [rbp + 1328], r12
        mov qword ptr [rbp + 1136], rax
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\alloc\src\vec\mod.rs:1028
                if len == self.buf.capacity() {
        cmp rax, qword ptr [r12 + 72]
        jne .LBB164_61
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\alloc\src\vec\mod.rs:1029
                self.buf.grow_one();
        mov rax, qword ptr [rbp + 1328]
        lea rcx, [rax + 72]
        call alloc::raw_vec::RawVec<T,A>::grow_one
        nop
.LBB164_61:
                // %userprofile%\.cargo\registry\src\index.crates.io-1949cf8c6b5b557f\nonmax-0.5.5\src\lib.rs:154
                self.0.get() ^ $primitive::MAX
        mov r8, qword ptr [rbp + 1328]
        mov r9, qword ptr [rbp + 1136]
        mov rdx, qword ptr [rbp + 1344]
        mov r14d, r13d
        not r14d
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\alloc\src\raw_vec\mod.rs:612
                self.ptr.cast().as_non_null_ptr()
        mov rax, qword ptr [r8 + 80]
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\ptr\mut_ptr.rs:961
                unsafe { intrinsics::offset(self, count) }
        mov rcx, r9
        shl rcx, 4
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\ptr\mod.rs:1917
                intrinsics::write_via_move(dst, src)
        mov qword ptr [rax + rcx], rdx
        mov dword ptr [rax + rcx + 8], r13d
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\alloc\src\vec\mod.rs:1034
                self.len = len + 1;
        lea rax, [r9 + 1]
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\ptr\mod.rs:638
                crate::intrinsics::copy(src, dst, count)
        lea rdx, [rbp - 64]
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\alloc\src\vec\mod.rs:1034
                self.len = len + 1;
        mov qword ptr [r8 + 88], rax
        mov rax, qword ptr [rbp + 1312]
                // bevy-contiguous\crates\bevy_ecs\src\storage\sparse_set.rs:588
                unsafe { dense.get_unchecked_mut(dense_index.get()) }
        mov r12, qword ptr [rdi + 24]
                // bevy-contiguous\crates\bevy_ecs\src\archetype.rs:605
                archetype_id: self.id,
        vmovsd xmm9, qword ptr [r8 + 144]
                // bevy-contiguous\crates\bevy_ecs\src\bundle\spawner.rs:110
                bundle_info.write_components(
        mov rcx, qword ptr [rax]
                // bevy-contiguous\crates\bevy_ecs\src\bundle\spawner.rs:114
                bundle_info.required_component_constructors.iter(),
        mov rbx, qword ptr [rax + 16]
        mov r15, qword ptr [rax + 24]
        mov qword ptr [rbp + 1120], rcx
                // bevy-contiguous\crates\bevy_ecs\src\bundle\info.rs:256
                let component_id = *self
        mov rax, qword ptr [rcx]
                // bevy-contiguous\crates\bevy_ecs\src\storage\sparse_set.rs:586
                self.sparse.get(index).map(move |dense_index| {
        mov rcx, qword ptr [rdi + 56]
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\option.rs:745
                match *self {
        mov rax, qword ptr [rcx + 8*rax]
        mov qword ptr [rbp + 1128], rcx
                // %userprofile%\.cargo\registry\src\index.crates.io-1949cf8c6b5b557f\nonmax-0.5.5\src\lib.rs:154
                self.0.get() ^ $primitive::MAX
        not rax
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\slice\index.rs:266
                unsafe { slice_get_unchecked(slice, self) }
        lea rsi, [rax + 2*rax]
        shl rsi, 4
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\alloc\layout.rs:176
                self.size
        mov r8, qword ptr [r12 + rsi + 8]
                // bevy-contiguous\crates\bevy_ecs\src\storage\blob_array.rs:140
                unsafe { self.get_ptr_mut().byte_add(index * size) }
        mov rcx, r8
        imul rcx, r14
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\ptr\mut_ptr.rs:961
                unsafe { intrinsics::offset(self, count) }
        add rcx, qword ptr [r12 + rsi + 16]
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\ptr\mod.rs:638
                crate::intrinsics::copy(src, dst, count)
        call memcpy
                // bevy-contiguous\crates\bevy_ecs\src\storage\thin_array_ptr.rs:160
                let ptr = unsafe { self.data.as_ptr().add(index) };
        mov rax, qword ptr [r12 + rsi + 32]
        mov ecx, dword ptr [rbp + 1340]
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\ptr\mod.rs:638
                crate::intrinsics::copy(src, dst, count)
        lea rdx, [rbp - 48]
                // bevy-contiguous\crates\bevy_ecs\src\storage\table\column.rs:181
                *self.added_ticks.get_unchecked_mut(row.index()).get_mut() = tick;
        mov dword ptr [rax + 4*r14], ecx
                // bevy-contiguous\crates\bevy_ecs\src\storage\thin_array_ptr.rs:160
                let ptr = unsafe { self.data.as_ptr().add(index) };
        mov rax, qword ptr [r12 + rsi + 40]
                // bevy-contiguous\crates\bevy_ecs\src\storage\table\column.rs:182
                *self.changed_ticks.get_unchecked_mut(row.index()).get_mut() = tick;
        mov dword ptr [rax + 4*r14], ecx
        mov rax, qword ptr [rbp + 1120]
        mov rcx, qword ptr [rbp + 1128]
                // bevy-contiguous\crates\bevy_ecs\src\bundle\info.rs:256
                let component_id = *self
        mov rax, qword ptr [rax + 8]
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\option.rs:745
                match *self {
        mov rax, qword ptr [rcx + 8*rax]
                // %userprofile%\.cargo\registry\src\index.crates.io-1949cf8c6b5b557f\nonmax-0.5.5\src\lib.rs:154
                self.0.get() ^ $primitive::MAX
        not rax
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\slice\index.rs:266
                unsafe { slice_get_unchecked(slice, self) }
        lea rsi, [rax + 2*rax]
        shl rsi, 4
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\alloc\layout.rs:176
                self.size
        mov r8, qword ptr [r12 + rsi + 8]
                // bevy-contiguous\crates\bevy_ecs\src\storage\blob_array.rs:140
                unsafe { self.get_ptr_mut().byte_add(index * size) }
        mov rcx, r8
        imul rcx, r14
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\ptr\mut_ptr.rs:961
                unsafe { intrinsics::offset(self, count) }
        add rcx, qword ptr [r12 + rsi + 16]
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\ptr\mod.rs:638
                crate::intrinsics::copy(src, dst, count)
        call memcpy
                // bevy-contiguous\crates\bevy_ecs\src\storage\thin_array_ptr.rs:160
                let ptr = unsafe { self.data.as_ptr().add(index) };
        mov rax, qword ptr [r12 + rsi + 32]
        mov ecx, dword ptr [rbp + 1340]
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\ptr\mod.rs:638
                crate::intrinsics::copy(src, dst, count)
        lea rdx, [rbp - 32]
                // bevy-contiguous\crates\bevy_ecs\src\storage\table\column.rs:181
                *self.added_ticks.get_unchecked_mut(row.index()).get_mut() = tick;
        mov dword ptr [rax + 4*r14], ecx
                // bevy-contiguous\crates\bevy_ecs\src\storage\thin_array_ptr.rs:160
                let ptr = unsafe { self.data.as_ptr().add(index) };
        mov rax, qword ptr [r12 + rsi + 40]
                // bevy-contiguous\crates\bevy_ecs\src\storage\table\column.rs:182
                *self.changed_ticks.get_unchecked_mut(row.index()).get_mut() = tick;
        mov dword ptr [rax + 4*r14], ecx
        mov rax, qword ptr [rbp + 1120]
        mov rcx, qword ptr [rbp + 1128]
                // bevy-contiguous\crates\bevy_ecs\src\bundle\info.rs:256
                let component_id = *self
        mov rax, qword ptr [rax + 16]
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\option.rs:745
                match *self {
        mov rax, qword ptr [rcx + 8*rax]
                // %userprofile%\.cargo\registry\src\index.crates.io-1949cf8c6b5b557f\nonmax-0.5.5\src\lib.rs:154
                self.0.get() ^ $primitive::MAX
        not rax
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\slice\index.rs:266
                unsafe { slice_get_unchecked(slice, self) }
        lea rsi, [rax + 2*rax]
        shl rsi, 4
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\alloc\layout.rs:176
                self.size
        mov r8, qword ptr [r12 + rsi + 8]
                // bevy-contiguous\crates\bevy_ecs\src\storage\blob_array.rs:140
                unsafe { self.get_ptr_mut().byte_add(index * size) }
        mov rcx, r8
        imul rcx, r14
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\ptr\mut_ptr.rs:961
                unsafe { intrinsics::offset(self, count) }
        add rcx, qword ptr [r12 + rsi + 16]
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\ptr\mod.rs:638
                crate::intrinsics::copy(src, dst, count)
        call memcpy
                // bevy-contiguous\crates\bevy_ecs\src\storage\thin_array_ptr.rs:160
                let ptr = unsafe { self.data.as_ptr().add(index) };
        mov rax, qword ptr [r12 + rsi + 32]
        mov ecx, dword ptr [rbp + 1340]
                // bevy-contiguous\crates\bevy_ecs\src\storage\table\column.rs:181
                *self.added_ticks.get_unchecked_mut(row.index()).get_mut() = tick;
        mov dword ptr [rax + 4*r14], ecx
                // bevy-contiguous\crates\bevy_ecs\src\storage\thin_array_ptr.rs:160
                let ptr = unsafe { self.data.as_ptr().add(index) };
        mov rax, qword ptr [r12 + rsi + 40]
        mov rsi, qword ptr [rbp + 1056]
                // bevy-contiguous\crates\bevy_ecs\src\storage\table\column.rs:182
                *self.changed_ticks.get_unchecked_mut(row.index()).get_mut() = tick;
        mov dword ptr [rax + 4*r14], ecx
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\ptr\non_null.rs:1720
                self.as_ptr() == other.as_ptr()
        test r15, r15
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\slice\iter\macros.rs:180
                if ptr == crate::intrinsics::transmute::<$ptr, NonNull<T>>(end_or_len) {
        je .LBB164_65
        shl r15, 4
        add r15, rbx
.LBB164_63:
                // bevy-contiguous\crates\bevy_ecs\src\bundle\info.rs:302
                required_component.initialize(
        mov rax, qword ptr [rbp + 1344]
        mov r8, qword ptr [rbp + 1160]
        mov r9d, dword ptr [rbp + 1340]
        mov dword ptr [rsp + 32], r13d
        mov rcx, rbx
        mov rdx, rdi
        mov qword ptr [rsp + 40], rax
        call bevy_ecs::component::required::RequiredComponentConstructor::initialize
        nop
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\ptr\non_null.rs:659
                unsafe { transmute(intrinsics::offset(self.as_ptr(), count)) }
        add rbx, 16
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\ptr\non_null.rs:1720
                self.as_ptr() == other.as_ptr()
        cmp rbx, r15
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\slice\iter\macros.rs:180
                if ptr == crate::intrinsics::transmute::<$ptr, NonNull<T>>(end_or_len) {
        jne .LBB164_63
.LBB164_65:
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\num\nonzero.rs:499
                unsafe { intrinsics::transmute_unchecked(self) }
        mov eax, dword ptr [rbp + 1344]
                // bevy-contiguous\crates\bevy_ecs\src\entity\mod.rs:977
                let index = index.index() as usize;
        mov ecx, 4294967295
        mov rdi, rax
        xor rdi, rcx
                // bevy-contiguous\crates\bevy_ecs\src\entity\mod.rs:978
                if self.meta.len() <= index {
        cmp qword ptr [rsi + 16], rdi
        jbe .LBB164_66
.LBB164_67:
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\alloc\src\raw_vec\mod.rs:612
                self.ptr.cast().as_non_null_ptr()
        mov rdx, qword ptr [rbp + 1136]
        mov rax, qword ptr [rsi + 8]
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\slice\index.rs:266
                unsafe { slice_get_unchecked(slice, self) }
        shl rdi, 3
        lea rcx, [rdi + 2*rdi]
        not edx
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\mem\mod.rs:902
                crate::intrinsics::write_via_move(dest, src);
        mov dword ptr [rax + rcx], edx
        mov dword ptr [rax + rcx + 4], r13d
        vmovlps qword ptr [rax + rcx + 8], xmm9
        mov edx, dword ptr [rbp + 1340]
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\alloc\src\raw_vec\mod.rs:612
                self.ptr.cast().as_non_null_ptr()
        mov rax, qword ptr [rsi + 8]
                // bevy-contiguous\crates\bevy_ecs\src\entity\mod.rs:1017
                meta.spawned_or_despawned = SpawnedOrDespawned { by, tick };
        mov dword ptr [rax + rcx + 20], edx
        mov rax, qword ptr [rbp + 1328]
        mov rcx, qword ptr [rbp + 1312]
                // bevy-contiguous\crates\bevy_ecs\src\bundle\info.rs:189
                &self.contributed_component_ids
        mov rdi, qword ptr [rcx]
        mov rcx, qword ptr [rcx + 8]
                // bevy-contiguous\crates\bevy_ecs\src\bundle\spawner.rs:134
                deferred_world.trigger_on_add(
        mov eax, dword ptr [rax + 152]
        test rcx, rcx
                // bevy-contiguous\crates\bevy_ecs\src\world\deferred_world.rs:631
                if archetype.has_add_hook() {
        je .LBB164_74
        mov edx, eax
        and edx, 1
        je .LBB164_74
        lea rbx, [rdi + 8*rcx]
        jmp .LBB164_70
.LBB164_72:
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\ptr\non_null.rs:1720
                self.as_ptr() == other.as_ptr()
        add rdi, 8
        cmp rdi, rbx
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\slice\iter\macros.rs:180
                if ptr == crate::intrinsics::transmute::<$ptr, NonNull<T>>(end_or_len) {
        je .LBB164_73
.LBB164_70:
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\option.rs:2126
                Some(&v) => Some(v),
        mov rcx, qword ptr [rdi]
                // bevy-contiguous\crates\bevy_ecs\src\world\deferred_world.rs:634
                let hooks = unsafe { self.components().get_info_unchecked(component_id) }.hooks();
        mov rax, qword ptr [rsi + 32]
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\slice\index.rs:221
                unsafe { Some(slice_get_unchecked(slice, self)) }
        imul rdx, rcx, 312
                // bevy-contiguous\crates\bevy_ecs\src\world\deferred_world.rs:635
                if let Some(hook) = hooks.on_add {
        mov rax, qword ptr [rax + rdx + 272]
        test rax, rax
        je .LBB164_72
                // bevy-contiguous\crates\bevy_ecs\src\world\deferred_world.rs:638
                HookContext {
        mov rdx, qword ptr [rbp + 1344]
        mov qword ptr [rbp + 1248], rdx
        mov qword ptr [rbp + 1256], rcx
        mov byte ptr [rbp + 1264], 0
                // bevy-contiguous\crates\bevy_ecs\src\world\deferred_world.rs:636
                hook(
        lea rdx, [rbp + 1248]
        mov rcx, rsi
        call rax
        nop
        jmp .LBB164_72
.LBB164_73:
                // bevy-contiguous\crates\bevy_ecs\src\bundle\info.rs:189
                &self.contributed_component_ids
        mov rax, qword ptr [rbp + 1328]
        mov rcx, qword ptr [rbp + 1312]
        mov rdi, qword ptr [rcx]
                // bevy-contiguous\crates\bevy_ecs\src\archetype.rs:462
                self.flags
        mov eax, dword ptr [rax + 152]
                // bevy-contiguous\crates\bevy_ecs\src\bundle\info.rs:189
                &self.contributed_component_ids
        mov rcx, qword ptr [rcx + 8]
.LBB164_74:
                // bevy-contiguous\crates\bevy_ecs\src\bundle\spawner.rs:140
                if archetype.has_add_observer() {
        test al, 32
        je .LBB164_79
                // bevy-contiguous\crates\bevy_ecs\src\bundle\spawner.rs:145
                &mut EntityComponentsTrigger {
        mov rax, qword ptr [rbp + 1344]
        mov r8, qword ptr [rbp + 1328]
        mov qword ptr [rbp + 1248], rdi
        mov qword ptr [rbp + 1256], rcx
        mov qword ptr [rbp + 1264], 0
                // bevy-contiguous\crates\bevy_ecs\src\bundle\spawner.rs:144
                &mut Add { entity },
        mov qword ptr [rbp + 1088], rax
                // bevy-contiguous\crates\bevy_ecs\src\bundle\spawner.rs:145
                &mut EntityComponentsTrigger {
        mov qword ptr [rbp + 1272], r8
                // bevy-contiguous\crates\bevy_ecs\src\world\deferred_world.rs:792
                let Some(observers) = observers.try_get_observers(event_key) else {
        mov rcx, qword ptr [rbp + 1176]
        xor edx, edx
        call bevy_ecs::observer::centralized_storage::Observers::try_get_observers
        nop
        test rax, rax
        je .LBB164_78
                // bevy-contiguous\crates\bevy_ecs\src\world\deferred_world.rs:798
                let context = TriggerContext { event_key, caller };
        mov qword ptr [rbp + 1184], 0
                // bevy-contiguous\crates\bevy_ecs\src\event\trigger.rs:443
                self.trigger_internal(world, observers, event.into(), entity, trigger_context);
        mov rdx, qword ptr [rbp + 1344]
        lea rcx, [rbp + 1184]
        lea r9, [rbp + 1088]
        mov r8, rax
        mov qword ptr [rsp + 40], rcx
        lea rcx, [rbp + 1248]
        mov qword ptr [rsp + 32], rdx
        mov rdx, rsi
        call bevy_ecs::event::trigger::EntityComponentsTrigger::trigger_internal
        nop
.LBB164_78:
                // bevy-contiguous\crates\bevy_ecs\src\bundle\info.rs:189
                &self.contributed_component_ids
        mov rax, qword ptr [rbp + 1312]
        mov rdi, qword ptr [rax]
        mov rcx, qword ptr [rax + 8]
        mov rax, qword ptr [rbp + 1328]
                // bevy-contiguous\crates\bevy_ecs\src\bundle\spawner.rs:153
                deferred_world.trigger_on_insert(
        mov eax, dword ptr [rax + 152]
.LBB164_79:
                // bevy-contiguous\crates\bevy_ecs\src\world\deferred_world.rs:663
                if archetype.has_insert_hook() {
        test rcx, rcx
        je .LBB164_86
        mov edx, eax
        and edx, 2
        je .LBB164_86
        lea rbx, [rdi + 8*rcx]
        jmp .LBB164_82
.LBB164_84:
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\ptr\non_null.rs:1720
                self.as_ptr() == other.as_ptr()
        add rdi, 8
        cmp rdi, rbx
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\slice\iter\macros.rs:180
                if ptr == crate::intrinsics::transmute::<$ptr, NonNull<T>>(end_or_len) {
        je .LBB164_85
.LBB164_82:
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\option.rs:2126
                Some(&v) => Some(v),
        mov rcx, qword ptr [rdi]
                // bevy-contiguous\crates\bevy_ecs\src\world\deferred_world.rs:666
                let hooks = unsafe { self.components().get_info_unchecked(component_id) }.hooks();
        mov rax, qword ptr [rsi + 32]
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\slice\index.rs:221
                unsafe { Some(slice_get_unchecked(slice, self)) }
        imul rdx, rcx, 312
                // bevy-contiguous\crates\bevy_ecs\src\world\deferred_world.rs:667
                if let Some(hook) = hooks.on_insert {
        mov rax, qword ptr [rax + rdx + 280]
        test rax, rax
        je .LBB164_84
                // bevy-contiguous\crates\bevy_ecs\src\world\deferred_world.rs:670
                HookContext {
        mov rdx, qword ptr [rbp + 1344]
        mov qword ptr [rbp + 1248], rdx
        mov qword ptr [rbp + 1256], rcx
        mov byte ptr [rbp + 1264], 0
                // bevy-contiguous\crates\bevy_ecs\src\world\deferred_world.rs:668
                hook(
        lea rdx, [rbp + 1248]
        mov rcx, rsi
        call rax
        nop
        jmp .LBB164_84
.LBB164_85:
                // bevy-contiguous\crates\bevy_ecs\src\archetype.rs:462
                self.flags
        mov rax, qword ptr [rbp + 1328]
        mov eax, dword ptr [rax + 152]
.LBB164_86:
                // bevy-contiguous\crates\bevy_ecs\src\bundle\spawner.rs:160
                if archetype.has_insert_observer() {
        test al, 64
        je .LBB164_90
                // bevy-contiguous\crates\bevy_ecs\src\bundle\spawner.rs:164
                &mut Insert { entity },
        mov rax, qword ptr [rbp + 1344]
        mov r8, qword ptr [rbp + 1312]
        mov qword ptr [rbp + 1088], rax
        mov rax, qword ptr [rbp + 1328]
                // bevy-contiguous\crates\bevy_ecs\src\bundle\info.rs:189
                &self.contributed_component_ids
        vmovdqu xmm0, xmmword ptr [r8]
                // bevy-contiguous\crates\bevy_ecs\src\bundle\spawner.rs:165
                &mut EntityComponentsTrigger {
        vmovdqu xmmword ptr [rbp + 1248], xmm0
        mov qword ptr [rbp + 1264], 0
        mov qword ptr [rbp + 1272], rax
                // bevy-contiguous\crates\bevy_ecs\src\world\deferred_world.rs:792
                let Some(observers) = observers.try_get_observers(event_key) else {
        mov rcx, qword ptr [rbp + 1176]
        mov edx, 1
        call bevy_ecs::observer::centralized_storage::Observers::try_get_observers
        nop
        test rax, rax
        je .LBB164_90
                // bevy-contiguous\crates\bevy_ecs\src\world\deferred_world.rs:798
                let context = TriggerContext { event_key, caller };
        mov qword ptr [rbp + 1184], 1
                // bevy-contiguous\crates\bevy_ecs\src\event\trigger.rs:443
                self.trigger_internal(world, observers, event.into(), entity, trigger_context);
        mov rdx, qword ptr [rbp + 1344]
        lea rcx, [rbp + 1184]
        lea r9, [rbp + 1088]
        mov r8, rax
        mov qword ptr [rsp + 40], rcx
        lea rcx, [rbp + 1248]
        mov qword ptr [rsp + 32], rdx
        mov rdx, rsi
        call bevy_ecs::event::trigger::EntityComponentsTrigger::trigger_internal
        nop
.LBB164_90:
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\ptr\non_null.rs:444
                unsafe { &*self.as_ptr().cast_const() }
        mov rcx, qword ptr [rsi + 1352]
        mov rax, qword ptr [rsi + 1344]
                // bevy-contiguous\crates\bevy_ecs\src\world\command_queue.rs:154
                (unsafe { *self.cursor.as_ref() }) >= (unsafe { self.bytes.as_ref() }).len()
        mov rcx, qword ptr [rcx]
        cmp rcx, qword ptr [rax + 16]
                // bevy-contiguous\crates\bevy_ecs\src\world\mod.rs:1145
                if !unsafe { self.command_queue.is_empty() } {
        jae .LBB164_93
                // bevy-contiguous\crates\bevy_ecs\src\world\mod.rs:3062
                self.flush_components();
        mov rcx, rsi
        call bevy_ecs::world::World::flush_components
        nop
                // bevy-contiguous\crates\bevy_ecs\src\world\mod.rs:3063
                self.flush_commands();
        mov rcx, rsi
        call bevy_ecs::world::World::flush_commands
        nop
.LBB164_93:
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\alloc\src\vec\mod.rs:1025
                let len = self.len;
        mov rdi, qword ptr [rbp + 1240]
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\alloc\src\vec\mod.rs:1028
                if len == self.buf.capacity() {
        cmp rdi, qword ptr [rbp + 1224]
        jne .LBB164_95
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\alloc\src\vec\mod.rs:1029
                self.buf.grow_one();
        lea rcx, [rbp + 1224]
        call alloc::raw_vec::RawVec<T,A>::grow_one
        nop
        jmp .LBB164_95
.LBB164_66:
                // bevy-contiguous\crates\bevy_ecs\src\entity\mod.rs:980
                expand(&mut self.meta, index + 1);
        movabs rdx, 4294967296
        sub rdx, rax
        mov rcx, rsi
        call bevy_ecs::entity::Entities::ensure_index_index_is_valid::expand
        nop
        jmp .LBB164_67
.LBB164_56:
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\alloc\src\raw_vec\mod.rs:673
                do_reserve_and_handle(self, len, additional, elem_layout);
        mov r8d, 12
        mov r9d, 1
        mov qword ptr [rsp + 32], 1
        mov rcx, r13
        mov rdx, rbx
        call alloc::raw_vec::RawVecInner<A>::reserve::do_reserve_and_handle
        nop
        jmp .LBB164_57
.LBB164_19:
        xor edi, edi
        jmp .LBB164_20
.LBB164_100:
                // bevy-contiguous\crates\bevy_ecs\src\entity\mod.rs:855
                meta.location
        mov r9d, dword ptr [r8]
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\option.rs:1338
                match self {
        test r9d, r9d
        je .LBB164_101
                // src\benches_s3.rs:112
                world.despawn(entities.pop().unwrap());
        or rcx, rdx
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\option.rs:1339
                Some(v) => Ok(v),
        mov edx, dword ptr [r8 + 12]
        mov rax, qword ptr [r8 + 4]
                // bevy-contiguous\crates\bevy_ecs\src\world\mod.rs:1540
                Ok(entity) => {
        mov qword ptr [rbp - 64], rsi
        mov qword ptr [rbp - 56], rcx
        mov dword ptr [rbp - 48], r9d
        mov qword ptr [rbp - 44], rax
        mov dword ptr [rbp - 36], edx
                // bevy-contiguous\crates\bevy_ecs\src\world\mod.rs:1541
                entity.despawn_with_caller(caller);
        lea rcx, [rbp - 64]
        call bevy_ecs::world::entity_access::world_mut::EntityWorldMut::despawn_with_caller
        nop
.LBB164_20:
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\cmp.rs:1916
                fn lt(&self, other: &Self) -> bool { *self <  *other }
        cmp rdi, qword ptr [rbp + 1168]
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\iter\range.rs:772
                if self.start < self.end {
        jae .LBB164_21
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\alloc\src\vec\mod.rs:2791
                if self.len == 0 {
        mov rax, qword ptr [rbp + 1240]
        test rax, rax
        je .LBB164_97
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\alloc\src\vec\mod.rs:2795
                self.len -= 1;
        lea rcx, [rax - 1]
                // bevy-contiguous\crates\bevy_ecs\src\entity\mod.rs:847
                let meta = self.meta.get(entity.index_u32() as usize);
        mov r8d, 4294967295
        inc rdi
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\alloc\src\vec\mod.rs:2795
                self.len -= 1;
        mov qword ptr [rbp + 1240], rcx
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\alloc\src\raw_vec\mod.rs:612
                self.ptr.cast().as_non_null_ptr()
        mov rcx, qword ptr [rbp + 1232]
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\ptr\mod.rs:1717
                crate::intrinsics::read_via_copy(src)
        mov edx, dword ptr [rcx + 8*rax - 8]
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\option.rs:1015
                Some(val) => val,
        mov eax, dword ptr [rcx + 8*rax - 4]
                // bevy-contiguous\crates\bevy_ecs\src\entity\mod.rs:847
                let meta = self.meta.get(entity.index_u32() as usize);
        mov r9, rdx
        xor r9, r8
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\option.rs:1015
                Some(val) => val,
        mov rcx, rax
        shl rcx, 32
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\slice\index.rs:219
                if self < slice.len() {
        lea r8, [r9 + 2*r9]
        shl r8, 3
        add r8, qword ptr [rsi + 8]
        cmp r9, qword ptr [rsi + 16]
        lea r9, [rip + anon.491b95c9d59a03c1f0171d1fbdeb444b.169]
        cmovae r8, r9
                // bevy-contiguous\crates\bevy_ecs\src\entity\mod.rs:247
                #[derive(Clone, Copy, PartialEq, Eq, Hash, Debug, Display)]
        mov r9d, dword ptr [r8 + 16]
        cmp r9d, eax
                // bevy-contiguous\crates\bevy_ecs\src\entity\mod.rs:849
                if entity.generation() != meta.generation {
        je .LBB164_100
        mov r8, rdx
        xor eax, eax
        mov edx, r9d
        jmp .LBB164_102
.LBB164_101:
        xor r8d, r8d
.LBB164_102:
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\result.rs:2175
                Err(e) => ControlFlow::Break(Err(e)),
        or rcx, r8
                // bevy-contiguous\crates\bevy_ecs\src\world\mod.rs:1510
                if let Err(error) = self.despawn_with_caller(entity, MaybeLocation::caller()) {
        mov dword ptr [rbp + 1184], r8d
                // bevy-contiguous\crates\bevy_ecs\src\world\error.rs:50
                #[derive(thiserror::Error, Debug, Clone, Copy, PartialEq, Eq)]
        mov qword ptr [rbp + 1248], rcx
        mov dword ptr [rbp + 1256], edx
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\result.rs:2189
                Err(e) => Err(From::from(e)),
        mov rcx, qword ptr [rbp + 1252]
                // bevy-contiguous\crates\bevy_ecs\src\world\mod.rs:1510
                if let Err(error) = self.despawn_with_caller(entity, MaybeLocation::caller()) {
        mov qword ptr [rbp + 1188], rcx
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\sync\atomic.rs:3890
                Relaxed => intrinsics::atomic_load::<T, { AO::Relaxed }>(dst),
        mov rcx, qword ptr [rip + __imp__ZN3log20MAX_LOG_LEVEL_FILTER17h4b65fd7054ceb191E]
                // bevy-contiguous\crates\bevy_ecs\src\world\mod.rs:1510
                if let Err(error) = self.despawn_with_caller(entity, MaybeLocation::caller()) {
        mov dword ptr [rbp + 1196], eax
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\sync\atomic.rs:3890
                Relaxed => intrinsics::atomic_load::<T, { AO::Relaxed }>(dst),
        mov rax, qword ptr [rcx]
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\cmp.rs:519
                self.as_raw() <= 0
        cmp rax, 1
                // bevy-contiguous\crates\bevy_ecs\src\world\mod.rs:1511
                warn!("{error}");
        jbe .LBB164_20
        lea rax, [rbp + 1184]
        lea rcx, [rip + <bevy_ecs::world::error::EntityDespawnError as core::fmt::Display>::fmt]
        lea r9, [rip + anon.491b95c9d59a03c1f0171d1fbdeb444b.162]
                // %userprofile%\.cargo\registry\src\index.crates.io-1949cf8c6b5b557f\log-0.4.29\src\lib.rs:841
                #[derive(Clone, Debug)]
        movabs r8, 481036337153
        mov qword ptr [rbp - 64], 0
                // bevy-contiguous\crates\bevy_ecs\src\world\mod.rs:1511
                warn!("{error}");
        mov qword ptr [rbp + 1248], rax
        mov qword ptr [rbp + 1256], rcx
                // %userprofile%\.cargo\registry\src\index.crates.io-1949cf8c6b5b557f\log-0.4.29\src\lib.rs:841
                #[derive(Clone, Debug)]
        lea rcx, [rip + anon.491b95c9d59a03c1f0171d1fbdeb444b.190]
        mov qword ptr [rbp - 56], r9
        mov qword ptr [rbp - 48], 15
        mov qword ptr [rbp - 40], 0
        mov qword ptr [rbp - 32], rcx
        mov qword ptr [rbp - 24], 17
        mov qword ptr [rbp - 16], 2
        mov qword ptr [rbp - 8], r9
        mov qword ptr [rbp], 15
        mov qword ptr [rbp + 8], r8
        lea r9, [rip + anon.491b95c9d59a03c1f0171d1fbdeb444b.161]
        lea r8, [rbp + 1248]
        mov qword ptr [rbp + 16], r9
        mov qword ptr [rbp + 24], r8
                // %userprofile%\.cargo\registry\src\index.crates.io-1949cf8c6b5b557f\log-0.4.29\src\__private_api.rs:81
                logger.log(&builder.build());
        lea rcx, [rbp + 1327]
        lea rdx, [rbp - 64]
        call <log::__private_api::GlobalLogger as log::Log>::log
        nop
        jmp .LBB164_20
.LBB164_10:
                // src\benches_s3.rs:115
                now.elapsed().as_nanos()
        lea rcx, [rbp + 1008]
        call <std::time::Instant>::elapsed
        nop
        mov esi, edx
                // src\benches_s3.rs:116
                }
        mov rdx, qword ptr [rbp + 1224]
                // src\benches_s3.rs:115
                now.elapsed().as_nanos()
        mov rdi, rax
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\alloc\src\raw_vec\mod.rs:632
                if elem_layout.size() == 0 || self.cap.as_inner() == 0 {
        test rdx, rdx
        je .LBB164_13
                // src\benches_s3.rs:116
                }
        mov rcx, qword ptr [rbp + 1232]
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\num\uint_macros.rs:1232
                intrinsics::unchecked_mul(self, rhs)
        shl rdx, 3
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\alloc\src\alloc.rs:115
                unsafe { __rust_dealloc(ptr, layout.size(), layout.alignment()) }
        mov r8d, 8
        call __rustc::__rust_dealloc
.LBB164_13:
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\time.rs:632
                self.secs as u128 * NANOS_PER_SEC as u128 + self.nanos.as_inner() as u128
        vmovaps xmm6, xmmword ptr [rbp + 1360]
        vmovaps xmm7, xmmword ptr [rbp + 1376]
        vmovaps xmm8, xmmword ptr [rbp + 1392]
        vmovaps xmm9, xmmword ptr [rbp + 1408]
        mov eax, 1000000000
        mov rdx, rdi
                // src\benches_s3.rs:116
                }
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\time.rs:632
                self.secs as u128 * NANOS_PER_SEC as u128 + self.nanos.as_inner() as u128
        mulx rdx, rcx, rax
        mov eax, esi
        add rax, rcx
        adc rdx, 0
                // src\benches_s3.rs:116
                }
        add rsp, 1560
        pop rbx
        pop rdi
        pop rsi
        pop r12
        pop r13
        pop r14
        pop r15
        pop rbp
        ret
.LBB164_97:
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\option.rs:1016
                None => unwrap_failed(),
        lea rcx, [rip + anon.491b95c9d59a03c1f0171d1fbdeb444b.191]
        call core::option::unwrap_failed
        nop
        jmp .LBB164_27
.LBB164_53:
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\slice\index.rs:278
                &mut (*slice)[self]
        lea r8, [rip + anon.491b95c9d59a03c1f0171d1fbdeb444b.167]
        mov rdx, r9
        call core::panicking::panic_bounds_check
        nop
        jmp .LBB164_27
.LBB164_54:
        lea r8, [rip + anon.491b95c9d59a03c1f0171d1fbdeb444b.168]
        mov rdx, rax
        call core::panicking::panic_bounds_check
        nop
        jmp .LBB164_27
.LBB164_26:
                // %userprofile%\.cargo\registry\src\index.crates.io-1949cf8c6b5b557f\indexmap-2.14.0\src\inner.rs:46
                move |&i| Q::equivalent(key, &entries[i].key)
        lea r8, [rip + anon.491b95c9d59a03c1f0171d1fbdeb444b.174]
        call core::panicking::panic_bounds_check
        nop
.LBB164_27:
        ud2
        mov qword ptr [rsp + 16], rdx
        push rbp
        push r15
        push r14
        push r13
        push r12
        push rsi
        push rdi
        push rbx
        sub rsp, 120
        lea rbp, [rdx + 128]
        vmovaps xmmword ptr [rsp + 48], xmm9
        vmovdqa xmmword ptr [rsp + 64], xmm8
        vmovdqa xmmword ptr [rsp + 80], xmm7
        vmovdqa xmmword ptr [rsp + 96], xmm6
                // src\benches_s3.rs:116
                }
        mov rdx, qword ptr [rbp + 1224]
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\alloc\src\raw_vec\mod.rs:632
                if elem_layout.size() == 0 || self.cap.as_inner() == 0 {
        test rdx, rdx
        je .LBB164_16
                // src\benches_s3.rs:116
                }
        mov rcx, qword ptr [rbp + 1232]
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\num\uint_macros.rs:1232
                intrinsics::unchecked_mul(self, rhs)
        shl rdx, 3
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\alloc\src\alloc.rs:115
                unsafe { __rust_dealloc(ptr, layout.size(), layout.alignment()) }
        mov r8d, 8
        call __rustc::__rust_dealloc
.LBB164_16:
                // src\benches_s3.rs:91
                pub fn bench_s3_bevy(
        vmovaps xmm6, xmmword ptr [rsp + 96]
        vmovaps xmm7, xmmword ptr [rsp + 80]
        vmovaps xmm8, xmmword ptr [rsp + 64]
        vmovaps xmm9, xmmword ptr [rsp + 48]
        add rsp, 120
        pop rbx
        pop rdi
        pop rsi
        pop r12
        pop r13
        pop r14
        pop r15
        pop rbp
        ret
        mov qword ptr [rsp + 16], rdx
        push rbp
        push r15
        push r14
        push r13
        push r12
        push rsi
        push rdi
        push rbx
        sub rsp, 120
        lea rbp, [rdx + 128]
        vmovaps xmmword ptr [rsp + 48], xmm9
        vmovdqa xmmword ptr [rsp + 64], xmm8
        vmovdqa xmmword ptr [rsp + 80], xmm7
        vmovdqa xmmword ptr [rsp + 96], xmm6
                // bevy-contiguous\crates\bevy_ecs\src\world\mod.rs:3336
                }
        mov rdx, qword ptr [rbp + 1184]
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\alloc\src\raw_vec\mod.rs:632
                if elem_layout.size() == 0 || self.cap.as_inner() == 0 {
        test rdx, rdx
        je .LBB164_52
                // bevy-contiguous\crates\bevy_ecs\src\world\mod.rs:3336
                }
        mov rcx, qword ptr [rbp + 1192]
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\core\src\num\uint_macros.rs:1232
                intrinsics::unchecked_mul(self, rhs)
        shl rdx, 3
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\alloc\src\alloc.rs:115
                unsafe { __rust_dealloc(ptr, layout.size(), layout.alignment()) }
        mov r8d, 8
        call __rustc::__rust_dealloc
.LBB164_52:
        vmovdqa xmm6, xmmword ptr [rsp + 96]
        vmovdqa xmm7, xmmword ptr [rsp + 80]
        vmovdqa xmm8, xmmword ptr [rsp + 64]
        vmovaps xmm9, xmmword ptr [rsp + 48]
        add rsp, 120
        pop rbx
        pop rdi
        pop rsi
        pop r12
        pop r13
        pop r14
        pop r15
        pop rbp
        ret
        mov qword ptr [rsp + 16], rdx
        push rbp
        push r15
        push r14
        push r13
        push r12
        push rsi
        push rdi
        push rbx
        sub rsp, 120
        lea rbp, [rdx + 128]
        vmovaps xmmword ptr [rsp + 48], xmm9
        vmovdqa xmmword ptr [rsp + 64], xmm8
        vmovdqa xmmword ptr [rsp + 80], xmm7
        vmovdqa xmmword ptr [rsp + 96], xmm6
        lea rcx, [rbp + 1248]
                // %userprofile%\.rustup\toolchains\stable-x86_64-pc-windows-msvc\lib\rustlib\src\rust\library\alloc\src\vec\mod.rs:1038
                }
        call core::ptr::drop_in_place<bevy_ecs::bundle::info::BundleInfo>
        vmovdqa xmm6, xmmword ptr [rsp + 96]
        vmovdqa xmm7, xmmword ptr [rsp + 80]
        vmovdqa xmm8, xmmword ptr [rsp + 64]
        vmovaps xmm9, xmmword ptr [rsp + 48]
        add rsp, 120
        pop rbx
        pop rdi
        pop rsi
        pop r12
        pop r13
        pop r14
        pop r15
        pop rbp
        ret