package androidx.vectordrawable.graphics.drawable;

import ai.onnxruntime.a;
import android.content.res.Resources$Theme;
import android.graphics.Path;
import android.util.Log;
import androidx.core.graphics.PathParser;
import androidx.core.graphics.PathParser$PathDataNode;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class VectorDrawableCompat$VPath extends VectorDrawableCompat$VObject {
    protected static final int FILL_TYPE_WINDING = 0;
    int mChangingConfigurations;
    int mFillRule;
    protected PathParser$PathDataNode[] mNodes;
    String mPathName;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public VectorDrawableCompat$VPath(VectorDrawableCompat$VPath vectorDrawableCompat$VPath) {
        super(null);
        this.mNodes = null;
        this.mFillRule = 0;
        this.mPathName = vectorDrawableCompat$VPath.mPathName;
        this.mChangingConfigurations = vectorDrawableCompat$VPath.mChangingConfigurations;
        this.mNodes = PathParser.deepCopyNodes(vectorDrawableCompat$VPath.mNodes);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean canApplyTheme() {
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public PathParser$PathDataNode[] getPathData() {
        return this.mNodes;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String getPathName() {
        return this.mPathName;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isClipPath() {
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String nodesToString(PathParser$PathDataNode[] pathParser$PathDataNodeArr) {
        String string = " ";
        for (int i9 = 0; i9 < pathParser$PathDataNodeArr.length; i9++) {
            StringBuilder sbU = a.u(string);
            sbU.append(pathParser$PathDataNodeArr[i9].mType);
            sbU.append(":");
            string = sbU.toString();
            for (float f8 : pathParser$PathDataNodeArr[i9].mParams) {
                StringBuilder sbU2 = a.u(string);
                sbU2.append(f8);
                sbU2.append(",");
                string = sbU2.toString();
            }
        }
        return string;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void printVPath(int i9) {
        String strConcat = "";
        for (int i10 = 0; i10 < i9; i10++) {
            strConcat = strConcat.concat("    ");
        }
        StringBuilder sbW = a.w(strConcat, "current path is :");
        sbW.append(this.mPathName);
        sbW.append(" pathData is ");
        sbW.append(nodesToString(this.mNodes));
        Log.v("VectorDrawableCompat", sbW.toString());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setPathData(PathParser$PathDataNode[] pathParser$PathDataNodeArr) {
        if (PathParser.canMorph(this.mNodes, pathParser$PathDataNodeArr)) {
            PathParser.updateNodes(this.mNodes, pathParser$PathDataNodeArr);
        } else {
            this.mNodes = PathParser.deepCopyNodes(pathParser$PathDataNodeArr);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void toPath(Path path) {
        path.reset();
        PathParser$PathDataNode[] pathParser$PathDataNodeArr = this.mNodes;
        if (pathParser$PathDataNodeArr != null) {
            PathParser$PathDataNode.nodesToPath(pathParser$PathDataNodeArr, path);
        }
    }

    public void applyTheme(Resources$Theme resources$Theme) {
    }

    public VectorDrawableCompat$VPath() {
        super(null);
        this.mNodes = null;
        this.mFillRule = 0;
    }
}
