package androidx.constraintlayout.motion.widget;

import android.graphics.Rect;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.ConstraintSet;
import java.util.ArrayList;
import java.util.HashSet;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ViewTransitionController {
    ArrayList<ViewTransition$Animate> mAnimations;
    private final MotionLayout mMotionLayout;
    private HashSet<View> mRelatedViews;
    private ArrayList<ViewTransition> mViewTransitions = new ArrayList<>();
    private String mTAG = "ViewTransitionController";
    ArrayList<ViewTransition$Animate> mRemoveList = new ArrayList<>();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ViewTransitionController(MotionLayout motionLayout) {
        this.mMotionLayout = motionLayout;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ MotionLayout access$000(ViewTransitionController viewTransitionController) {
        return viewTransitionController.mMotionLayout;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void listenForSharedVariable(ViewTransition viewTransition, boolean z8) {
        ConstraintLayout.getSharedValues().addListener(viewTransition.getSharedValueID(), new ViewTransitionController$1(this, viewTransition, viewTransition.getSharedValueID(), z8, viewTransition.getSharedValue()));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void add(ViewTransition viewTransition) {
        this.mViewTransitions.add(viewTransition);
        this.mRelatedViews = null;
        if (viewTransition.getStateTransition() == 4) {
            listenForSharedVariable(viewTransition, true);
        } else if (viewTransition.getStateTransition() == 5) {
            listenForSharedVariable(viewTransition, false);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addAnimation(ViewTransition$Animate viewTransition$Animate) {
        if (this.mAnimations == null) {
            this.mAnimations = new ArrayList<>();
        }
        this.mAnimations.add(viewTransition$Animate);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void animate() {
        ArrayList<ViewTransition$Animate> arrayList = this.mAnimations;
        if (arrayList == null) {
            return;
        }
        int size = arrayList.size();
        int i9 = 0;
        while (i9 < size) {
            ViewTransition$Animate viewTransition$Animate = arrayList.get(i9);
            i9++;
            viewTransition$Animate.mutate();
        }
        this.mAnimations.removeAll(this.mRemoveList);
        this.mRemoveList.clear();
        if (this.mAnimations.isEmpty()) {
            this.mAnimations = null;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean applyViewTransition(int i9, MotionController motionController) {
        ArrayList<ViewTransition> arrayList = this.mViewTransitions;
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            ViewTransition viewTransition = arrayList.get(i10);
            i10++;
            ViewTransition viewTransition2 = viewTransition;
            if (viewTransition2.getId() == i9) {
                viewTransition2.mKeyFrames.addAllFrames(motionController);
                return true;
            }
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void enableViewTransition(int i9, boolean z8) {
        ArrayList<ViewTransition> arrayList = this.mViewTransitions;
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            ViewTransition viewTransition = arrayList.get(i10);
            i10++;
            ViewTransition viewTransition2 = viewTransition;
            if (viewTransition2.getId() == i9) {
                viewTransition2.setEnabled(z8);
                return;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void invalidate() {
        this.mMotionLayout.invalidate();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isViewTransitionEnabled(int i9) {
        ArrayList<ViewTransition> arrayList = this.mViewTransitions;
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            ViewTransition viewTransition = arrayList.get(i10);
            i10++;
            ViewTransition viewTransition2 = viewTransition;
            if (viewTransition2.getId() == i9) {
                return viewTransition2.isEnabled();
            }
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void remove(int i9) {
        ViewTransition viewTransition;
        ArrayList<ViewTransition> arrayList = this.mViewTransitions;
        int size = arrayList.size();
        int i10 = 0;
        do {
            if (i10 >= size) {
                viewTransition = null;
                break;
            } else {
                ViewTransition viewTransition2 = arrayList.get(i10);
                i10++;
                viewTransition = viewTransition2;
            }
        } while (viewTransition.getId() != i9);
        if (viewTransition != null) {
            this.mRelatedViews = null;
            this.mViewTransitions.remove(viewTransition);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void removeAnimation(ViewTransition$Animate viewTransition$Animate) {
        this.mRemoveList.add(viewTransition$Animate);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void touchEvent(MotionEvent motionEvent) {
        int currentState = this.mMotionLayout.getCurrentState();
        if (currentState == -1) {
            return;
        }
        int i9 = 0;
        if (this.mRelatedViews == null) {
            this.mRelatedViews = new HashSet<>();
            ArrayList<ViewTransition> arrayList = this.mViewTransitions;
            int size = arrayList.size();
            int i10 = 0;
            while (i10 < size) {
                ViewTransition viewTransition = arrayList.get(i10);
                i10++;
                ViewTransition viewTransition2 = viewTransition;
                int childCount = this.mMotionLayout.getChildCount();
                for (int i11 = 0; i11 < childCount; i11++) {
                    View childAt = this.mMotionLayout.getChildAt(i11);
                    if (viewTransition2.matchesView(childAt)) {
                        childAt.getId();
                        this.mRelatedViews.add(childAt);
                    }
                }
            }
        }
        float x8 = motionEvent.getX();
        float y8 = motionEvent.getY();
        Rect rect = new Rect();
        int action = motionEvent.getAction();
        ArrayList<ViewTransition$Animate> arrayList2 = this.mAnimations;
        if (arrayList2 != null && !arrayList2.isEmpty()) {
            ArrayList<ViewTransition$Animate> arrayList3 = this.mAnimations;
            int size2 = arrayList3.size();
            int i12 = 0;
            while (i12 < size2) {
                ViewTransition$Animate viewTransition$Animate = arrayList3.get(i12);
                i12++;
                viewTransition$Animate.reactTo(action, x8, y8);
            }
        }
        if (action == 0 || action == 1) {
            ConstraintSet constraintSet = this.mMotionLayout.getConstraintSet(currentState);
            ArrayList<ViewTransition> arrayList4 = this.mViewTransitions;
            int size3 = arrayList4.size();
            while (i9 < size3) {
                int i13 = i9 + 1;
                ViewTransition viewTransition3 = arrayList4.get(i9);
                if (viewTransition3.supports(action)) {
                    for (View view : this.mRelatedViews) {
                        if (viewTransition3.matchesView(view)) {
                            view.getHitRect(rect);
                            if (rect.contains((int) x8, (int) y8)) {
                                viewTransition3.applyTransition(this, this.mMotionLayout, currentState, constraintSet, view);
                            }
                        }
                    }
                }
                i9 = i13;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void viewTransition(int i9, View... viewArr) {
        ArrayList arrayList = new ArrayList();
        ArrayList<ViewTransition> arrayList2 = this.mViewTransitions;
        int size = arrayList2.size();
        ViewTransition viewTransition = null;
        int i10 = 0;
        while (i10 < size) {
            ViewTransition viewTransition2 = arrayList2.get(i10);
            i10++;
            ViewTransition viewTransition3 = viewTransition2;
            if (viewTransition3.getId() == i9) {
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
