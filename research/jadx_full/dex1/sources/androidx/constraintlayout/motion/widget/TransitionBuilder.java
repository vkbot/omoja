package androidx.constraintlayout.motion.widget;

import ai.onnxruntime.b;
import androidx.constraintlayout.widget.ConstraintSet;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class TransitionBuilder {
    private static final String TAG = "TransitionBuilder";

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static MotionScene$Transition buildTransition(MotionScene motionScene, int i9, int i10, ConstraintSet constraintSet, int i11, ConstraintSet constraintSet2) {
        MotionScene$Transition motionScene$Transition = new MotionScene$Transition(i9, motionScene, i10, i11);
        updateConstraintSetInMotionScene(motionScene, motionScene$Transition, constraintSet, constraintSet2);
        return motionScene$Transition;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static void updateConstraintSetInMotionScene(MotionScene motionScene, MotionScene$Transition motionScene$Transition, ConstraintSet constraintSet, ConstraintSet constraintSet2) {
        int startConstraintSetId = motionScene$Transition.getStartConstraintSetId();
        int endConstraintSetId = motionScene$Transition.getEndConstraintSetId();
        motionScene.setConstraintSet(startConstraintSetId, constraintSet);
        motionScene.setConstraintSet(endConstraintSetId, constraintSet2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void validate(MotionLayout motionLayout) {
        MotionScene motionScene = motionLayout.mScene;
        if (motionScene == null) {
            b.h("Invalid motion layout. Layout missing Motion Scene.");
            return;
        }
        if (!motionScene.validateLayout(motionLayout)) {
            b.h("MotionLayout doesn't have the right motion scene.");
        } else if (motionScene.mCurrentTransition == null || motionScene.getDefinedTransitions().isEmpty()) {
            b.h("Invalid motion layout. Motion Scene doesn't have any transition.");
        }
    }
}
