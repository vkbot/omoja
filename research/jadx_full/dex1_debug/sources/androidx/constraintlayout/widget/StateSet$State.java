package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.Xml;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class StateSet$State {
    int mConstraintID;
    int mId;
    boolean mIsLayout;
    ArrayList<StateSet$Variant> mVariants = new ArrayList<>();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public StateSet$State(Context context, XmlPullParser xmlPullParser) {
        this.mConstraintID = -1;
        this.mIsLayout = false;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), R$styleable.State);
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        for (int i9 = 0; i9 < indexCount; i9++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i9);
            if (index == R$styleable.State_android_id) {
                this.mId = typedArrayObtainStyledAttributes.getResourceId(index, this.mId);
            } else if (index == R$styleable.State_constraints) {
                this.mConstraintID = typedArrayObtainStyledAttributes.getResourceId(index, this.mConstraintID);
                String resourceTypeName = context.getResources().getResourceTypeName(this.mConstraintID);
                context.getResources().getResourceName(this.mConstraintID);
                if ("layout".equals(resourceTypeName)) {
                    this.mIsLayout = true;
                }
            }
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void add(StateSet$Variant stateSet$Variant) {
        this.mVariants.add(stateSet$Variant);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int findMatch(float f8, float f9) {
        for (int i9 = 0; i9 < this.mVariants.size(); i9++) {
            if (this.mVariants.get(i9).match(f8, f9)) {
                return i9;
            }
        }
        return -1;
    }
}
