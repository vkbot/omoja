package androidx.constraintlayout.core.dsl;

import ai.onnxruntime.a;
import androidx.constraintlayout.core.motion.utils.TypedValues$AttributesType;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class KeyPositions extends Keys {
    private int[] mFrames;
    private String[] mTarget;
    private String mTransitionEasing = null;
    private KeyPositions$Type mPositionType = null;
    private float[] mPercentWidth = null;
    private float[] mPercentHeight = null;
    private float[] mPercentX = null;
    private float[] mPercentY = null;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public KeyPositions(int i9, String... strArr) {
        this.mFrames = null;
        this.mTarget = strArr;
        int[] iArr = new int[i9];
        this.mFrames = iArr;
        float length = 100.0f / (iArr.length + 1);
        int i10 = 0;
        while (true) {
            int[] iArr2 = this.mFrames;
            if (i10 >= iArr2.length) {
                return;
            }
            iArr2[i10] = (int) ((i10 * length) + length);
            i10++;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int[] getFrames() {
        return this.mFrames;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float[] getPercentHeight() {
        return this.mPercentHeight;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float[] getPercentWidth() {
        return this.mPercentWidth;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float[] getPercentX() {
        return this.mPercentX;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float[] getPercentY() {
        return this.mPercentY;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public KeyPositions$Type getPositionType() {
        return this.mPositionType;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String[] getTarget() {
        return this.mTarget;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String getTransitionEasing() {
        return this.mTransitionEasing;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setFrames(int... iArr) {
        this.mFrames = iArr;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setPercentHeight(float... fArr) {
        this.mPercentHeight = fArr;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setPercentWidth(float... fArr) {
        this.mPercentWidth = fArr;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setPercentX(float... fArr) {
        this.mPercentX = fArr;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setPercentY(float... fArr) {
        this.mPercentY = fArr;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setPositionType(KeyPositions$Type keyPositions$Type) {
        this.mPositionType = keyPositions$Type;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setTransitionEasing(String str) {
        this.mTransitionEasing = str;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toString() {
        StringBuilder sbU = a.u("KeyPositions:{\n");
        append(sbU, TypedValues$AttributesType.S_TARGET, this.mTarget);
        sbU.append("frame:");
        sbU.append(Arrays.toString(this.mFrames));
        sbU.append(",\n");
        if (this.mPositionType != null) {
            sbU.append("type:'");
            sbU.append(this.mPositionType);
            sbU.append("',\n");
        }
        append(sbU, "easing", this.mTransitionEasing);
        append(sbU, "percentX", this.mPercentX);
        append(sbU, "percentX", this.mPercentY);
        append(sbU, "percentWidth", this.mPercentWidth);
        append(sbU, "percentHeight", this.mPercentHeight);
        sbU.append("},\n");
        return sbU.toString();
    }
}
