package kotlin.comparisons;

import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.internal.InlineOnly;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Metadata(d1 = {"\u0000J\n\u0002\b\u0002\n\u0002\u0010\u000f\n\u0002\b\u0003\n\u0002\u0010\u0005\n\u0002\u0010\n\n\u0002\u0010\b\n\u0002\u0010\t\n\u0002\u0010\u0007\n\u0002\u0010\u0006\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0012\n\u0002\u0010\u0017\n\u0002\u0010\u0015\n\u0002\u0010\u0016\n\u0002\u0010\u0014\n\u0002\u0010\u0013\n\u0002\b\u0002\u001a-\u0010\u0000\u001a\u0002H\u0001\"\u000e\b\u0000\u0010\u0001*\b\u0012\u0004\u0012\u0002H\u00010\u00022\u0006\u0010\u0003\u001a\u0002H\u00012\u0006\u0010\u0004\u001a\u0002H\u0001H\u0007¢\u0006\u0002\u0010\u0005\u001a\u0019\u0010\u0000\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00062\u0006\u0010\u0004\u001a\u00020\u0006H\u0087\b\u001a\u0019\u0010\u0000\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u0007H\u0087\b\u001a\u0019\u0010\u0000\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\b2\u0006\u0010\u0004\u001a\u00020\bH\u0087\b\u001a\u0019\u0010\u0000\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\tH\u0087\b\u001a\u0019\u0010\u0000\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\n2\u0006\u0010\u0004\u001a\u00020\nH\u0087\b\u001a\u0019\u0010\u0000\u001a\u00020\u000b2\u0006\u0010\u0003\u001a\u00020\u000b2\u0006\u0010\u0004\u001a\u00020\u000bH\u0087\b\u001a5\u0010\u0000\u001a\u0002H\u0001\"\u000e\b\u0000\u0010\u0001*\b\u0012\u0004\u0012\u0002H\u00010\u00022\u0006\u0010\u0003\u001a\u0002H\u00012\u0006\u0010\u0004\u001a\u0002H\u00012\u0006\u0010\f\u001a\u0002H\u0001H\u0007¢\u0006\u0002\u0010\r\u001a!\u0010\u0000\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00062\u0006\u0010\u0004\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\u0006H\u0087\b\u001a!\u0010\u0000\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\u0007H\u0087\b\u001a!\u0010\u0000\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\b2\u0006\u0010\u0004\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\bH\u0087\b\u001a!\u0010\u0000\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\tH\u0087\b\u001a!\u0010\u0000\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\n2\u0006\u0010\u0004\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\nH\u0087\b\u001a!\u0010\u0000\u001a\u00020\u000b2\u0006\u0010\u0003\u001a\u00020\u000b2\u0006\u0010\u0004\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u000bH\u0087\b\u001a9\u0010\u0000\u001a\u0002H\u0001\"\u000e\b\u0000\u0010\u0001*\b\u0012\u0004\u0012\u0002H\u00010\u00022\u0006\u0010\u0003\u001a\u0002H\u00012\u0012\u0010\u000e\u001a\n\u0012\u0006\b\u0001\u0012\u0002H\u00010\u000f\"\u0002H\u0001H\u0007¢\u0006\u0002\u0010\u0010\u001a\u001c\u0010\u0000\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00062\n\u0010\u000e\u001a\u00020\u0011\"\u00020\u0006H\u0007\u001a\u001c\u0010\u0000\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00072\n\u0010\u000e\u001a\u00020\u0012\"\u00020\u0007H\u0007\u001a\u001c\u0010\u0000\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\b2\n\u0010\u000e\u001a\u00020\u0013\"\u00020\bH\u0007\u001a\u001c\u0010\u0000\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\t2\n\u0010\u000e\u001a\u00020\u0014\"\u00020\tH\u0007\u001a\u001c\u0010\u0000\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\n2\n\u0010\u000e\u001a\u00020\u0015\"\u00020\nH\u0007\u001a\u001c\u0010\u0000\u001a\u00020\u000b2\u0006\u0010\u0003\u001a\u00020\u000b2\n\u0010\u000e\u001a\u00020\u0016\"\u00020\u000bH\u0007\u001a-\u0010\u0017\u001a\u0002H\u0001\"\u000e\b\u0000\u0010\u0001*\b\u0012\u0004\u0012\u0002H\u00010\u00022\u0006\u0010\u0003\u001a\u0002H\u00012\u0006\u0010\u0004\u001a\u0002H\u0001H\u0007¢\u0006\u0002\u0010\u0005\u001a\u0019\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00062\u0006\u0010\u0004\u001a\u00020\u0006H\u0087\b\u001a\u0019\u0010\u0017\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u0007H\u0087\b\u001a\u0019\u0010\u0017\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\b2\u0006\u0010\u0004\u001a\u00020\bH\u0087\b\u001a\u0019\u0010\u0017\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\tH\u0087\b\u001a\u0019\u0010\u0017\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\n2\u0006\u0010\u0004\u001a\u00020\nH\u0087\b\u001a\u0019\u0010\u0017\u001a\u00020\u000b2\u0006\u0010\u0003\u001a\u00020\u000b2\u0006\u0010\u0004\u001a\u00020\u000bH\u0087\b\u001a5\u0010\u0017\u001a\u0002H\u0001\"\u000e\b\u0000\u0010\u0001*\b\u0012\u0004\u0012\u0002H\u00010\u00022\u0006\u0010\u0003\u001a\u0002H\u00012\u0006\u0010\u0004\u001a\u0002H\u00012\u0006\u0010\f\u001a\u0002H\u0001H\u0007¢\u0006\u0002\u0010\r\u001a!\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00062\u0006\u0010\u0004\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\u0006H\u0087\b\u001a!\u0010\u0017\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\u0007H\u0087\b\u001a!\u0010\u0017\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\b2\u0006\u0010\u0004\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\bH\u0087\b\u001a!\u0010\u0017\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\tH\u0087\b\u001a!\u0010\u0017\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\n2\u0006\u0010\u0004\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\nH\u0087\b\u001a!\u0010\u0017\u001a\u00020\u000b2\u0006\u0010\u0003\u001a\u00020\u000b2\u0006\u0010\u0004\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u000bH\u0087\b\u001a9\u0010\u0017\u001a\u0002H\u0001\"\u000e\b\u0000\u0010\u0001*\b\u0012\u0004\u0012\u0002H\u00010\u00022\u0006\u0010\u0003\u001a\u0002H\u00012\u0012\u0010\u000e\u001a\n\u0012\u0006\b\u0001\u0012\u0002H\u00010\u000f\"\u0002H\u0001H\u0007¢\u0006\u0002\u0010\u0010\u001a\u001c\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00062\n\u0010\u000e\u001a\u00020\u0011\"\u00020\u0006H\u0007\u001a\u001c\u0010\u0017\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00072\n\u0010\u000e\u001a\u00020\u0012\"\u00020\u0007H\u0007\u001a\u001c\u0010\u0017\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\b2\n\u0010\u000e\u001a\u00020\u0013\"\u00020\bH\u0007\u001a\u001c\u0010\u0017\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\t2\n\u0010\u000e\u001a\u00020\u0014\"\u00020\tH\u0007\u001a\u001c\u0010\u0017\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\n2\n\u0010\u000e\u001a\u00020\u0015\"\u00020\nH\u0007\u001a\u001c\u0010\u0017\u001a\u00020\u000b2\u0006\u0010\u0003\u001a\u00020\u000b2\n\u0010\u000e\u001a\u00020\u0016\"\u00020\u000bH\u0007¨\u0006\u0018"}, d2 = {"maxOf", ExifInterface.GPS_DIRECTION_TRUE, "", "a", "b", "(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;", "", "", "", "", "", "", "c", "(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;", "other", "", "(Ljava/lang/Comparable;[Ljava/lang/Comparable;)Ljava/lang/Comparable;", "", "", "", "", "", "", "minOf", "kotlin-stdlib"}, k = 5, mv = {2, 2, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_EDITOR_ABSOLUTEX, xs = "kotlin/comparisons/ComparisonsKt")
class ComparisonsKt___ComparisonsJvmKt extends ComparisonsKt__ComparisonsKt {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @SinceKotlin(version = "1.4")
    public static final <T extends Comparable<? super T>> T maxOf(T t, T... tArr) {
        t.getClass();
        tArr.getClass();
        for (T t3 : tArr) {
            t = (T) maxOf(t, t3);
        }
        return t;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @SinceKotlin(version = "1.4")
    public static final <T extends Comparable<? super T>> T minOf(T t, T... tArr) {
        t.getClass();
        tArr.getClass();
        for (T t3 : tArr) {
            t = (T) minOf(t, t3);
        }
        return t;
    }

    @SinceKotlin(version = "1.1")
    @InlineOnly
    private static final byte maxOf(byte b9, byte b10) {
        return (byte) Math.max((int) b9, (int) b10);
    }

    @SinceKotlin(version = "1.1")
    @InlineOnly
    private static final byte minOf(byte b9, byte b10) {
        return (byte) Math.min((int) b9, (int) b10);
    }

    @SinceKotlin(version = "1.1")
    @InlineOnly
    private static final short maxOf(short s5, short s9) {
        return (short) Math.max((int) s5, (int) s9);
    }

    @SinceKotlin(version = "1.1")
    @InlineOnly
    private static final short minOf(short s5, short s9) {
        return (short) Math.min((int) s5, (int) s9);
    }

    @SinceKotlin(version = "1.1")
    @InlineOnly
    private static final int maxOf(int i9, int i10) {
        return Math.max(i9, i10);
    }

    @SinceKotlin(version = "1.1")
    @InlineOnly
    private static final int minOf(int i9, int i10) {
        return Math.min(i9, i10);
    }

    @SinceKotlin(version = "1.1")
    @InlineOnly
    private static final long maxOf(long j9, long j10) {
        return Math.max(j9, j10);
    }

    @SinceKotlin(version = "1.1")
    @InlineOnly
    private static final long minOf(long j9, long j10) {
        return Math.min(j9, j10);
    }

    @SinceKotlin(version = "1.1")
    @InlineOnly
    private static final float maxOf(float f8, float f9) {
        return Math.max(f8, f9);
    }

    @SinceKotlin(version = "1.1")
    @InlineOnly
    private static final float minOf(float f8, float f9) {
        return Math.min(f8, f9);
    }

    @SinceKotlin(version = "1.1")
    @InlineOnly
    private static final double maxOf(double d, double d9) {
        return Math.max(d, d9);
    }

    @SinceKotlin(version = "1.1")
    @InlineOnly
    private static final double minOf(double d, double d9) {
        return Math.min(d, d9);
    }

    @SinceKotlin(version = "1.1")
    public static final <T extends Comparable<? super T>> T maxOf(T t, T t3, T t9) {
        t.getClass();
        t3.getClass();
        t9.getClass();
        return (T) maxOf(t, maxOf(t3, t9));
    }

    @SinceKotlin(version = "1.1")
    public static final <T extends Comparable<? super T>> T minOf(T t, T t3, T t9) {
        t.getClass();
        t3.getClass();
        t9.getClass();
        return (T) minOf(t, minOf(t3, t9));
    }

    @SinceKotlin(version = "1.1")
    @InlineOnly
    private static final byte maxOf(byte b9, byte b10, byte b11) {
        return (byte) Math.max((int) b9, Math.max((int) b10, (int) b11));
    }

    @SinceKotlin(version = "1.1")
    @InlineOnly
    private static final byte minOf(byte b9, byte b10, byte b11) {
        return (byte) Math.min((int) b9, Math.min((int) b10, (int) b11));
    }

    @SinceKotlin(version = "1.1")
    @InlineOnly
    private static final short maxOf(short s5, short s9, short s10) {
        return (short) Math.max((int) s5, Math.max((int) s9, (int) s10));
    }

    @SinceKotlin(version = "1.1")
    @InlineOnly
    private static final short minOf(short s5, short s9, short s10) {
        return (short) Math.min((int) s5, Math.min((int) s9, (int) s10));
    }

    @SinceKotlin(version = "1.1")
    @InlineOnly
    private static final int maxOf(int i9, int i10, int i11) {
        return Math.max(i9, Math.max(i10, i11));
    }

    @SinceKotlin(version = "1.1")
    @InlineOnly
    private static final int minOf(int i9, int i10, int i11) {
        return Math.min(i9, Math.min(i10, i11));
    }

    @SinceKotlin(version = "1.1")
    @InlineOnly
    private static final long maxOf(long j9, long j10, long j11) {
        return Math.max(j9, Math.max(j10, j11));
    }

    @SinceKotlin(version = "1.1")
    @InlineOnly
    private static final long minOf(long j9, long j10, long j11) {
        return Math.min(j9, Math.min(j10, j11));
    }

    @SinceKotlin(version = "1.1")
    @InlineOnly
    private static final float maxOf(float f8, float f9, float f10) {
        return Math.max(f8, Math.max(f9, f10));
    }

    @SinceKotlin(version = "1.1")
    @InlineOnly
    private static final float minOf(float f8, float f9, float f10) {
        return Math.min(f8, Math.min(f9, f10));
    }

    @SinceKotlin(version = "1.1")
    @InlineOnly
    private static final double maxOf(double d, double d9, double d10) {
        return Math.max(d, Math.max(d9, d10));
    }

    @SinceKotlin(version = "1.1")
    @InlineOnly
    private static final double minOf(double d, double d9, double d10) {
        return Math.min(d, Math.min(d9, d10));
    }

    @SinceKotlin(version = "1.1")
    public static <T extends Comparable<? super T>> T maxOf(T t, T t3) {
        t.getClass();
        t3.getClass();
        return t.compareTo(t3) >= 0 ? t : t3;
    }

    @SinceKotlin(version = "1.1")
    public static final <T extends Comparable<? super T>> T minOf(T t, T t3) {
        t.getClass();
        t3.getClass();
        return t.compareTo(t3) <= 0 ? t : t3;
    }

    @SinceKotlin(version = "1.4")
    public static final byte maxOf(byte b9, byte... bArr) {
        bArr.getClass();
        for (byte b10 : bArr) {
            b9 = (byte) Math.max((int) b9, (int) b10);
        }
        return b9;
    }

    @SinceKotlin(version = "1.4")
    public static final byte minOf(byte b9, byte... bArr) {
        bArr.getClass();
        for (byte b10 : bArr) {
            b9 = (byte) Math.min((int) b9, (int) b10);
        }
        return b9;
    }

    @SinceKotlin(version = "1.4")
    public static final short maxOf(short s5, short... sArr) {
        sArr.getClass();
        for (short s9 : sArr) {
            s5 = (short) Math.max((int) s5, (int) s9);
        }
        return s5;
    }

    @SinceKotlin(version = "1.4")
    public static final short minOf(short s5, short... sArr) {
        sArr.getClass();
        for (short s9 : sArr) {
            s5 = (short) Math.min((int) s5, (int) s9);
        }
        return s5;
    }

    @SinceKotlin(version = "1.4")
    public static final int maxOf(int i9, int... iArr) {
        iArr.getClass();
        for (int i10 : iArr) {
            i9 = Math.max(i9, i10);
        }
        return i9;
    }

    @SinceKotlin(version = "1.4")
    public static final int minOf(int i9, int... iArr) {
        iArr.getClass();
        for (int i10 : iArr) {
            i9 = Math.min(i9, i10);
        }
        return i9;
    }

    @SinceKotlin(version = "1.4")
    public static final long maxOf(long j9, long... jArr) {
        jArr.getClass();
        for (long j10 : jArr) {
            j9 = Math.max(j9, j10);
        }
        return j9;
    }

    @SinceKotlin(version = "1.4")
    public static final long minOf(long j9, long... jArr) {
        jArr.getClass();
        for (long j10 : jArr) {
            j9 = Math.min(j9, j10);
        }
        return j9;
    }

    @SinceKotlin(version = "1.4")
    public static final float maxOf(float f8, float... fArr) {
        fArr.getClass();
        for (float f9 : fArr) {
            f8 = Math.max(f8, f9);
        }
        return f8;
    }

    @SinceKotlin(version = "1.4")
    public static final float minOf(float f8, float... fArr) {
        fArr.getClass();
        for (float f9 : fArr) {
            f8 = Math.min(f8, f9);
        }
        return f8;
    }

    @SinceKotlin(version = "1.4")
    public static final double maxOf(double d, double... dArr) {
        dArr.getClass();
        for (double d9 : dArr) {
            d = Math.max(d, d9);
        }
        return d;
    }

    @SinceKotlin(version = "1.4")
    public static final double minOf(double d, double... dArr) {
        dArr.getClass();
        for (double d9 : dArr) {
            d = Math.min(d, d9);
        }
        return d;
    }
}
