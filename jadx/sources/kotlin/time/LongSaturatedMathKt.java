package kotlin.time;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.constraintlayout.widget.ConstraintLayout;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import p099j1.C1929i;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(m3158d1 = {"\u0000\u001e\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0015\n\u0002\u0010\u000b\n\u0000\u001a'\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0000¢\u0006\u0004\b\u0007\u0010\b\u001a'\u0010\t\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u0001H\u0002¢\u0006\u0004\b\u000b\u0010\f\u001a'\u0010\r\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u000e\u0010\b\u001a\u0015\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0002\u001a\u00020\u0001H\u0002¢\u0006\u0002\u0010\u0010\u001a%\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u00012\u0006\u0010\u0013\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0000¢\u0006\u0002\u0010\u0014\u001a%\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u00012\u0006\u0010\u0017\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0000¢\u0006\u0002\u0010\u0014\u001a%\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u00012\u0006\u0010\u001a\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0002¢\u0006\u0002\u0010\u0014\u001a\r\u0010\u001b\u001a\u00020\u001c*\u00020\u0001H\u0080\b¨\u0006\u001d"}, m3159d2 = {"saturatingAdd", "", "value", "unit", "Lkotlin/time/DurationUnit;", TypedValues.TransitionType.S_DURATION, "Lkotlin/time/Duration;", "saturatingAdd-NuflL3o", "(JLkotlin/time/DurationUnit;J)J", "checkInfiniteSumDefined", "durationInUnit", "checkInfiniteSumDefined-PjuGub4", "(JJJ)J", "saturatingAddInHalves", "saturatingAddInHalves-NuflL3o", "infinityOfSign", "(J)J", "saturatingDiff", "valueNs", "origin", "(JJLkotlin/time/DurationUnit;)J", "saturatingOriginsDiff", "origin1", "origin2", "saturatingFiniteDiff", "value1", "value2", "isSaturated", "", "kotlin-stdlib"}, m3160k = 2, m3161mv = {2, 2, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
@SourceDebugExtension({"SMAP\nlongSaturatedMath.kt\nKotlin\n*S Kotlin\n*F\n+ 1 longSaturatedMath.kt\nkotlin/time/LongSaturatedMathKt\n*L\n1#1,81:1\n80#1:82\n80#1:83\n80#1:84\n80#1:85\n80#1:86\n80#1:87\n*S KotlinDebug\n*F\n+ 1 longSaturatedMath.kt\nkotlin/time/LongSaturatedMathKt\n*L\n14#1:82\n17#1:83\n36#1:84\n46#1:85\n53#1:86\n57#1:87\n*E\n"})
public final class LongSaturatedMathKt {
    /* JADX INFO: renamed from: checkInfiniteSumDefined-PjuGub4, reason: not valid java name */
    private static final long m7513checkInfiniteSumDefinedPjuGub4(long j10, long j11, long j12) {
        if (!Duration.m7437isInfiniteimpl(j11) || (j10 ^ j12) >= 0) {
            return j10;
        }
        C1929i.m3029k("Summing infinities of different signs");
        return 0L;
    }

    private static final long infinityOfSign(long j10) {
        return j10 < 0 ? Duration.INSTANCE.m7502getNEG_INFINITEUwyO8pc$kotlin_stdlib() : Duration.INSTANCE.m7501getINFINITEUwyO8pc();
    }

    public static final boolean isSaturated(long j10) {
        return ((j10 - 1) | 1) == Long.MAX_VALUE;
    }

    /* JADX INFO: renamed from: saturatingAdd-NuflL3o, reason: not valid java name */
    public static final long m7514saturatingAddNuflL3o(long j10, DurationUnit durationUnit, long j11) {
        durationUnit.getClass();
        long jM7451toLongimpl = Duration.m7451toLongimpl(j11, durationUnit);
        if (((j10 - 1) | 1) == Long.MAX_VALUE) {
            return m7513checkInfiniteSumDefinedPjuGub4(j10, j11, jM7451toLongimpl);
        }
        if (((jM7451toLongimpl - 1) | 1) == Long.MAX_VALUE) {
            return m7515saturatingAddInHalvesNuflL3o(j10, durationUnit, j11);
        }
        long j12 = j10 + jM7451toLongimpl;
        if (((j10 ^ j12) & (jM7451toLongimpl ^ j12)) < 0) {
            return j10 < 0 ? Long.MIN_VALUE : Long.MAX_VALUE;
        }
        return j12;
    }

    /* JADX INFO: renamed from: saturatingAddInHalves-NuflL3o, reason: not valid java name */
    private static final long m7515saturatingAddInHalvesNuflL3o(long j10, DurationUnit durationUnit, long j11) {
        long jM7415divUwyO8pc = Duration.m7415divUwyO8pc(j11, 2);
        long jM7451toLongimpl = Duration.m7451toLongimpl(jM7415divUwyO8pc, durationUnit);
        return (1 | (jM7451toLongimpl - 1)) == Long.MAX_VALUE ? jM7451toLongimpl : m7514saturatingAddNuflL3o(m7514saturatingAddNuflL3o(j10, durationUnit, jM7415divUwyO8pc), durationUnit, Duration.m7440minusLRDsOJo(j11, jM7415divUwyO8pc));
    }

    public static final long saturatingDiff(long j10, long j11, DurationUnit durationUnit) {
        durationUnit.getClass();
        return (1 | (j11 - 1)) == Long.MAX_VALUE ? Duration.m7456unaryMinusUwyO8pc(infinityOfSign(j11)) : saturatingFiniteDiff(j10, j11, durationUnit);
    }

    private static final long saturatingFiniteDiff(long j10, long j11, DurationUnit durationUnit) {
        long j12 = j10 - j11;
        if (((j12 ^ j10) & (~(j12 ^ j11))) >= 0) {
            return DurationKt.toDuration(j12, durationUnit);
        }
        DurationUnit durationUnit2 = DurationUnit.MILLISECONDS;
        if (durationUnit.compareTo(durationUnit2) >= 0) {
            return Duration.m7456unaryMinusUwyO8pc(infinityOfSign(j12));
        }
        long jConvertDurationUnit = DurationUnitKt__DurationUnitJvmKt.convertDurationUnit(1L, durationUnit2, durationUnit);
        long j13 = (j10 / jConvertDurationUnit) - (j11 / jConvertDurationUnit);
        long j14 = (j10 % jConvertDurationUnit) - (j11 % jConvertDurationUnit);
        Duration.Companion companion = Duration.INSTANCE;
        return Duration.m7441plusLRDsOJo(DurationKt.toDuration(j13, durationUnit2), DurationKt.toDuration(j14, durationUnit));
    }

    public static final long saturatingOriginsDiff(long j10, long j11, DurationUnit durationUnit) {
        durationUnit.getClass();
        if (((j11 - 1) | 1) == Long.MAX_VALUE) {
            return j10 == j11 ? Duration.INSTANCE.m7503getZEROUwyO8pc() : Duration.m7456unaryMinusUwyO8pc(infinityOfSign(j11));
        }
        return (1 | (j10 - 1)) == Long.MAX_VALUE ? infinityOfSign(j10) : saturatingFiniteDiff(j10, j11, durationUnit);
    }
}
