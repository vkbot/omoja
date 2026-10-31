package androidx.fragment.app;

import android.view.View;
import androidx.annotation.AnimRes;
import androidx.core.app.SharedElementCallback;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class Fragment$AnimationInfo {
    Boolean mAllowEnterTransitionOverlap;
    Boolean mAllowReturnTransitionOverlap;
    View mAnimatingAway;

    @AnimRes
    int mEnterAnim;
    Object mEnterTransition = null;
    SharedElementCallback mEnterTransitionCallback;
    boolean mEnterTransitionPostponed;

    @AnimRes
    int mExitAnim;
    Object mExitTransition;
    SharedElementCallback mExitTransitionCallback;
    View mFocusedView;
    boolean mIsPop;
    int mNextTransition;

    @AnimRes
    int mPopEnterAnim;

    @AnimRes
    int mPopExitAnim;
    float mPostOnViewCreatedAlpha;
    Object mReenterTransition;
    Object mReturnTransition;
    Object mSharedElementEnterTransition;
    Object mSharedElementReturnTransition;
    ArrayList<String> mSharedElementSourceNames;
    ArrayList<String> mSharedElementTargetNames;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Fragment$AnimationInfo() {
        Object obj = Fragment.USE_DEFAULT_TRANSITION;
        this.mReturnTransition = obj;
        this.mExitTransition = null;
        this.mReenterTransition = obj;
        this.mSharedElementEnterTransition = null;
        this.mSharedElementReturnTransition = obj;
        this.mEnterTransitionCallback = null;
        this.mExitTransitionCallback = null;
        this.mPostOnViewCreatedAlpha = 1.0f;
        this.mFocusedView = null;
    }
}
