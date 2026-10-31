package androidx.transition;

import android.R$attr;
import androidx.annotation.StyleableRes;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
class Styleable {

    @StyleableRes
    static final int[] TRANSITION_TARGET = {R$attr.targetClass, R$attr.targetId, R$attr.excludeId, R$attr.excludeClass, R$attr.targetName, R$attr.excludeName};

    @StyleableRes
    static final int[] TRANSITION_MANAGER = {R$attr.fromScene, R$attr.toScene, R$attr.transition};

    @StyleableRes
    static final int[] TRANSITION = {R$attr.interpolator, R$attr.duration, R$attr.startDelay, R$attr.matchOrder};

    @StyleableRes
    static final int[] CHANGE_BOUNDS = {R$attr.resizeClip};

    @StyleableRes
    static final int[] VISIBILITY_TRANSITION = {R$attr.transitionVisibilityMode};

    @StyleableRes
    static final int[] FADE = {R$attr.fadingMode};

    @StyleableRes
    static final int[] CHANGE_TRANSFORM = {R$attr.reparent, R$attr.reparentWithOverlay};

    @StyleableRes
    static final int[] SLIDE = {R$attr.slideEdge};

    @StyleableRes
    static final int[] TRANSITION_SET = {R$attr.transitionOrdering};

    @StyleableRes
    static final int[] ARC_MOTION = {R$attr.minimumHorizontalAngle, R$attr.minimumVerticalAngle, R$attr.maximumAngle};

    @StyleableRes
    static final int[] PATTERN_PATH_MOTION = {R$attr.patternPathData};

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private Styleable() {
    }
}
