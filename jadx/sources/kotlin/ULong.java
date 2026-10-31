package kotlin;

import ai.onnxruntime.AbstractC0074a;
import androidx.constraintlayout.widget.ConstraintLayout;
import kotlin.internal.InlineOnly;
import kotlin.internal.IntrinsicConstEvaluation;
import kotlin.jvm.JvmInline;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.ranges.ULongRange;
import kotlin.ranges.URangesKt;
import okhttp3.internal.p160ws.WebSocketProtocol;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
@SinceKotlin(version = "1.5")
@Metadata(m3158d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0000\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b2\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0010\u0005\n\u0002\b\u0003\n\u0002\u0010\n\n\u0002\b\u0010\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0010\u0006\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0087@\u0018\u0000 {2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001{B\u0011\b\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0018\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0087\n¢\u0006\u0004\b\f\u0010\rJ\u0018\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000eH\u0087\n¢\u0006\u0004\b\u000f\u0010\u0010J\u0018\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0011H\u0087\n¢\u0006\u0004\b\u0012\u0010\u0013J\u0018\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0000H\u0097\n¢\u0006\u0004\b\u0014\u0010\u0015J\u0018\u0010\u0016\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000bH\u0087\n¢\u0006\u0004\b\u0017\u0010\u0018J\u0018\u0010\u0016\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000eH\u0087\n¢\u0006\u0004\b\u0019\u0010\u001aJ\u0018\u0010\u0016\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0011H\u0087\n¢\u0006\u0004\b\u001b\u0010\u001cJ\u0018\u0010\u0016\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0000H\u0087\n¢\u0006\u0004\b\u001d\u0010\u001eJ\u0018\u0010\u001f\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000bH\u0087\n¢\u0006\u0004\b \u0010\u0018J\u0018\u0010\u001f\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000eH\u0087\n¢\u0006\u0004\b!\u0010\u001aJ\u0018\u0010\u001f\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0011H\u0087\n¢\u0006\u0004\b\"\u0010\u001cJ\u0018\u0010\u001f\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0000H\u0087\n¢\u0006\u0004\b#\u0010\u001eJ\u0018\u0010$\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000bH\u0087\n¢\u0006\u0004\b%\u0010\u0018J\u0018\u0010$\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000eH\u0087\n¢\u0006\u0004\b&\u0010\u001aJ\u0018\u0010$\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0011H\u0087\n¢\u0006\u0004\b'\u0010\u001cJ\u0018\u0010$\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0000H\u0087\n¢\u0006\u0004\b(\u0010\u001eJ\u0018\u0010)\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000bH\u0087\n¢\u0006\u0004\b*\u0010\u0018J\u0018\u0010)\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000eH\u0087\n¢\u0006\u0004\b+\u0010\u001aJ\u0018\u0010)\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0011H\u0087\n¢\u0006\u0004\b,\u0010\u001cJ\u0018\u0010)\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0000H\u0087\n¢\u0006\u0004\b-\u0010\u001eJ\u0018\u0010.\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000bH\u0087\n¢\u0006\u0004\b/\u0010\u0018J\u0018\u0010.\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000eH\u0087\n¢\u0006\u0004\b0\u0010\u001aJ\u0018\u0010.\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0011H\u0087\n¢\u0006\u0004\b1\u0010\u001cJ\u0018\u0010.\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0000H\u0087\n¢\u0006\u0004\b2\u0010\u001eJ\u0018\u00103\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000bH\u0087\b¢\u0006\u0004\b4\u0010\u0018J\u0018\u00103\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000eH\u0087\b¢\u0006\u0004\b5\u0010\u001aJ\u0018\u00103\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0011H\u0087\b¢\u0006\u0004\b6\u0010\u001cJ\u0018\u00103\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0000H\u0087\b¢\u0006\u0004\b7\u0010\u001eJ\u0018\u00108\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u000bH\u0087\b¢\u0006\u0004\b9\u0010:J\u0018\u00108\u001a\u00020\u000e2\u0006\u0010\n\u001a\u00020\u000eH\u0087\b¢\u0006\u0004\b;\u0010<J\u0018\u00108\u001a\u00020\u00112\u0006\u0010\n\u001a\u00020\u0011H\u0087\b¢\u0006\u0004\b=\u0010\u0013J\u0018\u00108\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0000H\u0087\b¢\u0006\u0004\b>\u0010\u001eJ\u0010\u0010?\u001a\u00020\u0000H\u0087\n¢\u0006\u0004\b@\u0010\u0005J\u0010\u0010A\u001a\u00020\u0000H\u0087\n¢\u0006\u0004\bB\u0010\u0005J\u0018\u0010C\u001a\u00020D2\u0006\u0010\n\u001a\u00020\u0000H\u0087\n¢\u0006\u0004\bE\u0010FJ\u0018\u0010G\u001a\u00020D2\u0006\u0010\n\u001a\u00020\u0000H\u0087\n¢\u0006\u0004\bH\u0010FJ\u0018\u0010I\u001a\u00020\u00002\u0006\u0010J\u001a\u00020\tH\u0087\f¢\u0006\u0004\bK\u0010\u001cJ\u0018\u0010L\u001a\u00020\u00002\u0006\u0010J\u001a\u00020\tH\u0087\f¢\u0006\u0004\bM\u0010\u001cJ\u0018\u0010N\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0000H\u0087\f¢\u0006\u0004\bO\u0010\u001eJ\u0018\u0010P\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0000H\u0087\f¢\u0006\u0004\bQ\u0010\u001eJ\u0018\u0010R\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0000H\u0087\f¢\u0006\u0004\bS\u0010\u001eJ\u0010\u0010T\u001a\u00020\u0000H\u0087\b¢\u0006\u0004\bU\u0010\u0005J\u0010\u0010V\u001a\u00020WH\u0087\b¢\u0006\u0004\bX\u0010YJ\u0010\u0010Z\u001a\u00020[H\u0087\b¢\u0006\u0004\b\\\u0010]J\u0010\u0010^\u001a\u00020\tH\u0087\b¢\u0006\u0004\b_\u0010`J\u0010\u0010a\u001a\u00020\u0003H\u0087\b¢\u0006\u0004\bb\u0010\u0005J\u0010\u0010c\u001a\u00020\u000bH\u0087\b¢\u0006\u0004\bd\u0010YJ\u0010\u0010e\u001a\u00020\u000eH\u0087\b¢\u0006\u0004\bf\u0010]J\u0010\u0010g\u001a\u00020\u0011H\u0087\b¢\u0006\u0004\bh\u0010`J\u0010\u0010i\u001a\u00020\u0000H\u0087\b¢\u0006\u0004\bj\u0010\u0005J\u0010\u0010k\u001a\u00020lH\u0087\b¢\u0006\u0004\bm\u0010nJ\u0010\u0010o\u001a\u00020pH\u0087\b¢\u0006\u0004\bq\u0010rJ\u000f\u0010s\u001a\u00020tH\u0016¢\u0006\u0004\bu\u0010vJ\u0013\u0010w\u001a\u00020x2\b\u0010\n\u001a\u0004\u0018\u00010yHÖ\u0003J\t\u0010z\u001a\u00020\tHÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0000X\u0081\u0004¢\u0006\b\n\u0000\u0012\u0004\b\u0006\u0010\u0007\u0088\u0001\u0002\u0092\u0001\u00020\u0003¨\u0006|"}, m3159d2 = {"Lkotlin/ULong;", "", "data", "", "constructor-impl", "(J)J", "getData$annotations", "()V", "compareTo", "", "other", "Lkotlin/UByte;", "compareTo-7apg3OU", "(JB)I", "Lkotlin/UShort;", "compareTo-xj2QHRw", "(JS)I", "Lkotlin/UInt;", "compareTo-WZ4Q5Ns", "(JI)I", "compareTo-VKZWuLQ", "(JJ)I", "plus", "plus-7apg3OU", "(JB)J", "plus-xj2QHRw", "(JS)J", "plus-WZ4Q5Ns", "(JI)J", "plus-VKZWuLQ", "(JJ)J", "minus", "minus-7apg3OU", "minus-xj2QHRw", "minus-WZ4Q5Ns", "minus-VKZWuLQ", "times", "times-7apg3OU", "times-xj2QHRw", "times-WZ4Q5Ns", "times-VKZWuLQ", "div", "div-7apg3OU", "div-xj2QHRw", "div-WZ4Q5Ns", "div-VKZWuLQ", "rem", "rem-7apg3OU", "rem-xj2QHRw", "rem-WZ4Q5Ns", "rem-VKZWuLQ", "floorDiv", "floorDiv-7apg3OU", "floorDiv-xj2QHRw", "floorDiv-WZ4Q5Ns", "floorDiv-VKZWuLQ", "mod", "mod-7apg3OU", "(JB)B", "mod-xj2QHRw", "(JS)S", "mod-WZ4Q5Ns", "mod-VKZWuLQ", "inc", "inc-s-VKNKU", "dec", "dec-s-VKNKU", "rangeTo", "Lkotlin/ranges/ULongRange;", "rangeTo-VKZWuLQ", "(JJ)Lkotlin/ranges/ULongRange;", "rangeUntil", "rangeUntil-VKZWuLQ", "shl", "bitCount", "shl-s-VKNKU", "shr", "shr-s-VKNKU", "and", "and-VKZWuLQ", "or", "or-VKZWuLQ", "xor", "xor-VKZWuLQ", "inv", "inv-s-VKNKU", "toByte", "", "toByte-impl", "(J)B", "toShort", "", "toShort-impl", "(J)S", "toInt", "toInt-impl", "(J)I", "toLong", "toLong-impl", "toUByte", "toUByte-w2LRezQ", "toUShort", "toUShort-Mh2AYeg", "toUInt", "toUInt-pVg5ArA", "toULong", "toULong-s-VKNKU", "toFloat", "", "toFloat-impl", "(J)F", "toDouble", "", "toDouble-impl", "(J)D", "toString", "", "toString-impl", "(J)Ljava/lang/String;", "equals", "", "", "hashCode", "Companion", "kotlin-stdlib"}, m3160k = 1, m3161mv = {2, 2, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
@JvmInline
public final class ULong implements Comparable<ULong> {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final long MAX_VALUE = -1;
    public static final long MIN_VALUE = 0;
    public static final int SIZE_BITS = 64;
    public static final int SIZE_BYTES = 8;
    private final long data;

    @PublishedApi
    @IntrinsicConstEvaluation
    private /* synthetic */ ULong(long j10) {
        this.data = j10;
    }

    @InlineOnly
    /* JADX INFO: renamed from: and-VKZWuLQ, reason: not valid java name */
    private static final long m6255andVKZWuLQ(long j10, long j11) {
        return m6262constructorimpl(j10 & j11);
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ ULong m6256boximpl(long j10) {
        return new ULong(j10);
    }

    @InlineOnly
    /* JADX INFO: renamed from: compareTo-7apg3OU, reason: not valid java name */
    private static final int m6257compareTo7apg3OU(long j10, byte b10) {
        return Long.compare(j10 ^ Long.MIN_VALUE, m6262constructorimpl(((long) b10) & 255) ^ Long.MIN_VALUE);
    }

    @InlineOnly
    /* JADX INFO: renamed from: compareTo-VKZWuLQ, reason: not valid java name */
    private int m6258compareToVKZWuLQ(long j10) {
        return UnsignedKt.ulongCompare(getData(), j10);
    }

    @InlineOnly
    /* JADX INFO: renamed from: compareTo-WZ4Q5Ns, reason: not valid java name */
    private static final int m6260compareToWZ4Q5Ns(long j10, int i10) {
        return Long.compare(j10 ^ Long.MIN_VALUE, m6262constructorimpl(((long) i10) & 4294967295L) ^ Long.MIN_VALUE);
    }

    @InlineOnly
    /* JADX INFO: renamed from: compareTo-xj2QHRw, reason: not valid java name */
    private static final int m6261compareToxj2QHRw(long j10, short s5) {
        return Long.compare(j10 ^ Long.MIN_VALUE, m6262constructorimpl(((long) s5) & WebSocketProtocol.PAYLOAD_SHORT_MAX) ^ Long.MIN_VALUE);
    }

    @InlineOnly
    /* JADX INFO: renamed from: dec-s-VKNKU, reason: not valid java name */
    private static final long m6263decsVKNKU(long j10) {
        return m6262constructorimpl(j10 - 1);
    }

    @InlineOnly
    /* JADX INFO: renamed from: div-7apg3OU, reason: not valid java name */
    private static final long m6264div7apg3OU(long j10, byte b10) {
        long jM6262constructorimpl = m6262constructorimpl(((long) b10) & 255);
        if (jM6262constructorimpl < 0) {
            return (j10 ^ Long.MIN_VALUE) < (jM6262constructorimpl ^ Long.MIN_VALUE) ? 0L : 1L;
        }
        if (j10 >= 0) {
            return j10 / jM6262constructorimpl;
        }
        long j11 = ((j10 >>> 1) / jM6262constructorimpl) << 1;
        return j11 + ((long) (((j10 - (j11 * jM6262constructorimpl)) ^ Long.MIN_VALUE) < (jM6262constructorimpl ^ Long.MIN_VALUE) ? 0 : 1));
    }

    @InlineOnly
    /* JADX INFO: renamed from: div-VKZWuLQ, reason: not valid java name */
    private static final long m6265divVKZWuLQ(long j10, long j11) {
        return UnsignedKt.m6441ulongDivideeb3DHEI(j10, j11);
    }

    @InlineOnly
    /* JADX INFO: renamed from: div-WZ4Q5Ns, reason: not valid java name */
    private static final long m6266divWZ4Q5Ns(long j10, int i10) {
        long jM6262constructorimpl = m6262constructorimpl(((long) i10) & 4294967295L);
        if (jM6262constructorimpl < 0) {
            return (j10 ^ Long.MIN_VALUE) < (jM6262constructorimpl ^ Long.MIN_VALUE) ? 0L : 1L;
        }
        if (j10 >= 0) {
            return j10 / jM6262constructorimpl;
        }
        long j11 = ((j10 >>> 1) / jM6262constructorimpl) << 1;
        return j11 + ((long) (((j10 - (j11 * jM6262constructorimpl)) ^ Long.MIN_VALUE) < (jM6262constructorimpl ^ Long.MIN_VALUE) ? 0 : 1));
    }

    @InlineOnly
    /* JADX INFO: renamed from: div-xj2QHRw, reason: not valid java name */
    private static final long m6267divxj2QHRw(long j10, short s5) {
        long jM6262constructorimpl = m6262constructorimpl(((long) s5) & WebSocketProtocol.PAYLOAD_SHORT_MAX);
        if (jM6262constructorimpl < 0) {
            return (j10 ^ Long.MIN_VALUE) < (jM6262constructorimpl ^ Long.MIN_VALUE) ? 0L : 1L;
        }
        if (j10 >= 0) {
            return j10 / jM6262constructorimpl;
        }
        long j11 = ((j10 >>> 1) / jM6262constructorimpl) << 1;
        return j11 + ((long) (((j10 - (j11 * jM6262constructorimpl)) ^ Long.MIN_VALUE) < (jM6262constructorimpl ^ Long.MIN_VALUE) ? 0 : 1));
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m6268equalsimpl(long j10, Object obj) {
        return (obj instanceof ULong) && j10 == ((ULong) obj).getData();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m6269equalsimpl0(long j10, long j11) {
        return j10 == j11;
    }

    @InlineOnly
    /* JADX INFO: renamed from: floorDiv-7apg3OU, reason: not valid java name */
    private static final long m6270floorDiv7apg3OU(long j10, byte b10) {
        long jM6262constructorimpl = m6262constructorimpl(((long) b10) & 255);
        if (jM6262constructorimpl < 0) {
            return (j10 ^ Long.MIN_VALUE) < (jM6262constructorimpl ^ Long.MIN_VALUE) ? 0L : 1L;
        }
        if (j10 >= 0) {
            return j10 / jM6262constructorimpl;
        }
        long j11 = ((j10 >>> 1) / jM6262constructorimpl) << 1;
        return j11 + ((long) (((j10 - (j11 * jM6262constructorimpl)) ^ Long.MIN_VALUE) < (jM6262constructorimpl ^ Long.MIN_VALUE) ? 0 : 1));
    }

    @InlineOnly
    /* JADX INFO: renamed from: floorDiv-VKZWuLQ, reason: not valid java name */
    private static final long m6271floorDivVKZWuLQ(long j10, long j11) {
        if (j11 < 0) {
            return (j10 ^ Long.MIN_VALUE) < (j11 ^ Long.MIN_VALUE) ? 0L : 1L;
        }
        if (j10 >= 0) {
            return j10 / j11;
        }
        long j12 = ((j10 >>> 1) / j11) << 1;
        return j12 + ((long) (((j10 - (j12 * j11)) ^ Long.MIN_VALUE) < (j11 ^ Long.MIN_VALUE) ? 0 : 1));
    }

    @InlineOnly
    /* JADX INFO: renamed from: floorDiv-WZ4Q5Ns, reason: not valid java name */
    private static final long m6272floorDivWZ4Q5Ns(long j10, int i10) {
        long jM6262constructorimpl = m6262constructorimpl(((long) i10) & 4294967295L);
        if (jM6262constructorimpl < 0) {
            return (j10 ^ Long.MIN_VALUE) < (jM6262constructorimpl ^ Long.MIN_VALUE) ? 0L : 1L;
        }
        if (j10 >= 0) {
            return j10 / jM6262constructorimpl;
        }
        long j11 = ((j10 >>> 1) / jM6262constructorimpl) << 1;
        return j11 + ((long) (((j10 - (j11 * jM6262constructorimpl)) ^ Long.MIN_VALUE) < (jM6262constructorimpl ^ Long.MIN_VALUE) ? 0 : 1));
    }

    @InlineOnly
    /* JADX INFO: renamed from: floorDiv-xj2QHRw, reason: not valid java name */
    private static final long m6273floorDivxj2QHRw(long j10, short s5) {
        long jM6262constructorimpl = m6262constructorimpl(((long) s5) & WebSocketProtocol.PAYLOAD_SHORT_MAX);
        if (jM6262constructorimpl < 0) {
            return (j10 ^ Long.MIN_VALUE) < (jM6262constructorimpl ^ Long.MIN_VALUE) ? 0L : 1L;
        }
        if (j10 >= 0) {
            return j10 / jM6262constructorimpl;
        }
        long j11 = ((j10 >>> 1) / jM6262constructorimpl) << 1;
        return j11 + ((long) (((j10 - (j11 * jM6262constructorimpl)) ^ Long.MIN_VALUE) < (jM6262constructorimpl ^ Long.MIN_VALUE) ? 0 : 1));
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m6274hashCodeimpl(long j10) {
        return Long.hashCode(j10);
    }

    @InlineOnly
    /* JADX INFO: renamed from: inc-s-VKNKU, reason: not valid java name */
    private static final long m6275incsVKNKU(long j10) {
        return m6262constructorimpl(j10 + 1);
    }

    @InlineOnly
    /* JADX INFO: renamed from: inv-s-VKNKU, reason: not valid java name */
    private static final long m6276invsVKNKU(long j10) {
        return m6262constructorimpl(~j10);
    }

    @InlineOnly
    /* JADX INFO: renamed from: minus-7apg3OU, reason: not valid java name */
    private static final long m6277minus7apg3OU(long j10, byte b10) {
        return m6262constructorimpl(j10 - m6262constructorimpl(((long) b10) & 255));
    }

    @InlineOnly
    /* JADX INFO: renamed from: minus-VKZWuLQ, reason: not valid java name */
    private static final long m6278minusVKZWuLQ(long j10, long j11) {
        return m6262constructorimpl(j10 - j11);
    }

    @InlineOnly
    /* JADX INFO: renamed from: minus-WZ4Q5Ns, reason: not valid java name */
    private static final long m6279minusWZ4Q5Ns(long j10, int i10) {
        return m6262constructorimpl(j10 - m6262constructorimpl(((long) i10) & 4294967295L));
    }

    @InlineOnly
    /* JADX INFO: renamed from: minus-xj2QHRw, reason: not valid java name */
    private static final long m6280minusxj2QHRw(long j10, short s5) {
        return m6262constructorimpl(j10 - m6262constructorimpl(((long) s5) & WebSocketProtocol.PAYLOAD_SHORT_MAX));
    }

    @InlineOnly
    /* JADX INFO: renamed from: mod-7apg3OU, reason: not valid java name */
    private static final byte m6281mod7apg3OU(long j10, byte b10) {
        long jM6262constructorimpl = m6262constructorimpl(((long) b10) & 255);
        if (jM6262constructorimpl < 0) {
            if ((j10 ^ Long.MIN_VALUE) >= (Long.MIN_VALUE ^ jM6262constructorimpl)) {
                j10 -= jM6262constructorimpl;
            }
        } else if (j10 >= 0) {
            j10 %= jM6262constructorimpl;
        } else {
            j10 -= (((j10 >>> 1) / jM6262constructorimpl) << 1) * jM6262constructorimpl;
            if ((j10 ^ Long.MIN_VALUE) < (Long.MIN_VALUE ^ jM6262constructorimpl)) {
                jM6262constructorimpl = 0;
            }
            j10 -= jM6262constructorimpl;
        }
        return UByte.m6106constructorimpl((byte) j10);
    }

    @InlineOnly
    /* JADX INFO: renamed from: mod-VKZWuLQ, reason: not valid java name */
    private static final long m6282modVKZWuLQ(long j10, long j11) {
        if (j11 < 0) {
            return (j10 ^ Long.MIN_VALUE) < (j11 ^ Long.MIN_VALUE) ? j10 : j10 - j11;
        }
        if (j10 >= 0) {
            return j10 % j11;
        }
        long j12 = j10 - ((((j10 >>> 1) / j11) << 1) * j11);
        if ((j12 ^ Long.MIN_VALUE) < (j11 ^ Long.MIN_VALUE)) {
            j11 = 0;
        }
        return j12 - j11;
    }

    @InlineOnly
    /* JADX INFO: renamed from: mod-WZ4Q5Ns, reason: not valid java name */
    private static final int m6283modWZ4Q5Ns(long j10, int i10) {
        long jM6262constructorimpl = m6262constructorimpl(((long) i10) & 4294967295L);
        if (jM6262constructorimpl < 0) {
            if ((j10 ^ Long.MIN_VALUE) >= (Long.MIN_VALUE ^ jM6262constructorimpl)) {
                j10 -= jM6262constructorimpl;
            }
        } else if (j10 >= 0) {
            j10 %= jM6262constructorimpl;
        } else {
            j10 -= (((j10 >>> 1) / jM6262constructorimpl) << 1) * jM6262constructorimpl;
            if ((j10 ^ Long.MIN_VALUE) < (Long.MIN_VALUE ^ jM6262constructorimpl)) {
                jM6262constructorimpl = 0;
            }
            j10 -= jM6262constructorimpl;
        }
        return UInt.m6183constructorimpl((int) j10);
    }

    @InlineOnly
    /* JADX INFO: renamed from: mod-xj2QHRw, reason: not valid java name */
    private static final short m6284modxj2QHRw(long j10, short s5) {
        long jM6262constructorimpl = m6262constructorimpl(((long) s5) & WebSocketProtocol.PAYLOAD_SHORT_MAX);
        if (jM6262constructorimpl < 0) {
            if ((j10 ^ Long.MIN_VALUE) >= (Long.MIN_VALUE ^ jM6262constructorimpl)) {
                j10 -= jM6262constructorimpl;
            }
        } else if (j10 >= 0) {
            j10 %= jM6262constructorimpl;
        } else {
            j10 -= (((j10 >>> 1) / jM6262constructorimpl) << 1) * jM6262constructorimpl;
            if ((j10 ^ Long.MIN_VALUE) < (Long.MIN_VALUE ^ jM6262constructorimpl)) {
                jM6262constructorimpl = 0;
            }
            j10 -= jM6262constructorimpl;
        }
        return UShort.m6369constructorimpl((short) j10);
    }

    @InlineOnly
    /* JADX INFO: renamed from: or-VKZWuLQ, reason: not valid java name */
    private static final long m6285orVKZWuLQ(long j10, long j11) {
        return m6262constructorimpl(j10 | j11);
    }

    @InlineOnly
    /* JADX INFO: renamed from: plus-7apg3OU, reason: not valid java name */
    private static final long m6286plus7apg3OU(long j10, byte b10) {
        return m6262constructorimpl(m6262constructorimpl(((long) b10) & 255) + j10);
    }

    @InlineOnly
    /* JADX INFO: renamed from: plus-VKZWuLQ, reason: not valid java name */
    private static final long m6287plusVKZWuLQ(long j10, long j11) {
        return m6262constructorimpl(j10 + j11);
    }

    @InlineOnly
    /* JADX INFO: renamed from: plus-WZ4Q5Ns, reason: not valid java name */
    private static final long m6288plusWZ4Q5Ns(long j10, int i10) {
        return m6262constructorimpl(m6262constructorimpl(((long) i10) & 4294967295L) + j10);
    }

    @InlineOnly
    /* JADX INFO: renamed from: plus-xj2QHRw, reason: not valid java name */
    private static final long m6289plusxj2QHRw(long j10, short s5) {
        return m6262constructorimpl(m6262constructorimpl(((long) s5) & WebSocketProtocol.PAYLOAD_SHORT_MAX) + j10);
    }

    @InlineOnly
    /* JADX INFO: renamed from: rangeTo-VKZWuLQ, reason: not valid java name */
    private static final ULongRange m6290rangeToVKZWuLQ(long j10, long j11) {
        return new ULongRange(j10, j11, null);
    }

    @SinceKotlin(version = "1.9")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @InlineOnly
    /* JADX INFO: renamed from: rangeUntil-VKZWuLQ, reason: not valid java name */
    private static final ULongRange m6291rangeUntilVKZWuLQ(long j10, long j11) {
        return URangesKt.m7357untileb3DHEI(j10, j11);
    }

    @InlineOnly
    /* JADX INFO: renamed from: rem-7apg3OU, reason: not valid java name */
    private static final long m6292rem7apg3OU(long j10, byte b10) {
        long jM6262constructorimpl = m6262constructorimpl(((long) b10) & 255);
        if (jM6262constructorimpl < 0) {
            return (j10 ^ Long.MIN_VALUE) < (Long.MIN_VALUE ^ jM6262constructorimpl) ? j10 : j10 - jM6262constructorimpl;
        }
        if (j10 >= 0) {
            return j10 % jM6262constructorimpl;
        }
        long j11 = j10 - ((((j10 >>> 1) / jM6262constructorimpl) << 1) * jM6262constructorimpl);
        if ((j11 ^ Long.MIN_VALUE) < (Long.MIN_VALUE ^ jM6262constructorimpl)) {
            jM6262constructorimpl = 0;
        }
        return j11 - jM6262constructorimpl;
    }

    @InlineOnly
    /* JADX INFO: renamed from: rem-VKZWuLQ, reason: not valid java name */
    private static final long m6293remVKZWuLQ(long j10, long j11) {
        return UnsignedKt.m6442ulongRemaindereb3DHEI(j10, j11);
    }

    @InlineOnly
    /* JADX INFO: renamed from: rem-WZ4Q5Ns, reason: not valid java name */
    private static final long m6294remWZ4Q5Ns(long j10, int i10) {
        long jM6262constructorimpl = m6262constructorimpl(((long) i10) & 4294967295L);
        if (jM6262constructorimpl < 0) {
            return (j10 ^ Long.MIN_VALUE) < (Long.MIN_VALUE ^ jM6262constructorimpl) ? j10 : j10 - jM6262constructorimpl;
        }
        if (j10 >= 0) {
            return j10 % jM6262constructorimpl;
        }
        long j11 = j10 - ((((j10 >>> 1) / jM6262constructorimpl) << 1) * jM6262constructorimpl);
        if ((j11 ^ Long.MIN_VALUE) < (Long.MIN_VALUE ^ jM6262constructorimpl)) {
            jM6262constructorimpl = 0;
        }
        return j11 - jM6262constructorimpl;
    }

    @InlineOnly
    /* JADX INFO: renamed from: rem-xj2QHRw, reason: not valid java name */
    private static final long m6295remxj2QHRw(long j10, short s5) {
        long jM6262constructorimpl = m6262constructorimpl(((long) s5) & WebSocketProtocol.PAYLOAD_SHORT_MAX);
        if (jM6262constructorimpl < 0) {
            return (j10 ^ Long.MIN_VALUE) < (Long.MIN_VALUE ^ jM6262constructorimpl) ? j10 : j10 - jM6262constructorimpl;
        }
        if (j10 >= 0) {
            return j10 % jM6262constructorimpl;
        }
        long j11 = j10 - ((((j10 >>> 1) / jM6262constructorimpl) << 1) * jM6262constructorimpl);
        if ((j11 ^ Long.MIN_VALUE) < (Long.MIN_VALUE ^ jM6262constructorimpl)) {
            jM6262constructorimpl = 0;
        }
        return j11 - jM6262constructorimpl;
    }

    @InlineOnly
    /* JADX INFO: renamed from: shl-s-VKNKU, reason: not valid java name */
    private static final long m6296shlsVKNKU(long j10, int i10) {
        return m6262constructorimpl(j10 << i10);
    }

    @InlineOnly
    /* JADX INFO: renamed from: shr-s-VKNKU, reason: not valid java name */
    private static final long m6297shrsVKNKU(long j10, int i10) {
        return m6262constructorimpl(j10 >>> i10);
    }

    @InlineOnly
    /* JADX INFO: renamed from: times-7apg3OU, reason: not valid java name */
    private static final long m6298times7apg3OU(long j10, byte b10) {
        return AbstractC0074a.m152c(((long) b10) & 255, j10);
    }

    @InlineOnly
    /* JADX INFO: renamed from: times-VKZWuLQ, reason: not valid java name */
    private static final long m6299timesVKZWuLQ(long j10, long j11) {
        return m6262constructorimpl(j10 * j11);
    }

    @InlineOnly
    /* JADX INFO: renamed from: times-WZ4Q5Ns, reason: not valid java name */
    private static final long m6300timesWZ4Q5Ns(long j10, int i10) {
        return AbstractC0074a.m152c(((long) i10) & 4294967295L, j10);
    }

    @InlineOnly
    /* JADX INFO: renamed from: times-xj2QHRw, reason: not valid java name */
    private static final long m6301timesxj2QHRw(long j10, short s5) {
        return AbstractC0074a.m152c(((long) s5) & WebSocketProtocol.PAYLOAD_SHORT_MAX, j10);
    }

    @InlineOnly
    /* JADX INFO: renamed from: toByte-impl, reason: not valid java name */
    private static final byte m6302toByteimpl(long j10) {
        return (byte) j10;
    }

    @InlineOnly
    /* JADX INFO: renamed from: toDouble-impl, reason: not valid java name */
    private static final double m6303toDoubleimpl(long j10) {
        return UnsignedKt.ulongToDouble(j10);
    }

    @InlineOnly
    /* JADX INFO: renamed from: toFloat-impl, reason: not valid java name */
    private static final float m6304toFloatimpl(long j10) {
        return (float) UnsignedKt.ulongToDouble(j10);
    }

    @InlineOnly
    /* JADX INFO: renamed from: toInt-impl, reason: not valid java name */
    private static final int m6305toIntimpl(long j10) {
        return (int) j10;
    }

    @InlineOnly
    /* JADX INFO: renamed from: toShort-impl, reason: not valid java name */
    private static final short m6307toShortimpl(long j10) {
        return (short) j10;
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m6308toStringimpl(long j10) {
        return UnsignedKt.ulongToString(j10, 10);
    }

    @InlineOnly
    /* JADX INFO: renamed from: toUByte-w2LRezQ, reason: not valid java name */
    private static final byte m6309toUBytew2LRezQ(long j10) {
        return UByte.m6106constructorimpl((byte) j10);
    }

    @InlineOnly
    /* JADX INFO: renamed from: toUInt-pVg5ArA, reason: not valid java name */
    private static final int m6310toUIntpVg5ArA(long j10) {
        return UInt.m6183constructorimpl((int) j10);
    }

    @InlineOnly
    /* JADX INFO: renamed from: toUShort-Mh2AYeg, reason: not valid java name */
    private static final short m6312toUShortMh2AYeg(long j10) {
        return UShort.m6369constructorimpl((short) j10);
    }

    @InlineOnly
    /* JADX INFO: renamed from: xor-VKZWuLQ, reason: not valid java name */
    private static final long m6313xorVKZWuLQ(long j10, long j11) {
        return m6262constructorimpl(j10 ^ j11);
    }

    @Override // java.lang.Comparable
    public /* bridge */ /* synthetic */ int compareTo(ULong uLong) {
        return UnsignedKt.ulongCompare(getData(), uLong.getData());
    }

    public boolean equals(Object other) {
        return m6268equalsimpl(this.data, other);
    }

    public int hashCode() {
        return m6274hashCodeimpl(this.data);
    }

    public String toString() {
        return m6308toStringimpl(this.data);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name and from getter */
    public final /* synthetic */ long getData() {
        return this.data;
    }

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    @Metadata(m3158d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u0010\u0010\u0004\u001a\u00020\u0005X\u0086T¢\u0006\u0004\n\u0002\u0010\u0006R\u0010\u0010\u0007\u001a\u00020\u0005X\u0086T¢\u0006\u0004\n\u0002\u0010\u0006R\u000e\u0010\b\u001a\u00020\tX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\tX\u0086T¢\u0006\u0002\n\u0000¨\u0006\u000b"}, m3159d2 = {"Lkotlin/ULong$Companion;", "", "<init>", "()V", "MIN_VALUE", "Lkotlin/ULong;", "J", "MAX_VALUE", "SIZE_BYTES", "", "SIZE_BITS", "kotlin-stdlib"}, m3160k = 1, m3161mv = {2, 2, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    @InlineOnly
    /* JADX INFO: renamed from: compareTo-VKZWuLQ, reason: not valid java name */
    private static int m6259compareToVKZWuLQ(long j10, long j11) {
        return UnsignedKt.ulongCompare(j10, j11);
    }

    @PublishedApi
    public static /* synthetic */ void getData$annotations() {
    }

    @PublishedApi
    @IntrinsicConstEvaluation
    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static long m6262constructorimpl(long j10) {
        return j10;
    }

    @InlineOnly
    /* JADX INFO: renamed from: toLong-impl, reason: not valid java name */
    private static final long m6306toLongimpl(long j10) {
        return j10;
    }

    @InlineOnly
    /* JADX INFO: renamed from: toULong-s-VKNKU, reason: not valid java name */
    private static final long m6311toULongsVKNKU(long j10) {
        return j10;
    }
}
