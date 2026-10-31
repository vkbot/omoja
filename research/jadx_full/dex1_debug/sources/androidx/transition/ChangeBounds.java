package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.PointF;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.res.TypedArrayUtils;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ChangeBounds extends Transition {
    private boolean mResizeClip;
    private static final String PROPNAME_BOUNDS = "android:changeBounds:bounds";
    private static final String PROPNAME_CLIP = "android:changeBounds:clip";
    private static final String PROPNAME_PARENT = "android:changeBounds:parent";
    private static final String PROPNAME_WINDOW_X = "android:changeBounds:windowX";
    private static final String PROPNAME_WINDOW_Y = "android:changeBounds:windowY";
    private static final String[] sTransitionProperties = {PROPNAME_BOUNDS, PROPNAME_CLIP, PROPNAME_PARENT, PROPNAME_WINDOW_X, PROPNAME_WINDOW_Y};
    private static final Property<ChangeBounds$ViewBounds, PointF> TOP_LEFT_PROPERTY = new ChangeBounds$1(PointF.class, "topLeft");
    private static final Property<ChangeBounds$ViewBounds, PointF> BOTTOM_RIGHT_PROPERTY = new ChangeBounds$2(PointF.class, "bottomRight");
    private static final Property<View, PointF> BOTTOM_RIGHT_ONLY_PROPERTY = new ChangeBounds$3(PointF.class, "bottomRight");
    private static final Property<View, PointF> TOP_LEFT_ONLY_PROPERTY = new ChangeBounds$4(PointF.class, "topLeft");
    private static final Property<View, PointF> POSITION_PROPERTY = new ChangeBounds$5(PointF.class, "position");
    private static final RectEvaluator sRectEvaluator = new RectEvaluator();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ChangeBounds(@NonNull Context context, @NonNull AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mResizeClip = false;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, Styleable.CHANGE_BOUNDS);
        boolean namedBoolean = TypedArrayUtils.getNamedBoolean(typedArrayObtainStyledAttributes, (XmlResourceParser) attributeSet, "resizeClip", 0, false);
        typedArrayObtainStyledAttributes.recycle();
        setResizeClip(namedBoolean);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void captureValues(TransitionValues transitionValues) {
        View view = transitionValues.view;
        if (!view.isLaidOut() && view.getWidth() == 0 && view.getHeight() == 0) {
            return;
        }
        transitionValues.values.put(PROPNAME_BOUNDS, new Rect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom()));
        transitionValues.values.put(PROPNAME_PARENT, transitionValues.view.getParent());
        if (this.mResizeClip) {
            transitionValues.values.put(PROPNAME_CLIP, view.getClipBounds());
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.transition.Transition
    public void captureEndValues(@NonNull TransitionValues transitionValues) {
        captureValues(transitionValues);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.transition.Transition
    public void captureStartValues(@NonNull TransitionValues transitionValues) {
        Rect rect;
        captureValues(transitionValues);
        if (!this.mResizeClip || (rect = (Rect) transitionValues.view.getTag(R$id.transition_clip)) == null) {
            return;
        }
        transitionValues.values.put(PROPNAME_CLIP, rect);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r11v1, resolved type: boolean */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.transition.Transition
    @Nullable
    public Animator createAnimator(@NonNull ViewGroup viewGroup, @Nullable TransitionValues transitionValues, @Nullable TransitionValues transitionValues2) {
        int i9;
        int i10;
        Rect rect;
        ObjectAnimator objectAnimatorOfObject;
        Animator animatorMergeAnimators;
        if (transitionValues == null || transitionValues2 == null) {
            return null;
        }
        Map<String, Object> map = transitionValues.values;
        Map<String, Object> map2 = transitionValues2.values;
        ViewGroup viewGroup2 = (ViewGroup) map.get(PROPNAME_PARENT);
        ViewGroup viewGroup3 = (ViewGroup) map2.get(PROPNAME_PARENT);
        if (viewGroup2 == null || viewGroup3 == null) {
            return null;
        }
        View view = transitionValues2.view;
        Rect rect2 = (Rect) transitionValues.values.get(PROPNAME_BOUNDS);
        Rect rect3 = (Rect) transitionValues2.values.get(PROPNAME_BOUNDS);
        int i11 = rect2.left;
        int i12 = rect3.left;
        int i13 = rect2.top;
        int i14 = rect3.top;
        int i15 = rect2.right;
        int i16 = rect3.right;
        int i17 = rect2.bottom;
        int i18 = rect3.bottom;
        int i19 = i15 - i11;
        int i20 = i17 - i13;
        int i21 = i16 - i12;
        int i22 = i18 - i14;
        Rect rect4 = (Rect) transitionValues.values.get(PROPNAME_CLIP);
        Rect rect5 = (Rect) transitionValues2.values.get(PROPNAME_CLIP);
        if ((i19 == 0 || i20 == 0) && (i21 == 0 || i22 == 0)) {
            i9 = 0;
        } else {
            i9 = (i11 == i12 && i13 == i14) ? 0 : 1;
            if (i15 != i16 || i17 != i18) {
                i9++;
            }
        }
        if ((rect4 != null && !rect4.equals(rect5)) || (rect4 == null && rect5 != null)) {
            i9++;
        }
        int i23 = i9;
        if (i23 <= 0) {
            return null;
        }
        if (this.mResizeClip) {
            ViewUtils.setLeftTopRightBottom(view, i11, i13, Math.max(i19, i21) + i11, i13 + Math.max(i20, i22));
            ObjectAnimator objectAnimatorOfPointF = (i11 == i12 && i13 == i14) ? null : ObjectAnimatorUtils.ofPointF(view, POSITION_PROPERTY, getPathMotion().getPath(i11, i13, i12, i14));
            boolean z8 = rect4 == null;
            if (z8) {
                i10 = 0;
                rect = new Rect(0, 0, i19, i20);
            } else {
                i10 = 0;
                rect = rect4;
            }
            int i24 = rect5 == null ? 1 : i10;
            Rect rect6 = i24 != 0 ? new Rect(i10, i10, i21, i22) : rect5;
            if (rect.equals(rect6)) {
                objectAnimatorOfObject = null;
            } else {
                view.setClipBounds(rect);
                objectAnimatorOfObject = ObjectAnimator.ofObject(view, "clipBounds", sRectEvaluator, rect, rect6);
                ChangeBounds$ClipListener changeBounds$ClipListener = new ChangeBounds$ClipListener(view, rect, z8, rect6, i24, i11, i13, i15, i17, i12, i14, i16, i18);
                objectAnimatorOfObject.addListener(changeBounds$ClipListener);
                addListener(changeBounds$ClipListener);
            }
            animatorMergeAnimators = TransitionUtils.mergeAnimators(objectAnimatorOfPointF, objectAnimatorOfObject);
        } else {
            ViewUtils.setLeftTopRightBottom(view, i11, i13, i15, i17);
            if (i23 != 2) {
                animatorMergeAnimators = (i11 == i12 && i13 == i14) ? ObjectAnimatorUtils.ofPointF(view, BOTTOM_RIGHT_ONLY_PROPERTY, getPathMotion().getPath(i15, i17, i16, i18)) : ObjectAnimatorUtils.ofPointF(view, TOP_LEFT_ONLY_PROPERTY, getPathMotion().getPath(i11, i13, i12, i14));
            } else if (i19 == i21 && i20 == i22) {
                animatorMergeAnimators = ObjectAnimatorUtils.ofPointF(view, POSITION_PROPERTY, getPathMotion().getPath(i11, i13, i12, i14));
            } else {
                ChangeBounds$ViewBounds changeBounds$ViewBounds = new ChangeBounds$ViewBounds(view);
                ObjectAnimator objectAnimatorOfPointF2 = ObjectAnimatorUtils.ofPointF(changeBounds$ViewBounds, TOP_LEFT_PROPERTY, getPathMotion().getPath(i11, i13, i12, i14));
                ObjectAnimator objectAnimatorOfPointF3 = ObjectAnimatorUtils.ofPointF(changeBounds$ViewBounds, BOTTOM_RIGHT_PROPERTY, getPathMotion().getPath(i15, i17, i16, i18));
                AnimatorSet animatorSet = new AnimatorSet();
                animatorSet.playTogether(objectAnimatorOfPointF2, objectAnimatorOfPointF3);
                animatorSet.addListener(new ChangeBounds$6(this, changeBounds$ViewBounds));
                animatorMergeAnimators = animatorSet;
            }
        }
        if (view.getParent() instanceof ViewGroup) {
            ViewGroup viewGroup4 = (ViewGroup) view.getParent();
            ViewGroupUtils.suppressLayout(viewGroup4, true);
            getRootTransition().addListener(new ChangeBounds$SuppressLayoutListener(viewGroup4));
        }
        return animatorMergeAnimators;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean getResizeClip() {
        return this.mResizeClip;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.transition.Transition
    @NonNull
    public String[] getTransitionProperties() {
        return sTransitionProperties;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.transition.Transition
    public boolean isSeekingSupported() {
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setResizeClip(boolean z8) {
        this.mResizeClip = z8;
    }

    public ChangeBounds() {
        this.mResizeClip = false;
    }
}
