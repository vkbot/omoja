package androidx.constraintlayout.core.dsl;

import ai.onnxruntime.AbstractC0074a;
import org.apache.commons.net.nntp.NNTPReply;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class Transition {
    private String mConstraintSetEnd;
    private String mConstraintSetStart;
    private String mId;
    private OnSwipe mOnSwipe = null;
    final int UNSET = -1;
    private final int DEFAULT_DURATION = NNTPReply.SERVICE_DISCONTINUED;
    private final float DEFAULT_STAGGER = 0.0f;
    private int mDefaultInterpolator = 0;
    private String mDefaultInterpolatorString = null;
    private int mDefaultInterpolatorID = -1;
    private int mDuration = NNTPReply.SERVICE_DISCONTINUED;
    private float mStagger = 0.0f;
    private KeyFrames mKeyFrames = new KeyFrames();

    public Transition(String str, String str2) {
        this.mId = null;
        this.mConstraintSetEnd = null;
        this.mConstraintSetStart = null;
        this.mId = "default";
        this.mConstraintSetStart = str;
        this.mConstraintSetEnd = str2;
    }

    public String getId() {
        return this.mId;
    }

    public void setDuration(int i10) {
        this.mDuration = i10;
    }

    public void setFrom(String str) {
        this.mConstraintSetStart = str;
    }

    public void setId(String str) {
        this.mId = str;
    }

    public void setKeyFrames(Keys keys) {
        this.mKeyFrames.add(keys);
    }

    public void setOnSwipe(OnSwipe onSwipe) {
        this.mOnSwipe = onSwipe;
    }

    public void setStagger(float f8) {
        this.mStagger = f8;
    }

    public void setTo(String str) {
        this.mConstraintSetEnd = str;
    }

    public String toJson() {
        return toString();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.mId);
        sb.append(":{\nfrom:'");
        sb.append(this.mConstraintSetStart);
        sb.append("',\nto:'");
        String strM165p = AbstractC0074a.m165p(sb, this.mConstraintSetEnd, "',\n");
        if (this.mDuration != 400) {
            strM165p = AbstractC0074a.m164o(AbstractC0074a.m172w(strM165p, "duration:"), ",\n", this.mDuration);
        }
        if (this.mStagger != 0.0f) {
            StringBuilder sbM172w = AbstractC0074a.m172w(strM165p, "stagger:");
            sbM172w.append(this.mStagger);
            sbM172w.append(",\n");
            strM165p = sbM172w.toString();
        }
        if (this.mOnSwipe != null) {
            StringBuilder sbM170u = AbstractC0074a.m170u(strM165p);
            sbM170u.append(this.mOnSwipe.toString());
            strM165p = sbM170u.toString();
        }
        StringBuilder sbM170u2 = AbstractC0074a.m170u(strM165p);
        sbM170u2.append(this.mKeyFrames.toString());
        return sbM170u2.toString().concat("},\n");
    }

    public Transition(String str, String str2, String str3) {
        this.mId = null;
        this.mConstraintSetEnd = null;
        this.mConstraintSetStart = null;
        this.mId = str;
        this.mConstraintSetStart = str2;
        this.mConstraintSetEnd = str3;
    }
}
