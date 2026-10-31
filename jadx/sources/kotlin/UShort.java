package kotlin;

import ai.onnxruntime.AbstractC0074a;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.exifinterface.media.ExifInterface;
import kotlin.internal.InlineOnly;
import kotlin.internal.IntrinsicConstEvaluation;
import kotlin.jvm.JvmInline;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.UIntRange;
import kotlin.ranges.URangesKt;
import okhttp3.internal.p160ws.WebSocketProtocol;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
@SinceKotlin(version = "1.5")
@Metadata(m3158d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0000\n\u0002\u0010\n\n\u0002\b\u0005\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b-\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u0005\n\u0002\b\b\n\u0002\u0010\t\n\u0002\b\u000b\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0010\u0006\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0087@\u0018\u0000 s2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001sB\u0011\b\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0018\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0087\n¢\u0006\u0004\b\f\u0010\rJ\u0018\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0000H\u0097\n¢\u0006\u0004\b\u000e\u0010\u000fJ\u0018\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0010H\u0087\n¢\u0006\u0004\b\u0011\u0010\u0012J\u0018\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0013H\u0087\n¢\u0006\u0004\b\u0014\u0010\u0015J\u0018\u0010\u0016\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\u000bH\u0087\n¢\u0006\u0004\b\u0017\u0010\rJ\u0018\u0010\u0016\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\u0000H\u0087\n¢\u0006\u0004\b\u0018\u0010\u000fJ\u0018\u0010\u0016\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\u0010H\u0087\n¢\u0006\u0004\b\u0019\u0010\u0012J\u0018\u0010\u0016\u001a\u00020\u00132\u0006\u0010\n\u001a\u00020\u0013H\u0087\n¢\u0006\u0004\b\u001a\u0010\u001bJ\u0018\u0010\u001c\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\u000bH\u0087\n¢\u0006\u0004\b\u001d\u0010\rJ\u0018\u0010\u001c\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\u0000H\u0087\n¢\u0006\u0004\b\u001e\u0010\u000fJ\u0018\u0010\u001c\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\u0010H\u0087\n¢\u0006\u0004\b\u001f\u0010\u0012J\u0018\u0010\u001c\u001a\u00020\u00132\u0006\u0010\n\u001a\u00020\u0013H\u0087\n¢\u0006\u0004\b \u0010\u001bJ\u0018\u0010!\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\u000bH\u0087\n¢\u0006\u0004\b\"\u0010\rJ\u0018\u0010!\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\u0000H\u0087\n¢\u0006\u0004\b#\u0010\u000fJ\u0018\u0010!\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\u0010H\u0087\n¢\u0006\u0004\b$\u0010\u0012J\u0018\u0010!\u001a\u00020\u00132\u0006\u0010\n\u001a\u00020\u0013H\u0087\n¢\u0006\u0004\b%\u0010\u001bJ\u0018\u0010&\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\u000bH\u0087\n¢\u0006\u0004\b'\u0010\rJ\u0018\u0010&\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\u0000H\u0087\n¢\u0006\u0004\b(\u0010\u000fJ\u0018\u0010&\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\u0010H\u0087\n¢\u0006\u0004\b)\u0010\u0012J\u0018\u0010&\u001a\u00020\u00132\u0006\u0010\n\u001a\u00020\u0013H\u0087\n¢\u0006\u0004\b*\u0010\u001bJ\u0018\u0010+\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\u000bH\u0087\n¢\u0006\u0004\b,\u0010\rJ\u0018\u0010+\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\u0000H\u0087\n¢\u0006\u0004\b-\u0010\u000fJ\u0018\u0010+\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\u0010H\u0087\n¢\u0006\u0004\b.\u0010\u0012J\u0018\u0010+\u001a\u00020\u00132\u0006\u0010\n\u001a\u00020\u0013H\u0087\n¢\u0006\u0004\b/\u0010\u001bJ\u0018\u00100\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\u000bH\u0087\b¢\u0006\u0004\b1\u0010\rJ\u0018\u00100\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\u0000H\u0087\b¢\u0006\u0004\b2\u0010\u000fJ\u0018\u00100\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\u0010H\u0087\b¢\u0006\u0004\b3\u0010\u0012J\u0018\u00100\u001a\u00020\u00132\u0006\u0010\n\u001a\u00020\u0013H\u0087\b¢\u0006\u0004\b4\u0010\u001bJ\u0018\u00105\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u000bH\u0087\b¢\u0006\u0004\b6\u00107J\u0018\u00105\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0000H\u0087\b¢\u0006\u0004\b8\u00109J\u0018\u00105\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\u0010H\u0087\b¢\u0006\u0004\b:\u0010\u0012J\u0018\u00105\u001a\u00020\u00132\u0006\u0010\n\u001a\u00020\u0013H\u0087\b¢\u0006\u0004\b;\u0010\u001bJ\u0010\u0010<\u001a\u00020\u0000H\u0087\n¢\u0006\u0004\b=\u0010\u0005J\u0010\u0010>\u001a\u00020\u0000H\u0087\n¢\u0006\u0004\b?\u0010\u0005J\u0018\u0010@\u001a\u00020A2\u0006\u0010\n\u001a\u00020\u0000H\u0087\n¢\u0006\u0004\bB\u0010CJ\u0018\u0010D\u001a\u00020A2\u0006\u0010\n\u001a\u00020\u0000H\u0087\n¢\u0006\u0004\bE\u0010CJ\u0018\u0010F\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0000H\u0087\f¢\u0006\u0004\bG\u00109J\u0018\u0010H\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0000H\u0087\f¢\u0006\u0004\bI\u00109J\u0018\u0010J\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0000H\u0087\f¢\u0006\u0004\bK\u00109J\u0010\u0010L\u001a\u00020\u0000H\u0087\b¢\u0006\u0004\bM\u0010\u0005J\u0010\u0010N\u001a\u00020OH\u0087\b¢\u0006\u0004\bP\u0010QJ\u0010\u0010R\u001a\u00020\u0003H\u0087\b¢\u0006\u0004\bS\u0010\u0005J\u0010\u0010T\u001a\u00020\tH\u0087\b¢\u0006\u0004\bU\u0010VJ\u0010\u0010W\u001a\u00020XH\u0087\b¢\u0006\u0004\bY\u0010ZJ\u0010\u0010[\u001a\u00020\u000bH\u0087\b¢\u0006\u0004\b\\\u0010QJ\u0010\u0010]\u001a\u00020\u0000H\u0087\b¢\u0006\u0004\b^\u0010\u0005J\u0010\u0010_\u001a\u00020\u0010H\u0087\b¢\u0006\u0004\b`\u0010VJ\u0010\u0010a\u001a\u00020\u0013H\u0087\b¢\u0006\u0004\bb\u0010ZJ\u0010\u0010c\u001a\u00020dH\u0087\b¢\u0006\u0004\be\u0010fJ\u0010\u0010g\u001a\u00020hH\u0087\b¢\u0006\u0004\bi\u0010jJ\u000f\u0010k\u001a\u00020lH\u0016¢\u0006\u0004\bm\u0010nJ\u0013\u0010o\u001a\u00020p2\b\u0010\n\u001a\u0004\u0018\u00010qHÖ\u0003J\t\u0010r\u001a\u00020\tHÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0000X\u0081\u0004¢\u0006\b\n\u0000\u0012\u0004\b\u0006\u0010\u0007\u0088\u0001\u0002\u0092\u0001\u00020\u0003¨\u0006t"}, m3159d2 = {"Lkotlin/UShort;", "", "data", "", "constructor-impl", "(S)S", "getData$annotations", "()V", "compareTo", "", "other", "Lkotlin/UByte;", "compareTo-7apg3OU", "(SB)I", "compareTo-xj2QHRw", "(SS)I", "Lkotlin/UInt;", "compareTo-WZ4Q5Ns", "(SI)I", "Lkotlin/ULong;", "compareTo-VKZWuLQ", "(SJ)I", "plus", "plus-7apg3OU", "plus-xj2QHRw", "plus-WZ4Q5Ns", "plus-VKZWuLQ", "(SJ)J", "minus", "minus-7apg3OU", "minus-xj2QHRw", "minus-WZ4Q5Ns", "minus-VKZWuLQ", "times", "times-7apg3OU", "times-xj2QHRw", "times-WZ4Q5Ns", "times-VKZWuLQ", "div", "div-7apg3OU", "div-xj2QHRw", "div-WZ4Q5Ns", "div-VKZWuLQ", "rem", "rem-7apg3OU", "rem-xj2QHRw", "rem-WZ4Q5Ns", "rem-VKZWuLQ", "floorDiv", "floorDiv-7apg3OU", "floorDiv-xj2QHRw", "floorDiv-WZ4Q5Ns", "floorDiv-VKZWuLQ", "mod", "mod-7apg3OU", "(SB)B", "mod-xj2QHRw", "(SS)S", "mod-WZ4Q5Ns", "mod-VKZWuLQ", "inc", "inc-Mh2AYeg", "dec", "dec-Mh2AYeg", "rangeTo", "Lkotlin/ranges/UIntRange;", "rangeTo-xj2QHRw", "(SS)Lkotlin/ranges/UIntRange;", "rangeUntil", "rangeUntil-xj2QHRw", "and", "and-xj2QHRw", "or", "or-xj2QHRw", "xor", "xor-xj2QHRw", "inv", "inv-Mh2AYeg", "toByte", "", "toByte-impl", "(S)B", "toShort", "toShort-impl", "toInt", "toInt-impl", "(S)I", "toLong", "", "toLong-impl", "(S)J", "toUByte", "toUByte-w2LRezQ", "toUShort", "toUShort-Mh2AYeg", "toUInt", "toUInt-pVg5ArA", "toULong", "toULong-s-VKNKU", "toFloat", "", "toFloat-impl", "(S)F", "toDouble", "", "toDouble-impl", "(S)D", "toString", "", "toString-impl", "(S)Ljava/lang/String;", "equals", "", "", "hashCode", "Companion", "kotlin-stdlib"}, m3160k = 1, m3161mv = {2, 2, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
@JvmInline
public final class UShort implements Comparable<UShort> {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final short MAX_VALUE = -1;
    public static final short MIN_VALUE = 0;
    public static final int SIZE_BITS = 16;
    public static final int SIZE_BYTES = 2;
    private final short data;

    @PublishedApi
    @IntrinsicConstEvaluation
    private /* synthetic */ UShort(short s5) {
        this.data = s5;
    }

    @InlineOnly
    /* JADX INFO: renamed from: and-xj2QHRw, reason: not valid java name */
    private static final short m6362andxj2QHRw(short s5, short s9) {
        return m6369constructorimpl((short) (s5 & s9));
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ UShort m6363boximpl(short s5) {
        return new UShort(s5);
    }

    @InlineOnly
    /* JADX INFO: renamed from: compareTo-7apg3OU, reason: not valid java name */
    private static final int m6364compareTo7apg3OU(short s5, byte b10) {
        return Intrinsics.compare(s5 & MAX_VALUE, b10 & UByte.MAX_VALUE);
    }

    @InlineOnly
    /* JADX INFO: renamed from: compareTo-VKZWuLQ, reason: not valid java name */
    private static final int m6365compareToVKZWuLQ(short s5, long j10) {
        return Long.compare(ULong.m6262constructorimpl(((long) s5) & WebSocketProtocol.PAYLOAD_SHORT_MAX) ^ Long.MIN_VALUE, j10 ^ Long.MIN_VALUE);
    }

    @InlineOnly
    /* JADX INFO: renamed from: compareTo-WZ4Q5Ns, reason: not valid java name */
    private static final int m6366compareToWZ4Q5Ns(short s5, int i10) {
        return Integer.compare(UInt.m6183constructorimpl(s5 & MAX_VALUE) ^ Integer.MIN_VALUE, i10 ^ Integer.MIN_VALUE);
    }

    @InlineOnly
    /* JADX INFO: renamed from: compareTo-xj2QHRw, reason: not valid java name */
    private int m6367compareToxj2QHRw(short s5) {
        return Intrinsics.compare(getData() & MAX_VALUE, s5 & MAX_VALUE);
    }

    @InlineOnly
    /* JADX INFO: renamed from: dec-Mh2AYeg, reason: not valid java name */
    private static final short m6370decMh2AYeg(short s5) {
        return m6369constructorimpl((short) (s5 - 1));
    }

    @InlineOnly
    /* JADX INFO: renamed from: div-7apg3OU, reason: not valid java name */
    private static final int m6371div7apg3OU(short s5, byte b10) {
        return (int) ((((long) UInt.m6183constructorimpl(s5 & MAX_VALUE)) & 4294967295L) / (((long) UInt.m6183constructorimpl(b10 & UByte.MAX_VALUE)) & 4294967295L));
    }

    @InlineOnly
    /* JADX INFO: renamed from: div-VKZWuLQ, reason: not valid java name */
    private static final long m6372divVKZWuLQ(short s5, long j10) {
        long jM6262constructorimpl = ULong.m6262constructorimpl(((long) s5) & WebSocketProtocol.PAYLOAD_SHORT_MAX);
        if (j10 < 0) {
            return (jM6262constructorimpl ^ Long.MIN_VALUE) < (j10 ^ Long.MIN_VALUE) ? 0L : 1L;
        }
        if (jM6262constructorimpl >= 0) {
            return jM6262constructorimpl / j10;
        }
        long j11 = ((jM6262constructorimpl >>> 1) / j10) << 1;
        return j11 + ((long) (((jM6262constructorimpl - (j11 * j10)) ^ Long.MIN_VALUE) < (j10 ^ Long.MIN_VALUE) ? 0 : 1));
    }

    @InlineOnly
    /* JADX INFO: renamed from: div-WZ4Q5Ns, reason: not valid java name */
    private static final int m6373divWZ4Q5Ns(short s5, int i10) {
        return (int) ((((long) UInt.m6183constructorimpl(s5 & MAX_VALUE)) & 4294967295L) / (((long) i10) & 4294967295L));
    }

    @InlineOnly
    /* JADX INFO: renamed from: div-xj2QHRw, reason: not valid java name */
    private static final int m6374divxj2QHRw(short s5, short s9) {
        return (int) ((((long) UInt.m6183constructorimpl(s5 & MAX_VALUE)) & 4294967295L) / (((long) UInt.m6183constructorimpl(s9 & MAX_VALUE)) & 4294967295L));
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m6375equalsimpl(short s5, Object obj) {
        return (obj instanceof UShort) && s5 == ((UShort) obj).getData();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m6376equalsimpl0(short s5, short s9) {
        return s5 == s9;
    }

    @InlineOnly
    /* JADX INFO: renamed from: floorDiv-7apg3OU, reason: not valid java name */
    private static final int m6377floorDiv7apg3OU(short s5, byte b10) {
        return (int) ((((long) UInt.m6183constructorimpl(s5 & MAX_VALUE)) & 4294967295L) / (((long) UInt.m6183constructorimpl(b10 & UByte.MAX_VALUE)) & 4294967295L));
    }

    @InlineOnly
    /* JADX INFO: renamed from: floorDiv-VKZWuLQ, reason: not valid java name */
    private static final long m6378floorDivVKZWuLQ(short s5, long j10) {
        long jM6262constructorimpl = ULong.m6262constructorimpl(((long) s5) & WebSocketProtocol.PAYLOAD_SHORT_MAX);
        if (j10 < 0) {
            return (jM6262constructorimpl ^ Long.MIN_VALUE) < (j10 ^ Long.MIN_VALUE) ? 0L : 1L;
        }
        if (jM6262constructorimpl >= 0) {
            return jM6262constructorimpl / j10;
        }
        long j11 = ((jM6262constructorimpl >>> 1) / j10) << 1;
        return j11 + ((long) (((jM6262constructorimpl - (j11 * j10)) ^ Long.MIN_VALUE) < (j10 ^ Long.MIN_VALUE) ? 0 : 1));
    }

    @InlineOnly
    /* JADX INFO: renamed from: floorDiv-WZ4Q5Ns, reason: not valid java name */
    private static final int m6379floorDivWZ4Q5Ns(short s5, int i10) {
        return (int) ((((long) UInt.m6183constructorimpl(s5 & MAX_VALUE)) & 4294967295L) / (((long) i10) & 4294967295L));
    }

    @InlineOnly
    /* JADX INFO: renamed from: floorDiv-xj2QHRw, reason: not valid java name */
    private static final int m6380floorDivxj2QHRw(short s5, short s9) {
        return (int) ((((long) UInt.m6183constructorimpl(s5 & MAX_VALUE)) & 4294967295L) / (((long) UInt.m6183constructorimpl(s9 & MAX_VALUE)) & 4294967295L));
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m6381hashCodeimpl(short s5) {
        return Short.hashCode(s5);
    }

    @InlineOnly
    /* JADX INFO: renamed from: inc-Mh2AYeg, reason: not valid java name */
    private static final short m6382incMh2AYeg(short s5) {
        return m6369constructorimpl((short) (s5 + 1));
    }

    @InlineOnly
    /* JADX INFO: renamed from: inv-Mh2AYeg, reason: not valid java name */
    private static final short m6383invMh2AYeg(short s5) {
        return m6369constructorimpl((short) (~s5));
    }

    @InlineOnly
    /* JADX INFO: renamed from: minus-7apg3OU, reason: not valid java name */
    private static final int m6384minus7apg3OU(short s5, byte b10) {
        return UInt.m6183constructorimpl(UInt.m6183constructorimpl(s5 & MAX_VALUE) - UInt.m6183constructorimpl(b10 & UByte.MAX_VALUE));
    }

    @InlineOnly
    /* JADX INFO: renamed from: minus-VKZWuLQ, reason: not valid java name */
    private static final long m6385minusVKZWuLQ(short s5, long j10) {
        return ULong.m6262constructorimpl(ULong.m6262constructorimpl(((long) s5) & WebSocketProtocol.PAYLOAD_SHORT_MAX) - j10);
    }

    @InlineOnly
    /* JADX INFO: renamed from: minus-WZ4Q5Ns, reason: not valid java name */
    private static final int m6386minusWZ4Q5Ns(short s5, int i10) {
        return UInt.m6183constructorimpl(UInt.m6183constructorimpl(s5 & MAX_VALUE) - i10);
    }

    @InlineOnly
    /* JADX INFO: renamed from: minus-xj2QHRw, reason: not valid java name */
    private static final int m6387minusxj2QHRw(short s5, short s9) {
        return UInt.m6183constructorimpl(UInt.m6183constructorimpl(s5 & MAX_VALUE) - UInt.m6183constructorimpl(s9 & MAX_VALUE));
    }

    @InlineOnly
    /* JADX INFO: renamed from: mod-7apg3OU, reason: not valid java name */
    private static final byte m6388mod7apg3OU(short s5, byte b10) {
        return UByte.m6106constructorimpl((byte) ((((long) UInt.m6183constructorimpl(s5 & MAX_VALUE)) & 4294967295L) % (((long) UInt.m6183constructorimpl(b10 & UByte.MAX_VALUE)) & 4294967295L)));
    }

    @InlineOnly
    /* JADX INFO: renamed from: mod-VKZWuLQ, reason: not valid java name */
    private static final long m6389modVKZWuLQ(short s5, long j10) {
        long jM6262constructorimpl = ULong.m6262constructorimpl(((long) s5) & WebSocketProtocol.PAYLOAD_SHORT_MAX);
        if (j10 < 0) {
            return (jM6262constructorimpl ^ Long.MIN_VALUE) < (Long.MIN_VALUE ^ j10) ? jM6262constructorimpl : jM6262constructorimpl - j10;
        }
        if (jM6262constructorimpl >= 0) {
            return jM6262constructorimpl % j10;
        }
        long j11 = jM6262constructorimpl - ((((jM6262constructorimpl >>> 1) / j10) << 1) * j10);
        if ((j11 ^ Long.MIN_VALUE) < (Long.MIN_VALUE ^ j10)) {
            j10 = 0;
        }
        return j11 - j10;
    }

    @InlineOnly
    /* JADX INFO: renamed from: mod-WZ4Q5Ns, reason: not valid java name */
    private static final int m6390modWZ4Q5Ns(short s5, int i10) {
        return (int) ((((long) UInt.m6183constructorimpl(s5 & MAX_VALUE)) & 4294967295L) % (((long) i10) & 4294967295L));
    }

    @InlineOnly
    /* JADX INFO: renamed from: mod-xj2QHRw, reason: not valid java name */
    private static final short m6391modxj2QHRw(short s5, short s9) {
        return m6369constructorimpl((short) ((((long) UInt.m6183constructorimpl(s5 & MAX_VALUE)) & 4294967295L) % (((long) UInt.m6183constructorimpl(s9 & MAX_VALUE)) & 4294967295L)));
    }

    @InlineOnly
    /* JADX INFO: renamed from: or-xj2QHRw, reason: not valid java name */
    private static final short m6392orxj2QHRw(short s5, short s9) {
        return m6369constructorimpl((short) (s5 | s9));
    }

    @InlineOnly
    /* JADX INFO: renamed from: plus-7apg3OU, reason: not valid java name */
    private static final int m6393plus7apg3OU(short s5, byte b10) {
        return UInt.m6183constructorimpl(UInt.m6183constructorimpl(b10 & UByte.MAX_VALUE) + UInt.m6183constructorimpl(s5 & MAX_VALUE));
    }

    @InlineOnly
    /* JADX INFO: renamed from: plus-VKZWuLQ, reason: not valid java name */
    private static final long m6394plusVKZWuLQ(short s5, long j10) {
        return ULong.m6262constructorimpl(ULong.m6262constructorimpl(((long) s5) & WebSocketProtocol.PAYLOAD_SHORT_MAX) + j10);
    }

    @InlineOnly
    /* JADX INFO: renamed from: plus-WZ4Q5Ns, reason: not valid java name */
    private static final int m6395plusWZ4Q5Ns(short s5, int i10) {
        return UInt.m6183constructorimpl(UInt.m6183constructorimpl(s5 & MAX_VALUE) + i10);
    }

    @InlineOnly
    /* JADX INFO: renamed from: plus-xj2QHRw, reason: not valid java name */
    private static final int m6396plusxj2QHRw(short s5, short s9) {
        return UInt.m6183constructorimpl(UInt.m6183constructorimpl(s9 & MAX_VALUE) + UInt.m6183constructorimpl(s5 & MAX_VALUE));
    }

    @InlineOnly
    /* JADX INFO: renamed from: rangeTo-xj2QHRw, reason: not valid java name */
    private static final UIntRange m6397rangeToxj2QHRw(short s5, short s9) {
        return new UIntRange(UInt.m6183constructorimpl(s5 & MAX_VALUE), UInt.m6183constructorimpl(s9 & MAX_VALUE), null);
    }

    @SinceKotlin(version = "1.9")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @InlineOnly
    /* JADX INFO: renamed from: rangeUntil-xj2QHRw, reason: not valid java name */
    private static final UIntRange m6398rangeUntilxj2QHRw(short s5, short s9) {
        return URangesKt.m7355untilJ1ME1BU(UInt.m6183constructorimpl(s5 & MAX_VALUE), UInt.m6183constructorimpl(s9 & MAX_VALUE));
    }

    @InlineOnly
    /* JADX INFO: renamed from: rem-7apg3OU, reason: not valid java name */
    private static final int m6399rem7apg3OU(short s5, byte b10) {
        return (int) ((((long) UInt.m6183constructorimpl(s5 & MAX_VALUE)) & 4294967295L) % (((long) UInt.m6183constructorimpl(b10 & UByte.MAX_VALUE)) & 4294967295L));
    }

    @InlineOnly
    /* JADX INFO: renamed from: rem-VKZWuLQ, reason: not valid java name */
    private static final long m6400remVKZWuLQ(short s5, long j10) {
        long jM6262constructorimpl = ULong.m6262constructorimpl(((long) s5) & WebSocketProtocol.PAYLOAD_SHORT_MAX);
        if (j10 < 0) {
            return (jM6262constructorimpl ^ Long.MIN_VALUE) < (Long.MIN_VALUE ^ j10) ? jM6262constructorimpl : jM6262constructorimpl - j10;
        }
        if (jM6262constructorimpl >= 0) {
            return jM6262constructorimpl % j10;
        }
        long j11 = jM6262constructorimpl - ((((jM6262constructorimpl >>> 1) / j10) << 1) * j10);
        if ((j11 ^ Long.MIN_VALUE) < (Long.MIN_VALUE ^ j10)) {
            j10 = 0;
        }
        return j11 - j10;
    }

    @InlineOnly
    /* JADX INFO: renamed from: rem-WZ4Q5Ns, reason: not valid java name */
    private static final int m6401remWZ4Q5Ns(short s5, int i10) {
        return (int) ((((long) UInt.m6183constructorimpl(s5 & MAX_VALUE)) & 4294967295L) % (((long) i10) & 4294967295L));
    }

    @InlineOnly
    /* JADX INFO: renamed from: rem-xj2QHRw, reason: not valid java name */
    private static final int m6402remxj2QHRw(short s5, short s9) {
        return (int) ((((long) UInt.m6183constructorimpl(s5 & MAX_VALUE)) & 4294967295L) % (((long) UInt.m6183constructorimpl(s9 & MAX_VALUE)) & 4294967295L));
    }

    @InlineOnly
    /* JADX INFO: renamed from: times-7apg3OU, reason: not valid java name */
    private static final int m6403times7apg3OU(short s5, byte b10) {
        return UInt.m6183constructorimpl(UInt.m6183constructorimpl(b10 & UByte.MAX_VALUE) * UInt.m6183constructorimpl(s5 & MAX_VALUE));
    }

    @InlineOnly
    /* JADX INFO: renamed from: times-VKZWuLQ, reason: not valid java name */
    private static final long m6404timesVKZWuLQ(short s5, long j10) {
        return AbstractC0074a.m152c(((long) s5) & WebSocketProtocol.PAYLOAD_SHORT_MAX, j10);
    }

    @InlineOnly
    /* JADX INFO: renamed from: times-WZ4Q5Ns, reason: not valid java name */
    private static final int m6405timesWZ4Q5Ns(short s5, int i10) {
        return UInt.m6183constructorimpl(UInt.m6183constructorimpl(s5 & MAX_VALUE) * i10);
    }

    @InlineOnly
    /* JADX INFO: renamed from: times-xj2QHRw, reason: not valid java name */
    private static final int m6406timesxj2QHRw(short s5, short s9) {
        return UInt.m6183constructorimpl(UInt.m6183constructorimpl(s9 & MAX_VALUE) * UInt.m6183constructorimpl(s5 & MAX_VALUE));
    }

    @InlineOnly
    /* JADX INFO: renamed from: toByte-impl, reason: not valid java name */
    private static final byte m6407toByteimpl(short s5) {
        return (byte) s5;
    }

    @InlineOnly
    /* JADX INFO: renamed from: toDouble-impl, reason: not valid java name */
    private static final double m6408toDoubleimpl(short s5) {
        return UnsignedKt.uintToDouble(s5 & MAX_VALUE);
    }

    @InlineOnly
    /* JADX INFO: renamed from: toFloat-impl, reason: not valid java name */
    private static final float m6409toFloatimpl(short s5) {
        return (float) UnsignedKt.uintToDouble(s5 & MAX_VALUE);
    }

    @InlineOnly
    /* JADX INFO: renamed from: toInt-impl, reason: not valid java name */
    private static final int m6410toIntimpl(short s5) {
        return s5 & MAX_VALUE;
    }

    @InlineOnly
    /* JADX INFO: renamed from: toLong-impl, reason: not valid java name */
    private static final long m6411toLongimpl(short s5) {
        return ((long) s5) & WebSocketProtocol.PAYLOAD_SHORT_MAX;
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m6413toStringimpl(short s5) {
        return String.valueOf(s5 & MAX_VALUE);
    }

    @InlineOnly
    /* JADX INFO: renamed from: toUByte-w2LRezQ, reason: not valid java name */
    private static final byte m6414toUBytew2LRezQ(short s5) {
        return UByte.m6106constructorimpl((byte) s5);
    }

    @InlineOnly
    /* JADX INFO: renamed from: toUInt-pVg5ArA, reason: not valid java name */
    private static final int m6415toUIntpVg5ArA(short s5) {
        return UInt.m6183constructorimpl(s5 & MAX_VALUE);
    }

    @InlineOnly
    /* JADX INFO: renamed from: toULong-s-VKNKU, reason: not valid java name */
    private static final long m6416toULongsVKNKU(short s5) {
        return ULong.m6262constructorimpl(((long) s5) & WebSocketProtocol.PAYLOAD_SHORT_MAX);
    }

    @InlineOnly
    /* JADX INFO: renamed from: xor-xj2QHRw, reason: not valid java name */
    private static final short m6418xorxj2QHRw(short s5, short s9) {
        return m6369constructorimpl((short) (s5 ^ s9));
    }

    @Override // java.lang.Comparable
    public /* bridge */ /* synthetic */ int compareTo(UShort uShort) {
        return Intrinsics.compare(getData() & MAX_VALUE, uShort.getData() & MAX_VALUE);
    }

    public boolean equals(Object other) {
        return m6375equalsimpl(this.data, other);
    }

    public int hashCode() {
        return m6381hashCodeimpl(this.data);
    }

    public String toString() {
        return m6413toStringimpl(this.data);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name and from getter */
    public final /* synthetic */ short getData() {
        return this.data;
    }

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    @Metadata(m3158d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u0010\u0010\u0004\u001a\u00020\u0005X\u0086T¢\u0006\u0004\n\u0002\u0010\u0006R\u0010\u0010\u0007\u001a\u00020\u0005X\u0086T¢\u0006\u0004\n\u0002\u0010\u0006R\u000e\u0010\b\u001a\u00020\tX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\tX\u0086T¢\u0006\u0002\n\u0000¨\u0006\u000b"}, m3159d2 = {"Lkotlin/UShort$Companion;", "", "<init>", "()V", "MIN_VALUE", "Lkotlin/UShort;", ExifInterface.LATITUDE_SOUTH, "MAX_VALUE", "SIZE_BYTES", "", "SIZE_BITS", "kotlin-stdlib"}, m3160k = 1, m3161mv = {2, 2, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    @InlineOnly
    /* JADX INFO: renamed from: compareTo-xj2QHRw, reason: not valid java name */
    private static int m6368compareToxj2QHRw(short s5, short s9) {
        return Intrinsics.compare(s5 & MAX_VALUE, s9 & MAX_VALUE);
    }

    @PublishedApi
    public static /* synthetic */ void getData$annotations() {
    }

    @PublishedApi
    @IntrinsicConstEvaluation
    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static short m6369constructorimpl(short s5) {
        return s5;
    }

    @InlineOnly
    /* JADX INFO: renamed from: toShort-impl, reason: not valid java name */
    private static final short m6412toShortimpl(short s5) {
        return s5;
    }

    @InlineOnly
    /* JADX INFO: renamed from: toUShort-Mh2AYeg, reason: not valid java name */
    private static final short m6417toUShortMh2AYeg(short s5) {
        return s5;
    }
}
