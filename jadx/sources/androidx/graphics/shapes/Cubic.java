package androidx.graphics.shapes;

import androidx.collection.FloatFloatPair;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.navigation.C0674b;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import p099j1.C1929i;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m3158d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0014\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0013\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0016\u0018\u0000 ?2\u00020\u0001:\u0001?B7\b\u0010\u0012\n\u0010\u0002\u001a\u00060\u0003j\u0002`\u0004\u0012\n\u0010\u0005\u001a\u00060\u0003j\u0002`\u0004\u0012\n\u0010\u0006\u001a\u00060\u0003j\u0002`\u0004\u0012\n\u0010\u0007\u001a\u00060\u0003j\u0002`\u0004¢\u0006\u0002\u0010\bB\u0011\b\u0000\u0012\b\b\u0002\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ!\u0010 \u001a\u00020!2\b\b\u0002\u0010\"\u001a\u00020\n2\b\b\u0002\u0010#\u001a\u00020$H\u0000¢\u0006\u0002\b%J\u0011\u0010&\u001a\u00020\u00002\u0006\u0010'\u001a\u00020\rH\u0086\u0002J\u0011\u0010&\u001a\u00020\u00002\u0006\u0010'\u001a\u00020(H\u0086\u0002J\u0013\u0010)\u001a\u00020$2\b\u0010*\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u0010+\u001a\u00020(H\u0016J\u0011\u0010,\u001a\u00020\u00002\u0006\u0010-\u001a\u00020\u0000H\u0086\u0002J!\u0010.\u001a\u00060\u0003j\u0002`\u00042\u0006\u0010/\u001a\u00020\rH\u0000ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b0\u00101J\u0006\u00102\u001a\u00020\u0000J\u001a\u00103\u001a\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u0000042\u0006\u0010/\u001a\u00020\rJ\u0011\u00105\u001a\u00020\u00002\u0006\u0010'\u001a\u00020\rH\u0086\u0002J\u0011\u00105\u001a\u00020\u00002\u0006\u0010'\u001a\u00020(H\u0086\u0002J\b\u00106\u001a\u000207H\u0016J\u000e\u00108\u001a\u00020\u00002\u0006\u00109\u001a\u00020:J\u0010\u0010;\u001a\u00020$2\u0006\u0010<\u001a\u00020\rH\u0002J\r\u0010=\u001a\u00020$H\u0000¢\u0006\u0002\b>R\u0011\u0010\f\u001a\u00020\r8F¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\u0010\u001a\u00020\r8F¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u000fR\u0011\u0010\u0012\u001a\u00020\r8F¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u000fR\u0011\u0010\u0014\u001a\u00020\r8F¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u000fR\u0011\u0010\u0016\u001a\u00020\r8F¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u000fR\u0011\u0010\u0018\u001a\u00020\r8F¢\u0006\u0006\u001a\u0004\b\u0019\u0010\u000fR\u0011\u0010\u001a\u001a\u00020\r8F¢\u0006\u0006\u001a\u0004\b\u001b\u0010\u000fR\u0011\u0010\u001c\u001a\u00020\r8F¢\u0006\u0006\u001a\u0004\b\u001d\u0010\u000fR\u0014\u0010\t\u001a\u00020\nX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u001f\u0082\u0002\u000b\n\u0002\b!\n\u0005\b¡\u001e0\u0001¨\u0006@"}, m3159d2 = {"Landroidx/graphics/shapes/Cubic;", "", "anchor0", "Landroidx/collection/FloatFloatPair;", "Landroidx/graphics/shapes/Point;", "control0", "control1", "anchor1", "(JJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V", "points", "", "([F)V", "anchor0X", "", "getAnchor0X", "()F", "anchor0Y", "getAnchor0Y", "anchor1X", "getAnchor1X", "anchor1Y", "getAnchor1Y", "control0X", "getControl0X", "control0Y", "getControl0Y", "control1X", "getControl1X", "control1Y", "getControl1Y", "getPoints$graphics_shapes_release", "()[F", "calculateBounds", "", "bounds", "approximate", "", "calculateBounds$graphics_shapes_release", "div", "x", "", "equals", "other", "hashCode", "plus", "o", "pointOnCurve", "t", "pointOnCurve-OOQOV4g$graphics_shapes_release", "(F)J", "reverse", "split", "Lkotlin/Pair;", "times", "toString", "", "transformed", "f", "Landroidx/graphics/shapes/PointTransformer;", "zeroIsh", "value", "zeroLength", "zeroLength$graphics_shapes_release", "Companion", "graphics-shapes_release"}, m3160k = 1, m3161mv = {1, 8, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
@SourceDebugExtension({"SMAP\nCubic.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Cubic.kt\nandroidx/graphics/shapes/Cubic\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,448:1\n1#2:449\n*E\n"})
public class Cubic {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final float[] points;

    private Cubic(long j10, long j11, long j12, long j13) {
        this(new float[]{PointKt.m6043getXDnnuFBc(j10), PointKt.m6044getYDnnuFBc(j10), PointKt.m6043getXDnnuFBc(j11), PointKt.m6044getYDnnuFBc(j11), PointKt.m6043getXDnnuFBc(j12), PointKt.m6044getYDnnuFBc(j12), PointKt.m6043getXDnnuFBc(j13), PointKt.m6044getYDnnuFBc(j13)});
    }

    public static /* synthetic */ void calculateBounds$graphics_shapes_release$default(Cubic cubic, float[] fArr, boolean z9, int i10, Object obj) {
        if (obj != null) {
            C0674b.m840g("Super calls with default arguments not supported in this target, function: calculateBounds");
            return;
        }
        if ((i10 & 1) != 0) {
            fArr = new float[4];
        }
        if ((i10 & 2) != 0) {
            z9 = false;
        }
        cubic.calculateBounds$graphics_shapes_release(fArr, z9);
    }

    @JvmStatic
    public static final Cubic circularArc(float f8, float f10, float f11, float f12, float f13, float f14) {
        return INSTANCE.circularArc(f8, f10, f11, f12, f13, f14);
    }

    @JvmStatic
    public static final Cubic straightLine(float f8, float f10, float f11, float f12) {
        return INSTANCE.straightLine(f8, f10, f11, f12);
    }

    private final boolean zeroIsh(float value) {
        return Math.abs(value) < 1.0E-4f;
    }

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
        char c10;
        char c11;
        float f8;
        float anchor1Y;
        float control1Y;
        float control0Y;
        float f10;
        float fSqrt;
        float fSqrt2;
        float fM6044getYDnnuFBc;
        float f11;
        float fM6044getYDnnuFBc2;
        float f12;
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
        float f13 = 3;
        float anchor1X = getAnchor1X() + (((getControl0X() * f13) + (-getAnchor0X())) - (getControl1X() * f13));
        float f14 = 2;
        float f15 = 4;
        float control1X = (getControl1X() * f14) + ((getAnchor0X() * f14) - (getControl0X() * f15));
        float control0X = getControl0X() + (-getAnchor0X());
        if (!zeroIsh(anchor1X)) {
            float f16 = (control1X * control1X) - ((f15 * anchor1X) * control0X);
            if (f16 >= 0.0f) {
                float f17 = -control1X;
                c = 0;
                c10 = 3;
                double d = f16;
                c11 = 2;
                f8 = fMin2;
                float f18 = anchor1X * f14;
                float fSqrt3 = (((float) Math.sqrt(d)) + f17) / f18;
                if (0.0f <= fSqrt3 && fSqrt3 <= 1.0f) {
                    float fM6043getXDnnuFBc = PointKt.m6043getXDnnuFBc(m6031pointOnCurveOOQOV4g$graphics_shapes_release(fSqrt3));
                    if (fM6043getXDnnuFBc < fMin) {
                        fMin = fM6043getXDnnuFBc;
                    }
                    if (fM6043getXDnnuFBc > fMax) {
                        fMax = fM6043getXDnnuFBc;
                    }
                }
                float fSqrt4 = (f17 - ((float) Math.sqrt(d))) / f18;
                if (0.0f <= fSqrt4 && fSqrt4 <= 1.0f) {
                    float fM6043getXDnnuFBc2 = PointKt.m6043getXDnnuFBc(m6031pointOnCurveOOQOV4g$graphics_shapes_release(fSqrt4));
                    if (fM6043getXDnnuFBc2 < fMin) {
                        fMin = fM6043getXDnnuFBc2;
                    }
                    if (fM6043getXDnnuFBc2 > fMax) {
                        fMax = fM6043getXDnnuFBc2;
                    }
                }
            }
            anchor1Y = getAnchor1Y() + (((getControl0Y() * f13) + (-getAnchor0Y())) - (getControl1Y() * f13));
            control1Y = (getControl1Y() * f14) + ((getAnchor0Y() * f14) - (getControl0Y() * f15));
            control0Y = getControl0Y() + (-getAnchor0Y());
            if (zeroIsh(anchor1Y)) {
                f10 = (control1Y * control1Y) - ((f15 * anchor1Y) * control0Y);
                if (f10 >= 0.0f) {
                    float f19 = -control1Y;
                    double d10 = f10;
                    float f20 = f14 * anchor1Y;
                    fSqrt = (((float) Math.sqrt(d10)) + f19) / f20;
                    if (0.0f <= fSqrt && fSqrt <= 1.0f) {
                        fM6044getYDnnuFBc2 = PointKt.m6044getYDnnuFBc(m6031pointOnCurveOOQOV4g$graphics_shapes_release(fSqrt));
                        if (fM6044getYDnnuFBc2 < f8) {
                            f8 = fM6044getYDnnuFBc2;
                        }
                        if (fM6044getYDnnuFBc2 > fMax2) {
                            fMax2 = fM6044getYDnnuFBc2;
                        }
                    }
                    fSqrt2 = (f19 - ((float) Math.sqrt(d10))) / f20;
                    if (0.0f <= fSqrt2 || fSqrt2 > 1.0f) {
                        f11 = f8;
                    } else {
                        fM6044getYDnnuFBc = PointKt.m6044getYDnnuFBc(m6031pointOnCurveOOQOV4g$graphics_shapes_release(fSqrt2));
                        f11 = fM6044getYDnnuFBc < f8 ? fM6044getYDnnuFBc : f8;
                        if (fM6044getYDnnuFBc > fMax2) {
                            fMax2 = fM6044getYDnnuFBc;
                        }
                    }
                } else {
                    f11 = f8;
                }
            } else if (control1Y == 0.0f) {
                f11 = f8;
            } else {
                f12 = (f14 * control0Y) / ((-2) * control1Y);
                if (0.0f <= f12 || f12 > 1.0f) {
                    f11 = f8;
                } else {
                    fM6044getYDnnuFBc = PointKt.m6044getYDnnuFBc(m6031pointOnCurveOOQOV4g$graphics_shapes_release(f12));
                    f11 = fM6044getYDnnuFBc < f8 ? fM6044getYDnnuFBc : f8;
                    if (fM6044getYDnnuFBc > fMax2) {
                        fMax2 = fM6044getYDnnuFBc;
                    }
                }
            }
            bounds[c] = fMin;
            bounds[1] = f11;
            bounds[c11] = fMax;
            bounds[c10] = fMax2;
        }
        if (control1X != 0.0f) {
            float f21 = (control0X * f14) / ((-2) * control1X);
            if (0.0f <= f21 && f21 <= 1.0f) {
                float fM6043getXDnnuFBc3 = PointKt.m6043getXDnnuFBc(m6031pointOnCurveOOQOV4g$graphics_shapes_release(f21));
                if (fM6043getXDnnuFBc3 < fMin) {
                    fMin = fM6043getXDnnuFBc3;
                }
                if (fM6043getXDnnuFBc3 > fMax) {
                    fMax = fM6043getXDnnuFBc3;
                }
            }
        }
        c = 0;
        c10 = 3;
        c11 = 2;
        f8 = fMin2;
        anchor1Y = getAnchor1Y() + (((getControl0Y() * f13) + (-getAnchor0Y())) - (getControl1Y() * f13));
        control1Y = (getControl1Y() * f14) + ((getAnchor0Y() * f14) - (getControl0Y() * f15));
        control0Y = getControl0Y() + (-getAnchor0Y());
        if (zeroIsh(anchor1Y)) {
            f10 = (control1Y * control1Y) - ((f15 * anchor1Y) * control0Y);
            if (f10 >= 0.0f) {
                float f110 = -control1Y;
                double d11 = f10;
                float f22 = f14 * anchor1Y;
                fSqrt = (((float) Math.sqrt(d11)) + f110) / f22;
                if (0.0f <= fSqrt) {
                    fM6044getYDnnuFBc2 = PointKt.m6044getYDnnuFBc(m6031pointOnCurveOOQOV4g$graphics_shapes_release(fSqrt));
                    if (fM6044getYDnnuFBc2 < f8) {
                        f8 = fM6044getYDnnuFBc2;
                    }
                    if (fM6044getYDnnuFBc2 > fMax2) {
                        fMax2 = fM6044getYDnnuFBc2;
                    }
                }
                fSqrt2 = (f110 - ((float) Math.sqrt(d11))) / f22;
                if (0.0f <= fSqrt2) {
                    f11 = f8;
                } else {
                    f11 = f8;
                }
            } else {
                f11 = f8;
            }
        } else if (control1Y == 0.0f) {
            f11 = f8;
        } else {
            f12 = (f14 * control0Y) / ((-2) * control1Y);
            if (0.0f <= f12) {
                f11 = f8;
            } else {
                f11 = f8;
            }
        }
        bounds[c] = fMin;
        bounds[1] = f11;
        bounds[c11] = fMax;
        bounds[c10] = fMax2;
    }

    public final Cubic div(float x9) {
        return times(1.0f / x9);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (other instanceof Cubic) {
            return Arrays.equals(this.points, ((Cubic) other).points);
        }
        return false;
    }

    public final float getAnchor0X() {
        return this.points[0];
    }

    public final float getAnchor0Y() {
        return this.points[1];
    }

    public final float getAnchor1X() {
        return this.points[6];
    }

    public final float getAnchor1Y() {
        return this.points[7];
    }

    public final float getControl0X() {
        return this.points[2];
    }

    public final float getControl0Y() {
        return this.points[3];
    }

    public final float getControl1X() {
        return this.points[4];
    }

    public final float getControl1Y() {
        return this.points[5];
    }

    /* JADX INFO: renamed from: getPoints$graphics_shapes_release, reason: from getter */
    public final float[] getPoints() {
        return this.points;
    }

    public int hashCode() {
        return Arrays.hashCode(this.points);
    }

    public final Cubic plus(Cubic o5) {
        o5.getClass();
        float[] fArr = new float[8];
        for (int i10 = 0; i10 < 8; i10++) {
            fArr[i10] = this.points[i10] + o5.points[i10];
        }
        return new Cubic(fArr);
    }

    /* JADX INFO: renamed from: pointOnCurve-OOQOV4g$graphics_shapes_release, reason: not valid java name */
    public final long m6031pointOnCurveOOQOV4g$graphics_shapes_release(float t) {
        float f8 = 1 - t;
        float f10 = f8 * f8 * f8;
        float f11 = 3 * t;
        float f12 = f11 * f8 * f8;
        float f13 = f11 * t * f8;
        float f14 = t * t * t;
        return FloatFloatPair.m5996constructorimpl((getAnchor1X() * f14) + (getControl1X() * f13) + (getControl0X() * f12) + (getAnchor0X() * f10), (getAnchor1Y() * f14) + (getControl1Y() * f13) + (getControl0Y() * f12) + (getAnchor0Y() * f10));
    }

    public final Cubic reverse() {
        return CubicKt.Cubic(getAnchor1X(), getAnchor1Y(), getControl1X(), getControl1Y(), getControl0X(), getControl0Y(), getAnchor0X(), getAnchor0Y());
    }

    public final Pair<Cubic, Cubic> split(float t) {
        float f8 = 1 - t;
        long jM6031pointOnCurveOOQOV4g$graphics_shapes_release = m6031pointOnCurveOOQOV4g$graphics_shapes_release(t);
        float f10 = f8 * f8;
        float f11 = 2 * f8 * t;
        float f12 = t * t;
        return TuplesKt.m3166to(CubicKt.Cubic(getAnchor0X(), getAnchor0Y(), (getAnchor0X() * f8) + (getControl0X() * t), (getAnchor0Y() * f8) + (getControl0Y() * t), (getControl1X() * f12) + (getControl0X() * f11) + (getAnchor0X() * f10), (getControl1Y() * f12) + (getControl0Y() * f11) + (getAnchor0Y() * f10), PointKt.m6043getXDnnuFBc(jM6031pointOnCurveOOQOV4g$graphics_shapes_release), PointKt.m6044getYDnnuFBc(jM6031pointOnCurveOOQOV4g$graphics_shapes_release)), CubicKt.Cubic(PointKt.m6043getXDnnuFBc(jM6031pointOnCurveOOQOV4g$graphics_shapes_release), PointKt.m6044getYDnnuFBc(jM6031pointOnCurveOOQOV4g$graphics_shapes_release), (getAnchor1X() * f12) + (getControl1X() * f11) + (getControl0X() * f10), (getAnchor1Y() * f12) + (getControl1Y() * f11) + (getControl0Y() * f10), (getAnchor1X() * t) + (getControl1X() * f8), (getAnchor1Y() * t) + (getControl1Y() * f8), getAnchor1X(), getAnchor1Y()));
    }

    public final Cubic times(float x9) {
        float[] fArr = new float[8];
        for (int i10 = 0; i10 < 8; i10++) {
            fArr[i10] = this.points[i10] * x9;
        }
        return new Cubic(fArr);
    }

    public String toString() {
        return "anchor0: (" + getAnchor0X() + ", " + getAnchor0Y() + ") control0: (" + getControl0X() + ", " + getControl0Y() + "), control1: (" + getControl1X() + ", " + getControl1Y() + "), anchor1: (" + getAnchor1X() + ", " + getAnchor1Y() + ')';
    }

    public final Cubic transformed(PointTransformer f8) {
        f8.getClass();
        MutableCubic mutableCubic = new MutableCubic();
        ArraysKt___ArraysJvmKt.copyInto$default(this.points, mutableCubic.getPoints(), 0, 0, 0, 14, (Object) null);
        mutableCubic.transform(f8);
        return mutableCubic;
    }

    public final boolean zeroLength$graphics_shapes_release() {
        return Math.abs(getAnchor0X() - getAnchor1X()) < 1.0E-4f && Math.abs(getAnchor0Y() - getAnchor1Y()) < 1.0E-4f;
    }

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    @Metadata(m3158d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0007\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J8\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u0006H\u0007J(\u0010\f\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u0006H\u0007¨\u0006\r"}, m3159d2 = {"Landroidx/graphics/shapes/Cubic$Companion;", "", "()V", "circularArc", "Landroidx/graphics/shapes/Cubic;", "centerX", "", "centerY", "x0", "y0", "x1", "y1", "straightLine", "graphics-shapes_release"}, m3160k = 1, m3161mv = {1, 8, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        public final Cubic circularArc(float centerX, float centerY, float x9, float y9, float x10, float y10) {
            float f8 = x9 - centerX;
            float f10 = y9 - centerY;
            long jDirectionVector = Utils.directionVector(f8, f10);
            float f11 = x10 - centerX;
            float f12 = y10 - centerY;
            long jDirectionVector2 = Utils.directionVector(f11, f12);
            long jM6064rotate90DnnuFBc = Utils.m6064rotate90DnnuFBc(jDirectionVector);
            long jM6064rotate90DnnuFBc2 = Utils.m6064rotate90DnnuFBc(jDirectionVector2);
            boolean z9 = PointKt.m6038dotProduct5P9i7ZU(jM6064rotate90DnnuFBc, f11, f12) >= 0.0f;
            float fM6039dotProductybeJwSQ = PointKt.m6039dotProductybeJwSQ(jDirectionVector, jDirectionVector2);
            if (fM6039dotProductybeJwSQ > 0.999f) {
                return straightLine(x9, y9, x10, y10);
            }
            float f13 = 1;
            float f14 = f13 - fM6039dotProductybeJwSQ;
            float fSqrt = (((((float) Math.sqrt(2 * f14)) - ((float) Math.sqrt(f13 - (fM6039dotProductybeJwSQ * fM6039dotProductybeJwSQ)))) * ((Utils.distance(f8, f10) * 4.0f) / 3.0f)) / f14) * (z9 ? 1.0f : -1.0f);
            return CubicKt.Cubic(x9, y9, (PointKt.m6043getXDnnuFBc(jM6064rotate90DnnuFBc) * fSqrt) + x9, (PointKt.m6044getYDnnuFBc(jM6064rotate90DnnuFBc) * fSqrt) + y9, x10 - (PointKt.m6043getXDnnuFBc(jM6064rotate90DnnuFBc2) * fSqrt), y10 - (PointKt.m6044getYDnnuFBc(jM6064rotate90DnnuFBc2) * fSqrt), x10, y10);
        }

        @JvmStatic
        public final Cubic straightLine(float x9, float y9, float x10, float y10) {
            return CubicKt.Cubic(x9, y9, Utils.interpolate(x9, x10, 0.33333334f), Utils.interpolate(y9, y10, 0.33333334f), Utils.interpolate(x9, x10, 0.6666667f), Utils.interpolate(y9, y10, 0.6666667f), x10, y10);
        }

        private Companion() {
        }
    }

    public final Cubic div(int x9) {
        return div(x9);
    }

    public final Cubic times(int x9) {
        return times(x9);
    }

    public /* synthetic */ Cubic(long j10, long j11, long j12, long j13, DefaultConstructorMarker defaultConstructorMarker) {
        this(j10, j11, j12, j13);
    }

    public Cubic(float[] fArr) {
        fArr.getClass();
        this.points = fArr;
        if (fArr.length == 8) {
            return;
        }
        C1929i.m3029k("Points array size should be 8");
        throw null;
    }

    public /* synthetic */ Cubic(float[] fArr, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? new float[8] : fArr);
    }

    public Cubic() {
        this(null, 1, 0 == true ? 1 : 0);
    }
}
