package androidx.graphics.shapes;

import androidx.collection.FloatFloatPair;
import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import j1.i;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Metadata(d1 = {"\u0000\"\n\u0000\n\u0002\u0010\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b#\n\u0002\u0018\u0002\n\u0002\b\u0006\u001a6\u0010\b\u001a\u00060\u0002j\u0002`\u00032\n\u0010\t\u001a\u00060\u0002j\u0002`\u00032\n\u0010\n\u001a\u00060\u0002j\u0002`\u00032\u0006\u0010\u000b\u001a\u00020\u0001H\u0000ø\u0001\u0000¢\u0006\u0004\b\f\u0010\r\u001a&\u0010\u000e\u001a\u00020\u000f*\u00060\u0002j\u0002`\u00032\n\u0010\u0010\u001a\u00060\u0002j\u0002`\u0003H\u0000ø\u0001\u0000¢\u0006\u0004\b\u0011\u0010\u0012\u001a2\u0010\u0013\u001a\u00060\u0002j\u0002`\u0003*\u00060\u0002j\u0002`\u00032\b\b\u0002\u0010\u0000\u001a\u00020\u00012\b\b\u0002\u0010\u0006\u001a\u00020\u0001H\u0000ø\u0001\u0000¢\u0006\u0004\b\u0014\u0010\u0015\u001a'\u0010\u0016\u001a\u00060\u0002j\u0002`\u0003*\u00060\u0002j\u0002`\u00032\u0006\u0010\u0017\u001a\u00020\u0001H\u0080\u0002ø\u0001\u0000¢\u0006\u0004\b\u0018\u0010\u0019\u001a&\u0010\u001a\u001a\u00020\u0001*\u00060\u0002j\u0002`\u00032\n\u0010\u0010\u001a\u00060\u0002j\u0002`\u0003H\u0000ø\u0001\u0000¢\u0006\u0004\b\u001b\u0010\u001c\u001a*\u0010\u001a\u001a\u00020\u0001*\u00060\u0002j\u0002`\u00032\u0006\u0010\u001d\u001a\u00020\u00012\u0006\u0010\u001e\u001a\u00020\u0001H\u0000ø\u0001\u0000¢\u0006\u0004\b\u001f\u0010 \u001a\u001e\u0010!\u001a\u00060\u0002j\u0002`\u0003*\u00060\u0002j\u0002`\u0003H\u0000ø\u0001\u0000¢\u0006\u0004\b\"\u0010#\u001a\u001a\u0010$\u001a\u00020\u0001*\u00060\u0002j\u0002`\u0003H\u0000ø\u0001\u0000¢\u0006\u0004\b%\u0010\u0005\u001a\u001a\u0010&\u001a\u00020\u0001*\u00060\u0002j\u0002`\u0003H\u0000ø\u0001\u0000¢\u0006\u0004\b'\u0010\u0005\u001a+\u0010(\u001a\u00060\u0002j\u0002`\u0003*\u00060\u0002j\u0002`\u00032\n\u0010\u0010\u001a\u00060\u0002j\u0002`\u0003H\u0080\u0002ø\u0001\u0000¢\u0006\u0004\b)\u0010*\u001a+\u0010+\u001a\u00060\u0002j\u0002`\u0003*\u00060\u0002j\u0002`\u00032\n\u0010\u0010\u001a\u00060\u0002j\u0002`\u0003H\u0080\u0002ø\u0001\u0000¢\u0006\u0004\b,\u0010*\u001a'\u0010-\u001a\u00060\u0002j\u0002`\u0003*\u00060\u0002j\u0002`\u00032\u0006\u0010\u0017\u001a\u00020\u0001H\u0080\u0002ø\u0001\u0000¢\u0006\u0004\b.\u0010\u0019\u001a'\u0010/\u001a\u00060\u0002j\u0002`\u0003*\u00060\u0002j\u0002`\u00032\u0006\u0010\u0017\u001a\u00020\u0001H\u0080\u0002ø\u0001\u0000¢\u0006\u0004\b0\u0010\u0019\u001a&\u00101\u001a\u00060\u0002j\u0002`\u0003*\u00060\u0002j\u0002`\u00032\u0006\u00102\u001a\u000203H\u0000ø\u0001\u0000¢\u0006\u0004\b4\u00105\u001a\u001f\u00106\u001a\u00060\u0002j\u0002`\u0003*\u00060\u0002j\u0002`\u0003H\u0080\u0002ø\u0001\u0000¢\u0006\u0004\b7\u0010#\"\u001c\u0010\u0000\u001a\u00020\u0001*\u00060\u0002j\u0002`\u00038@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005\"\u001c\u0010\u0006\u001a\u00020\u0001*\u00060\u0002j\u0002`\u00038@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\u0005*\f\b\u0000\u00108\"\u00020\u00022\u00020\u0002\u0082\u0002\u0007\n\u0005\b¡\u001e0\u0001¨\u00069"}, d2 = {"x", "", "Landroidx/collection/FloatFloatPair;", "Landroidx/graphics/shapes/Point;", "getX-DnnuFBc", "(J)F", "y", "getY-DnnuFBc", "interpolate", "start", "stop", "fraction", "interpolate-dLqxh1s", "(JJF)J", "clockwise", "", "other", "clockwise-ybeJwSQ", "(JJ)Z", "copy", "copy-5P9i7ZU", "(JFF)J", "div", "operand", "div-so9K2fw", "(JF)J", "dotProduct", "dotProduct-ybeJwSQ", "(JJ)F", "otherX", "otherY", "dotProduct-5P9i7ZU", "(JFF)F", "getDirection", "getDirection-DnnuFBc", "(J)J", "getDistance", "getDistance-DnnuFBc", "getDistanceSquared", "getDistanceSquared-DnnuFBc", "minus", "minus-ybeJwSQ", "(JJ)J", "plus", "plus-ybeJwSQ", "rem", "rem-so9K2fw", "times", "times-so9K2fw", "transformed", "f", "Landroidx/graphics/shapes/PointTransformer;", "transformed-so9K2fw", "(JLandroidx/graphics/shapes/PointTransformer;)J", "unaryMinus", "unaryMinus-DnnuFBc", "Point", "graphics-shapes_release"}, k = 2, mv = {1, 8, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
@SourceDebugExtension({"SMAP\nPoint.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Point.kt\nandroidx/graphics/shapes/PointKt\n+ 2 FloatFloatPair.kt\nandroidx/collection/FloatFloatPair\n+ 3 PackingHelpers.jvm.kt\nandroidx/collection/internal/PackingHelpers_jvmKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,139:1\n48#2:140\n54#2:142\n48#2:144\n54#2:146\n48#2:148\n54#2:150\n22#3:141\n22#3:143\n22#3:145\n22#3:149\n1#4:147\n*S KotlinDebug\n*F\n+ 1 Point.kt\nandroidx/graphics/shapes/PointKt\n*L\n27#1:140\n30#1:142\n32#1:144\n32#1:146\n137#1:148\n137#1:150\n27#1:141\n30#1:143\n32#1:145\n137#1:149\n*E\n"})
public final class PointKt {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: clockwise-ybeJwSQ, reason: not valid java name */
    public static final boolean m41clockwiseybeJwSQ(long j9, long j10) {
        return (m51getYDnnuFBc(j10) * m50getXDnnuFBc(j9)) - (m50getXDnnuFBc(j10) * m51getYDnnuFBc(j9)) > 0.0f;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: copy-5P9i7ZU, reason: not valid java name */
    public static final long m42copy5P9i7ZU(long j9, float f8, float f9) {
        return FloatFloatPair.m3constructorimpl(f8, f9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: copy-5P9i7ZU$default, reason: not valid java name */
    public static /* synthetic */ long m43copy5P9i7ZU$default(long j9, float f8, float f9, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            f8 = Float.intBitsToFloat((int) (j9 >> 32));
        }
        if ((i9 & 2) != 0) {
            f9 = Float.intBitsToFloat((int) (4294967295L & j9));
        }
        return m42copy5P9i7ZU(j9, f8, f9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: div-so9K2fw, reason: not valid java name */
    public static final long m44divso9K2fw(long j9, float f8) {
        return FloatFloatPair.m3constructorimpl(m50getXDnnuFBc(j9) / f8, m51getYDnnuFBc(j9) / f8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: dotProduct-5P9i7ZU, reason: not valid java name */
    public static final float m45dotProduct5P9i7ZU(long j9, float f8, float f9) {
        return (m51getYDnnuFBc(j9) * f9) + (m50getXDnnuFBc(j9) * f8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: dotProduct-ybeJwSQ, reason: not valid java name */
    public static final float m46dotProductybeJwSQ(long j9, long j10) {
        return (m51getYDnnuFBc(j10) * m51getYDnnuFBc(j9)) + (m50getXDnnuFBc(j10) * m50getXDnnuFBc(j9));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: getDirection-DnnuFBc, reason: not valid java name */
    public static final long m47getDirectionDnnuFBc(long j9) {
        float fM48getDistanceDnnuFBc = m48getDistanceDnnuFBc(j9);
        if (fM48getDistanceDnnuFBc > 0.0f) {
            return m44divso9K2fw(j9, fM48getDistanceDnnuFBc);
        }
        i.k("Can't get the direction of a 0-length vector");
        return 0L;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: getDistance-DnnuFBc, reason: not valid java name */
    public static final float m48getDistanceDnnuFBc(long j9) {
        return (float) Math.sqrt((m51getYDnnuFBc(j9) * m51getYDnnuFBc(j9)) + (m50getXDnnuFBc(j9) * m50getXDnnuFBc(j9)));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: getDistanceSquared-DnnuFBc, reason: not valid java name */
    public static final float m49getDistanceSquaredDnnuFBc(long j9) {
        return (m51getYDnnuFBc(j9) * m51getYDnnuFBc(j9)) + (m50getXDnnuFBc(j9) * m50getXDnnuFBc(j9));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: getX-DnnuFBc, reason: not valid java name */
    public static final float m50getXDnnuFBc(long j9) {
        return Float.intBitsToFloat((int) (j9 >> 32));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: getY-DnnuFBc, reason: not valid java name */
    public static final float m51getYDnnuFBc(long j9) {
        return Float.intBitsToFloat((int) (j9 & 4294967295L));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: interpolate-dLqxh1s, reason: not valid java name */
    public static final long m52interpolatedLqxh1s(long j9, long j10, float f8) {
        return FloatFloatPair.m3constructorimpl(Utils.interpolate(m50getXDnnuFBc(j9), m50getXDnnuFBc(j10), f8), Utils.interpolate(m51getYDnnuFBc(j9), m51getYDnnuFBc(j10), f8));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: minus-ybeJwSQ, reason: not valid java name */
    public static final long m53minusybeJwSQ(long j9, long j10) {
        return FloatFloatPair.m3constructorimpl(m50getXDnnuFBc(j9) - m50getXDnnuFBc(j10), m51getYDnnuFBc(j9) - m51getYDnnuFBc(j10));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: plus-ybeJwSQ, reason: not valid java name */
    public static final long m54plusybeJwSQ(long j9, long j10) {
        return FloatFloatPair.m3constructorimpl(m50getXDnnuFBc(j10) + m50getXDnnuFBc(j9), m51getYDnnuFBc(j10) + m51getYDnnuFBc(j9));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: rem-so9K2fw, reason: not valid java name */
    public static final long m55remso9K2fw(long j9, float f8) {
        return FloatFloatPair.m3constructorimpl(m50getXDnnuFBc(j9) % f8, m51getYDnnuFBc(j9) % f8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: times-so9K2fw, reason: not valid java name */
    public static final long m56timesso9K2fw(long j9, float f8) {
        return FloatFloatPair.m3constructorimpl(m50getXDnnuFBc(j9) * f8, m51getYDnnuFBc(j9) * f8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: transformed-so9K2fw, reason: not valid java name */
    public static final long m57transformedso9K2fw(long j9, PointTransformer pointTransformer) {
        pointTransformer.getClass();
        long jMo59transformXgqJiTY = pointTransformer.mo59transformXgqJiTY(m50getXDnnuFBc(j9), m51getYDnnuFBc(j9));
        return FloatFloatPair.m3constructorimpl(Float.intBitsToFloat((int) (jMo59transformXgqJiTY >> 32)), Float.intBitsToFloat((int) (jMo59transformXgqJiTY & 4294967295L)));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: unaryMinus-DnnuFBc, reason: not valid java name */
    public static final long m58unaryMinusDnnuFBc(long j9) {
        return FloatFloatPair.m3constructorimpl(-m50getXDnnuFBc(j9), -m51getYDnnuFBc(j9));
    }
}
