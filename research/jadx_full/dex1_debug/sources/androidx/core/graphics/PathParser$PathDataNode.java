package androidx.core.graphics;

import android.graphics.Path;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.annotation.RestrictTo$Scope;
import androidx.appcompat.app.AppCompatDelegate;
import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import androidx.core.location.LocationRequestCompat;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class PathParser$PathDataNode {
    private final float[] mParams;
    private char mType;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public PathParser$PathDataNode(PathParser$PathDataNode pathParser$PathDataNode) {
        this.mType = pathParser$PathDataNode.mType;
        float[] fArr = pathParser$PathDataNode.mParams;
        this.mParams = PathParser.copyOfRange(fArr, 0, fArr.length);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ char access$000(PathParser$PathDataNode pathParser$PathDataNode) {
        return pathParser$PathDataNode.mType;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ char access$002(PathParser$PathDataNode pathParser$PathDataNode, char c) {
        pathParser$PathDataNode.mType = c;
        return c;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ float[] access$100(PathParser$PathDataNode pathParser$PathDataNode) {
        return pathParser$PathDataNode.mParams;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void access$200(Path path, float[] fArr, char c, char c9, float[] fArr2) {
        addCommand(path, fArr, c, c9, fArr2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private static void addCommand(Path path, float[] fArr, char c, char c9, float[] fArr2) {
        int i9;
        int i10;
        boolean z8;
        boolean z9;
        char c10;
        char c11;
        int i11;
        float f8;
        float f9;
        float f10;
        float f11;
        float f12;
        float f13;
        float f14;
        float f15;
        float f16;
        float f17;
        float f18;
        float f19;
        float f20;
        Path path2 = path;
        boolean z10 = false;
        float f21 = fArr[0];
        boolean z11 = true;
        float f22 = fArr[1];
        char c12 = 2;
        float f23 = fArr[2];
        char c13 = 3;
        float f24 = fArr[3];
        float f25 = fArr[4];
        float f26 = fArr[5];
        switch (c9) {
            case ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_HEIGHT /* 65 */:
            case 'a':
                i9 = 7;
                i10 = i9;
                break;
            case ConstraintLayout$LayoutParams$Table.GUIDELINE_USE_RTL /* 67 */:
            case 'c':
                i9 = 6;
                i10 = i9;
                break;
            case 'H':
            case 'V':
            case LocationRequestCompat.QUALITY_LOW_POWER /* 104 */:
            case 'v':
                i10 = 1;
                break;
            case 'L':
            case 'M':
            case 'T':
            case AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR /* 108 */:
            case AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY /* 109 */:
            case 't':
            default:
                i10 = 2;
                break;
            case 'Q':
            case 'S':
            case 'q':
            case 's':
                i10 = 4;
                break;
            case 'Z':
            case 'z':
                path2.close();
                path2.moveTo(f25, f26);
                f21 = f25;
                f23 = f21;
                f22 = f26;
                f24 = f22;
                i10 = 2;
                break;
        }
        float f27 = f21;
        float f28 = f22;
        float f29 = f25;
        float f30 = f26;
        int i12 = 0;
        char c14 = c;
        while (i12 < fArr2.length) {
            if (c9 == 'A') {
                z8 = z10;
                z9 = z11;
                c10 = c12;
                c11 = c13;
                i11 = i12;
                int i13 = i11 + 5;
                int i14 = i11 + 6;
                drawArc(path, f27, f28, fArr2[i13], fArr2[i14], fArr2[i11], fArr2[i11 + 1], fArr2[i11 + 2], fArr2[i11 + 3] != 0.0f ? z9 : z8, fArr2[i11 + 4] != 0 ? z9 : z8);
                f23 = fArr2[i13];
                f27 = f23;
                f24 = fArr2[i14];
                f28 = f24;
            } else if (c9 == 'C') {
                z8 = z10;
                z9 = z11;
                c10 = c12;
                c11 = c13;
                i11 = i12;
                int i15 = i11 + 2;
                int i16 = i11 + 3;
                int i17 = i11 + 4;
                int i18 = i11 + 5;
                path2.cubicTo(fArr2[i11], fArr2[i11 + 1], fArr2[i15], fArr2[i16], fArr2[i17], fArr2[i18]);
                float f31 = fArr2[i17];
                float f32 = fArr2[i18];
                float f33 = fArr2[i15];
                float f34 = fArr2[i16];
                f27 = f31;
                f28 = f32;
                f24 = f34;
                f23 = f33;
            } else if (c9 != 'H') {
                if (c9 != 'Q') {
                    z8 = z10;
                    if (c9 == 'V') {
                        z9 = z11;
                        c10 = c12;
                        c11 = c13;
                        i11 = i12;
                        path2.lineTo(f27, fArr2[i11]);
                        f10 = fArr2[i11];
                    } else if (c9 != 'a') {
                        if (c9 != 'c') {
                            z9 = z11;
                            if (c9 != 'h') {
                                if (c9 != 'q') {
                                    c10 = c12;
                                    if (c9 != 'v') {
                                        if (c9 != 'L') {
                                            if (c9 != 'M') {
                                                c11 = c13;
                                                if (c9 == 'S') {
                                                    if (c14 == 'c' || c14 == 's' || c14 == 'C' || c14 == 'S') {
                                                        f27 = (f27 * 2.0f) - f23;
                                                        f28 = (f28 * 2.0f) - f24;
                                                    }
                                                    float f35 = f27;
                                                    float f36 = f28;
                                                    int i19 = i12 + 1;
                                                    int i20 = i12 + 2;
                                                    int i21 = i12 + 3;
                                                    path2.cubicTo(f35, f36, fArr2[i12], fArr2[i19], fArr2[i20], fArr2[i21]);
                                                    f8 = fArr2[i12];
                                                    f9 = fArr2[i19];
                                                    f27 = fArr2[i20];
                                                    f28 = fArr2[i21];
                                                    i11 = i12;
                                                } else if (c9 == 'T') {
                                                    if (c14 == 'q' || c14 == 't' || c14 == 'Q' || c14 == 'T') {
                                                        f27 = (f27 * 2.0f) - f23;
                                                        f28 = (f28 * 2.0f) - f24;
                                                    }
                                                    int i22 = i12 + 1;
                                                    path2.quadTo(f27, f28, fArr2[i12], fArr2[i22]);
                                                    float f37 = fArr2[i12];
                                                    f10 = fArr2[i22];
                                                    f23 = f27;
                                                    f24 = f28;
                                                    i11 = i12;
                                                    f27 = f37;
                                                } else if (c9 == 'l') {
                                                    int i23 = i12 + 1;
                                                    path2.rLineTo(fArr2[i12], fArr2[i23]);
                                                    f27 += fArr2[i12];
                                                    f14 = fArr2[i23];
                                                } else if (c9 == 'm') {
                                                    float f38 = fArr2[i12];
                                                    f27 += f38;
                                                    float f39 = fArr2[i12 + 1];
                                                    f28 += f39;
                                                    if (i12 > 0) {
                                                        path2.rLineTo(f38, f39);
                                                    } else {
                                                        path2.rMoveTo(f38, f39);
                                                        f29 = f27;
                                                    }
                                                } else if (c9 == 's') {
                                                    if (c14 == 'c' || c14 == 's' || c14 == 'C' || c14 == 'S') {
                                                        f17 = f28 - f24;
                                                        f18 = f27 - f23;
                                                    } else {
                                                        f18 = 0.0f;
                                                        f17 = 0.0f;
                                                    }
                                                    int i24 = i12 + 1;
                                                    int i25 = i12 + 2;
                                                    int i26 = i12 + 3;
                                                    path2.rCubicTo(f18, f17, fArr2[i12], fArr2[i24], fArr2[i25], fArr2[i26]);
                                                    f11 = fArr2[i12] + f27;
                                                    f12 = fArr2[i24] + f28;
                                                    f27 += fArr2[i25];
                                                    f13 = fArr2[i26];
                                                } else if (c9 == 't') {
                                                    if (c14 == 'q' || c14 == 't' || c14 == 'Q' || c14 == 'T') {
                                                        f19 = f27 - f23;
                                                        f20 = f28 - f24;
                                                    } else {
                                                        f20 = 0.0f;
                                                        f19 = 0.0f;
                                                    }
                                                    int i27 = i12 + 1;
                                                    path2.rQuadTo(f19, f20, fArr2[i12], fArr2[i27]);
                                                    float f40 = f19 + f27;
                                                    float f41 = f20 + f28;
                                                    f27 += fArr2[i12];
                                                    f28 += fArr2[i27];
                                                    f24 = f41;
                                                    f23 = f40;
                                                }
                                            } else {
                                                c11 = c13;
                                                f15 = fArr2[i12];
                                                f16 = fArr2[i12 + 1];
                                                if (i12 > 0) {
                                                    path2.lineTo(f15, f16);
                                                } else {
                                                    path2.moveTo(f15, f16);
                                                    f27 = f15;
                                                    f29 = f27;
                                                    f28 = f16;
                                                }
                                            }
                                            f30 = f28;
                                        } else {
                                            c11 = c13;
                                            int i28 = i12 + 1;
                                            path2.lineTo(fArr2[i12], fArr2[i28]);
                                            f15 = fArr2[i12];
                                            f16 = fArr2[i28];
                                        }
                                        f27 = f15;
                                        f28 = f16;
                                    } else {
                                        c11 = c13;
                                        path2.rLineTo(0.0f, fArr2[i12]);
                                        f14 = fArr2[i12];
                                    }
                                    f28 += f14;
                                } else {
                                    c10 = c12;
                                    c11 = c13;
                                    int i29 = i12 + 1;
                                    int i30 = i12 + 2;
                                    int i31 = i12 + 3;
                                    path2.rQuadTo(fArr2[i12], fArr2[i29], fArr2[i30], fArr2[i31]);
                                    f11 = fArr2[i12] + f27;
                                    f12 = fArr2[i29] + f28;
                                    f27 += fArr2[i30];
                                    f13 = fArr2[i31];
                                }
                                f28 += f13;
                                f23 = f11;
                                f24 = f12;
                            } else {
                                c10 = c12;
                                c11 = c13;
                                path2.rLineTo(fArr2[i12], 0.0f);
                                f27 += fArr2[i12];
                            }
                        } else {
                            z9 = z11;
                            c10 = c12;
                            c11 = c13;
                            int i32 = i12 + 2;
                            int i33 = i12 + 3;
                            int i34 = i12 + 4;
                            int i35 = i12 + 5;
                            path2.rCubicTo(fArr2[i12], fArr2[i12 + 1], fArr2[i32], fArr2[i33], fArr2[i34], fArr2[i35]);
                            float f42 = fArr2[i32] + f27;
                            float f43 = fArr2[i33] + f28;
                            f27 += fArr2[i34];
                            f28 += fArr2[i35];
                            f23 = f42;
                            f24 = f43;
                        }
                        i11 = i12;
                    } else {
                        z9 = z11;
                        c10 = c12;
                        c11 = c13;
                        int i36 = i12 + 5;
                        int i37 = i12 + 6;
                        i11 = i12;
                        float f44 = f27;
                        drawArc(path, f44, f28, fArr2[i36] + f27, fArr2[i37] + f28, fArr2[i12], fArr2[i12 + 1], fArr2[i12 + 2], fArr2[i12 + 3] != 0.0f ? z9 : z8, fArr2[i12 + 4] != 0 ? z9 : z8);
                        f27 = f44 + fArr2[i36];
                        f28 += fArr2[i37];
                        f23 = f27;
                        f24 = f28;
                    }
                    f28 = f10;
                } else {
                    z8 = z10;
                    z9 = z11;
                    c10 = c12;
                    c11 = c13;
                    i11 = i12;
                    int i38 = i11 + 1;
                    int i39 = i11 + 2;
                    int i40 = i11 + 3;
                    path2.quadTo(fArr2[i11], fArr2[i38], fArr2[i39], fArr2[i40]);
                    f8 = fArr2[i11];
                    f9 = fArr2[i38];
                    f27 = fArr2[i39];
                    f28 = fArr2[i40];
                }
                f23 = f8;
                f24 = f9;
            } else {
                z8 = z10;
                z9 = z11;
                c10 = c12;
                c11 = c13;
                i11 = i12;
                path2.lineTo(fArr2[i11], f28);
                f27 = fArr2[i11];
            }
            i12 = i11 + i10;
            path2 = path;
            c14 = c9;
            z10 = z8;
            z11 = z9;
            c12 = c10;
            c13 = c11;
        }
        fArr[z10 ? 1 : 0] = f27;
        fArr[z11 ? 1 : 0] = f28;
        fArr[c12] = f23;
        fArr[c13] = f24;
        fArr[4] = f29;
        fArr[5] = f30;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static void arcToBezier(Path path, double d, double d9, double d10, double d11, double d12, double d13, double d14, double d15, double d16) {
        double d17 = d10;
        int iCeil = (int) Math.ceil(Math.abs((d16 * 4.0d) / 3.141592653589793d));
        double dCos = Math.cos(d14);
        double dSin = Math.sin(d14);
        double dCos2 = Math.cos(d15);
        double dSin2 = Math.sin(d15);
        double d18 = -d17;
        double d19 = d18 * dCos;
        double d20 = d11 * dSin;
        double d21 = (d19 * dSin2) - (d20 * dCos2);
        double d22 = d18 * dSin;
        double d23 = d11 * dCos;
        double d24 = (dCos2 * d23) + (dSin2 * d22);
        double d25 = d16 / ((double) iCeil);
        double d26 = d24;
        double d27 = d21;
        int i9 = 0;
        double d28 = d12;
        double d29 = d13;
        double d30 = d15;
        while (i9 < iCeil) {
            double d31 = d30 + d25;
            double dSin3 = Math.sin(d31);
            double dCos3 = Math.cos(d31);
            double d32 = (((d17 * dCos) * dCos3) + d) - (d20 * dSin3);
            int i10 = i9;
            double d33 = (d23 * dSin3) + (d10 * dSin * dCos3) + d9;
            double d34 = (d19 * dSin3) - (d20 * dCos3);
            double d35 = (dCos3 * d23) + (dSin3 * d22);
            double d36 = d31 - d30;
            double dTan = Math.tan(d36 / 2.0d);
            double dSqrt = ((Math.sqrt(((dTan * 3.0d) * dTan) + 4.0d) - 1.0d) * Math.sin(d36)) / 3.0d;
            path.rLineTo(0.0f, 0.0f);
            path.cubicTo((float) ((d27 * dSqrt) + d28), (float) ((d26 * dSqrt) + d29), (float) (d32 - (dSqrt * d34)), (float) (d33 - (dSqrt * d35)), (float) d32, (float) d33);
            dSin = dSin;
            d25 = d25;
            d28 = d32;
            d22 = d22;
            dCos = dCos;
            d26 = d35;
            d27 = d34;
            d17 = d10;
            d29 = d33;
            i9 = i10 + 1;
            iCeil = iCeil;
            d30 = d31;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static void drawArc(Path path, float f8, float f9, float f10, float f11, float f12, float f13, float f14, boolean z8, boolean z9) {
        double d;
        double d9;
        double radians = Math.toRadians(f14);
        double dCos = Math.cos(radians);
        double dSin = Math.sin(radians);
        double d10 = f8;
        double d11 = f9;
        double d12 = f12;
        double d13 = ((d11 * dSin) + (d10 * dCos)) / d12;
        double d14 = f13;
        double d15 = ((d11 * dCos) + (((double) (-f8)) * dSin)) / d14;
        double d16 = f11;
        double d17 = ((d16 * dSin) + (((double) f10) * dCos)) / d12;
        double d18 = ((d16 * dCos) + (((double) (-f10)) * dSin)) / d14;
        double d19 = d13 - d17;
        double d20 = d15 - d18;
        double d21 = (d13 + d17) / 2.0d;
        double d22 = (d15 + d18) / 2.0d;
        double d23 = (d20 * d20) + (d19 * d19);
        if (d23 == 0.0d) {
            Log.w("PathParser", " Points are coincident");
            return;
        }
        double d24 = (1.0d / d23) - 0.25d;
        if (d24 < 0.0d) {
            Log.w("PathParser", "Points are too far apart " + d23);
            float fSqrt = (float) (Math.sqrt(d23) / 1.99999d);
            drawArc(path, f8, f9, f10, f11, f12 * fSqrt, fSqrt * f13, f14, z8, z9);
            return;
        }
        double dSqrt = Math.sqrt(d24);
        double d25 = dSqrt * d19;
        double d26 = dSqrt * d20;
        if (z8 == z9) {
            d = d21 - d26;
            d9 = d22 + d25;
        } else {
            d = d21 + d26;
            d9 = d22 - d25;
        }
        double dAtan2 = Math.atan2(d15 - d9, d13 - d);
        double dAtan3 = Math.atan2(d18 - d9, d17 - d) - dAtan2;
        if (z9 != (dAtan3 >= 0.0d)) {
            dAtan3 = dAtan3 > 0.0d ? dAtan3 - 6.283185307179586d : dAtan3 + 6.283185307179586d;
        }
        double d27 = d * d12;
        double d28 = d9 * d14;
        arcToBezier(path, (d27 * dCos) - (d28 * dSin), (d28 * dCos) + (d27 * dSin), d12, d14, d10, d11, radians, dAtan2, dAtan3);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    @Deprecated
    public static void nodesToPath(@NonNull PathParser$PathDataNode[] pathParser$PathDataNodeArr, @NonNull Path path) {
        PathParser.nodesToPath(pathParser$PathDataNodeArr, path);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public float[] getParams() {
        return this.mParams;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public char getType() {
        return this.mType;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void interpolatePathDataNode(@NonNull PathParser$PathDataNode pathParser$PathDataNode, @NonNull PathParser$PathDataNode pathParser$PathDataNode2, float f8) {
        this.mType = pathParser$PathDataNode.mType;
        int i9 = 0;
        while (true) {
            float[] fArr = pathParser$PathDataNode.mParams;
            if (i9 >= fArr.length) {
                return;
            }
            this.mParams[i9] = (pathParser$PathDataNode2.mParams[i9] * f8) + ((1.0f - f8) * fArr[i9]);
            i9++;
        }
    }

    public PathParser$PathDataNode(char c, float[] fArr) {
        this.mType = c;
        this.mParams = fArr;
    }
}
