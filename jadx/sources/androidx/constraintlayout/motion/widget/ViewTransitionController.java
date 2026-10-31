package androidx.constraintlayout.motion.widget;

import android.graphics.Rect;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.ConstraintSet;
import androidx.constraintlayout.widget.SharedValues;
import java.util.ArrayList;
import java.util.HashSet;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class ViewTransitionController {
    ArrayList<ViewTransition.Animate> mAnimations;
    private final MotionLayout mMotionLayout;
    private HashSet<View> mRelatedViews;
    private ArrayList<ViewTransition> mViewTransitions = new ArrayList<>();
    private String mTAG = "ViewTransitionController";
    ArrayList<ViewTransition.Animate> mRemoveList = new ArrayList<>();

    public ViewTransitionController(MotionLayout motionLayout) {
        this.mMotionLayout = motionLayout;
    }

    private void listenForSharedVariable(final ViewTransition viewTransition, final boolean z9) {
        final int sharedValueID = viewTransition.getSharedValueID();
        final int sharedValue = viewTransition.getSharedValue();
        ConstraintLayout.getSharedValues().addListener(viewTransition.getSharedValueID(), new SharedValues.SharedValuesListener() { // from class: androidx.constraintlayout.motion.widget.ViewTransitionController.1
            @Override // androidx.constraintlayout.widget.SharedValues.SharedValuesListener
            public void onNewValue(int i10, int i11, int i12) {
                int sharedValueCurrent = viewTransition.getSharedValueCurrent();
                viewTransition.setSharedValueCurrent(i11);
                if (sharedValueID != i10 || sharedValueCurrent == i11) {
                    return;
                }
                boolean z10 = z9;
                int i13 = sharedValue;
                int i14 = 0;
                if (z10) {
                    if (i13 == i11) {
                        int childCount = ViewTransitionController.this.mMotionLayout.getChildCount();
                        while (i14 < childCount) {
                            View childAt = ViewTransitionController.this.mMotionLayout.getChildAt(i14);
                            if (viewTransition.matchesView(childAt)) {
                                int currentState = ViewTransitionController.this.mMotionLayout.getCurrentState();
                                ConstraintSet constraintSet = ViewTransitionController.this.mMotionLayout.getConstraintSet(currentState);
                                ViewTransition viewTransition2 = viewTransition;
                                ViewTransitionController viewTransitionController = ViewTransitionController.this;
                                viewTransition2.applyTransition(viewTransitionController, viewTransitionController.mMotionLayout, currentState, constraintSet, childAt);
                            }
                            i14++;
                        }
                        return;
                    }
                    return;
                }
                if (i13 != i11) {
                    int childCount2 = ViewTransitionController.this.mMotionLayout.getChildCount();
                    while (i14 < childCount2) {
                        View childAt2 = ViewTransitionController.this.mMotionLayout.getChildAt(i14);
                        if (viewTransition.matchesView(childAt2)) {
                            int currentState2 = ViewTransitionController.this.mMotionLayout.getCurrentState();
                            ConstraintSet constraintSet2 = ViewTransitionController.this.mMotionLayout.getConstraintSet(currentState2);
                            ViewTransition viewTransition3 = viewTransition;
                            ViewTransitionController viewTransitionController2 = ViewTransitionController.this;
                            viewTransition3.applyTransition(viewTransitionController2, viewTransitionController2.mMotionLayout, currentState2, constraintSet2, childAt2);
                        }
                        i14++;
                    }
                }
            }
        });
    }

    public void add(ViewTransition viewTransition) {
        this.mViewTransitions.add(viewTransition);
        this.mRelatedViews = null;
        if (viewTransition.getStateTransition() == 4) {
            listenForSharedVariable(viewTransition, true);
        } else if (viewTransition.getStateTransition() == 5) {
            listenForSharedVariable(viewTransition, false);
        }
    }

    public void addAnimation(ViewTransition.Animate animate) {
        if (this.mAnimations == null) {
            this.mAnimations = new ArrayList<>();
        }
        this.mAnimations.add(animate);
    }

    public void animate() {
        ArrayList<ViewTransition.Animate> arrayList = this.mAnimations;
        if (arrayList == null) {
            return;
        }
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            ViewTransition.Animate animate = arrayList.get(i10);
            i10++;
            animate.mutate();
        }
        this.mAnimations.removeAll(this.mRemoveList);
        this.mRemoveList.clear();
        if (this.mAnimations.isEmpty()) {
            this.mAnimations = null;
        }
    }

    public boolean applyViewTransition(int i10, MotionController motionController) {
        ArrayList<ViewTransition> arrayList = this.mViewTransitions;
        int size = arrayList.size();
        int i11 = 0;
        while (i11 < size) {
            ViewTransition viewTransition = arrayList.get(i11);
            i11++;
            ViewTransition viewTransition2 = viewTransition;
            if (viewTransition2.getId() == i10) {
                viewTransition2.mKeyFrames.addAllFrames(motionController);
                return true;
            }
        }
        return false;
    }

    public void enableViewTransition(int i10, boolean z9) {
        ArrayList<ViewTransition> arrayList = this.mViewTransitions;
        int size = arrayList.size();
        int i11 = 0;
        while (i11 < size) {
            ViewTransition viewTransition = arrayList.get(i11);
            i11++;
            ViewTransition viewTransition2 = viewTransition;
            if (viewTransition2.getId() == i10) {
                viewTransition2.setEnabled(z9);
                return;
            }
        }
    }

    public void invalidate() {
        this.mMotionLayout.invalidate();
    }

    public boolean isViewTransitionEnabled(int i10) {
        ArrayList<ViewTransition> arrayList = this.mViewTransitions;
        int size = arrayList.size();
        int i11 = 0;
        while (i11 < size) {
            ViewTransition viewTransition = arrayList.get(i11);
            i11++;
            ViewTransition viewTransition2 = viewTransition;
            if (viewTransition2.getId() == i10) {
                return viewTransition2.isEnabled();
            }
        }
        return false;
    }

    public void remove(int i10) {
        ViewTransition viewTransition;
        ArrayList<ViewTransition> arrayList = this.mViewTransitions;
        int size = arrayList.size();
        int i11 = 0;
        do {
            if (i11 >= size) {
                viewTransition = null;
                break;
            } else {
                ViewTransition viewTransition2 = arrayList.get(i11);
                i11++;
                viewTransition = viewTransition2;
            }
        } while (viewTransition.getId() != i10);
        if (viewTransition != null) {
            this.mRelatedViews = null;
            this.mViewTransitions.remove(viewTransition);
        }
    }

    public void removeAnimation(ViewTransition.Animate animate) {
        this.mRemoveList.add(animate);
    }

    public void touchEvent(MotionEvent motionEvent) {
        int currentState = this.mMotionLayout.getCurrentState();
        if (currentState == -1) {
            return;
        }
        int i10 = 0;
        if (this.mRelatedViews == null) {
            this.mRelatedViews = new HashSet<>();
            ArrayList<ViewTransition> arrayList = this.mViewTransitions;
            int size = arrayList.size();
            int i11 = 0;
            while (i11 < size) {
                ViewTransition viewTransition = arrayList.get(i11);
                i11++;
                ViewTransition viewTransition2 = viewTransition;
                int childCount = this.mMotionLayout.getChildCount();
                for (int i12 = 0; i12 < childCount; i12++) {
                    View childAt = this.mMotionLayout.getChildAt(i12);
                    if (viewTransition2.matchesView(childAt)) {
                        childAt.getId();
                        this.mRelatedViews.add(childAt);
                    }
                }
            }
        }
        float x9 = motionEvent.getX();
        float y9 = motionEvent.getY();
        Rect rect = new Rect();
        int action = motionEvent.getAction();
        ArrayList<ViewTransition.Animate> arrayList2 = this.mAnimations;
        if (arrayList2 != null && !arrayList2.isEmpty()) {
            ArrayList<ViewTransition.Animate> arrayList3 = this.mAnimations;
            int size2 = arrayList3.size();
            int i13 = 0;
            while (i13 < size2) {
                ViewTransition.Animate animate = arrayList3.get(i13);
                i13++;
                animate.reactTo(action, x9, y9);
            }
        }
        if (action == 0 || action == 1) {
            ConstraintSet constraintSet = this.mMotionLayout.getConstraintSet(currentState);
            ArrayList<ViewTransition> arrayList4 = this.mViewTransitions;
            int size3 = arrayList4.size();
            while (i10 < size3) {
                int i14 = i10 + 1;
                ViewTransition viewTransition3 = arrayList4.get(i10);
                if (viewTransition3.supports(action)) {
                    for (View view : this.mRelatedViews) {
                        if (viewTransition3.matchesView(view)) {
                            view.getHitRect(rect);
                            if (rect.contains((int) x9, (int) y9)) {
                                viewTransition3.applyTransition(this, this.mMotionLayout, currentState, constraintSet, view);
                            }
                        }
                    }
                }
                i10 = i14;
            }
        }
    }

    public void viewTransition(int i10, View... viewArr) {
        ArrayList arrayList = new ArrayList();
        ArrayList<ViewTransition> arrayList2 = this.mViewTransitions;
        int size = arrayList2.size();
        ViewTransition viewTransition = null;
        int i11 = 0;
        while (i11 < size) {
            ViewTransition viewTransition2 = arrayList2.get(i11);
            i11++;
            ViewTransition viewTransition3 = viewTransition2;
            if (viewTransition3.getId() == i10) {
                for (View view : viewArr) {
                    if (viewTransition3.checkTags(view)) {
                        arrayList.add(view);
                    }
                }
                if (!arrayList.isEmpty()) {
                    viewTransition(viewTransition3, (View[]) arrayList.toArray(new View[0]));
                    arrayList.clear();
                }
                viewTransition = viewTransition3;
            }
        }
        if (viewTransition == null) {
            Log.e(this.mTAG, " Could not find ViewTransition");
        }
    }

    private void viewTransition(ViewTransition viewTransition, View... viewArr) {
        int currentState = this.mMotionLayout.getCurrentState();
        if (viewTransition.mViewTransitionMode == 2) {
            viewTransition.applyTransition(this, this.mMotionLayout, currentState, null, viewArr);
            return;
        }
        if (currentState == -1) {
            Log.w(this.mTAG, "No support for ViewTransition within transition yet. Currently: " + this.mMotionLayout.toString());
            return;
        }
        ConstraintSet constraintSet = this.mMotionLayout.getConstraintSet(currentState);
        if (constraintSet == null) {
            return;
        }
        viewTransition.applyTransition(this, this.mMotionLayout, currentState, constraintSet, viewArr);
    }
}
