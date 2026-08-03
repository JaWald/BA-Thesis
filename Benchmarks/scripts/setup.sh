#!/bin/bash
# =====================================================================
#  Benchmark environment setup
#  PBO + C-States are disabled in BIOS, this handles:
#    - performance governor
#    - locked frequency
#    - SMT sibling of the benchmark core is taken offline
#  Note: Settings do NOT survive a reboot.
# =====================================================================
set -e

if [ "$EUID" -ne 0 ]; then
    echo "Please run with sudo."
    exit 1
fi

# ------------------------- CONFIG ------------------------------------
LOCK_KHZ=3600000
BENCH_CORE=2              # core the benchmark is pinned to via taskset
SMT_SIBLING=10            # logical CPU sharing the same physical core
# ---------------------------------------------------------------------

echo "=== 1. disabling boost (amd-pstate) ==="
if [ -f /sys/devices/system/cpu/cpufreq/boost ]; then
    echo 0 > /sys/devices/system/cpu/cpufreq/boost
    echo "  cpufreq/boost -> $(cat /sys/devices/system/cpu/cpufreq/boost)"
fi
if [ -f /sys/devices/system/cpu/amd_pstate/cpb_boost ]; then
    echo 0 > /sys/devices/system/cpu/amd_pstate/cpb_boost
    echo "  cpb_boost -> $(cat /sys/devices/system/cpu/amd_pstate/cpb_boost)"
fi

echo "=== 2. performance governor + EPP on all cores ==="
for g in /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor; do
    echo performance > "$g"
done
for e in /sys/devices/system/cpu/cpu*/cpufreq/energy_performance_preference; do
    [ -f "$e" ] && echo performance > "$e"
done
echo "  done"

echo "=== 3. locking frequency to ${LOCK_KHZ} kHz ==="
for c in /sys/devices/system/cpu/cpu*/cpufreq; do
    echo $LOCK_KHZ > "$c/scaling_max_freq"
    echo $LOCK_KHZ > "$c/scaling_min_freq"
done
echo "  done"

echo "=== 4. taking SMT sibling cpu$SMT_SIBLING offline ==="
if [ -f /sys/devices/system/cpu/cpu$SMT_SIBLING/online ]; then
    echo 0 > /sys/devices/system/cpu/cpu$SMT_SIBLING/online
    echo "  cpu$SMT_SIBLING online -> $(cat /sys/devices/system/cpu/cpu$SMT_SIBLING/online)"
fi

echo ""
echo "=== verification ==="
echo "governor : $(cat /sys/devices/system/cpu/cpu$BENCH_CORE/cpufreq/scaling_governor)"
echo "min/max  : $(cat /sys/devices/system/cpu/cpu$BENCH_CORE/cpufreq/scaling_min_freq) / $(cat /sys/devices/system/cpu/cpu$BENCH_CORE/cpufreq/scaling_max_freq) kHz"
grep MHz /proc/cpuinfo | sed -n "$((BENCH_CORE + 1))p"
echo ""
echo "Setup done. Benchmark core: $BENCH_CORE (use: taskset -c $BENCH_CORE ...)"
