cmd_/home/foxnet/Projects/BF_driver/bf532usb_tty.mod.o := bfin-uclinux-gcc -Wp,-MD,/home/foxnet/Projects/BF_driver/.bf532usb_tty.mod.o.d  -nostdinc -isystem /home/foxnet/blackfin-sources/build/bfin-uclinux/lib/gcc/bfin-uclinux/4.3.5/include -I/home/foxnet/blackfin-sources/uclinux-dist/linux-2.6.x/arch/blackfin/include -Iinclude  -include include/generated/autoconf.h -D__KERNEL__ -I/home/foxnet/blackfin-sources/uclinux-dist/linux-2.6.x/arch/blackfin/mach-bf533/include -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs -fno-strict-aliasing -fno-common -Werror-implicit-function-declaration -Wno-format-security -fno-delete-null-pointer-checks -Os -mno-fdpic -mcpu=bf532-0.5 -Iarch/blackfin/include/ -Iarch/blackfin/mach-bf533/include -fno-stack-protector -fomit-frame-pointer -g -fno-inline-functions-called-once -Wdeclaration-after-statement -Wno-pointer-sign -fno-strict-overflow  -D"KBUILD_STR(s)=\#s" -D"KBUILD_BASENAME=KBUILD_STR(bf532usb_tty.mod)"  -D"KBUILD_MODNAME=KBUILD_STR(bf532usb_tty)"  -DMODULE -mlong-calls -c -o /home/foxnet/Projects/BF_driver/bf532usb_tty.mod.o /home/foxnet/Projects/BF_driver/bf532usb_tty.mod.c

deps_/home/foxnet/Projects/BF_driver/bf532usb_tty.mod.o := \
  /home/foxnet/Projects/BF_driver/bf532usb_tty.mod.c \
    $(wildcard include/config/module/unload.h) \
  include/linux/module.h \
    $(wildcard include/config/symbol/prefix.h) \
    $(wildcard include/config/modules.h) \
    $(wildcard include/config/modversions.h) \
    $(wildcard include/config/unused/symbols.h) \
    $(wildcard include/config/generic/bug.h) \
    $(wildcard include/config/kallsyms.h) \
    $(wildcard include/config/smp.h) \
    $(wildcard include/config/tracepoints.h) \
    $(wildcard include/config/tracing.h) \
    $(wildcard include/config/event/tracing.h) \
    $(wildcard include/config/ftrace/mcount/record.h) \
    $(wildcard include/config/constructors.h) \
    $(wildcard include/config/sysfs.h) \
  include/linux/list.h \
    $(wildcard include/config/debug/list.h) \
  include/linux/stddef.h \
  include/linux/compiler.h \
    $(wildcard include/config/trace/branch/profiling.h) \
    $(wildcard include/config/profile/all/branches.h) \
    $(wildcard include/config/enable/must/check.h) \
    $(wildcard include/config/enable/warn/deprecated.h) \
  include/linux/compiler-gcc.h \
    $(wildcard include/config/arch/supports/optimized/inlining.h) \
    $(wildcard include/config/optimize/inlining.h) \
  include/linux/compiler-gcc4.h \
  include/linux/poison.h \
    $(wildcard include/config/illegal/pointer/value.h) \
  include/linux/prefetch.h \
  include/linux/types.h \
    $(wildcard include/config/uid16.h) \
    $(wildcard include/config/lbdaf.h) \
    $(wildcard include/config/phys/addr/t/64bit.h) \
    $(wildcard include/config/64bit.h) \
  /home/foxnet/blackfin-sources/uclinux-dist/linux-2.6.x/arch/blackfin/include/asm/types.h \
  include/asm-generic/types.h \
  include/asm-generic/int-ll64.h \
  /home/foxnet/blackfin-sources/uclinux-dist/linux-2.6.x/arch/blackfin/include/asm/bitsperlong.h \
  include/asm-generic/bitsperlong.h \
  include/linux/posix_types.h \
  /home/foxnet/blackfin-sources/uclinux-dist/linux-2.6.x/arch/blackfin/include/asm/posix_types.h \
  include/asm-generic/posix_types.h \
  /home/foxnet/blackfin-sources/uclinux-dist/linux-2.6.x/arch/blackfin/include/asm/processor.h \
    $(wildcard include/config/bf/rev/0/0.h) \
    $(wildcard include/config/bf/rev/0/1.h) \
    $(wildcard include/config/bf/rev/0/2.h) \
    $(wildcard include/config/bf/rev/0/3.h) \
    $(wildcard include/config/bf/rev/0/4.h) \
    $(wildcard include/config/bf/rev/0/5.h) \
    $(wildcard include/config/bf/rev/0/6.h) \
    $(wildcard include/config/bf/rev/any.h) \
  /home/foxnet/blackfin-sources/uclinux-dist/linux-2.6.x/arch/blackfin/include/asm/ptrace.h \
  /home/foxnet/blackfin-sources/uclinux-dist/linux-2.6.x/arch/blackfin/mach-bf533/include/mach/blackfin.h \
  /home/foxnet/blackfin-sources/uclinux-dist/linux-2.6.x/arch/blackfin/mach-bf533/include/mach/bf533.h \
    $(wildcard include/config/bank/1.h) \
    $(wildcard include/config/bank/0.h) \
    $(wildcard include/config/bank/3.h) \
    $(wildcard include/config/bank/2.h) \
    $(wildcard include/config/c/amben/all.h) \
    $(wildcard include/config/c/amben.h) \
    $(wildcard include/config/c/amben/b0.h) \
    $(wildcard include/config/c/amben/b0/b1.h) \
    $(wildcard include/config/c/amben/b0/b1/b2.h) \
    $(wildcard include/config/c/amcken.h) \
    $(wildcard include/config/c/cdprio.h) \
    $(wildcard include/config/bf533.h) \
    $(wildcard include/config/bf532.h) \
    $(wildcard include/config/bf531.h) \
  /home/foxnet/blackfin-sources/uclinux-dist/linux-2.6.x/arch/blackfin/mach-bf533/include/mach/defBF532.h \
  /home/foxnet/blackfin-sources/uclinux-dist/linux-2.6.x/arch/blackfin/include/asm/def_LPBlackfin.h \
  /home/foxnet/blackfin-sources/uclinux-dist/linux-2.6.x/arch/blackfin/mach-bf533/include/mach/anomaly.h \
  /home/foxnet/blackfin-sources/uclinux-dist/linux-2.6.x/arch/blackfin/mach-bf533/include/mach/anomaly.h \
  /home/foxnet/blackfin-sources/uclinux-dist/linux-2.6.x/arch/blackfin/mach-bf533/include/mach/cdefBF532.h \
  /home/foxnet/blackfin-sources/uclinux-dist/linux-2.6.x/arch/blackfin/include/asm/cdef_LPBlackfin.h \
  /home/foxnet/blackfin-sources/uclinux-dist/linux-2.6.x/arch/blackfin/include/asm/cache.h \
    $(wildcard include/config/cacheline/aligned/l1.h) \
    $(wildcard include/config/bfin/cache/coherent.h) \
    $(wildcard include/config/bfin/extmem/icacheable.h) \
    $(wildcard include/config/bfin/l2/icacheable.h) \
    $(wildcard include/config/bfin/extmem/dcacheable.h) \
    $(wildcard include/config/bfin/l2/dcacheable.h) \
  include/linux/linkage.h \
  /home/foxnet/blackfin-sources/uclinux-dist/linux-2.6.x/arch/blackfin/include/asm/linkage.h \
  /home/foxnet/blackfin-sources/uclinux-dist/linux-2.6.x/arch/blackfin/include/asm/system.h \
  include/linux/irqflags.h \
    $(wildcard include/config/trace/irqflags.h) \
    $(wildcard include/config/irqsoff/tracer.h) \
    $(wildcard include/config/preempt/tracer.h) \
    $(wildcard include/config/trace/irqflags/support.h) \
  include/linux/typecheck.h \
  /home/foxnet/blackfin-sources/uclinux-dist/linux-2.6.x/arch/blackfin/include/asm/irqflags.h \
    $(wildcard include/config/ipipe.h) \
    $(wildcard include/config/debug/hwerr.h) \
    $(wildcard include/config/ipipe/trace/irqsoff.h) \
  /home/foxnet/blackfin-sources/uclinux-dist/linux-2.6.x/arch/blackfin/include/asm/pda.h \
    $(wildcard include/config/debug/doublefault.h) \
  /home/foxnet/blackfin-sources/uclinux-dist/linux-2.6.x/arch/blackfin/include/asm/irq.h \
    $(wildcard include/config/bfin/icache.h) \
    $(wildcard include/config/nmi/watchdog.h) \
  /home/foxnet/blackfin-sources/uclinux-dist/linux-2.6.x/arch/blackfin/mach-bf533/include/mach/irq.h \
  include/asm-generic/irq.h \
  include/asm-generic/cmpxchg-local.h \
  include/asm-generic/cmpxchg.h \
  /home/foxnet/blackfin-sources/uclinux-dist/linux-2.6.x/arch/blackfin/include/asm/l1layout.h \
  /home/foxnet/blackfin-sources/uclinux-dist/linux-2.6.x/arch/blackfin/include/asm/blackfin.h \
  /home/foxnet/blackfin-sources/uclinux-dist/linux-2.6.x/arch/blackfin/include/asm/mem_map.h \
  /home/foxnet/blackfin-sources/uclinux-dist/linux-2.6.x/arch/blackfin/mach-bf533/include/mach/mem_map.h \
    $(wildcard include/config/bfin/dcache.h) \
    $(wildcard include/config/bfin/dcache/banka.h) \
  /home/foxnet/blackfin-sources/uclinux-dist/linux-2.6.x/arch/blackfin/include/asm/bfin-global.h \
    $(wildcard include/config/dma/uncached/4m.h) \
    $(wildcard include/config/dma/uncached/2m.h) \
    $(wildcard include/config/dma/uncached/1m.h) \
    $(wildcard include/config/dma/uncached/512k.h) \
    $(wildcard include/config/dma/uncached/256k.h) \
    $(wildcard include/config/dma/uncached/128k.h) \
    $(wildcard include/config/debug/verbose.h) \
    $(wildcard include/config/hotplug/cpu.h) \
    $(wildcard include/config/cpu/voltage.h) \
  include/linux/stat.h \
  /home/foxnet/blackfin-sources/uclinux-dist/linux-2.6.x/arch/blackfin/include/asm/stat.h \
  include/linux/time.h \
    $(wildcard include/config/arch/uses/gettimeoffset.h) \
  include/linux/cache.h \
    $(wildcard include/config/arch/has/cache/line/size.h) \
  include/linux/kernel.h \
    $(wildcard include/config/preempt/voluntary.h) \
    $(wildcard include/config/debug/spinlock/sleep.h) \
    $(wildcard include/config/prove/locking.h) \
    $(wildcard include/config/printk.h) \
    $(wildcard include/config/dynamic/debug.h) \
    $(wildcard include/config/ring/buffer.h) \
    $(wildcard include/config/numa.h) \
  /home/foxnet/blackfin-sources/build/bfin-uclinux/lib/gcc/bfin-uclinux/4.3.5/include/stdarg.h \
  include/linux/bitops.h \
    $(wildcard include/config/generic/find/first/bit.h) \
    $(wildcard include/config/generic/find/last/bit.h) \
    $(wildcard include/config/generic/find/next/bit.h) \
  /home/foxnet/blackfin-sources/uclinux-dist/linux-2.6.x/arch/blackfin/include/asm/bitops.h \
  include/asm-generic/bitops/__ffs.h \
  include/asm-generic/bitops/ffz.h \
  include/asm-generic/bitops/fls.h \
  include/asm-generic/bitops/__fls.h \
  include/asm-generic/bitops/fls64.h \
  include/asm-generic/bitops/find.h \
  include/asm-generic/bitops/sched.h \
  include/asm-generic/bitops/ffs.h \
  include/asm-generic/bitops/lock.h \
  include/asm-generic/bitops/ext2-non-atomic.h \
  include/asm-generic/bitops/le.h \
  /home/foxnet/blackfin-sources/uclinux-dist/linux-2.6.x/arch/blackfin/include/asm/byteorder.h \
  include/linux/byteorder/little_endian.h \
  include/linux/swab.h \
  /home/foxnet/blackfin-sources/uclinux-dist/linux-2.6.x/arch/blackfin/include/asm/swab.h \
  include/asm-generic/swab.h \
  include/linux/byteorder/generic.h \
  include/asm-generic/bitops/ext2-atomic.h \
  include/asm-generic/bitops/minix.h \
  include/asm-generic/bitops/atomic.h \
  include/asm-generic/bitops/non-atomic.h \
  include/linux/log2.h \
    $(wildcard include/config/arch/has/ilog2/u32.h) \
    $(wildcard include/config/arch/has/ilog2/u64.h) \
  include/linux/dynamic_debug.h \
  /home/foxnet/blackfin-sources/uclinux-dist/linux-2.6.x/arch/blackfin/include/asm/bug.h \
    $(wildcard include/config/bug.h) \
    $(wildcard include/config/debug/bugverbose.h) \
  include/asm-generic/bug.h \
    $(wildcard include/config/generic/bug/relative/pointers.h) \
  include/linux/seqlock.h \
  include/linux/spinlock.h \
    $(wildcard include/config/debug/spinlock.h) \
    $(wildcard include/config/generic/lockbreak.h) \
    $(wildcard include/config/preempt.h) \
    $(wildcard include/config/debug/lock/alloc.h) \
  include/linux/preempt.h \
    $(wildcard include/config/debug/preempt.h) \
    $(wildcard include/config/preempt/notifiers.h) \
  include/linux/thread_info.h \
    $(wildcard include/config/compat.h) \
  /home/foxnet/blackfin-sources/uclinux-dist/linux-2.6.x/arch/blackfin/include/asm/thread_info.h \
  /home/foxnet/blackfin-sources/uclinux-dist/linux-2.6.x/arch/blackfin/include/asm/page.h \
  include/asm-generic/page.h \
    $(wildcard include/config/mmu.h) \
    $(wildcard include/config/kernel/ram/base/address.h) \
  /home/foxnet/blackfin-sources/uclinux-dist/linux-2.6.x/arch/blackfin/include/asm/setup.h \
  include/asm-generic/setup.h \
  include/asm-generic/memory_model.h \
    $(wildcard include/config/flatmem.h) \
    $(wildcard include/config/discontigmem.h) \
    $(wildcard include/config/sparsemem/vmemmap.h) \
    $(wildcard include/config/sparsemem.h) \
  include/asm-generic/getorder.h \
  /home/foxnet/blackfin-sources/uclinux-dist/linux-2.6.x/arch/blackfin/include/asm/entry.h \
    $(wildcard include/config/exact/hwerr.h) \
    $(wildcard include/config/debug/kernel.h) \
  include/linux/stringify.h \
  include/linux/bottom_half.h \
  include/linux/spinlock_types.h \
  include/linux/spinlock_types_up.h \
  include/linux/lockdep.h \
    $(wildcard include/config/lockdep.h) \
    $(wildcard include/config/lock/stat.h) \
    $(wildcard include/config/generic/hardirqs.h) \
    $(wildcard include/config/prove/rcu.h) \
  include/linux/rwlock_types.h \
  include/linux/spinlock_up.h \
  include/linux/rwlock.h \
  include/linux/spinlock_api_up.h \
  /home/foxnet/blackfin-sources/uclinux-dist/linux-2.6.x/arch/blackfin/include/asm/atomic.h \
  include/asm-generic/atomic.h \
  include/asm-generic/atomic-long.h \
  include/linux/math64.h \
  /home/foxnet/blackfin-sources/uclinux-dist/linux-2.6.x/arch/blackfin/include/asm/div64.h \
  include/asm-generic/div64.h \
  include/linux/kmod.h \
  include/linux/gfp.h \
    $(wildcard include/config/kmemcheck.h) \
    $(wildcard include/config/highmem.h) \
    $(wildcard include/config/zone/dma.h) \
    $(wildcard include/config/zone/dma32.h) \
    $(wildcard include/config/debug/vm.h) \
  include/linux/mmzone.h \
    $(wildcard include/config/force/max/zoneorder.h) \
    $(wildcard include/config/memory/hotplug.h) \
    $(wildcard include/config/arch/populates/node/map.h) \
    $(wildcard include/config/flat/node/mem/map.h) \
    $(wildcard include/config/cgroup/mem/res/ctlr.h) \
    $(wildcard include/config/no/bootmem.h) \
    $(wildcard include/config/have/memory/present.h) \
    $(wildcard include/config/need/node/memmap/size.h) \
    $(wildcard include/config/need/multiple/nodes.h) \
    $(wildcard include/config/have/arch/early/pfn/to/nid.h) \
    $(wildcard include/config/sparsemem/extreme.h) \
    $(wildcard include/config/nodes/span/other/nodes.h) \
    $(wildcard include/config/holes/in/zone.h) \
    $(wildcard include/config/arch/has/holes/memorymodel.h) \
  include/linux/wait.h \
  /home/foxnet/blackfin-sources/uclinux-dist/linux-2.6.x/arch/blackfin/include/asm/current.h \
  include/asm-generic/current.h \
  include/linux/threads.h \
    $(wildcard include/config/nr/cpus.h) \
    $(wildcard include/config/base/small.h) \
  include/linux/numa.h \
    $(wildcard include/config/nodes/shift.h) \
  include/linux/init.h \
    $(wildcard include/config/hotplug.h) \
  include/linux/nodemask.h \
  include/linux/bitmap.h \
  include/linux/string.h \
    $(wildcard include/config/binary/printf.h) \
  /home/foxnet/blackfin-sources/uclinux-dist/linux-2.6.x/arch/blackfin/include/asm/string.h \
  include/linux/pageblock-flags.h \
    $(wildcard include/config/hugetlb/page.h) \
    $(wildcard include/config/hugetlb/page/size/variable.h) \
  include/generated/bounds.h \
  include/linux/memory_hotplug.h \
    $(wildcard include/config/have/arch/nodedata/extension.h) \
    $(wildcard include/config/memory/hotremove.h) \
  include/linux/notifier.h \
  include/linux/errno.h \
  /home/foxnet/blackfin-sources/uclinux-dist/linux-2.6.x/arch/blackfin/include/asm/errno.h \
  include/asm-generic/errno.h \
  include/asm-generic/errno-base.h \
  include/linux/mutex.h \
    $(wildcard include/config/debug/mutexes.h) \
  include/linux/rwsem.h \
    $(wildcard include/config/rwsem/generic/spinlock.h) \
  include/linux/rwsem-spinlock.h \
  include/linux/srcu.h \
  include/linux/topology.h \
    $(wildcard include/config/sched/smt.h) \
    $(wildcard include/config/sched/mc.h) \
  include/linux/cpumask.h \
    $(wildcard include/config/cpumask/offstack.h) \
    $(wildcard include/config/debug/per/cpu/maps.h) \
    $(wildcard include/config/disable/obsolete/cpumask/functions.h) \
  include/linux/smp.h \
    $(wildcard include/config/use/generic/smp/helpers.h) \
  /home/foxnet/blackfin-sources/uclinux-dist/linux-2.6.x/arch/blackfin/include/asm/topology.h \
  include/asm-generic/topology.h \
  include/linux/mmdebug.h \
    $(wildcard include/config/debug/virtual.h) \
  include/linux/elf.h \
  include/linux/elf-em.h \
  /home/foxnet/blackfin-sources/uclinux-dist/linux-2.6.x/arch/blackfin/include/asm/elf.h \
  /home/foxnet/blackfin-sources/uclinux-dist/linux-2.6.x/arch/blackfin/include/asm/user.h \
  include/asm-generic/user.h \
  include/linux/kobject.h \
  include/linux/sysfs.h \
  include/linux/kref.h \
  include/linux/moduleparam.h \
    $(wildcard include/config/alpha.h) \
    $(wildcard include/config/ia64.h) \
    $(wildcard include/config/ppc64.h) \
  include/linux/tracepoint.h \
  include/linux/rcupdate.h \
    $(wildcard include/config/rcu/torture/test.h) \
    $(wildcard include/config/tree/rcu.h) \
    $(wildcard include/config/tree/preempt/rcu.h) \
    $(wildcard include/config/tiny/rcu.h) \
  include/linux/completion.h \
  include/linux/rcutree.h \
    $(wildcard include/config/no/hz.h) \
  include/linux/percpu.h \
    $(wildcard include/config/need/per/cpu/embed/first/chunk.h) \
    $(wildcard include/config/need/per/cpu/page/first/chunk.h) \
    $(wildcard include/config/have/setup/per/cpu/area.h) \
  include/linux/pfn.h \
  /home/foxnet/blackfin-sources/uclinux-dist/linux-2.6.x/arch/blackfin/include/asm/percpu.h \
  include/asm-generic/percpu.h \
  include/linux/percpu-defs.h \
    $(wildcard include/config/debug/force/weak/per/cpu.h) \
  /home/foxnet/blackfin-sources/uclinux-dist/linux-2.6.x/arch/blackfin/include/asm/module.h \
  include/trace/events/module.h \
  include/trace/define_trace.h \
  include/linux/vermagic.h \
  include/generated/utsrelease.h \

/home/foxnet/Projects/BF_driver/bf532usb_tty.mod.o: $(deps_/home/foxnet/Projects/BF_driver/bf532usb_tty.mod.o)

$(deps_/home/foxnet/Projects/BF_driver/bf532usb_tty.mod.o):
