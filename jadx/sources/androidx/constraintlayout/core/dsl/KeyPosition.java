package androidx.constraintlayout.core.dsl;

import ai.onnxruntime.AbstractC0074a;
import androidx.constraintlayout.core.motion.utils.TypedValues;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class KeyPosition extends Keys {
    private int mFrame;
    private String mTarget;
    private String mTransitionEasing = null;
    private float mPercentWidth = Float.NaN;
    private float mPercentHeight = Float.NaN;
    private float mPercentX = Float.NaN;
    private float mPercentY = Float.NaN;
    private Type mPositionType = Type.CARTESIAN;

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public enum Type {
        CARTESIAN,
        SCREEN,
        PATH
    }

    public KeyPosition(String str, int i10) {
        this.mTarget = null;
        this.mFrame = 0;
        this.mTarget = str;
        this.mFrame = i10;
    }

    public int getFrames() {
        return this.mFrame;
    }

    public float getPercentHeight() {
        return this.mPercentHeight;
    }

    public float getPercentWidth() {
        return this.mPercentWidth;
    }

    public float getPercentX() {
        return this.mPercentX;
    }

    public float getPercentY() {
        return this.mPercentY;
    }

    public Type getPositionType() {
        return this.mPositionType;
    }

    public String getTarget() {
        return this.mTarget;
    }

    public String getTransitionEasing() {
        return this.mTransitionEasing;
    }

    public void setFrames(int i10) {
        this.mFrame = i10;
    }

    public void setPercentHeight(float f8) {
        this.mPercentHeight = f8;
    }

    public void setPercentWidth(float f8) {
        this.mPercentWidth = f8;
    }

    public void setPercentX(float f8) {
        this.mPercentX = f8;
    }

    public void setPercentY(float f8) {
        this.mPercentY = f8;
    }

    public void setPositionType(Type type) {
        this.mPositionType = type;
    }

    public void setTarget(String str) {
        this.mTarget = str;
    }

    public void setTransitionEasing(String str) {
        this.mTransitionEasing = str;
    }

    public String toString() {
        StringBuilder sbM170u = AbstractC0074a.m170u("KeyPositions:{\n");
        append(sbM170u, TypedValues.AttributesType.S_TARGET, this.mTarget);
        sbM170u.append("frame:");
        sbM170u.append(this.mFrame);
        sbM170u.append(",\n");
        if (this.mPositionType != null) {
            sbM170u.append("type:'");
            sbM170u.append(this.mPositionType);
            sbM170u.append("',\n");
        }
        append(sbM170u, "easing", this.mTransitionEasing);
        append(sbM170u, "percentX", this.mPercentX);
        append(sbM170u, "percentY", this.mPercentY);
        append(sbM170u, "percentWidth", this.mPercentWidth);
        append(sbM170u, "percentHeight", this.mPercentHeight);
        sbM170u.append("},\n");
        return sbM170u.toString();
    }
}
