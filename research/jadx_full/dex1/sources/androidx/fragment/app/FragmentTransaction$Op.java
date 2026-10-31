package androidx.fragment.app;

import androidx.annotation.NonNull;
import androidx.lifecycle.Lifecycle$State;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class FragmentTransaction$Op {
    int mCmd;
    Lifecycle$State mCurrentMaxState;
    int mEnterAnim;
    int mExitAnim;
    Fragment mFragment;
    boolean mFromExpandedOp;
    Lifecycle$State mOldMaxState;
    int mPopEnterAnim;
    int mPopExitAnim;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public FragmentTransaction$Op(FragmentTransaction$Op fragmentTransaction$Op) {
        this.mCmd = fragmentTransaction$Op.mCmd;
        this.mFragment = fragmentTransaction$Op.mFragment;
        this.mFromExpandedOp = fragmentTransaction$Op.mFromExpandedOp;
        this.mEnterAnim = fragmentTransaction$Op.mEnterAnim;
        this.mExitAnim = fragmentTransaction$Op.mExitAnim;
        this.mPopEnterAnim = fragmentTransaction$Op.mPopEnterAnim;
        this.mPopExitAnim = fragmentTransaction$Op.mPopExitAnim;
        this.mOldMaxState = fragmentTransaction$Op.mOldMaxState;
        this.mCurrentMaxState = fragmentTransaction$Op.mCurrentMaxState;
    }

    public FragmentTransaction$Op(int i9, Fragment fragment) {
        this.mCmd = i9;
        this.mFragment = fragment;
        this.mFromExpandedOp = false;
        Lifecycle$State lifecycle$State = Lifecycle$State.RESUMED;
        this.mOldMaxState = lifecycle$State;
        this.mCurrentMaxState = lifecycle$State;
    }

    public FragmentTransaction$Op(int i9, Fragment fragment, boolean z8) {
        this.mCmd = i9;
        this.mFragment = fragment;
        this.mFromExpandedOp = z8;
        Lifecycle$State lifecycle$State = Lifecycle$State.RESUMED;
        this.mOldMaxState = lifecycle$State;
        this.mCurrentMaxState = lifecycle$State;
    }

    public FragmentTransaction$Op(int i9, @NonNull Fragment fragment, Lifecycle$State lifecycle$State) {
        this.mCmd = i9;
        this.mFragment = fragment;
        this.mFromExpandedOp = false;
        this.mOldMaxState = fragment.mMaxState;
        this.mCurrentMaxState = lifecycle$State;
    }

    public FragmentTransaction$Op() {
    }
}
