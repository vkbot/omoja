package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.XmlResourceParser;
import android.util.Log;
import android.util.SparseArray;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ConstraintLayoutStates {
    private static final boolean DEBUG = false;
    public static final String TAG = "ConstraintLayoutStates";
    private final ConstraintLayout mConstraintLayout;
    ConstraintSet mDefaultConstraintSet;
    int mCurrentStateId = -1;
    int mCurrentConstraintNumber = -1;
    private SparseArray<ConstraintLayoutStates$State> mStateList = new SparseArray<>();
    private SparseArray<ConstraintSet> mConstraintSetMap = new SparseArray<>();
    private ConstraintsChangedListener mConstraintsChangedListener = null;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ConstraintLayoutStates(Context context, ConstraintLayout constraintLayout, int i9) {
        this.mConstraintLayout = constraintLayout;
        load(context, i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void load(Context context, int i9) {
        String str;
        XmlResourceParser xml = context.getResources().getXml(i9);
        try {
            ConstraintLayoutStates$State constraintLayoutStates$State = null;
            for (int eventType = xml.getEventType(); eventType != 1; eventType = xml.next()) {
                if (eventType == 2) {
                    String name = xml.getName();
                    switch (name.hashCode()) {
                        case -1349929691:
                            if (name.equals("ConstraintSet")) {
                                parseConstraintSet(context, xml);
                            }
                            break;
                        case 80204913:
                            if (name.equals("State")) {
                                ConstraintLayoutStates$State constraintLayoutStates$State2 = new ConstraintLayoutStates$State(context, xml);
                                this.mStateList.put(constraintLayoutStates$State2.mId, constraintLayoutStates$State2);
                                constraintLayoutStates$State = constraintLayoutStates$State2;
                            }
                            break;
                        case 1382829617:
                            str = "StateSet";
                            name.equals(str);
                            break;
                        case 1657696882:
                            str = "layoutDescription";
                            name.equals(str);
                            break;
                        case 1901439077:
                            if (name.equals("Variant")) {
                                ConstraintLayoutStates$Variant constraintLayoutStates$Variant = new ConstraintLayoutStates$Variant(context, xml);
                                if (constraintLayoutStates$State != null) {
                                    constraintLayoutStates$State.add(constraintLayoutStates$Variant);
                                }
                            }
                            break;
                    }
                }
            }
        } catch (IOException e) {
            Log.e("ConstraintLayoutStates", "Error parsing resource: " + i9, e);
        } catch (XmlPullParserException e6) {
            Log.e("ConstraintLayoutStates", "Error parsing resource: " + i9, e6);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void parseConstraintSet(Context context, XmlPullParser xmlPullParser) {
        ConstraintSet constraintSet = new ConstraintSet();
        int attributeCount = xmlPullParser.getAttributeCount();
        for (int i9 = 0; i9 < attributeCount; i9++) {
            String attributeName = xmlPullParser.getAttributeName(i9);
            String attributeValue = xmlPullParser.getAttributeValue(i9);
            if (attributeName != null && attributeValue != null && "id".equals(attributeName)) {
                int identifier = attributeValue.contains("/") ? context.getResources().getIdentifier(attributeValue.substring(attributeValue.indexOf(47) + 1), "id", context.getPackageName()) : -1;
                if (identifier == -1) {
                    if (attributeValue.length() > 1) {
                        identifier = Integer.parseInt(attributeValue.substring(1));
                    } else {
                        Log.e("ConstraintLayoutStates", "error in parsing id");
                    }
                }
                constraintSet.load(context, xmlPullParser);
                this.mConstraintSetMap.put(identifier, constraintSet);
                return;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean needsToChange(int i9, float f8, float f9) {
        int i10 = this.mCurrentStateId;
        if (i10 != i9) {
            return true;
        }
        SparseArray<ConstraintLayoutStates$State> sparseArray = this.mStateList;
        ConstraintLayoutStates$State constraintLayoutStates$StateValueAt = i9 == -1 ? sparseArray.valueAt(0) : sparseArray.get(i10);
        int i11 = this.mCurrentConstraintNumber;
        return (i11 == -1 || !constraintLayoutStates$StateValueAt.mVariants.get(i11).match(f8, f9)) && this.mCurrentConstraintNumber != constraintLayoutStates$StateValueAt.findMatch(f8, f9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setOnConstraintsChanged(ConstraintsChangedListener constraintsChangedListener) {
        this.mConstraintsChangedListener = constraintsChangedListener;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void updateConstraints(int i9, float f8, float f9) {
        int iFindMatch;
        int i10 = this.mCurrentStateId;
        if (i10 == i9) {
            SparseArray<ConstraintLayoutStates$State> sparseArray = this.mStateList;
            ConstraintLayoutStates$State constraintLayoutStates$StateValueAt = i9 == -1 ? sparseArray.valueAt(0) : sparseArray.get(i10);
            int i11 = this.mCurrentConstraintNumber;
            if ((i11 == -1 || !constraintLayoutStates$StateValueAt.mVariants.get(i11).match(f8, f9)) && this.mCurrentConstraintNumber != (iFindMatch = constraintLayoutStates$StateValueAt.findMatch(f8, f9))) {
                ConstraintSet constraintSet = iFindMatch == -1 ? this.mDefaultConstraintSet : constraintLayoutStates$StateValueAt.mVariants.get(iFindMatch).mConstraintSet;
                int i12 = iFindMatch == -1 ? constraintLayoutStates$StateValueAt.mConstraintID : constraintLayoutStates$StateValueAt.mVariants.get(iFindMatch).mConstraintID;
                if (constraintSet == null) {
                    return;
                }
                this.mCurrentConstraintNumber = iFindMatch;
                ConstraintsChangedListener constraintsChangedListener = this.mConstraintsChangedListener;
                if (constraintsChangedListener != null) {
                    constraintsChangedListener.preLayoutChange(-1, i12);
                }
                constraintSet.applyTo(this.mConstraintLayout);
                ConstraintsChangedListener constraintsChangedListener2 = this.mConstraintsChangedListener;
                if (constraintsChangedListener2 != null) {
                    constraintsChangedListener2.postLayoutChange(-1, i12);
                    return;
                }
                return;
            }
            return;
        }
        this.mCurrentStateId = i9;
        ConstraintLayoutStates$State constraintLayoutStates$State = this.mStateList.get(i9);
        int iFindMatch2 = constraintLayoutStates$State.findMatch(f8, f9);
        ConstraintSet constraintSet2 = iFindMatch2 == -1 ? constraintLayoutStates$State.mConstraintSet : constraintLayoutStates$State.mVariants.get(iFindMatch2).mConstraintSet;
        int i13 = iFindMatch2 == -1 ? constraintLayoutStates$State.mConstraintID : constraintLayoutStates$State.mVariants.get(iFindMatch2).mConstraintID;
        if (constraintSet2 == null) {
            Log.v("ConstraintLayoutStates", "NO Constraint set found ! id=" + i9 + ", dim =" + f8 + ", " + f9);
            return;
        }
        this.mCurrentConstraintNumber = iFindMatch2;
        ConstraintsChangedListener constraintsChangedListener3 = this.mConstraintsChangedListener;
        if (constraintsChangedListener3 != null) {
            constraintsChangedListener3.preLayoutChange(i9, i13);
        }
        constraintSet2.applyTo(this.mConstraintLayout);
        ConstraintsChangedListener constraintsChangedListener4 = this.mConstraintsChangedListener;
        if (constraintsChangedListener4 != null) {
            constraintsChangedListener4.postLayoutChange(i9, i13);
        }
    }
}
