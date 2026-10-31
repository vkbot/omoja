package androidx.core.graphics;

import ai.onnxruntime.AbstractC0074a;
import ai.onnxruntime.C0075b;
import android.graphics.Path;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.appcompat.app.AppCompatDelegate;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.location.LocationRequestCompat;
import java.util.ArrayList;
import p099j1.C1929i;
import p130l9.C2237i;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class PathParser {
    private static final String LOGTAG = "PathParser";

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public static class ExtractFloatResult {
        int mEndPosition;
        boolean mEndWithNegOrDot;
    }

    private PathParser() {
    }

    private static void addNode(ArrayList<PathDataNode> arrayList, char c, float[] fArr) {
        arrayList.add(new PathDataNode(c, fArr));
    }

    public static boolean canMorph(@Nullable PathDataNode[] pathDataNodeArr, @Nullable PathDataNode[] pathDataNodeArr2) {
        if (pathDataNodeArr == null || pathDataNodeArr2 == null || pathDataNodeArr.length != pathDataNodeArr2.length) {
            return false;
        }
        for (int i10 = 0; i10 < pathDataNodeArr.length; i10++) {
            if (pathDataNodeArr[i10].mType != pathDataNodeArr2[i10].mType || pathDataNodeArr[i10].mParams.length != pathDataNodeArr2[i10].mParams.length) {
                return false;
            }
        }
        return true;
    }

    public static float[] copyOfRange(float[] fArr, int i10, int i11) {
        if (i10 > i11) {
            C2237i.m3594a();
            return null;
        }
        int length = fArr.length;
        if (i10 < 0 || i10 > length) {
            throw new ArrayIndexOutOfBoundsException();
        }
        int i12 = i11 - i10;
        int iMin = Math.min(i12, length - i10);
        float[] fArr2 = new float[i12];
        System.arraycopy(fArr, i10, fArr2, 0, iMin);
        return fArr2;
    }

    @NonNull
    public static PathDataNode[] createNodesFromPathData(@NonNull String str) {
        ArrayList arrayList = new ArrayList();
        int i10 = 0;
        int i11 = 1;
        while (i11 < str.length()) {
            int iNextStart = nextStart(str, i11);
            String strTrim = str.substring(i10, iNextStart).trim();
            if (!strTrim.isEmpty()) {
                addNode(arrayList, strTrim.charAt(0), getFloats(strTrim));
            }
            i10 = iNextStart;
            i11 = iNextStart + 1;
        }
        if (i11 - i10 == 1 && i10 < str.length()) {
            addNode(arrayList, str.charAt(i10), new float[0]);
        }
        return (PathDataNode[]) arrayList.toArray(new PathDataNode[0]);
    }

    @NonNull
    public static Path createPathFromPathData(@NonNull String str) {
        Path path = new Path();
        try {
            PathDataNode.nodesToPath(createNodesFromPathData(str), path);
            return path;
        } catch (RuntimeException e) {
            C0075b.m190o(AbstractC0074a.m161l("Error in parsing ", str), e);
            return null;
        }
    }

    @NonNull
    public static PathDataNode[] deepCopyNodes(@NonNull PathDataNode[] pathDataNodeArr) {
        PathDataNode[] pathDataNodeArr2 = new PathDataNode[pathDataNodeArr.length];
        for (int i10 = 0; i10 < pathDataNodeArr.length; i10++) {
            pathDataNodeArr2[i10] = new PathDataNode(pathDataNodeArr[i10]);
        }
        return pathDataNodeArr2;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:16:0x0029  */
    private static void extract(String str, int i10, ExtractFloatResult extractFloatResult) {
        extractFloatResult.mEndWithNegOrDot = false;
        boolean z9 = false;
        boolean z10 = false;
        boolean z11 = false;
        for (int i11 = i10; i11 < str.length(); i11++) {
            char cCharAt = str.charAt(i11);
            if (cCharAt == ' ') {
                z9 = false;
                z11 = true;
            } else if (cCharAt != 'E' && cCharAt != 'e') {
                switch (cCharAt) {
                    case ',':
                        z9 = false;
                        z11 = true;
                        break;
                    case '-':
                        if (i11 == i10 || z9) {
                            z9 = false;
                        } else {
                            extractFloatResult.mEndWithNegOrDot = true;
                            z9 = false;
                            z11 = true;
                        }
                        break;
                    case '.':
                        if (z10) {
                            extractFloatResult.mEndWithNegOrDot = true;
                            z9 = false;
                            z11 = true;
                        } else {
                            z9 = false;
                            z10 = true;
                        }
                        break;
                    default:
                        z9 = false;
                        break;
                }
            } else {
                z9 = true;
            }
            if (z11) {
                extractFloatResult.mEndPosition = i11;
            }
        }
        extractFloatResult.mEndPosition = i11;
    }

    private static float[] getFloats(String str) {
        if (str.charAt(0) == 'z' || str.charAt(0) == 'Z') {
            return new float[0];
        }
        try {
            float[] fArr = new float[str.length()];
            ExtractFloatResult extractFloatResult = new ExtractFloatResult();
            int length = str.length();
            int i10 = 1;
            int i11 = 0;
            while (i10 < length) {
                extract(str, i10, extractFloatResult);
                int i12 = extractFloatResult.mEndPosition;
                if (i10 < i12) {
                    fArr[i11] = Float.parseFloat(str.substring(i10, i12));
                    i11++;
                }
                i10 = extractFloatResult.mEndWithNegOrDot ? i12 : i12 + 1;
            }
            return copyOfRange(fArr, 0, i11);
        } catch (NumberFormatException e) {
            C0075b.m190o(AbstractC0074a.m162m("error in parsing \"", str, "\""), e);
            return null;
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    @Deprecated
    public static boolean interpolatePathDataNodes(@NonNull PathDataNode[] pathDataNodeArr, @NonNull PathDataNode[] pathDataNodeArr2, @NonNull PathDataNode[] pathDataNodeArr3, float f8) {
        if (pathDataNodeArr.length != pathDataNodeArr2.length || pathDataNodeArr2.length != pathDataNodeArr3.length) {
            C1929i.m3029k("The nodes to be interpolated and resulting nodes must have the same length");
            return false;
        }
        if (!canMorph(pathDataNodeArr2, pathDataNodeArr3)) {
            return false;
        }
        for (int i10 = 0; i10 < pathDataNodeArr.length; i10++) {
            pathDataNodeArr[i10].interpolatePathDataNode(pathDataNodeArr2[i10], pathDataNodeArr3[i10], f8);
        }
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0018  */
    private static int nextStart(String str, int i10) {
        while (i10 < str.length()) {
            char cCharAt = str.charAt(i10);
            if ((cCharAt - 'Z') * (cCharAt - 'A') > 0) {
                if ((cCharAt - 'z') * (cCharAt - 'a') > 0) {
                    continue;
                } else if (cCharAt != 'e' && cCharAt != 'E') {
                    break;
                }
            } else if (cCharAt != 'e') {
                continue;
            }
            i10++;
        }
        return i10;
    }

    public static void nodesToPath(@NonNull PathDataNode[] pathDataNodeArr, @NonNull Path path) {
        float[] fArr = new float[6];
        char c = 'm';
        for (PathDataNode pathDataNode : pathDataNodeArr) {
            PathDataNode.addCommand(path, fArr, c, pathDataNode.mType, pathDataNode.mParams);
            c = pathDataNode.mType;
        }
    }

    public static void updateNodes(@NonNull PathDataNode[] pathDataNodeArr, @NonNull PathDataNode[] pathDataNodeArr2) {
        for (int i10 = 0; i10 < pathDataNodeArr2.length; i10++) {
            pathDataNodeArr[i10].mType = pathDataNodeArr2[i10].mType;
            for (int i11 = 0; i11 < pathDataNodeArr2[i10].mParams.length; i11++) {
                pathDataNodeArr[i10].mParams[i11] = pathDataNodeArr2[i10].mParams[i11];
            }
        }
    }

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public static class PathDataNode {
        private final float[] mParams;
        private char mType;

        public PathDataNode(PathDataNode pathDataNode) {
            this.mType = pathDataNode.mType;
            float[] fArr = pathDataNode.mParams;
            this.mParams = PathParser.copyOfRange(fArr, 0, fArr.length);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        public static void addCommand(Path path, float[] fArr, char c, char c10, float[] fArr2) {
            int i10;
            int i11;
            boolean z9;
            boolean z10;
            char c11;
            char c12;
            int i12;
            float f8;
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
            float f21;
            Path path2 = path;
            boolean z11 = false;
            float f22 = fArr[0];
            boolean z12 = true;
            float f23 = fArr[1];
            char c13 = 2;
            float f24 = fArr[2];
            char c14 = 3;
            float f25 = fArr[3];
            float f26 = fArr[4];
            float f27 = fArr[5];
            switch (c10) {
                case ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_HEIGHT /* 65 */:
                case 'a':
                    i10 = 7;
                    i11 = i10;
                    break;
                case ConstraintLayout.LayoutParams.Table.GUIDELINE_USE_RTL /* 67 */:
                case 'c':
                    i10 = 6;
                    i11 = i10;
                    break;
                case 'H':
                case 'V':
                case LocationRequestCompat.QUALITY_LOW_POWER /* 104 */:
                case 'v':
                    i11 = 1;
                    break;
                case 'L':
                case 'M':
                case 'T':
                case AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR /* 108 */:
                case AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY /* 109 */:
                case 't':
                default:
                    i11 = 2;
                    break;
                case 'Q':
                case 'S':
                case 'q':
                case 's':
                    i11 = 4;
                    break;
                case 'Z':
                case 'z':
                    path2.close();
                    path2.moveTo(f26, f27);
                    f22 = f26;
                    f24 = f22;
                    f23 = f27;
                    f25 = f23;
                    i11 = 2;
                    break;
            }
            float f28 = f22;
            float f29 = f23;
            float f30 = f26;
            float f31 = f27;
            int i13 = 0;
            char c15 = c;
            while (i13 < fArr2.length) {
                if (c10 == 'A') {
                    z9 = z11;
                    z10 = z12;
                    c11 = c13;
                    c12 = c14;
                    i12 = i13;
                    int i14 = i12 + 5;
                    int i15 = i12 + 6;
                    drawArc(path, f28, f29, fArr2[i14], fArr2[i15], fArr2[i12], fArr2[i12 + 1], fArr2[i12 + 2], fArr2[i12 + 3] != 0.0f ? z10 : z9, fArr2[i12 + 4] != 0 ? z10 : z9);
                    f24 = fArr2[i14];
                    f28 = f24;
                    f25 = fArr2[i15];
                    f29 = f25;
                } else if (c10 == 'C') {
                    z9 = z11;
                    z10 = z12;
                    c11 = c13;
                    c12 = c14;
                    i12 = i13;
                    int i16 = i12 + 2;
                    int i17 = i12 + 3;
                    int i18 = i12 + 4;
                    int i19 = i12 + 5;
                    path2.cubicTo(fArr2[i12], fArr2[i12 + 1], fArr2[i16], fArr2[i17], fArr2[i18], fArr2[i19]);
                    float f32 = fArr2[i18];
                    float f33 = fArr2[i19];
                    float f34 = fArr2[i16];
                    float f35 = fArr2[i17];
                    f28 = f32;
                    f29 = f33;
                    f25 = f35;
                    f24 = f34;
                } else if (c10 != 'H') {
                    if (c10 != 'Q') {
                        z9 = z11;
                        if (c10 == 'V') {
                            z10 = z12;
                            c11 = c13;
                            c12 = c14;
                            i12 = i13;
                            path2.lineTo(f28, fArr2[i12]);
                            f11 = fArr2[i12];
                        } else if (c10 != 'a') {
                            if (c10 != 'c') {
                                z10 = z12;
                                if (c10 != 'h') {
                                    if (c10 != 'q') {
                                        c11 = c13;
                                        if (c10 != 'v') {
                                            if (c10 != 'L') {
                                                if (c10 != 'M') {
                                                    c12 = c14;
                                                    if (c10 == 'S') {
                                                        if (c15 == 'c' || c15 == 's' || c15 == 'C' || c15 == 'S') {
                                                            f28 = (f28 * 2.0f) - f24;
                                                            f29 = (f29 * 2.0f) - f25;
                                                        }
                                                        float f36 = f28;
                                                        float f37 = f29;
                                                        int i20 = i13 + 1;
                                                        int i21 = i13 + 2;
                                                        int i22 = i13 + 3;
                                                        path2.cubicTo(f36, f37, fArr2[i13], fArr2[i20], fArr2[i21], fArr2[i22]);
                                                        f8 = fArr2[i13];
                                                        f10 = fArr2[i20];
                                                        f28 = fArr2[i21];
                                                        f29 = fArr2[i22];
                                                        i12 = i13;
                                                    } else if (c10 == 'T') {
                                                        if (c15 == 'q' || c15 == 't' || c15 == 'Q' || c15 == 'T') {
                                                            f28 = (f28 * 2.0f) - f24;
                                                            f29 = (f29 * 2.0f) - f25;
                                                        }
                                                        int i23 = i13 + 1;
                                                        path2.quadTo(f28, f29, fArr2[i13], fArr2[i23]);
                                                        float f38 = fArr2[i13];
                                                        f11 = fArr2[i23];
                                                        f24 = f28;
                                                        f25 = f29;
                                                        i12 = i13;
                                                        f28 = f38;
                                                    } else if (c10 == 'l') {
                                                        int i24 = i13 + 1;
                                                        path2.rLineTo(fArr2[i13], fArr2[i24]);
                                                        f28 += fArr2[i13];
                                                        f15 = fArr2[i24];
                                                    } else if (c10 == 'm') {
                                                        float f39 = fArr2[i13];
                                                        f28 += f39;
                                                        float f40 = fArr2[i13 + 1];
                                                        f29 += f40;
                                                        if (i13 > 0) {
                                                            path2.rLineTo(f39, f40);
                                                        } else {
                                                            path2.rMoveTo(f39, f40);
                                                            f30 = f28;
                                                        }
                                                    } else if (c10 == 's') {
                                                        if (c15 == 'c' || c15 == 's' || c15 == 'C' || c15 == 'S') {
                                                            f18 = f29 - f25;
                                                            f19 = f28 - f24;
                                                        } else {
                                                            f19 = 0.0f;
                                                            f18 = 0.0f;
                                                        }
                                                        int i25 = i13 + 1;
                                                        int i26 = i13 + 2;
                                                        int i27 = i13 + 3;
                                                        path2.rCubicTo(f19, f18, fArr2[i13], fArr2[i25], fArr2[i26], fArr2[i27]);
                                                        f12 = fArr2[i13] + f28;
                                                        f13 = fArr2[i25] + f29;
                                                        f28 += fArr2[i26];
                                                        f14 = fArr2[i27];
                                                    } else if (c10 == 't') {
                                                        if (c15 == 'q' || c15 == 't' || c15 == 'Q' || c15 == 'T') {
                                                            f20 = f28 - f24;
                                                            f21 = f29 - f25;
                                                        } else {
                                                            f21 = 0.0f;
                                                            f20 = 0.0f;
                                                        }
                                                        int i28 = i13 + 1;
                                                        path2.rQuadTo(f20, f21, fArr2[i13], fArr2[i28]);
                                                        float f41 = f20 + f28;
                                                        float f42 = f21 + f29;
                                                        f28 += fArr2[i13];
                                                        f29 += fArr2[i28];
                                                        f25 = f42;
                                                        f24 = f41;
                                                    }
                                                } else {
                                                    c12 = c14;
                                                    f16 = fArr2[i13];
                                                    f17 = fArr2[i13 + 1];
                                                    if (i13 > 0) {
                                                        path2.lineTo(f16, f17);
                                                    } else {
                                                        path2.moveTo(f16, f17);
                                                        f28 = f16;
                                                        f30 = f28;
                                                        f29 = f17;
                                                    }
                                                }
                                                f31 = f29;
                                            } else {
                                                c12 = c14;
                                                int i29 = i13 + 1;
                                                path2.lineTo(fArr2[i13], fArr2[i29]);
                                                f16 = fArr2[i13];
                                                f17 = fArr2[i29];
                                            }
                                            f28 = f16;
                                            f29 = f17;
                                        } else {
                                            c12 = c14;
                                            path2.rLineTo(0.0f, fArr2[i13]);
                                            f15 = fArr2[i13];
                                        }
                                        f29 += f15;
                                    } else {
                                        c11 = c13;
                                        c12 = c14;
                                        int i30 = i13 + 1;
                                        int i31 = i13 + 2;
                                        int i32 = i13 + 3;
                                        path2.rQuadTo(fArr2[i13], fArr2[i30], fArr2[i31], fArr2[i32]);
                                        f12 = fArr2[i13] + f28;
                                        f13 = fArr2[i30] + f29;
                                        f28 += fArr2[i31];
                                        f14 = fArr2[i32];
                                    }
                                    f29 += f14;
                                    f24 = f12;
                                    f25 = f13;
                                } else {
                                    c11 = c13;
                                    c12 = c14;
                                    path2.rLineTo(fArr2[i13], 0.0f);
                                    f28 += fArr2[i13];
                                }
                            } else {
                                z10 = z12;
                                c11 = c13;
                                c12 = c14;
                                int i33 = i13 + 2;
                                int i34 = i13 + 3;
                                int i35 = i13 + 4;
                                int i36 = i13 + 5;
                                path2.rCubicTo(fArr2[i13], fArr2[i13 + 1], fArr2[i33], fArr2[i34], fArr2[i35], fArr2[i36]);
                                float f43 = fArr2[i33] + f28;
                                float f44 = fArr2[i34] + f29;
                                f28 += fArr2[i35];
                                f29 += fArr2[i36];
                                f24 = f43;
                                f25 = f44;
                            }
                            i12 = i13;
                        } else {
                            z10 = z12;
                            c11 = c13;
                            c12 = c14;
                            int i37 = i13 + 5;
                            int i38 = i13 + 6;
                            i12 = i13;
                            float f45 = f28;
                            drawArc(path, f45, f29, fArr2[i37] + f28, fArr2[i38] + f29, fArr2[i13], fArr2[i13 + 1], fArr2[i13 + 2], fArr2[i13 + 3] != 0.0f ? z10 : z9, fArr2[i13 + 4] != 0 ? z10 : z9);
                            f28 = f45 + fArr2[i37];
                            f29 += fArr2[i38];
                            f24 = f28;
                            f25 = f29;
                        }
                        f29 = f11;
                    } else {
                        z9 = z11;
                        z10 = z12;
                        c11 = c13;
                        c12 = c14;
                        i12 = i13;
                        int i39 = i12 + 1;
                        int i40 = i12 + 2;
                        int i41 = i12 + 3;
                        path2.quadTo(fArr2[i12], fArr2[i39], fArr2[i40], fArr2[i41]);
                        f8 = fArr2[i12];
                        f10 = fArr2[i39];
                        f28 = fArr2[i40];
                        f29 = fArr2[i41];
                    }
                    f24 = f8;
                    f25 = f10;
                } else {
                    z9 = z11;
                    z10 = z12;
                    c11 = c13;
                    c12 = c14;
                    i12 = i13;
                    path2.lineTo(fArr2[i12], f29);
                    f28 = fArr2[i12];
                }
                i13 = i12 + i11;
                path2 = path;
                c15 = c10;
                z11 = z9;
                z12 = z10;
                c13 = c11;
                c14 = c12;
            }
            fArr[z11 ? 1 : 0] = f28;
            fArr[z12 ? 1 : 0] = f29;
            fArr[c13] = f24;
            fArr[c14] = f25;
            fArr[4] = f30;
            fArr[5] = f31;
        }

        private static void arcToBezier(Path path, double d, double d10, double d11, double d12, double d13, double d14, double d15, double d16, double d17) {
            double d18 = d11;
            int iCeil = (int) Math.ceil(Math.abs((d17 * 4.0d) / 3.141592653589793d));
            double dCos = Math.cos(d15);
            double dSin = Math.sin(d15);
            double dCos2 = Math.cos(d16);
            double dSin2 = Math.sin(d16);
            double d19 = -d18;
            double d20 = d19 * dCos;
            double d21 = d12 * dSin;
            double d22 = (d20 * dSin2) - (d21 * dCos2);
            double d23 = d19 * dSin;
            double d24 = d12 * dCos;
            double d25 = (dCos2 * d24) + (dSin2 * d23);
            double d26 = d17 / ((double) iCeil);
            double d27 = d25;
            double d28 = d22;
            int i10 = 0;
            double d29 = d13;
            double d30 = d14;
            double d31 = d16;
            while (i10 < iCeil) {
                double d32 = d31 + d26;
                double dSin3 = Math.sin(d32);
                double dCos3 = Math.cos(d32);
                double d33 = (((d18 * dCos) * dCos3) + d) - (d21 * dSin3);
                int i11 = i10;
                double d34 = (d24 * dSin3) + (d11 * dSin * dCos3) + d10;
                double d35 = (d20 * dSin3) - (d21 * dCos3);
                double d36 = (dCos3 * d24) + (dSin3 * d23);
                double d37 = d32 - d31;
                double dTan = Math.tan(d37 / 2.0d);
                double dSqrt = ((Math.sqrt(((dTan * 3.0d) * dTan) + 4.0d) - 1.0d) * Math.sin(d37)) / 3.0d;
                path.rLineTo(0.0f, 0.0f);
                path.cubicTo((float) ((d28 * dSqrt) + d29), (float) ((d27 * dSqrt) + d30), (float) (d33 - (dSqrt * d35)), (float) (d34 - (dSqrt * d36)), (float) d33, (float) d34);
                dSin = dSin;
                d26 = d26;
                d29 = d33;
                d23 = d23;
                dCos = dCos;
                d27 = d36;
                d28 = d35;
                d18 = d11;
                d30 = d34;
                i10 = i11 + 1;
                iCeil = iCeil;
                d31 = d32;
            }
        }

        private static void drawArc(Path path, float f8, float f10, float f11, float f12, float f13, float f14, float f15, boolean z9, boolean z10) {
            double d;
            double d10;
            double radians = Math.toRadians(f15);
            double dCos = Math.cos(radians);
            double dSin = Math.sin(radians);
            double d11 = f8;
            double d12 = f10;
            double d13 = f13;
            double d14 = ((d12 * dSin) + (d11 * dCos)) / d13;
            double d15 = f14;
            double d16 = ((d12 * dCos) + (((double) (-f8)) * dSin)) / d15;
            double d17 = f12;
            double d18 = ((d17 * dSin) + (((double) f11) * dCos)) / d13;
            double d19 = ((d17 * dCos) + (((double) (-f11)) * dSin)) / d15;
            double d20 = d14 - d18;
            double d21 = d16 - d19;
            double d22 = (d14 + d18) / 2.0d;
            double d23 = (d16 + d19) / 2.0d;
            double d24 = (d21 * d21) + (d20 * d20);
            if (d24 == 0.0d) {
                Log.w(PathParser.LOGTAG, " Points are coincident");
                return;
            }
            double d25 = (1.0d / d24) - 0.25d;
            if (d25 < 0.0d) {
                Log.w(PathParser.LOGTAG, "Points are too far apart " + d24);
                float fSqrt = (float) (Math.sqrt(d24) / 1.99999d);
                drawArc(path, f8, f10, f11, f12, f13 * fSqrt, fSqrt * f14, f15, z9, z10);
                return;
            }
            double dSqrt = Math.sqrt(d25);
            double d26 = dSqrt * d20;
            double d27 = dSqrt * d21;
            if (z9 == z10) {
                d = d22 - d27;
                d10 = d23 + d26;
            } else {
                d = d22 + d27;
                d10 = d23 - d26;
            }
            double dAtan2 = Math.atan2(d16 - d10, d14 - d);
            double dAtan3 = Math.atan2(d19 - d10, d18 - d) - dAtan2;
            if (z10 != (dAtan3 >= 0.0d)) {
                dAtan3 = dAtan3 > 0.0d ? dAtan3 - 6.283185307179586d : dAtan3 + 6.283185307179586d;
            }
            double d28 = d * d13;
            double d29 = d10 * d15;
            arcToBezier(path, (d28 * dCos) - (d29 * dSin), (d29 * dCos) + (d28 * dSin), d13, d15, d11, d12, radians, dAtan2, dAtan3);
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        @Deprecated
        public static void nodesToPath(@NonNull PathDataNode[] pathDataNodeArr, @NonNull Path path) {
            PathParser.nodesToPath(pathDataNodeArr, path);
        }

        @NonNull
        public float[] getParams() {
            return this.mParams;
        }

        public char getType() {
            return this.mType;
        }

        public void interpolatePathDataNode(@NonNull PathDataNode pathDataNode, @NonNull PathDataNode pathDataNode2, float f8) {
            this.mType = pathDataNode.mType;
            int i10 = 0;
            while (true) {
                float[] fArr = pathDataNode.mParams;
                if (i10 >= fArr.length) {
                    return;
                }
                this.mParams[i10] = (pathDataNode2.mParams[i10] * f8) + ((1.0f - f8) * fArr[i10]);
                i10++;
            }
        }

        public PathDataNode(char c, float[] fArr) {
            this.mType = c;
            this.mParams = fArr;
        }
    }

    public static void interpolatePathDataNodes(@NonNull PathDataNode[] pathDataNodeArr, float f8, @NonNull PathDataNode[] pathDataNodeArr2, @NonNull PathDataNode[] pathDataNodeArr3) {
        if (interpolatePathDataNodes(pathDataNodeArr, pathDataNodeArr2, pathDataNodeArr3, f8)) {
            return;
        }
        C1929i.m3029k("Can't interpolate between two incompatible pathData");
    }
}
