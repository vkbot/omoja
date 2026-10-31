package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.Log;
import android.util.SparseArray;
import android.util.Xml;
import java.io.IOException;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class StateSet {
    private static final boolean DEBUG = false;
    public static final String TAG = "ConstraintLayoutStates";
    int mDefaultState = -1;
    int mCurrentStateId = -1;
    int mCurrentConstraintNumber = -1;
    private SparseArray<StateSet$State> mStateList = new SparseArray<>();
    private ConstraintsChangedListener mConstraintsChangedListener = null;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public StateSet(Context context, XmlPullParser xmlPullParser) {
        load(context, xmlPullParser);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void load(Context context, XmlPullParser xmlPullParser) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), R$styleable.StateSet);
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        for (int i9 = 0; i9 < indexCount; i9++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i9);
            if (index == R$styleable.StateSet_defaultState) {
                this.mDefaultState = typedArrayObtainStyledAttributes.getResourceId(index, this.mDefaultState);
            }
        }
        typedArrayObtainStyledAttributes.recycle();
        try {
            int eventType = xmlPullParser.getEventType();
            StateSet$State stateSet$State = null;
            while (eventType != 1) {
                if (eventType == 2) {
                    String name = xmlPullParser.getName();
                    switch (name.hashCode()) {
                        case 80204913:
                            if (name.equals("State")) {
                                stateSet$State = new StateSet$State(context, xmlPullParser);
                                this.mStateList.put(stateSet$State.mId, stateSet$State);
                            }
                            break;
                        case 1301459538:
                            name.equals("LayoutDescription");
                            break;
                        case 1382829617:
                            name.equals("StateSet");
                            break;
                        case 1901439077:
                            if (name.equals("Variant")) {
                                StateSet$Variant stateSet$Variant = new StateSet$Variant(context, xmlPullParser);
                                if (stateSet$State != null) {
                                    stateSet$State.add(stateSet$Variant);
                                }
                            }
                            break;
                    }
                } else if (eventType == 3 && "StateSet".equals(xmlPullParser.getName())) {
                    return;
                }
                eventType = xmlPullParser.next();
            }
        } catch (IOException e) {
            Log.e("ConstraintLayoutStates", "Error parsing XML resource", e);
        } catch (XmlPullParserException e6) {
            Log.e("ConstraintLayoutStates", "Error parsing XML resource", e6);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int convertToConstraintSet(int i9, int i10, float f8, float f9) {
        StateSet$State stateSet$State = this.mStateList.get(i10);
        if (stateSet$State == null) {
            return i10;
        }
        int i11 = 0;
        if (f8 != -1.0f && f9 != -1.0f) {
            ArrayList<StateSet$Variant> arrayList = stateSet$State.mVariants;
            int size = arrayList.size();
            StateSet$Variant stateSet$Variant = null;
            while (i11 < size) {
                StateSet$Variant stateSet$Variant2 = arrayList.get(i11);
                i11++;
                StateSet$Variant stateSet$Variant3 = stateSet$Variant2;
                if (stateSet$Variant3.match(f8, f9)) {
                    if (i9 != stateSet$Variant3.mConstraintID) {
                        stateSet$Variant = stateSet$Variant3;
                    }
                }
            }
            return stateSet$Variant != null ? stateSet$Variant.mConstraintID : stateSet$State.mConstraintID;
        }
        if (stateSet$State.mConstraintID != i9) {
            ArrayList<StateSet$Variant> arrayList2 = stateSet$State.mVariants;
            int size2 = arrayList2.size();
            while (i11 < size2) {
                StateSet$Variant stateSet$Variant4 = arrayList2.get(i11);
                i11++;
                if (i9 == stateSet$Variant4.mConstraintID) {
                }
            }
            return stateSet$State.mConstraintID;
        }
        return i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean needsToChange(int i9, float f8, float f9) {
        int i10 = this.mCurrentStateId;
        if (i10 != i9) {
            return true;
        }
        SparseArray<StateSet$State> sparseArray = this.mStateList;
        StateSet$State stateSet$StateValueAt = i9 == -1 ? sparseArray.valueAt(0) : sparseArray.get(i10);
        int i11 = this.mCurrentConstraintNumber;
        return (i11 == -1 || !stateSet$StateValueAt.mVariants.get(i11).match(f8, f9)) && this.mCurrentConstraintNumber != stateSet$StateValueAt.findMatch(f8, f9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setOnConstraintsChanged(ConstraintsChangedListener constraintsChangedListener) {
        this.mConstraintsChangedListener = constraintsChangedListener;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int stateGetConstraintID(int i9, int i10, int i11) {
        return updateConstraints(-1, i9, i10, i11);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int updateConstraints(int i9, int i10, float f8, float f9) {
        int iFindMatch;
        if (i9 != i10) {
            StateSet$State stateSet$State = this.mStateList.get(i10);
            if (stateSet$State == null) {
                return -1;
            }
            int iFindMatch2 = stateSet$State.findMatch(f8, f9);
            return iFindMatch2 == -1 ? stateSet$State.mConstraintID : stateSet$State.mVariants.get(iFindMatch2).mConstraintID;
        }
        SparseArray<StateSet$State> sparseArray = this.mStateList;
        StateSet$State stateSet$StateValueAt = i10 == -1 ? sparseArray.valueAt(0) : sparseArray.get(this.mCurrentStateId);
        if (stateSet$StateValueAt == null) {
            return -1;
        }
        if ((this.mCurrentConstraintNumber == -1 || !stateSet$StateValueAt.mVariants.get(i9).match(f8, f9)) && i9 != (iFindMatch = stateSet$StateValueAt.findMatch(f8, f9))) {
            return iFindMatch == -1 ? stateSet$StateValueAt.mConstraintID : stateSet$StateValueAt.mVariants.get(iFindMatch).mConstraintID;
        }
        return i9;
    }
}
