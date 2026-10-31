package androidx.constraintlayout.motion.widget;

import ai.onnxruntime.a;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import android.view.View$MeasureSpec;
import android.view.ViewGroup$LayoutParams;
import android.widget.TextView;
import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintAnchor$Type;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.ConstraintWidget$DimensionBehaviour;
import androidx.constraintlayout.core.widgets.ConstraintWidgetContainer;
import androidx.constraintlayout.core.widgets.Flow;
import androidx.constraintlayout.core.widgets.Guideline;
import androidx.constraintlayout.core.widgets.Helper;
import androidx.constraintlayout.core.widgets.HelperWidget;
import androidx.constraintlayout.core.widgets.Placeholder;
import androidx.constraintlayout.core.widgets.VirtualLayout;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import androidx.constraintlayout.motion.utils.ViewState;
import androidx.constraintlayout.widget.Barrier;
import androidx.constraintlayout.widget.ConstraintHelper;
import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams;
import androidx.constraintlayout.widget.ConstraintSet;
import androidx.constraintlayout.widget.Constraints$LayoutParams;
import androidx.exifinterface.media.ExifInterface;
import java.util.ArrayList;
import java.util.HashMap;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class MotionLayout$Model {
    int mEndId;
    int mStartId;
    final /* synthetic */ MotionLayout this$0;
    ConstraintWidgetContainer mLayoutStart = new ConstraintWidgetContainer();
    ConstraintWidgetContainer mLayoutEnd = new ConstraintWidgetContainer();
    ConstraintSet mStart = null;
    ConstraintSet mEnd = null;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public MotionLayout$Model(MotionLayout motionLayout) {
        this.this$0 = motionLayout;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void computeStartEndSize(int i9, int i10) {
        int optimizationLevel = this.this$0.getOptimizationLevel();
        MotionLayout motionLayout = this.this$0;
        if (motionLayout.mCurrentState == motionLayout.getStartState()) {
            MotionLayout motionLayout2 = this.this$0;
            ConstraintWidgetContainer constraintWidgetContainer = this.mLayoutEnd;
            ConstraintSet constraintSet = this.mEnd;
            MotionLayout.access$1600(motionLayout2, constraintWidgetContainer, optimizationLevel, (constraintSet == null || constraintSet.mRotate == 0) ? i9 : i10, (constraintSet == null || constraintSet.mRotate == 0) ? i10 : i9);
            ConstraintSet constraintSet2 = this.mStart;
            if (constraintSet2 != null) {
                MotionLayout motionLayout3 = this.this$0;
                ConstraintWidgetContainer constraintWidgetContainer2 = this.mLayoutStart;
                int i11 = constraintSet2.mRotate;
                int i12 = i11 == 0 ? i9 : i10;
                if (i11 == 0) {
                    i9 = i10;
                }
                MotionLayout.access$1700(motionLayout3, constraintWidgetContainer2, optimizationLevel, i12, i9);
                return;
            }
            return;
        }
        ConstraintSet constraintSet3 = this.mStart;
        if (constraintSet3 != null) {
            MotionLayout motionLayout4 = this.this$0;
            ConstraintWidgetContainer constraintWidgetContainer3 = this.mLayoutStart;
            int i13 = constraintSet3.mRotate;
            MotionLayout.access$1800(motionLayout4, constraintWidgetContainer3, optimizationLevel, i13 == 0 ? i9 : i10, i13 == 0 ? i10 : i9);
        }
        MotionLayout motionLayout5 = this.this$0;
        ConstraintWidgetContainer constraintWidgetContainer4 = this.mLayoutEnd;
        ConstraintSet constraintSet4 = this.mEnd;
        int i14 = (constraintSet4 == null || constraintSet4.mRotate == 0) ? i9 : i10;
        if (constraintSet4 == null || constraintSet4.mRotate == 0) {
            i9 = i10;
        }
        MotionLayout.access$1900(motionLayout5, constraintWidgetContainer4, optimizationLevel, i14, i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void debugLayout(String str, ConstraintWidgetContainer constraintWidgetContainer) {
        View view = (View) constraintWidgetContainer.getCompanionWidget();
        StringBuilder sbW = a.w(str, " ");
        sbW.append(Debug.getName(view));
        String string = sbW.toString();
        Log.v("MotionLayout", string + "  ========= " + constraintWidgetContainer);
        int size = constraintWidgetContainer.getChildren().size();
        for (int i9 = 0; i9 < size; i9++) {
            String str2 = string + "[" + i9 + "] ";
            ConstraintWidget constraintWidget = constraintWidgetContainer.getChildren().get(i9);
            String strConcat = (constraintWidget.mTop.mTarget != null ? ExifInterface.GPS_DIRECTION_TRUE : "_").concat(constraintWidget.mBottom.mTarget != null ? "B" : "_").concat(constraintWidget.mLeft.mTarget != null ? "L" : "_").concat(constraintWidget.mRight.mTarget != null ? "R" : "_");
            View view2 = (View) constraintWidget.getCompanionWidget();
            String name = Debug.getName(view2);
            if (view2 instanceof TextView) {
                StringBuilder sbW2 = a.w(name, "(");
                sbW2.append((Object) ((TextView) view2).getText());
                sbW2.append(")");
                name = sbW2.toString();
            }
            Log.v("MotionLayout", str2 + "  " + name + " " + constraintWidget + " " + strConcat);
        }
        Log.v("MotionLayout", string.concat(" done. "));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void debugLayoutParam(String str, ConstraintLayout$LayoutParams constraintLayout$LayoutParams) {
        Log.v("MotionLayout", str + " ".concat(constraintLayout$LayoutParams.startToStart != -1 ? "SS" : "__").concat(constraintLayout$LayoutParams.startToEnd != -1 ? "|SE" : "|__").concat(constraintLayout$LayoutParams.endToStart != -1 ? "|ES" : "|__").concat(constraintLayout$LayoutParams.endToEnd != -1 ? "|EE" : "|__").concat(constraintLayout$LayoutParams.leftToLeft != -1 ? "|LL" : "|__").concat(constraintLayout$LayoutParams.leftToRight != -1 ? "|LR" : "|__").concat(constraintLayout$LayoutParams.rightToLeft != -1 ? "|RL" : "|__").concat(constraintLayout$LayoutParams.rightToRight != -1 ? "|RR" : "|__").concat(constraintLayout$LayoutParams.topToTop != -1 ? "|TT" : "|__").concat(constraintLayout$LayoutParams.topToBottom != -1 ? "|TB" : "|__").concat(constraintLayout$LayoutParams.bottomToTop != -1 ? "|BT" : "|__").concat(constraintLayout$LayoutParams.bottomToBottom != -1 ? "|BB" : "|__"));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void debugWidget(String str, ConstraintWidget constraintWidget) {
        String strConcat;
        String strConcat2;
        String strConcat3;
        ConstraintAnchor constraintAnchor = constraintWidget.mTop.mTarget;
        String str2 = ExifInterface.GPS_DIRECTION_TRUE;
        String strConcat4 = "__";
        if (constraintAnchor != null) {
            strConcat = ExifInterface.GPS_DIRECTION_TRUE.concat(constraintAnchor.mType == ConstraintAnchor$Type.TOP ? ExifInterface.GPS_DIRECTION_TRUE : "B");
        } else {
            strConcat = "__";
        }
        String strConcat5 = " ".concat(strConcat);
        ConstraintAnchor constraintAnchor2 = constraintWidget.mBottom.mTarget;
        if (constraintAnchor2 != null) {
            if (constraintAnchor2.mType != ConstraintAnchor$Type.TOP) {
                str2 = "B";
            }
            strConcat2 = "B".concat(str2);
        } else {
            strConcat2 = "__";
        }
        String strConcat6 = strConcat5.concat(strConcat2);
        ConstraintAnchor constraintAnchor3 = constraintWidget.mLeft.mTarget;
        if (constraintAnchor3 != null) {
            strConcat3 = "L".concat(constraintAnchor3.mType == ConstraintAnchor$Type.LEFT ? "L" : "R");
        } else {
            strConcat3 = "__";
        }
        String strConcat7 = strConcat6.concat(strConcat3);
        ConstraintAnchor constraintAnchor4 = constraintWidget.mRight.mTarget;
        if (constraintAnchor4 != null) {
            strConcat4 = "R".concat(constraintAnchor4.mType != ConstraintAnchor$Type.LEFT ? "R" : "L");
        }
        Log.v("MotionLayout", str + strConcat7.concat(strConcat4) + " ---  " + constraintWidget);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r1v2, resolved type: androidx.constraintlayout.core.widgets.ConstraintWidget */
    /* JADX WARN: Multi-variable type inference failed */
    private void setupConstraintWidget(ConstraintWidgetContainer constraintWidgetContainer, ConstraintSet constraintSet) {
        SparseArray<ConstraintWidget> sparseArray = new SparseArray<>();
        Constraints$LayoutParams constraints$LayoutParams = new Constraints$LayoutParams(-2, -2);
        sparseArray.clear();
        int i9 = 0;
        sparseArray.put(0, constraintWidgetContainer);
        sparseArray.put(this.this$0.getId(), constraintWidgetContainer);
        if (constraintSet != null && constraintSet.mRotate != 0) {
            MotionLayout motionLayout = this.this$0;
            MotionLayout.access$1000(motionLayout, this.mLayoutEnd, motionLayout.getOptimizationLevel(), View$MeasureSpec.makeMeasureSpec(this.this$0.getHeight(), BasicMeasure.EXACTLY), View$MeasureSpec.makeMeasureSpec(this.this$0.getWidth(), BasicMeasure.EXACTLY));
        }
        ArrayList<ConstraintWidget> children = constraintWidgetContainer.getChildren();
        int size = children.size();
        int i10 = 0;
        while (i10 < size) {
            ConstraintWidget constraintWidget = children.get(i10);
            i10++;
            ConstraintWidget constraintWidget2 = constraintWidget;
            constraintWidget2.setAnimated(true);
            sparseArray.put(((View) constraintWidget2.getCompanionWidget()).getId(), constraintWidget2);
        }
        ArrayList<ConstraintWidget> children2 = constraintWidgetContainer.getChildren();
        int size2 = children2.size();
        int i11 = 0;
        while (i11 < size2) {
            int i12 = i11 + 1;
            ConstraintWidget constraintWidget3 = children2.get(i11);
            View view = (View) constraintWidget3.getCompanionWidget();
            constraintSet.applyToLayoutParams(view.getId(), constraints$LayoutParams);
            constraintWidget3.setWidth(constraintSet.getWidth(view.getId()));
            constraintWidget3.setHeight(constraintSet.getHeight(view.getId()));
            if (view instanceof ConstraintHelper) {
                constraintSet.applyToHelper((ConstraintHelper) view, constraintWidget3, constraints$LayoutParams, sparseArray);
                if (view instanceof Barrier) {
                    ((Barrier) view).validateParams();
                }
            }
            constraints$LayoutParams.resolveLayoutDirection(this.this$0.getLayoutDirection());
            MotionLayout.access$1100(this.this$0, false, view, constraintWidget3, constraints$LayoutParams, sparseArray);
            if (constraintSet.getVisibilityMode(view.getId()) == 1) {
                constraintWidget3.setVisibility(view.getVisibility());
            } else {
                constraintWidget3.setVisibility(constraintSet.getVisibility(view.getId()));
            }
            i11 = i12;
        }
        ArrayList<ConstraintWidget> children3 = constraintWidgetContainer.getChildren();
        int size3 = children3.size();
        while (i9 < size3) {
            ConstraintWidget constraintWidget4 = children3.get(i9);
            i9++;
            ConstraintWidget constraintWidget5 = constraintWidget4;
            if (constraintWidget5 instanceof VirtualLayout) {
                ConstraintHelper constraintHelper = (ConstraintHelper) constraintWidget5.getCompanionWidget();
                Helper helper = (Helper) constraintWidget5;
                constraintHelper.updatePreLayout(constraintWidgetContainer, helper, sparseArray);
                ((VirtualLayout) helper).captureWidgets();
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:24:0x00dd  */
    /* JADX WARN: Code duplicated, block: B:26:0x00e7  */
    /* JADX WARN: Code duplicated, block: B:27:0x00fd  */
    /* JADX WARN: Code duplicated, block: B:29:0x0101  */
    /* JADX WARN: Code duplicated, block: B:40:0x012f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:42:0x012f A[SYNTHETIC] */
    /* JADX WARN: Instruction removed from duplicated block: B:29:0x0101, please report this as an issue */
    public void build() {
        String str;
        ConstraintWidget widget;
        MotionLayout motionLayout;
        int childCount = this.this$0.getChildCount();
        this.this$0.mFrameArrayList.clear();
        SparseArray sparseArray = new SparseArray();
        int[] iArr = new int[childCount];
        for (int i9 = 0; i9 < childCount; i9++) {
            View childAt = this.this$0.getChildAt(i9);
            MotionController motionController = new MotionController(childAt);
            int id = childAt.getId();
            iArr[i9] = id;
            sparseArray.put(id, motionController);
            this.this$0.mFrameArrayList.put(childAt, motionController);
        }
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt2 = this.this$0.getChildAt(i10);
            MotionController motionController2 = this.this$0.mFrameArrayList.get(childAt2);
            if (motionController2 != null) {
                if (this.mStart != null) {
                    ConstraintWidget widget2 = getWidget(this.mLayoutStart, childAt2);
                    MotionLayout motionLayout2 = this.this$0;
                    if (widget2 != null) {
                        motionController2.setStartState(MotionLayout.access$2000(motionLayout2, widget2), this.mStart, this.this$0.getWidth(), this.this$0.getHeight());
                    } else if (motionLayout2.mDebugPath != 0) {
                        Log.e("MotionLayout", Debug.getLocation() + "no widget for  " + Debug.getName(childAt2) + " (" + childAt2.getClass().getName() + ")");
                    }
                } else {
                    if (MotionLayout.access$300(this.this$0)) {
                        ViewState viewState = this.this$0.mPreRotate.get(childAt2);
                        MotionLayout motionLayout3 = this.this$0;
                        str = "MotionLayout";
                        motionController2.setStartState(viewState, childAt2, motionLayout3.mRotatMode, MotionLayout.access$2100(motionLayout3), MotionLayout.access$2200(this.this$0));
                    }
                    if (this.mEnd != null) {
                        widget = getWidget(this.mLayoutEnd, childAt2);
                        motionLayout = this.this$0;
                        if (widget != null) {
                            motionController2.setEndState(MotionLayout.access$2000(motionLayout, widget), this.mEnd, this.this$0.getWidth(), this.this$0.getHeight());
                        } else if (motionLayout.mDebugPath != 0) {
                            Log.e(str, Debug.getLocation() + "no widget for  " + Debug.getName(childAt2) + " (" + childAt2.getClass().getName() + ")");
                        }
                    }
                }
                str = "MotionLayout";
                if (this.mEnd != null) {
                    widget = getWidget(this.mLayoutEnd, childAt2);
                    motionLayout = this.this$0;
                    if (widget != null) {
                        motionController2.setEndState(MotionLayout.access$2000(motionLayout, widget), this.mEnd, this.this$0.getWidth(), this.this$0.getHeight());
                    } else if (motionLayout.mDebugPath != 0) {
                        Log.e(str, Debug.getLocation() + "no widget for  " + Debug.getName(childAt2) + " (" + childAt2.getClass().getName() + ")");
                    }
                }
            }
        }
        for (int i11 = 0; i11 < childCount; i11++) {
            MotionController motionController3 = (MotionController) sparseArray.get(iArr[i11]);
            int animateRelativeTo = motionController3.getAnimateRelativeTo();
            if (animateRelativeTo != -1) {
                motionController3.setupRelative((MotionController) sparseArray.get(animateRelativeTo));
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void copy(ConstraintWidgetContainer constraintWidgetContainer, ConstraintWidgetContainer constraintWidgetContainer2) {
        ConstraintWidget helperWidget;
        ArrayList<ConstraintWidget> children = constraintWidgetContainer.getChildren();
        HashMap<ConstraintWidget, ConstraintWidget> map = new HashMap<>();
        map.put(constraintWidgetContainer, constraintWidgetContainer2);
        constraintWidgetContainer2.getChildren().clear();
        constraintWidgetContainer2.copy(constraintWidgetContainer, map);
        int size = children.size();
        int i9 = 0;
        int i10 = 0;
        while (i10 < size) {
            ConstraintWidget constraintWidget = children.get(i10);
            i10++;
            ConstraintWidget constraintWidget2 = constraintWidget;
            if (constraintWidget2 instanceof androidx.constraintlayout.core.widgets.Barrier) {
                helperWidget = new androidx.constraintlayout.core.widgets.Barrier();
            } else if (constraintWidget2 instanceof Guideline) {
                helperWidget = new Guideline();
            } else if (constraintWidget2 instanceof Flow) {
                helperWidget = new Flow();
            } else if (constraintWidget2 instanceof Placeholder) {
                helperWidget = new Placeholder();
            } else {
                helperWidget = constraintWidget2 instanceof Helper ? new HelperWidget() : new ConstraintWidget();
            }
            constraintWidgetContainer2.add(helperWidget);
            map.put(constraintWidget2, helperWidget);
        }
        int size2 = children.size();
        while (i9 < size2) {
            ConstraintWidget constraintWidget3 = children.get(i9);
            i9++;
            ConstraintWidget constraintWidget4 = constraintWidget3;
            map.get(constraintWidget4).copy(constraintWidget4, map);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ConstraintWidget getWidget(ConstraintWidgetContainer constraintWidgetContainer, View view) {
        if (constraintWidgetContainer.getCompanionWidget() == view) {
            return constraintWidgetContainer;
        }
        ArrayList<ConstraintWidget> children = constraintWidgetContainer.getChildren();
        int size = children.size();
        for (int i9 = 0; i9 < size; i9++) {
            ConstraintWidget constraintWidget = children.get(i9);
            if (constraintWidget.getCompanionWidget() == view) {
                return constraintWidget;
            }
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void initFrom(ConstraintWidgetContainer constraintWidgetContainer, ConstraintSet constraintSet, ConstraintSet constraintSet2) {
        this.mStart = constraintSet;
        this.mEnd = constraintSet2;
        this.mLayoutStart = new ConstraintWidgetContainer();
        this.mLayoutEnd = new ConstraintWidgetContainer();
        this.mLayoutStart.setMeasurer(MotionLayout.access$400(this.this$0).getMeasurer());
        this.mLayoutEnd.setMeasurer(MotionLayout.access$500(this.this$0).getMeasurer());
        this.mLayoutStart.removeAllChildren();
        this.mLayoutEnd.removeAllChildren();
        copy(MotionLayout.access$600(this.this$0), this.mLayoutStart);
        copy(MotionLayout.access$700(this.this$0), this.mLayoutEnd);
        if (this.this$0.mTransitionLastPosition > 0.5d) {
            if (constraintSet != null) {
                setupConstraintWidget(this.mLayoutStart, constraintSet);
            }
            setupConstraintWidget(this.mLayoutEnd, constraintSet2);
        } else {
            setupConstraintWidget(this.mLayoutEnd, constraintSet2);
            if (constraintSet != null) {
                setupConstraintWidget(this.mLayoutStart, constraintSet);
            }
        }
        this.mLayoutStart.setRtl(MotionLayout.access$800(this.this$0));
        this.mLayoutStart.updateHierarchy();
        this.mLayoutEnd.setRtl(MotionLayout.access$900(this.this$0));
        this.mLayoutEnd.updateHierarchy();
        ViewGroup$LayoutParams layoutParams = this.this$0.getLayoutParams();
        if (layoutParams != null) {
            if (layoutParams.width == -2) {
                ConstraintWidgetContainer constraintWidgetContainer2 = this.mLayoutStart;
                ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour = ConstraintWidget$DimensionBehaviour.WRAP_CONTENT;
                constraintWidgetContainer2.setHorizontalDimensionBehaviour(constraintWidget$DimensionBehaviour);
                this.mLayoutEnd.setHorizontalDimensionBehaviour(constraintWidget$DimensionBehaviour);
            }
            if (layoutParams.height == -2) {
                ConstraintWidgetContainer constraintWidgetContainer3 = this.mLayoutStart;
                ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour2 = ConstraintWidget$DimensionBehaviour.WRAP_CONTENT;
                constraintWidgetContainer3.setVerticalDimensionBehaviour(constraintWidget$DimensionBehaviour2);
                this.mLayoutEnd.setVerticalDimensionBehaviour(constraintWidget$DimensionBehaviour2);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isNotConfiguredWith(int i9, int i10) {
        return (i9 == this.mStartId && i10 == this.mEndId) ? false : true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void measure(int i9, int i10) {
        int mode = View$MeasureSpec.getMode(i9);
        int mode2 = View$MeasureSpec.getMode(i10);
        MotionLayout motionLayout = this.this$0;
        motionLayout.mWidthMeasureMode = mode;
        motionLayout.mHeightMeasureMode = mode2;
        computeStartEndSize(i9, i10);
        if (!(this.this$0.getParent() instanceof MotionLayout) || mode != 1073741824 || mode2 != 1073741824) {
            computeStartEndSize(i9, i10);
            this.this$0.mStartWrapWidth = this.mLayoutStart.getWidth();
            this.this$0.mStartWrapHeight = this.mLayoutStart.getHeight();
            this.this$0.mEndWrapWidth = this.mLayoutEnd.getWidth();
            this.this$0.mEndWrapHeight = this.mLayoutEnd.getHeight();
            MotionLayout motionLayout2 = this.this$0;
            motionLayout2.mMeasureDuringTransition = (motionLayout2.mStartWrapWidth == motionLayout2.mEndWrapWidth && motionLayout2.mStartWrapHeight == motionLayout2.mEndWrapHeight) ? false : true;
        }
        MotionLayout motionLayout3 = this.this$0;
        int i11 = motionLayout3.mStartWrapWidth;
        int i12 = motionLayout3.mStartWrapHeight;
        int i13 = motionLayout3.mWidthMeasureMode;
        if (i13 == Integer.MIN_VALUE || i13 == 0) {
            i11 = (int) ((motionLayout3.mPostInterpolationPosition * (motionLayout3.mEndWrapWidth - i11)) + i11);
        }
        int i14 = i11;
        int i15 = motionLayout3.mHeightMeasureMode;
        if (i15 == Integer.MIN_VALUE || i15 == 0) {
            i12 = (int) ((motionLayout3.mPostInterpolationPosition * (motionLayout3.mEndWrapHeight - i12)) + i12);
        }
        MotionLayout.access$1500(this.this$0, i9, i10, i14, i12, this.mLayoutStart.isWidthMeasuredTooSmall() || this.mLayoutEnd.isWidthMeasuredTooSmall(), this.mLayoutStart.isHeightMeasuredTooSmall() || this.mLayoutEnd.isHeightMeasuredTooSmall());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void reEvaluateState() {
        measure(MotionLayout.access$1200(this.this$0), MotionLayout.access$1300(this.this$0));
        MotionLayout.access$1400(this.this$0);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setMeasuredId(int i9, int i10) {
        this.mStartId = i9;
        this.mEndId = i10;
    }
}
