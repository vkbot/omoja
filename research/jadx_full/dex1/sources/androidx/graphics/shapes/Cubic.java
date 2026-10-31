package androidx.graphics.shapes;

import androidx.collection.FloatFloatPair;
import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import androidx.navigation.b;
import j1.i;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.ArraysKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0014\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0013\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0016\u0018\u0000 ?2\u00020\u0001:\u0001?B7\b\u0010\u0012\n\u0010\u0002\u001a\u00060\u0003j\u0002`\u0004\u0012\n\u0010\u0005\u001a\u00060\u0003j\u0002`\u0004\u0012\n\u0010\u0006\u001a\u00060\u0003j\u0002`\u0004\u0012\n\u0010\u0007\u001a\u00060\u0003j\u0002`\u0004¢\u0006\u0002\u0010\bB\u0011\b\u0000\u0012\b\b\u0002\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ!\u0010 \u001a\u00020!2\b\b\u0002\u0010\"\u001a\u00020\n2\b\b\u0002\u0010#\u001a\u00020$H\u0000¢\u0006\u0002\b%J\u0011\u0010&\u001a\u00020\u00002\u0006\u0010'\u001a\u00020\rH\u0086\u0002J\u0011\u0010&\u001a\u00020\u00002\u0006\u0010'\u001a\u00020(H\u0086\u0002J\u0013\u0010)\u001a\u00020$2\b\u0010*\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u0010+\u001a\u00020(H\u0016J\u0011\u0010,\u001a\u00020\u00002\u0006\u0010-\u001a\u00020\u0000H\u0086\u0002J!\u0010.\u001a\u00060\u0003j\u0002`\u00042\u0006\u0010/\u001a\u00020\rH\u0000ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b0\u00101J\u0006\u00102\u001a\u00020\u0000J\u001a\u00103\u001a\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u0000042\u0006\u0010/\u001a\u00020\rJ\u0011\u00105\u001a\u00020\u00002\u0006\u0010'\u001a\u00020\rH\u0086\u0002J\u0011\u00105\u001a\u00020\u00002\u0006\u0010'\u001a\u00020(H\u0086\u0002J\b\u00106\u001a\u000207H\u0016J\u000e\u00108\u001a\u00020\u00002\u0006\u00109\u001a\u00020:J\u0010\u0010;\u001a\u00020$2\u0006\u0010<\u001a\u00020\rH\u0002J\r\u0010=\u001a\u00020$H\u0000¢\u0006\u0002\b>R\u0011\u0010\f\u001a\u00020\r8F¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\u0010\u001a\u00020\r8F¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u000fR\u0011\u0010\u0012\u001a\u00020\r8F¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u000fR\u0011\u0010\u0014\u001a\u00020\r8F¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u000fR\u0011\u0010\u0016\u001a\u00020\r8F¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u000fR\u0011\u0010\u0018\u001a\u00020\r8F¢\u0006\u0006\u001a\u0004\b\u0019\u0010\u000fR\u0011\u0010\u001a\u001a\u00020\r8F¢\u0006\u0006\u001a\u0004\b\u001b\u0010\u000fR\u0011\u0010\u001c\u001a\u00020\r8F¢\u0006\u0006\u001a\u0004\b\u001d\u0010\u000fR\u0014\u0010\t\u001a\u00020\nX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u001f\u0082\u0002\u000b\n\u0002\b!\n\u0005\b¡\u001e0\u0001¨\u0006@"}, d2 = {"Landroidx/graphics/shapes/Cubic;", "", "anchor0", "Landroidx/collection/FloatFloatPair;", "Landroidx/graphics/shapes/Point;", "control0", "control1", "anchor1", "(JJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V", "points", "", "([F)V", "anchor0X", "", "getAnchor0X", "()F", "anchor0Y", "getAnchor0Y", "anchor1X", "getAnchor1X", "anchor1Y", "getAnchor1Y", "control0X", "getControl0X", "control0Y", "getControl0Y", "control1X", "getControl1X", "control1Y", "getControl1Y", "getPoints$graphics_shapes_release", "()[F", "calculateBounds", "", "bounds", "approximate", "", "calculateBounds$graphics_shapes_release", "div", "x", "", "equals", "other", "hashCode", "plus", "o", "pointOnCurve", "t", "pointOnCurve-OOQOV4g$graphics_shapes_release", "(F)J", "reverse", "split", "Lkotlin/Pair;", "times", "toString", "", "transformed", "f", "Landroidx/graphics/shapes/PointTransformer;", "zeroIsh", "value", "zeroLength", "zeroLength$graphics_shapes_release", "Companion", "graphics-shapes_release"}, k = 1, mv = {1, 8, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
@SourceDebugExtension({"SMAP\nCubic.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Cubic.kt\nandroidx/graphics/shapes/Cubic\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,448:1\n1#2:449\n*E\n"})
public class Cubic {
    public static final Cubic$Companion Companion = new Cubic$Companion(null);
    private final float[] points;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private Cubic(long j9, long j10, long j11, long j12) {
        this(new float[]{PointKt.m50getXDnnuFBc(j9), PointKt.m51getYDnnuFBc(j9), PointKt.m50getXDnnuFBc(j10), PointKt.m51getYDnnuFBc(j10), PointKt.m50getXDnnuFBc(j11), PointKt.m51getYDnnuFBc(j11), PointKt.m50getXDnnuFBc(j12), PointKt.m51getYDnnuFBc(j12)});
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void calculateBounds$graphics_shapes_release$default(Cubic cubic, float[] fArr, boolean z8, int i9, Object obj) {
        if (obj != null) {
            b.g("Super calls with default arguments not supported in this target, function: calculateBounds");
            return;
        }
        if ((i9 & 1) != 0) {
            fArr = new float[4];
        }
        if ((i9 & 2) != 0) {
            z8 = false;
        }
        cubic.calculateBounds$graphics_shapes_release(fArr, z8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @JvmStatic
    public static final Cubic circularArc(float f8, float f9, float f10, float f11, float f12, float f13) {
        return Companion.circularArc(f8, f9, f10, f11, f12, f13);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @JvmStatic
    public static final Cubic straightLine(float f8, float f9, float f10, float f11) {
        return Companion.straightLine(f8, f9, f10, f11);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final boolean zeroIsh(float value) {
        return Math.abs(value) < 1.0E-4f;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:50:0x019d  */
    /* JADX WARN: Code duplicated, block: B:53:0x01a3  */
    /* JADX WARN: Code duplicated, block: B:63:0x01c2 A[PHI: r2 r6
  0x01c2: PHI (r2v15 float) = (r2v12 float), (r2v21 float) binds: [B:85:0x0211, B:62:0x01c0] A[DONT_GENERATE, DONT_INLINE]
  0x01c2: PHI (r6v14 float) = (r6v10 float), (r6v16 float) binds: [B:85:0x0211, B:62:0x01c0] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:64:0x01c4  */
    /* JADX WARN: Code duplicated, block: B:66:0x01cd  */
    /* JADX WARN: Code duplicated, block: B:72:0x01eb  */
    /* JADX WARN: Code duplicated, block: B:75:0x01f0  */
    /* JADX WARN: Code duplicated, block: B:87:0x0214 A[PHI: r8 r12
  0x0214: PHI (r8v5 float) = (r8v2 float), (r8v3 float), (r8v3 float), (r8v2 float), (r8v2 float), (r8v2 float) binds: [B:65:0x01cb, B:77:0x01fa, B:79:0x01fe, B:51:0x019f, B:54:0x01a9, B:56:0x01ad] A[DONT_GENERATE, DONT_INLINE]
  0x0214: PHI (r12v13 float) = (r12v9 float), (r12v10 float), (r12v10 float), (r12v9 float), (r12v9 float), (r12v9 float) binds: [B:65:0x01cb, B:77:0x01fa, B:79:0x01fe, B:51:0x019f, B:54:0x01a9, B:56:0x01ad] A[DONT_GENERATE, DONT_INLINE]] */
    public final void calculateBounds$graphics_shapes_release(float[] bounds, boolean approximate) {
        char c;
        char c9;
        char c10;
        float f8;
        float anchor1Y;
        float control1Y;
        float control0Y;
        float f9;
        float fSqrt;
        float fSqrt2;
        float fM51getYDnnuFBc;
        float f10;
        float fM51getYDnnuFBc2;
        float f11;
        bounds.getClass();
        if (zeroLength$graphics_shapes_release()) {
            bounds[0] = getAnchor0X();
            bounds[1] = getAnchor0Y();
            bounds[2] = getAnchor0X();
            bounds[3] = getAnchor0Y();
            return;
        }
        float fMin = Math.min(getAnchor0X(), getAnchor1X());
        float fMin2 = Math.min(getAnchor0Y(), getAnchor1Y());
        float fMax = Math.max(getAnchor0X(), getAnchor1X());
        float fMax2 = Math.max(getAnchor0Y(), getAnchor1Y());
        if (approximate) {
            bounds[0] = Math.min(fMin, Math.min(getControl0X(), getControl1X()));
            bounds[1] = Math.min(fMin2, Math.min(getControl0Y(), getControl1Y()));
            bounds[2] = Math.max(fMax, Math.max(getControl0X(), getControl1X()));
            bounds[3] = Math.max(fMax2, Math.max(getControl0Y(), getControl1Y()));
            return;
        }
        float f12 = 3;
        float anchor1X = getAnchor1X() + (((getControl0X() * f12) + (-getAnchor0X())) - (getControl1X() * f12));
        float f13 = 2;
        float f14 = 4;
        float control1X = (getControl1X() * f13) + ((getAnchor0X() * f13) - (getControl0X() * f14));
        float control0X = getControl0X() + (-getAnchor0X());
        if (!zeroIsh(anchor1X)) {
            float f15 = (control1X * control1X) - ((f14 * anchor1X) * control0X);
            if (f15 >= 0.0f) {
                float f16 = -control1X;
                c = 0;
                c9 = 3;
                double d = f15;
                c10 = 2;
                f8 = fMin2;
                float f17 = anchor1X * f13;
                float fSqrt3 = (((float) Math.sqrt(d)) + f16) / f17;
                if (0.0f <= fSqrt3 && fSqrt3 <= 1.0f) {
                    float fM50getXDnnuFBc = PointKt.m50getXDnnuFBc(m38pointOnCurveOOQOV4g$graphics_shapes_release(fSqrt3));
                    if (fM50getXDnnuFBc < fMin) {
                        fMin = fM50getXDnnuFBc;
                    }
                    if (fM50getXDnnuFBc > fMax) {
                        fMax = fM50getXDnnuFBc;
                    }
                }
                float fSqrt4 = (f16 - ((float) Math.sqrt(d))) / f17;
                if (0.0f <= fSqrt4 && fSqrt4 <= 1.0f) {
                    float fM50getXDnnuFBc2 = PointKt.m50getXDnnuFBc(m38pointOnCurveOOQOV4g$graphics_shapes_release(fSqrt4));
                    if (fM50getXDnnuFBc2 < fMin) {
                        fMin = fM50getXDnnuFBc2;
                    }
                    if (fM50getXDnnuFBc2 > fMax) {
                        fMax = fM50getXDnnuFBc2;
                    }
                }
            }
            anchor1Y = getAnchor1Y() + (((getControl0Y() * f12) + (-getAnchor0Y())) - (getControl1Y() * f12));
            control1Y = (getControl1Y() * f13) + ((getAnchor0Y() * f13) - (getControl0Y() * f14));
            control0Y = getControl0Y() + (-getAnchor0Y());
            if (zeroIsh(anchor1Y)) {
                f9 = (control1Y * control1Y) - ((f14 * anchor1Y) * control0Y);
                if (f9 >= 0.0f) {
                    float f18 = -control1Y;
                    double d9 = f9;
                    float f19 = f13 * anchor1Y;
                    fSqrt = (((float) Math.sqrt(d9)) + f18) / f19;
                    if (0.0f <= fSqrt && fSqrt <= 1.0f) {
                        fM51getYDnnuFBc2 = PointKt.m51getYDnnuFBc(m38pointOnCurveOOQOV4g$graphics_shapes_release(fSqrt));
                        if (fM51getYDnnuFBc2 < f8) {
                            f8 = fM51getYDnnuFBc2;
                        }
                        if (fM51getYDnnuFBc2 > fMax2) {
                            fMax2 = fM51getYDnnuFBc2;
                        }
                    }
                    fSqrt2 = (f18 - ((float) Math.sqrt(d9))) / f19;
                    if (0.0f <= fSqrt2 || fSqrt2 > 1.0f) {
                        f10 = f8;
                    } else {
                        fM51getYDnnuFBc = PointKt.m51getYDnnuFBc(m38pointOnCurveOOQOV4g$graphics_shapes_release(fSqrt2));
                        f10 = fM51getYDnnuFBc < f8 ? fM51getYDnnuFBc : f8;
                        if (fM51getYDnnuFBc > fMax2) {
                            fMax2 = fM51getYDnnuFBc;
                        }
                    }
                } else {
                    f10 = f8;
                }
            } else if (control1Y == 0.0f) {
                f10 = f8;
            } else {
                f11 = (f13 * control0Y) / ((-2) * control1Y);
                if (0.0f <= f11 || f11 > 1.0f) {
                    f10 = f8;
                } else {
                    fM51getYDnnuFBc = PointKt.m51getYDnnuFBc(m38pointOnCurveOOQOV4g$graphics_shapes_release(f11));
                    f10 = fM51getYDnnuFBc < f8 ? fM51getYDnnuFBc : f8;
                    if (fM51getYDnnuFBc > fMax2) {
                        fMax2 = fM51getYDnnuFBc;
                    }
                }
            }
            bounds[c] = fMin;
            bounds[1] = f10;
            bounds[c10] = fMax;
            bounds[c9] = fMax2;
        }
        if (control1X != 0.0f) {
            float f20 = (control0X * f13) / ((-2) * control1X);
            if (0.0f <= f20 && f20 <= 1.0f) {
                float fM50getXDnnuFBc3 = PointKt.m50getXDnnuFBc(m38pointOnCurveOOQOV4g$graphics_shapes_release(f20));
                if (fM50getXDnnuFBc3 < fMin) {
                    fMin = fM50getXDnnuFBc3;
                }
                if (fM50getXDnnuFBc3 > fMax) {
                    fMax = fM50getXDnnuFBc3;
                }
            }
        }
        c = 0;
        c9 = 3;
        c10 = 2;
        f8 = fMin2;
        anchor1Y = getAnchor1Y() + (((getControl0Y() * f12) + (-getAnchor0Y())) - (getControl1Y() * f12));
        control1Y = (getControl1Y() * f13) + ((getAnchor0Y() * f13) - (getControl0Y() * f14));
        control0Y = getControl0Y() + (-getAnchor0Y());
        if (zeroIsh(anchor1Y)) {
            f9 = (control1Y * control1Y) - ((f14 * anchor1Y) * control0Y);
            if (f9 >= 0.0f) {
                float f110 = -control1Y;
                double d10 = f9;
                float f111 = f13 * anchor1Y;
                fSqrt = (((float) Math.sqrt(d10)) + f110) / f111;
                if (0.0f <= fSqrt) {
                    fM51getYDnnuFBc2 = PointKt.m51getYDnnuFBc(m38pointOnCurveOOQOV4g$graphics_shapes_release(fSqrt));
                    if (fM51getYDnnuFBc2 < f8) {
                        f8 = fM51getYDnnuFBc2;
                    }
                    if (fM51getYDnnuFBc2 > fMax2) {
                        fMax2 = fM51getYDnnuFBc2;
                    }
                }
                fSqrt2 = (f110 - ((float) Math.sqrt(d10))) / f111;
                if (0.0f <= fSqrt2) {
                    f10 = f8;
                } else {
                    f10 = f8;
                }
            } else {
                f10 = f8;
            }
        } else if (control1Y == 0.0f) {
            f10 = f8;
        } else {
            f11 = (f13 * control0Y) / ((-2) * control1Y);
            if (0.0f <= f11) {
                f10 = f8;
            } else {
                f10 = f8;
            }
        }
        bounds[c] = fMin;
        bounds[1] = f10;
        bounds[c10] = fMax;
        bounds[c9] = fMax2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Cubic div(float x8) {
        return times(1.0f / x8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (other instanceof Cubic) {
            return Arrays.equals(this.points, ((Cubic) other).points);
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final float getAnchor0X() {
        return this.points[0];
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final float getAnchor0Y() {
        return this.points[1];
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final float getAnchor1X() {
        return this.points[6];
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final float getAnchor1Y() {
        return this.points[7];
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final float getControl0X() {
        return this.points[2];
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final float getControl0Y() {
        return this.points[3];
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final float getControl1X() {
        return this.points[4];
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final float getControl1Y() {
        return this.points[5];
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: getPoints$graphics_shapes_release, reason: from getter */
    public final float[] getPoints() {
        return this.points;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int hashCode() {
        return Arrays.hashCode(this.points);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Cubic plus(Cubic o5) {
        o5.getClass();
        float[] fArr = new float[8];
        for (int i9 = 0; i9 < 8; i9++) {
            fArr[i9] = this.points[i9] + o5.points[i9];
        }
        return new Cubic(fArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: pointOnCurve-OOQOV4g$graphics_shapes_release, reason: not valid java name */
    public final long m38pointOnCurveOOQOV4g$graphics_shapes_release(float t) {
        float f8 = 1 - t;
        float f9 = f8 * f8 * f8;
        float f10 = 3 * t;
        float f11 = f10 * f8 * f8;
        float f12 = f10 * t * f8;
        float f13 = t * t * t;
        return FloatFloatPair.m3constructorimpl((getAnchor1X() * f13) + (getControl1X() * f12) + (getControl0X() * f11) + (getAnchor0X() * f9), (getAnchor1Y() * f13) + (getControl1Y() * f12) + (getControl0Y() * f11) + (getAnchor0Y() * f9));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Cubic reverse() {
        return CubicKt.Cubic(getAnchor1X(), getAnchor1Y(), getControl1X(), getControl1Y(), getControl0X(), getControl0Y(), getAnchor0X(), getAnchor0Y());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Pair<Cubic, Cubic> split(float t) {
        float f8 = 1 - t;
        long jM38pointOnCurveOOQOV4g$graphics_shapes_release = m38pointOnCurveOOQOV4g$graphics_shapes_release(t);
        float f9 = f8 * f8;
        float f10 = 2 * f8 * t;
        float f11 = t * t;
        return TuplesKt.to(CubicKt.Cubic(getAnchor0X(), getAnchor0Y(), (getAnchor0X() * f8) + (getControl0X() * t), (getAnchor0Y() * f8) + (getControl0Y() * t), (getControl1X() * f11) + (getControl0X() * f10) + (getAnchor0X() * f9), (getControl1Y() * f11) + (getControl0Y() * f10) + (getAnchor0Y() * f9), PointKt.m50getXDnnuFBc(jM38pointOnCurveOOQOV4g$graphics_shapes_release), PointKt.m51getYDnnuFBc(jM38pointOnCurveOOQOV4g$graphics_shapes_release)), CubicKt.Cubic(PointKt.m50getXDnnuFBc(jM38pointOnCurveOOQOV4g$graphics_shapes_release), PointKt.m51getYDnnuFBc(jM38pointOnCurveOOQOV4g$graphics_shapes_release), (getAnchor1X() * f11) + (getControl1X() * f10) + (getControl0X() * f9), (getAnchor1Y() * f11) + (getControl1Y() * f10) + (getControl0Y() * f9), (getAnchor1X() * t) + (getControl1X() * f8), (getAnchor1Y() * t) + (getControl1Y() * f8), getAnchor1X(), getAnchor1Y()));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Cubic times(float x8) {
        float[] fArr = new float[8];
        for (int i9 = 0; i9 < 8; i9++) {
            fArr[i9] = this.points[i9] * x8;
        }
        return new Cubic(fArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toString() {
        return "anchor0: (" + getAnchor0X() + ", " + getAnchor0Y() + ") control0: (" + getControl0X() + ", " + getControl0Y() + "), control1: (" + getControl1X() + ", " + getControl1Y() + "), anchor1: (" + getAnchor1X() + ", " + getAnchor1Y() + ')';
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Cubic transformed(PointTransformer f8) {
        f8.getClass();
        MutableCubic mutableCubic = new MutableCubic();
        ArraysKt.p(this.points, mutableCubic.getPoints(), 0, 14);
        mutableCubic.transform(f8);
        return mutableCubic;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean zeroLength$graphics_shapes_release() {
        return Math.abs(getAnchor0X() - getAnchor1X()) < 1.0E-4f && Math.abs(getAnchor0Y() - getAnchor1Y()) < 1.0E-4f;
    }

    public final Cubic div(int x8) {
        return div(x8);
    }

    public final Cubic times(int x8) {
        return times(x8);
    }

    public /* synthetic */ Cubic(long j9, long j10, long j11, long j12, DefaultConstructorMarker defaultConstructorMarker) {
        this(j9, j10, j11, j12);
    }

    public Cubic(float[] fArr) {
        fArr.getClass();
        this.points = fArr;
        if (fArr.length == 8) {
            return;
        }
        i.k("Points array size should be 8");
        throw null;
    }

    public /* synthetic */ Cubic(float[] fArr, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? new float[8] : fArr);
    }

    public Cubic() {
        this(null, 1, null);
    }
}
