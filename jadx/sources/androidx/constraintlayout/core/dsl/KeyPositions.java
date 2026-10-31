package androidx.constraintlayout.core.dsl;

import ai.onnxruntime.AbstractC0074a;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class KeyPositions extends Keys {
    private int[] mFrames;
    private String[] mTarget;
    private String mTransitionEasing = null;
    private Type mPositionType = null;
    private float[] mPercentWidth = null;
    private float[] mPercentHeight = null;
    private float[] mPercentX = null;
    private float[] mPercentY = null;

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public enum Type {
        CARTESIAN,
        SCREEN,
        PATH
    }

    public KeyPositions(int i10, String... strArr) {
        this.mFrames = null;
        this.mTarget = strArr;
        int[] iArr = new int[i10];
        this.mFrames = iArr;
        float length = 100.0f / (iArr.length + 1);
        int i11 = 0;
        while (true) {
            int[] iArr2 = this.mFrames;
            if (i11 >= iArr2.length) {
                return;
            }
            iArr2[i11] = (int) ((i11 * length) + length);
            i11++;
        }
    }

    public int[] getFrames() {
        return this.mFrames;
    }

    public float[] getPercentHeight() {
        return this.mPercentHeight;
    }

    public float[] getPercentWidth() {
        return this.mPercentWidth;
    }

    public float[] getPercentX() {
        return this.mPercentX;
    }

    public float[] getPercentY() {
        return this.mPercentY;
    }

    public Type getPositionType() {
        return this.mPositionType;
    }

    public String[] getTarget() {
        return this.mTarget;
    }

    public String getTransitionEasing() {
        return this.mTransitionEasing;
    }

    public void setFrames(int... iArr) {
        this.mFrames = iArr;
    }

    public void setPercentHeight(float... fArr) {
        this.mPercentHeight = fArr;
    }

    public void setPercentWidth(float... fArr) {
        this.mPercentWidth = fArr;
    }

    public void setPercentX(float... fArr) {
        this.mPercentX = fArr;
    }

    public void setPercentY(float... fArr) {
        this.mPercentY = fArr;
    }

    public void setPositionType(Type type) {
        this.mPositionType = type;
    }

    public void setTransitionEasing(String str) {
        this.mTransitionEasing = str;
    }

    public String toString() {
        StringBuilder sbM170u = AbstractC0074a.m170u("KeyPositions:{\n");
        append(sbM170u, TypedValues.AttributesType.S_TARGET, this.mTarget);
        sbM170u.append("frame:");
        sbM170u.append(Arrays.toString(this.mFrames));
        sbM170u.append(",\n");
        if (this.mPositionType != null) {
            sbM170u.append("type:'");
            sbM170u.append(this.mPositionType);
            sbM170u.append("',\n");
        }
        append(sbM170u, "easing", this.mTransitionEasing);
        append(sbM170u, "percentX", this.mPercentX);
        append(sbM170u, "percentX", this.mPercentY);
        append(sbM170u, "percentWidth", this.mPercentWidth);
        append(sbM170u, "percentHeight", this.mPercentHeight);
        sbM170u.append("},\n");
        return sbM170u.toString();
    }
}
