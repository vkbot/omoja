package androidx.transition;

import android.view.View;
import android.view.View$OnAttachStateChangeListener;
import android.view.ViewGroup;
import android.view.ViewTreeObserver$OnPreDrawListener;
import androidx.collection.ArrayMap;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class TransitionManager$MultiListener implements ViewTreeObserver$OnPreDrawListener, View$OnAttachStateChangeListener {
    ViewGroup mSceneRoot;
    Transition mTransition;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public TransitionManager$MultiListener(Transition transition, ViewGroup viewGroup) {
        this.mTransition = transition;
        this.mSceneRoot = viewGroup;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void removeListeners() {
        this.mSceneRoot.getViewTreeObserver().removeOnPreDrawListener(this);
        this.mSceneRoot.removeOnAttachStateChangeListener(this);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewTreeObserver$OnPreDrawListener
    public boolean onPreDraw() {
        removeListeners();
        if (!TransitionManager.sPendingTransitions.remove(this.mSceneRoot)) {
            return true;
        }
        ArrayMap<ViewGroup, ArrayList<Transition>> runningTransitions = TransitionManager.getRunningTransitions();
        ArrayList<Transition> arrayList = runningTransitions.get(this.mSceneRoot);
        ArrayList arrayList2 = null;
        if (arrayList == null) {
            arrayList = new ArrayList<>();
            runningTransitions.put(this.mSceneRoot, arrayList);
        } else if (arrayList.size() > 0) {
            arrayList2 = new ArrayList(arrayList);
        }
        arrayList.add(this.mTransition);
        this.mTransition.addListener(new TransitionManager$MultiListener$1(this, runningTransitions));
        int i9 = 0;
        this.mTransition.captureValues(this.mSceneRoot, false);
        if (arrayList2 != null) {
            int size = arrayList2.size();
            while (i9 < size) {
                Object obj = arrayList2.get(i9);
                i9++;
                ((Transition) obj).resume(this.mSceneRoot);
            }
        }
        this.mTransition.playTransition(this.mSceneRoot);
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View$OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
        removeListeners();
        TransitionManager.sPendingTransitions.remove(this.mSceneRoot);
        ArrayList<Transition> arrayList = TransitionManager.getRunningTransitions().get(this.mSceneRoot);
        if (arrayList != null && arrayList.size() > 0) {
            int size = arrayList.size();
            int i9 = 0;
            while (i9 < size) {
                Transition transition = arrayList.get(i9);
                i9++;
                transition.resume(this.mSceneRoot);
            }
        }
        this.mTransition.clearValues(true);
    }

    @Override // android.view.View$OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
    }
}
