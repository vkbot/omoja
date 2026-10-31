package androidx.transition;

import android.animation.Animator;
import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.res.TypedArrayUtils;
import j1.i;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class Visibility extends Transition {
    public static final int MODE_IN = 1;
    public static final int MODE_OUT = 2;
    private static final String PROPNAME_SCREEN_LOCATION = "android:visibility:screenLocation";
    private int mMode;
    static final String PROPNAME_VISIBILITY = "android:visibility:visibility";
    private static final String PROPNAME_PARENT = "android:visibility:parent";
    private static final String[] sTransitionProperties = {PROPNAME_VISIBILITY, PROPNAME_PARENT};

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Visibility(@NonNull Context context, @NonNull AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mMode = 3;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, Styleable.VISIBILITY_TRANSITION);
        int namedInt = TypedArrayUtils.getNamedInt(typedArrayObtainStyledAttributes, (XmlResourceParser) attributeSet, "transitionVisibilityMode", 0, 0);
        typedArrayObtainStyledAttributes.recycle();
        if (namedInt != 0) {
            setMode(namedInt);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void captureValues(TransitionValues transitionValues) {
        transitionValues.values.put(PROPNAME_VISIBILITY, Integer.valueOf(transitionValues.view.getVisibility()));
        transitionValues.values.put(PROPNAME_PARENT, transitionValues.view.getParent());
        int[] iArr = new int[2];
        transitionValues.view.getLocationOnScreen(iArr);
        transitionValues.values.put(PROPNAME_SCREEN_LOCATION, iArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private Visibility$VisibilityInfo getVisibilityChangeInfo(TransitionValues transitionValues, TransitionValues transitionValues2) {
        Visibility$VisibilityInfo visibility$VisibilityInfo = new Visibility$VisibilityInfo();
        visibility$VisibilityInfo.mVisibilityChange = false;
        visibility$VisibilityInfo.mFadeIn = false;
        if (transitionValues == null || !transitionValues.values.containsKey(PROPNAME_VISIBILITY)) {
            visibility$VisibilityInfo.mStartVisibility = -1;
            visibility$VisibilityInfo.mStartParent = null;
        } else {
            visibility$VisibilityInfo.mStartVisibility = ((Integer) transitionValues.values.get(PROPNAME_VISIBILITY)).intValue();
            visibility$VisibilityInfo.mStartParent = (ViewGroup) transitionValues.values.get(PROPNAME_PARENT);
        }
        if (transitionValues2 == null || !transitionValues2.values.containsKey(PROPNAME_VISIBILITY)) {
            visibility$VisibilityInfo.mEndVisibility = -1;
            visibility$VisibilityInfo.mEndParent = null;
        } else {
            visibility$VisibilityInfo.mEndVisibility = ((Integer) transitionValues2.values.get(PROPNAME_VISIBILITY)).intValue();
            visibility$VisibilityInfo.mEndParent = (ViewGroup) transitionValues2.values.get(PROPNAME_PARENT);
        }
        if (transitionValues != null && transitionValues2 != null) {
            int i9 = visibility$VisibilityInfo.mStartVisibility;
            int i10 = visibility$VisibilityInfo.mEndVisibility;
            if (i9 != i10 || visibility$VisibilityInfo.mStartParent != visibility$VisibilityInfo.mEndParent) {
                if (i9 != i10) {
                    if (i9 == 0) {
                        visibility$VisibilityInfo.mFadeIn = false;
                        visibility$VisibilityInfo.mVisibilityChange = true;
                        return visibility$VisibilityInfo;
                    }
                    if (i10 == 0) {
                        visibility$VisibilityInfo.mFadeIn = true;
                        visibility$VisibilityInfo.mVisibilityChange = true;
                        return visibility$VisibilityInfo;
                    }
                } else {
                    if (visibility$VisibilityInfo.mEndParent == null) {
                        visibility$VisibilityInfo.mFadeIn = false;
                        visibility$VisibilityInfo.mVisibilityChange = true;
                        return visibility$VisibilityInfo;
                    }
                    if (visibility$VisibilityInfo.mStartParent == null) {
                        visibility$VisibilityInfo.mFadeIn = true;
                        visibility$VisibilityInfo.mVisibilityChange = true;
                        return visibility$VisibilityInfo;
                    }
                }
            }
        } else {
            if (transitionValues == null && visibility$VisibilityInfo.mEndVisibility == 0) {
                visibility$VisibilityInfo.mFadeIn = true;
                visibility$VisibilityInfo.mVisibilityChange = true;
                return visibility$VisibilityInfo;
            }
            if (transitionValues2 == null && visibility$VisibilityInfo.mStartVisibility == 0) {
                visibility$VisibilityInfo.mFadeIn = false;
                visibility$VisibilityInfo.mVisibilityChange = true;
            }
        }
        return visibility$VisibilityInfo;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.transition.Transition
    public void captureEndValues(@NonNull TransitionValues transitionValues) {
        captureValues(transitionValues);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.transition.Transition
    public void captureStartValues(@NonNull TransitionValues transitionValues) {
        captureValues(transitionValues);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.transition.Transition
    @Nullable
    public Animator createAnimator(@NonNull ViewGroup viewGroup, @Nullable TransitionValues transitionValues, @Nullable TransitionValues transitionValues2) {
        Visibility$VisibilityInfo visibilityChangeInfo = getVisibilityChangeInfo(transitionValues, transitionValues2);
        if (!visibilityChangeInfo.mVisibilityChange) {
            return null;
        }
        if (visibilityChangeInfo.mStartParent == null && visibilityChangeInfo.mEndParent == null) {
            return null;
        }
        boolean z8 = visibilityChangeInfo.mFadeIn;
        int i9 = visibilityChangeInfo.mStartVisibility;
        return z8 ? onAppear(viewGroup, transitionValues, i9, transitionValues2, visibilityChangeInfo.mEndVisibility) : onDisappear(viewGroup, transitionValues, i9, transitionValues2, visibilityChangeInfo.mEndVisibility);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getMode() {
        return this.mMode;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.transition.Transition
    @Nullable
    public String[] getTransitionProperties() {
        return sTransitionProperties;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.transition.Transition
    public boolean isTransitionRequired(@Nullable TransitionValues transitionValues, @Nullable TransitionValues transitionValues2) {
        if (transitionValues == null && transitionValues2 == null) {
            return false;
        }
        if (transitionValues != null && transitionValues2 != null && transitionValues2.values.containsKey(PROPNAME_VISIBILITY) != transitionValues.values.containsKey(PROPNAME_VISIBILITY)) {
            return false;
        }
        Visibility$VisibilityInfo visibilityChangeInfo = getVisibilityChangeInfo(transitionValues, transitionValues2);
        return visibilityChangeInfo.mVisibilityChange && (visibilityChangeInfo.mStartVisibility == 0 || visibilityChangeInfo.mEndVisibility == 0);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isVisible(@Nullable TransitionValues transitionValues) {
        if (transitionValues == null) {
            return false;
        }
        return ((Integer) transitionValues.values.get(PROPNAME_VISIBILITY)).intValue() == 0 && ((View) transitionValues.values.get(PROPNAME_PARENT)) != null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public Animator onAppear(@NonNull ViewGroup viewGroup, @Nullable TransitionValues transitionValues, int i9, @Nullable TransitionValues transitionValues2, int i10) {
        if ((this.mMode & 1) != 1 || transitionValues2 == null) {
            return null;
        }
        if (transitionValues == null) {
            View view = (View) transitionValues2.view.getParent();
            if (getVisibilityChangeInfo(getMatchedTransitionValues(view, false), getTransitionValues(view, false)).mVisibilityChange) {
                return null;
            }
        }
        return onAppear(viewGroup, transitionValues2.view, transitionValues, transitionValues2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:23:0x0036  */
    @Nullable
    public Animator onDisappear(@NonNull ViewGroup viewGroup, @Nullable TransitionValues transitionValues, int i9, @Nullable TransitionValues transitionValues2, int i10) {
        View view;
        boolean z8;
        View view2;
        boolean z9;
        if ((this.mMode & 2) != 2 || transitionValues == null) {
            return null;
        }
        View view3 = transitionValues.view;
        View viewCopyViewImage = transitionValues2 != null ? transitionValues2.view : null;
        View view4 = (View) view3.getTag(R$id.save_overlay_view);
        if (view4 != null) {
            view2 = null;
            z9 = true;
        } else {
            if (viewCopyViewImage == null || viewCopyViewImage.getParent() == null) {
                if (viewCopyViewImage != null) {
                    view = null;
                    z8 = false;
                } else {
                    viewCopyViewImage = null;
                    view = null;
                    z8 = true;
                }
            } else if (i10 == 4 || view3 == viewCopyViewImage) {
                view = viewCopyViewImage;
                z8 = false;
                viewCopyViewImage = null;
            } else {
                viewCopyViewImage = null;
                view = null;
                z8 = true;
            }
            if (z8) {
                if (view3.getParent() != null) {
                    if (view3.getParent() instanceof View) {
                        View view5 = (View) view3.getParent();
                        if (getVisibilityChangeInfo(getTransitionValues(view5, true), getMatchedTransitionValues(view5, true)).mVisibilityChange) {
                            int id = view5.getId();
                            if (view5.getParent() != null || id == -1 || viewGroup.findViewById(id) == null || !this.mCanRemoveViews) {
                            }
                        } else {
                            viewCopyViewImage = TransitionUtils.copyViewImage(viewGroup, view3, view5);
                        }
                    }
                    View view6 = view;
                    view4 = viewCopyViewImage;
                    view2 = view6;
                    z9 = false;
                }
                view2 = view;
                z9 = false;
                view4 = view3;
            } else {
                View view7 = view;
                view4 = viewCopyViewImage;
                view2 = view7;
                z9 = false;
            }
        }
        if (view4 == null) {
            if (view2 == null) {
                return null;
            }
            int visibility = view2.getVisibility();
            ViewUtils.setTransitionVisibility(view2, 0);
            Animator animatorOnDisappear = onDisappear(viewGroup, view2, transitionValues, transitionValues2);
            if (animatorOnDisappear == null) {
                ViewUtils.setTransitionVisibility(view2, visibility);
                return animatorOnDisappear;
            }
            Visibility$DisappearListener visibility$DisappearListener = new Visibility$DisappearListener(view2, i10, true);
            animatorOnDisappear.addListener(visibility$DisappearListener);
            getRootTransition().addListener(visibility$DisappearListener);
            return animatorOnDisappear;
        }
        if (!z9) {
            int[] iArr = (int[]) transitionValues.values.get(PROPNAME_SCREEN_LOCATION);
            int i11 = iArr[0];
            int i12 = iArr[1];
            int[] iArr2 = new int[2];
            viewGroup.getLocationOnScreen(iArr2);
            view4.offsetLeftAndRight((i11 - iArr2[0]) - view4.getLeft());
            view4.offsetTopAndBottom((i12 - iArr2[1]) - view4.getTop());
            viewGroup.getOverlay().add(view4);
        }
        Animator animatorOnDisappear2 = onDisappear(viewGroup, view4, transitionValues, transitionValues2);
        if (!z9) {
            if (animatorOnDisappear2 == null) {
                viewGroup.getOverlay().remove(view4);
                return animatorOnDisappear2;
            }
            view3.setTag(R$id.save_overlay_view, view4);
            Visibility$OverlayListener visibility$OverlayListener = new Visibility$OverlayListener(this, viewGroup, view4, view3);
            animatorOnDisappear2.addListener(visibility$OverlayListener);
            animatorOnDisappear2.addPauseListener(visibility$OverlayListener);
            getRootTransition().addListener(visibility$OverlayListener);
        }
        return animatorOnDisappear2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setMode(int i9) {
        if ((i9 & (-4)) == 0) {
            this.mMode = i9;
        } else {
            i.k("Only MODE_IN and MODE_OUT flags are allowed");
        }
    }

    public Visibility() {
        this.mMode = 3;
    }

    @Nullable
    public Animator onAppear(@NonNull ViewGroup viewGroup, @NonNull View view, @Nullable TransitionValues transitionValues, @Nullable TransitionValues transitionValues2) {
        return null;
    }

    @Nullable
    public Animator onDisappear(@NonNull ViewGroup viewGroup, @NonNull View view, @Nullable TransitionValues transitionValues, @Nullable TransitionValues transitionValues2) {
        return null;
    }
}
