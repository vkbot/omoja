package androidx.constraintlayout.core.state.helpers;

import androidx.constraintlayout.core.state.ConstraintReference;
import androidx.constraintlayout.core.state.State;
import androidx.constraintlayout.core.state.State$Helper;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class HorizontalChainReference extends ChainReference {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public HorizontalChainReference(State state) {
        super(state, State$Helper.HORIZONTAL_CHAIN);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.core.state.HelperReference, androidx.constraintlayout.core.state.ConstraintReference, androidx.constraintlayout.core.state.Reference
    public void apply() {
        ArrayList<Object> arrayList = this.mReferences;
        int size = arrayList.size();
        int i9 = 0;
        while (i9 < size) {
            Object obj = arrayList.get(i9);
            i9++;
            this.mHelperState.constraints(obj).clearHorizontal();
        }
        ArrayList<Object> arrayList2 = this.mReferences;
        int size2 = arrayList2.size();
        ConstraintReference constraintReference = null;
        int i10 = 0;
        ConstraintReference constraintReference2 = null;
        while (i10 < size2) {
            Object obj2 = arrayList2.get(i10);
            i10++;
            ConstraintReference constraintReferenceConstraints = this.mHelperState.constraints(obj2);
            if (constraintReference2 == null) {
                Object obj3 = this.mStartToStart;
                if (obj3 != null) {
                    constraintReferenceConstraints.startToStart(obj3).margin(this.mMarginStart).marginGone(this.mMarginStartGone);
                } else {
                    Object obj4 = this.mStartToEnd;
                    if (obj4 != null) {
                        constraintReferenceConstraints.startToEnd(obj4).margin(this.mMarginStart).marginGone(this.mMarginStartGone);
                    } else {
                        Object obj5 = this.mLeftToLeft;
                        if (obj5 != null) {
                            constraintReferenceConstraints.startToStart(obj5).margin(this.mMarginLeft).marginGone(this.mMarginLeftGone);
                        } else {
                            Object obj6 = this.mLeftToRight;
                            if (obj6 != null) {
                                constraintReferenceConstraints.startToEnd(obj6).margin(this.mMarginLeft).marginGone(this.mMarginLeftGone);
                            } else {
                                String string = constraintReferenceConstraints.getKey().toString();
                                constraintReferenceConstraints.startToStart(State.PARENT).margin(Float.valueOf(getPreMargin(string))).marginGone(Float.valueOf(getPreGoneMargin(string)));
                            }
                        }
                    }
                }
                constraintReference2 = constraintReferenceConstraints;
            }
            if (constraintReference != null) {
                String string2 = constraintReference.getKey().toString();
                String string3 = constraintReferenceConstraints.getKey().toString();
                constraintReference.endToStart(constraintReferenceConstraints.getKey()).margin(Float.valueOf(getPostMargin(string2))).marginGone(Float.valueOf(getPostGoneMargin(string2)));
                constraintReferenceConstraints.startToEnd(constraintReference.getKey()).margin(Float.valueOf(getPreMargin(string3))).marginGone(Float.valueOf(getPreGoneMargin(string3)));
            }
            float weight = getWeight(obj2.toString());
            if (weight != -1.0f) {
                constraintReferenceConstraints.setHorizontalChainWeight(weight);
            }
            constraintReference = constraintReferenceConstraints;
        }
        if (constraintReference != null) {
            Object obj7 = this.mEndToStart;
            if (obj7 != null) {
                constraintReference.endToStart(obj7).margin(this.mMarginEnd).marginGone(this.mMarginEndGone);
            } else {
                Object obj8 = this.mEndToEnd;
                if (obj8 != null) {
                    constraintReference.endToEnd(obj8).margin(this.mMarginEnd).marginGone(this.mMarginEndGone);
                } else {
                    Object obj9 = this.mRightToLeft;
                    if (obj9 != null) {
                        constraintReference.endToStart(obj9).margin(this.mMarginRight).marginGone(this.mMarginRightGone);
                    } else {
                        Object obj10 = this.mRightToRight;
                        if (obj10 != null) {
                            constraintReference.endToEnd(obj10).margin(this.mMarginRight).marginGone(this.mMarginRightGone);
                        } else {
                            String string4 = constraintReference.getKey().toString();
                            constraintReference.endToEnd(State.PARENT).margin(Float.valueOf(getPostMargin(string4))).marginGone(Float.valueOf(getPostGoneMargin(string4)));
                        }
                    }
                }
            }
        }
        if (constraintReference2 == null) {
            return;
        }
        float f8 = this.mBias;
        if (f8 != 0.5f) {
            constraintReference2.horizontalBias(f8);
        }
        int i11 = HorizontalChainReference$1.$SwitchMap$androidx$constraintlayout$core$state$State$Chain[this.mStyle.ordinal()];
        if (i11 == 1) {
            constraintReference2.setHorizontalChainStyle(0);
        } else if (i11 == 2) {
            constraintReference2.setHorizontalChainStyle(1);
        } else {
            if (i11 != 3) {
                return;
            }
            constraintReference2.setHorizontalChainStyle(2);
        }
    }
}
