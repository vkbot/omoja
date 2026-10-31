package androidx.vectordrawable.graphics.drawable;

import android.animation.TypeEvaluator;
import androidx.core.graphics.PathParser;
import androidx.core.graphics.PathParser$PathDataNode;
import j1.i;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class AnimatorInflaterCompat$PathDataEvaluator implements TypeEvaluator<PathParser$PathDataNode[]> {
    private PathParser$PathDataNode[] mNodeArray;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public AnimatorInflaterCompat$PathDataEvaluator(PathParser$PathDataNode[] pathParser$PathDataNodeArr) {
        this.mNodeArray = pathParser$PathDataNodeArr;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: evaluate, reason: avoid collision after fix types in other method */
    public PathParser$PathDataNode[] evaluate2(float f8, PathParser$PathDataNode[] pathParser$PathDataNodeArr, PathParser$PathDataNode[] pathParser$PathDataNodeArr2) {
        if (!PathParser.canMorph(pathParser$PathDataNodeArr, pathParser$PathDataNodeArr2)) {
            i.k("Can't interpolate between two incompatible pathData");
            return null;
        }
        if (!PathParser.canMorph(this.mNodeArray, pathParser$PathDataNodeArr)) {
            this.mNodeArray = PathParser.deepCopyNodes(pathParser$PathDataNodeArr);
        }
        int i9 = 0;
        while (true) {
            int length = pathParser$PathDataNodeArr.length;
            PathParser$PathDataNode[] pathParser$PathDataNodeArr3 = this.mNodeArray;
            if (i9 >= length) {
                return pathParser$PathDataNodeArr3;
            }
            pathParser$PathDataNodeArr3[i9].interpolatePathDataNode(pathParser$PathDataNodeArr[i9], pathParser$PathDataNodeArr2[i9], f8);
            i9++;
        }
    }

    public AnimatorInflaterCompat$PathDataEvaluator() {
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [float, java.lang.Object, java.lang.Object] */
    /* JADX DEBUG: Return type fixed from 'java.lang.Object' to match base method */
    @Override // android.animation.TypeEvaluator
    public /* bridge */ /* synthetic */ PathParser$PathDataNode[] evaluate(float f8, PathParser$PathDataNode[] pathParser$PathDataNodeArr, PathParser$PathDataNode[] pathParser$PathDataNodeArr2) {
        return evaluate2(f8, pathParser$PathDataNodeArr, pathParser$PathDataNodeArr2);
    }
}
