cmd_/home/foxnet/Projects/BF_driver/bf532usb_tty.o := bfin-uclinux-gcc -Wp,-MD,/home/foxnet/Projects/BF_driver/.bf532usb_tty.o.d  -nostdinc -isystem /home/foxnet/blackfin-sources/build/bfin-uclinux/lib/gcc/bfin-uclinux/4.3.5/include -I/home/foxnet/blackfin-sources/uclinux-dist/linux-2.6.x/arch/blackfin/include -Iinclude  -include include/generated/autoconf.h -D__KERNEL__ -I/home/foxnet/blackfin-sources/uclinux-dist/linux-2.6.x/arch/blackfin/mach-bf533/include -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs -fno-strict-aliasing -fno-common -Werror-implicit-function-declaration -Wno-format-security -fno-delete-null-pointer-checks -Os -mno-fdpic -mcpu=bf532-0.5 -Iarch/blackfin/include/ -Iarch/blackfin/mach-bf533/include -fno-stack-protector -fomit-frame-pointer -g -fno-inline-functions-called-once -Wdeclaration-after-statement -Wno-pointer-sign -fno-strict-overflow  -DMODULE -mlong-calls -D"KBUILD_STR(s)=\#s" -D"KBUILD_BASENAME=KBUILD_STR(bf532usb_tty)"  -D"KBUILD_MODNAME=KBUILD_STR(bf532usb_tty)"  -c -o /home/foxnet/Projects/BF_driver/bf532usb_tty.o /home/foxnet/Projects/BF_driver/bf532usb_tty.c

deps_/home/foxnet/Projects/BF_driver/bf532usb_tty.o := \
  /home/foxnet/Projects/BF_driver/bf532usb_tty.c \
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
    $(wildcard include/config/module/unload.h) \
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
  include/linux/kdev_t.h \
  include/linux/cdev.h \
  include/linux/fs.h \
    $(wildcard include/config/dnotify.h) \
    $(wildcard include/config/quota.h) \
    $(wildcard include/config/fsnotify.h) \
    $(wildcard include/config/inotify.h) \
    $(wildcard include/config/security.h) \
    $(wildcard include/config/fs/posix/acl.h) \
    $(wildcard include/config/epoll.h) \
    $(wildcard include/config/debug/writecount.h) \
    $(wildcard include/config/file/locking.h) \
    $(wildcard include/config/auditsyscall.h) \
    $(wildcard include/config/block.h) \
    $(wildcard include/config/fs/xip.h) \
    $(wildcard include/config/migration.h) \
  include/linux/limits.h \
  include/linux/ioctl.h \
  /home/foxnet/blackfin-sources/uclinux-dist/linux-2.6.x/arch/blackfin/include/asm/ioctl.h \
  include/asm-generic/ioctl.h \
  include/linux/dcache.h \
  include/linux/rculist.h \
  include/linux/path.h \
  include/linux/radix-tree.h \
  include/linux/prio_tree.h \
  include/linux/pid.h \
  include/linux/capability.h \
  include/linux/semaphore.h \
  include/linux/fiemap.h \
  include/linux/quota.h \
    $(wildcard include/config/quota/netlink/interface.h) \
  include/linux/dqblk_xfs.h \
  include/linux/dqblk_v1.h \
  include/linux/dqblk_v2.h \
  include/linux/dqblk_qtree.h \
  include/linux/nfs_fs_i.h \
  include/linux/nfs.h \
  include/linux/sunrpc/msg_prot.h \
  include/linux/inet.h \
  include/linux/fcntl.h \
  /home/foxnet/blackfin-sources/uclinux-dist/linux-2.6.x/arch/blackfin/include/asm/fcntl.h \
  include/asm-generic/fcntl.h \
  include/linux/err.h \
  include/linux/slab.h \
    $(wildcard include/config/slab/debug.h) \
    $(wildcard include/config/debug/objects.h) \
    $(wildcard include/config/failslab.h) \
    $(wildcard include/config/slub.h) \
    $(wildcard include/config/slob.h) \
    $(wildcard include/config/debug/slab.h) \
  include/linux/slab_def.h \
  include/linux/kmemtrace.h \
    $(wildcard include/config/kmemtrace.h) \
  include/trace/events/kmem.h \
  include/linux/kmalloc_sizes.h \
  include/linux/ioport.h \
  include/linux/io.h \
    $(wildcard include/config/has/ioport.h) \
  /home/foxnet/blackfin-sources/uclinux-dist/linux-2.6.x/arch/blackfin/include/asm/io.h \
  include/asm-generic/io.h \
    $(wildcard include/config/generic/iomap.h) \
  /home/foxnet/blackfin-sources/uclinux-dist/linux-2.6.x/arch/blackfin/include/asm/cacheflush.h \
    $(wildcard include/config/bfin/extmem/writeback.h) \
    $(wildcard include/config/bfin/l2/writeback.h) \
  /home/foxnet/blackfin-sources/uclinux-dist/linux-2.6.x/arch/blackfin/include/asm/sections.h \
    $(wildcard include/config/romkernel.h) \
  include/asm-generic/sections.h \
  include/linux/vmalloc.h \
  include/linux/interrupt.h \
    $(wildcard include/config/pm/sleep.h) \
    $(wildcard include/config/generic/irq/probe.h) \
    $(wildcard include/config/proc/fs.h) \
  include/linux/irqreturn.h \
  include/linux/irqnr.h \
  include/linux/hardirq.h \
    $(wildcard include/config/virt/cpu/accounting.h) \
  include/linux/ftrace_irq.h \
    $(wildcard include/config/ftrace/nmi/enter.h) \
  /home/foxnet/blackfin-sources/uclinux-dist/linux-2.6.x/arch/blackfin/include/asm/hardirq.h \
  include/asm-generic/hardirq.h \
  include/linux/irq.h \
    $(wildcard include/config/s390.h) \
    $(wildcard include/config/irq/per/cpu.h) \
    $(wildcard include/config/irq/release/method.h) \
    $(wildcard include/config/intr/remap.h) \
    $(wildcard include/config/generic/pending/irq.h) \
    $(wildcard include/config/sparse/irq.h) \
    $(wildcard include/config/numa/irq/desc.h) \
    $(wildcard include/config/generic/hardirqs/no//do/irq.h) \
    $(wildcard include/config/cpumasks/offstack.h) \
  /home/foxnet/blackfin-sources/uclinux-dist/linux-2.6.x/arch/blackfin/include/asm/irq_regs.h \
  include/asm-generic/irq_regs.h \
  /home/foxnet/blackfin-sources/uclinux-dist/linux-2.6.x/arch/blackfin/include/asm/hw_irq.h \
  include/asm-generic/hw_irq.h \
  include/linux/irq_cpustat.h \
  include/linux/hrtimer.h \
    $(wildcard include/config/timer/stats.h) \
    $(wildcard include/config/high/res/timers.h) \
    $(wildcard include/config/debug/objects/timers.h) \
  include/linux/rbtree.h \
  include/linux/ktime.h \
    $(wildcard include/config/ktime/scalar.h) \
  include/linux/jiffies.h \
  include/linux/timex.h \
  include/linux/param.h \
  /home/foxnet/blackfin-sources/uclinux-dist/linux-2.6.x/arch/blackfin/include/asm/param.h \
  include/asm-generic/param.h \
    $(wildcard include/config/hz.h) \
  /home/foxnet/blackfin-sources/uclinux-dist/linux-2.6.x/arch/blackfin/include/asm/timex.h \
  include/linux/timer.h \
  include/linux/debugobjects.h \
    $(wildcard include/config/debug/objects/free.h) \
  include/linux/platform_device.h \
  include/linux/device.h \
    $(wildcard include/config/debug/devres.h) \
    $(wildcard include/config/devtmpfs.h) \
  include/linux/klist.h \
  include/linux/pm.h \
    $(wildcard include/config/pm/runtime.h) \
    $(wildcard include/config/pm/ops.h) \
  include/linux/workqueue.h \
    $(wildcard include/config/debug/objects/work.h) \
  /home/foxnet/blackfin-sources/uclinux-dist/linux-2.6.x/arch/blackfin/include/asm/device.h \
  include/asm-generic/device.h \
  include/linux/pm_wakeup.h \
    $(wildcard include/config/pm.h) \
  include/linux/mod_devicetable.h \
  include/linux/tty.h \
    $(wildcard include/config/audit.h) \
  include/linux/major.h \
  include/linux/termios.h \
  /home/foxnet/blackfin-sources/uclinux-dist/linux-2.6.x/arch/blackfin/include/asm/termios.h \
  include/asm-generic/termios.h \
  /home/foxnet/blackfin-sources/uclinux-dist/linux-2.6.x/arch/blackfin/include/asm/termbits.h \
  include/asm-generic/termbits.h \
  /home/foxnet/blackfin-sources/uclinux-dist/linux-2.6.x/arch/blackfin/include/asm/ioctls.h \
  include/asm-generic/ioctls.h \
  /home/foxnet/blackfin-sources/uclinux-dist/linux-2.6.x/arch/blackfin/include/asm/uaccess.h \
    $(wildcard include/config/access/check.h) \
  include/linux/sched.h \
    $(wildcard include/config/sched/debug.h) \
    $(wildcard include/config/detect/softlockup.h) \
    $(wildcard include/config/detect/hung/task.h) \
    $(wildcard include/config/core/dump/default/elf/headers.h) \
    $(wildcard include/config/bsd/process/acct.h) \
    $(wildcard include/config/taskstats.h) \
    $(wildcard include/config/inotify/user.h) \
    $(wildcard include/config/posix/mqueue.h) \
    $(wildcard include/config/keys.h) \
    $(wildcard include/config/perf/events.h) \
    $(wildcard include/config/schedstats.h) \
    $(wildcard include/config/task/delay/acct.h) \
    $(wildcard include/config/fair/group/sched.h) \
    $(wildcard include/config/rt/group/sched.h) \
    $(wildcard include/config/blk/dev/io/trace.h) \
    $(wildcard include/config/cc/stackprotector.h) \
    $(wildcard include/config/sysvipc.h) \
    $(wildcard include/config/rt/mutexes.h) \
    $(wildcard include/config/task/xacct.h) \
    $(wildcard include/config/cpusets.h) \
    $(wildcard include/config/cgroups.h) \
    $(wildcard include/config/futex.h) \
    $(wildcard include/config/fault/injection.h) \
    $(wildcard include/config/latencytop.h) \
    $(wildcard include/config/function/graph/tracer.h) \
    $(wildcard include/config/have/unstable/sched/clock.h) \
    $(wildcard include/config/stack/growsup.h) \
    $(wildcard include/config/debug/stack/usage.h) \
    $(wildcard include/config/cgroup/sched.h) \
    $(wildcard include/config/mm/owner.h) \
  include/linux/mm_types.h \
    $(wildcard include/config/split/ptlock/cpus.h) \
    $(wildcard include/config/want/page/debug/flags.h) \
    $(wildcard include/config/aio.h) \
    $(wildcard include/config/mmu/notifier.h) \
  include/linux/auxvec.h \
  /home/foxnet/blackfin-sources/uclinux-dist/linux-2.6.x/arch/blackfin/include/asm/auxvec.h \
  include/asm-generic/auxvec.h \
  include/linux/page-debug-flags.h \
    $(wildcard include/config/page/poisoning.h) \
    $(wildcard include/config/page/debug/something/else.h) \
  /home/foxnet/blackfin-sources/uclinux-dist/linux-2.6.x/arch/blackfin/include/asm/mmu.h \
    $(wildcard include/config/binfmt/elf/fdpic.h) \
    $(wildcard include/config/mpu.h) \
  /home/foxnet/blackfin-sources/uclinux-dist/linux-2.6.x/arch/blackfin/include/asm/cputime.h \
  include/asm-generic/cputime.h \
  include/linux/sem.h \
  include/linux/ipc.h \
  /home/foxnet/blackfin-sources/uclinux-dist/linux-2.6.x/arch/blackfin/include/asm/ipcbuf.h \
  include/asm-generic/ipcbuf.h \
  /home/foxnet/blackfin-sources/uclinux-dist/linux-2.6.x/arch/blackfin/include/asm/sembuf.h \
  include/asm-generic/sembuf.h \
  include/linux/signal.h \
  /home/foxnet/blackfin-sources/uclinux-dist/linux-2.6.x/arch/blackfin/include/asm/signal.h \
  include/asm-generic/signal.h \
  include/asm-generic/signal-defs.h \
  /home/foxnet/blackfin-sources/uclinux-dist/linux-2.6.x/arch/blackfin/include/asm/sigcontext.h \
  /home/foxnet/blackfin-sources/uclinux-dist/linux-2.6.x/arch/blackfin/include/asm/siginfo.h \
  include/asm-generic/siginfo.h \
  include/linux/proportions.h \
  include/linux/percpu_counter.h \
  include/linux/seccomp.h \
    $(wildcard include/config/seccomp.h) \
  include/linux/rtmutex.h \
    $(wildcard include/config/debug/rt/mutexes.h) \
  include/linux/plist.h \
    $(wildcard include/config/debug/pi/list.h) \
  include/linux/resource.h \
  /home/foxnet/blackfin-sources/uclinux-dist/linux-2.6.x/arch/blackfin/include/asm/resource.h \
  include/asm-generic/resource.h \
  include/linux/task_io_accounting.h \
    $(wildcard include/config/task/io/accounting.h) \
  include/linux/latencytop.h \
  include/linux/cred.h \
    $(wildcard include/config/debug/credentials.h) \
  include/linux/key.h \
    $(wildcard include/config/sysctl.h) \
  include/linux/sysctl.h \
  include/linux/selinux.h \
    $(wildcard include/config/security/selinux.h) \
  include/linux/aio.h \
  include/linux/aio_abi.h \
  include/linux/uio.h \
  include/linux/mm.h \
    $(wildcard include/config/ksm.h) \
    $(wildcard include/config/debug/pagealloc.h) \
    $(wildcard include/config/hibernation.h) \
  include/linux/debug_locks.h \
    $(wildcard include/config/debug/locking/api/selftests.h) \
  include/linux/range.h \
  /home/foxnet/blackfin-sources/uclinux-dist/linux-2.6.x/arch/blackfin/include/asm/pgtable.h \
  include/asm-generic/4level-fixup.h \
  include/asm-generic/pgtable.h \
  include/linux/page-flags.h \
    $(wildcard include/config/pageflags/extended.h) \
    $(wildcard include/config/arch/uses/pg/uncached.h) \
    $(wildcard include/config/memory/failure.h) \
    $(wildcard include/config/swap.h) \
  include/linux/vmstat.h \
    $(wildcard include/config/vm/event/counters.h) \
  /home/foxnet/blackfin-sources/uclinux-dist/linux-2.6.x/arch/blackfin/include/asm/segment.h \
  include/linux/tty_driver.h \
    $(wildcard include/config/kgdb/serial/console.h) \
    $(wildcard include/config/console/poll.h) \
  include/linux/tty_ldisc.h \
  include/linux/tty_flip.h \
  /home/foxnet/blackfin-sources/uclinux-dist/linux-2.6.x/arch/blackfin/include/asm/gpio.h \
    $(wildcard include/config/bf54x.h) \
    $(wildcard include/config/gpiolib.h) \
  /home/foxnet/blackfin-sources/uclinux-dist/linux-2.6.x/arch/blackfin/mach-bf533/include/mach/gpio.h \
  include/asm-generic/gpio.h \
    $(wildcard include/config/gpio/sysfs.h) \
    $(wildcard include/config/have/gpio/lib.h) \

/home/foxnet/Projects/BF_driver/bf532usb_tty.o: $(deps_/home/foxnet/Projects/BF_driver/bf532usb_tty.o)

$(deps_/home/foxnet/Projects/BF_driver/bf532usb_tty.o):
