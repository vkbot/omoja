package androidx.core.graphics;

import ai.onnxruntime.b;
import android.graphics.Path;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.RestrictTo$Scope;
import java.util.ArrayList;
import l9.i;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class PathParser {
    private static final String LOGTAG = "PathParser";

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private PathParser() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static void addNode(ArrayList<PathParser$PathDataNode> arrayList, char c, float[] fArr) {
        arrayList.add(new PathParser$PathDataNode(c, fArr));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean canMorph(@Nullable PathParser$PathDataNode[] pathParser$PathDataNodeArr, @Nullable PathParser$PathDataNode[] pathParser$PathDataNodeArr2) {
        if (pathParser$PathDataNodeArr == null || pathParser$PathDataNodeArr2 == null || pathParser$PathDataNodeArr.length != pathParser$PathDataNodeArr2.length) {
            return false;
        }
        for (int i9 = 0; i9 < pathParser$PathDataNodeArr.length; i9++) {
            if (PathParser$PathDataNode.access$000(pathParser$PathDataNodeArr[i9]) != PathParser$PathDataNode.access$000(pathParser$PathDataNodeArr2[i9]) || PathParser$PathDataNode.access$100(pathParser$PathDataNodeArr[i9]).length != PathParser$PathDataNode.access$100(pathParser$PathDataNodeArr2[i9]).length) {
                return false;
            }
        }
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static float[] copyOfRange(float[] fArr, int i9, int i10) {
        if (i9 > i10) {
            i.a();
            return null;
        }
        int length = fArr.length;
        if (i9 < 0 || i9 > length) {
            throw new ArrayIndexOutOfBoundsException();
        }
        int i11 = i10 - i9;
        int iMin = Math.min(i11, length - i9);
        float[] fArr2 = new float[i11];
        System.arraycopy(fArr, i9, fArr2, 0, iMin);
        return fArr2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public static PathParser$PathDataNode[] createNodesFromPathData(@NonNull String str) {
        ArrayList arrayList = new ArrayList();
        int i9 = 0;
        int i10 = 1;
        while (i10 < str.length()) {
            int iNextStart = nextStart(str, i10);
            String strTrim = str.substring(i9, iNextStart).trim();
            if (!strTrim.isEmpty()) {
                addNode(arrayList, strTrim.charAt(0), getFloats(strTrim));
            }
            i9 = iNextStart;
            i10 = iNextStart + 1;
        }
        if (i10 - i9 == 1 && i9 < str.length()) {
            addNode(arrayList, str.charAt(i9), new float[0]);
        }
        return (PathParser$PathDataNode[]) arrayList.toArray(new PathParser$PathDataNode[0]);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public static Path createPathFromPathData(@NonNull String str) {
        Path path = new Path();
        try {
            PathParser$PathDataNode.nodesToPath(createNodesFromPathData(str), path);
            return path;
        } catch (RuntimeException e) {
            b.o(ai.onnxruntime.a.l("Error in parsing ", str), e);
            return null;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public static PathParser$PathDataNode[] deepCopyNodes(@NonNull PathParser$PathDataNode[] pathParser$PathDataNodeArr) {
        PathParser$PathDataNode[] pathParser$PathDataNodeArr2 = new PathParser$PathDataNode[pathParser$PathDataNodeArr.length];
        for (int i9 = 0; i9 < pathParser$PathDataNodeArr.length; i9++) {
            pathParser$PathDataNodeArr2[i9] = new PathParser$PathDataNode(pathParser$PathDataNodeArr[i9]);
        }
        return pathParser$PathDataNodeArr2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:16:0x0029  */
    private static void extract(String str, int i9, PathParser$ExtractFloatResult pathParser$ExtractFloatResult) {
        pathParser$ExtractFloatResult.mEndWithNegOrDot = false;
        boolean z8 = false;
        boolean z9 = false;
        boolean z10 = false;
        for (int i10 = i9; i10 < str.length(); i10++) {
            char cCharAt = str.charAt(i10);
            if (cCharAt == ' ') {
                z8 = false;
                z10 = true;
            } else if (cCharAt != 'E' && cCharAt != 'e') {
                switch (cCharAt) {
                    case ',':
                        z8 = false;
                        z10 = true;
                        break;
                    case '-':
                        if (i10 == i9 || z8) {
                            z8 = false;
                        } else {
                            pathParser$ExtractFloatResult.mEndWithNegOrDot = true;
                            z8 = false;
                            z10 = true;
                        }
                        break;
                    case '.':
                        if (z9) {
                            pathParser$ExtractFloatResult.mEndWithNegOrDot = true;
                            z8 = false;
                            z10 = true;
                        } else {
                            z8 = false;
                            z9 = true;
                        }
                        break;
                    default:
                        z8 = false;
                        break;
                }
            } else {
                z8 = true;
            }
            if (z10) {
                pathParser$ExtractFloatResult.mEndPosition = i10;
            }
        }
        pathParser$ExtractFloatResult.mEndPosition = i10;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static float[] getFloats(String str) {
        if (str.charAt(0) == 'z' || str.charAt(0) == 'Z') {
            return new float[0];
        }
        try {
            float[] fArr = new float[str.length()];
            PathParser$ExtractFloatResult pathParser$ExtractFloatResult = new PathParser$ExtractFloatResult();
            int length = str.length();
            int i9 = 1;
            int i10 = 0;
            while (i9 < length) {
                extract(str, i9, pathParser$ExtractFloatResult);
                int i11 = pathParser$ExtractFloatResult.mEndPosition;
                if (i9 < i11) {
                    fArr[i10] = Float.parseFloat(str.substring(i9, i11));
                    i10++;
                }
                i9 = pathParser$ExtractFloatResult.mEndWithNegOrDot ? i11 : i11 + 1;
            }
            return copyOfRange(fArr, 0, i10);
        } catch (NumberFormatException e) {
            b.o(ai.onnxruntime.a.m("error in parsing \"", str, "\""), e);
            return null;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    @Deprecated
    public static boolean interpolatePathDataNodes(@NonNull PathParser$PathDataNode[] pathParser$PathDataNodeArr, @NonNull PathParser$PathDataNode[] pathParser$PathDataNodeArr2, @NonNull PathParser$PathDataNode[] pathParser$PathDataNodeArr3, float f8) {
        if (pathParser$PathDataNodeArr.length != pathParser$PathDataNodeArr2.length || pathParser$PathDataNodeArr2.length != pathParser$PathDataNodeArr3.length) {
            j1.i.k("The nodes to be interpolated and resulting nodes must have the same length");
            return false;
        }
        if (!canMorph(pathParser$PathDataNodeArr2, pathParser$PathDataNodeArr3)) {
            return false;
        }
        for (int i9 = 0; i9 < pathParser$PathDataNodeArr.length; i9++) {
            pathParser$PathDataNodeArr[i9].interpolatePathDataNode(pathParser$PathDataNodeArr2[i9], pathParser$PathDataNodeArr3[i9], f8);
        }
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:8:0x0018  */
    private static int nextStart(String str, int i9) {
        while (i9 < str.length()) {
            char cCharAt = str.charAt(i9);
            if ((cCharAt - 'Z') * (cCharAt - 'A') > 0) {
                if ((cCharAt - 'z') * (cCharAt - 'a') > 0) {
                    continue;
                } else if (cCharAt != 'e' && cCharAt != 'E') {
                    break;
                }
            } else if (cCharAt != 'e') {
                continue;
            }
            i9++;
        }
        return i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void nodesToPath(@NonNull PathParser$PathDataNode[] pathParser$PathDataNodeArr, @NonNull Path path) {
        float[] fArr = new float[6];
        char cAccess$000 = 'm';
        for (PathParser$PathDataNode pathParser$PathDataNode : pathParser$PathDataNodeArr) {
            PathParser$PathDataNode.access$200(path, fArr, cAccess$000, PathParser$PathDataNode.access$000(pathParser$PathDataNode), PathParser$PathDataNode.access$100(pathParser$PathDataNode));
            cAccess$000 = PathParser$PathDataNode.access$000(pathParser$PathDataNode);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void updateNodes(@NonNull PathParser$PathDataNode[] pathParser$PathDataNodeArr, @NonNull PathParser$PathDataNode[] pathParser$PathDataNodeArr2) {
        for (int i9 = 0; i9 < pathParser$PathDataNodeArr2.length; i9++) {
            PathParser$PathDataNode.access$002(pathParser$PathDataNodeArr[i9], PathParser$PathDataNode.access$000(pathParser$PathDataNodeArr2[i9]));
            for (int i10 = 0; i10 < PathParser$PathDataNode.access$100(pathParser$PathDataNodeArr2[i9]).length; i10++) {
                PathParser$PathDataNode.access$100(pathParser$PathDataNodeArr[i9])[i10] = PathParser$PathDataNode.access$100(pathParser$PathDataNodeArr2[i9])[i10];
            }
        }
    }

    public static void interpolatePathDataNodes(@NonNull PathParser$PathDataNode[] pathParser$PathDataNodeArr, float f8, @NonNull PathParser$PathDataNode[] pathParser$PathDataNodeArr2, @NonNull PathParser$PathDataNode[] pathParser$PathDataNodeArr3) {
        if (interpolatePathDataNodes(pathParser$PathDataNodeArr, pathParser$PathDataNodeArr2, pathParser$PathDataNodeArr3, f8)) {
            return;
        }
        j1.i.k("Can't interpolate between two incompatible pathData");
    }
}
