package androidx.constraintlayout.core.dsl;

import ai.onnxruntime.a;
import androidx.constraintlayout.core.motion.utils.TypedValues$AttributesType;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class KeyPosition extends Keys {
    private int mFrame;
    private String mTarget;
    private String mTransitionEasing = null;
    private float mPercentWidth = Float.NaN;
    private float mPercentHeight = Float.NaN;
    private float mPercentX = Float.NaN;
    private float mPercentY = Float.NaN;
    private KeyPosition$Type mPositionType = KeyPosition$Type.CARTESIAN;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public KeyPosition(String str, int i9) {
        this.mTarget = null;
        this.mFrame = 0;
        this.mTarget = str;
        this.mFrame = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getFrames() {
        return this.mFrame;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getPercentHeight() {
        return this.mPercentHeight;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getPercentWidth() {
        return this.mPercentWidth;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getPercentX() {
        return this.mPercentX;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getPercentY() {
        return this.mPercentY;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public KeyPosition$Type getPositionType() {
        return this.mPositionType;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String getTarget() {
        return this.mTarget;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String getTransitionEasing() {
        return this.mTransitionEasing;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setFrames(int i9) {
        this.mFrame = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setPercentHeight(float f8) {
        this.mPercentHeight = f8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setPercentWidth(float f8) {
        this.mPercentWidth = f8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setPercentX(float f8) {
        this.mPercentX = f8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setPercentY(float f8) {
        this.mPercentY = f8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setPositionType(KeyPosition$Type keyPosition$Type) {
        this.mPositionType = keyPosition$Type;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setTarget(String str) {
        this.mTarget = str;
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
        sbU.append(this.mFrame);
        sbU.append(",\n");
        if (this.mPositionType != null) {
            sbU.append("type:'");
            sbU.append(this.mPositionType);
            sbU.append("',\n");
        }
        append(sbU, "easing", this.mTransitionEasing);
        append(sbU, "percentX", this.mPercentX);
        append(sbU, "percentY", this.mPercentY);
        append(sbU, "percentWidth", this.mPercentWidth);
        append(sbU, "percentHeight", this.mPercentHeight);
        sbU.append("},\n");
        return sbU.toString();
    }
}
