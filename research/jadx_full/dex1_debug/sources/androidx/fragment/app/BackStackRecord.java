package androidx.fragment.app;

import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.lifecycle.Lifecycle$State;
import java.io.PrintWriter;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
final class BackStackRecord extends FragmentTransaction implements FragmentManager$BackStackEntry, FragmentManager$OpGenerator {
    private static final String TAG = "FragmentManager";
    boolean mBeingSaved;
    boolean mCommitted;
    int mIndex;
    final FragmentManager mManager;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public BackStackRecord(@NonNull BackStackRecord backStackRecord) {
        super(backStackRecord.mManager.getFragmentFactory(), backStackRecord.mManager.getHost() != null ? backStackRecord.mManager.getHost().getContext().getClassLoader() : null, backStackRecord);
        this.mIndex = -1;
        this.mBeingSaved = false;
        this.mManager = backStackRecord.mManager;
        this.mCommitted = backStackRecord.mCommitted;
        this.mIndex = backStackRecord.mIndex;
        this.mBeingSaved = backStackRecord.mBeingSaved;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void bumpBackStackNesting(int i9) {
        if (this.mAddToBackStack) {
            if (FragmentManager.isLoggingEnabled(2)) {
                Log.v("FragmentManager", "Bump nesting in " + this + " by " + i9);
            }
            int size = this.mOps.size();
            for (int i10 = 0; i10 < size; i10++) {
                FragmentTransaction$Op fragmentTransaction$Op = this.mOps.get(i10);
                Fragment fragment = fragmentTransaction$Op.mFragment;
                if (fragment != null) {
                    fragment.mBackStackNesting += i9;
                    if (FragmentManager.isLoggingEnabled(2)) {
                        Log.v("FragmentManager", "Bump nesting of " + fragmentTransaction$Op.mFragment + " to " + fragmentTransaction$Op.mFragment.mBackStackNesting);
                    }
                }
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void collapseOps() {
        int size = this.mOps.size() - 1;
        while (size >= 0) {
            FragmentTransaction$Op fragmentTransaction$Op = this.mOps.get(size);
            if (fragmentTransaction$Op.mFromExpandedOp) {
                if (fragmentTransaction$Op.mCmd == 8) {
                    fragmentTransaction$Op.mFromExpandedOp = false;
                    this.mOps.remove(size - 1);
                    size--;
                } else {
                    int i9 = fragmentTransaction$Op.mFragment.mContainerId;
                    fragmentTransaction$Op.mCmd = 2;
                    fragmentTransaction$Op.mFromExpandedOp = false;
                    for (int i10 = size - 1; i10 >= 0; i10--) {
                        FragmentTransaction$Op fragmentTransaction$Op2 = this.mOps.get(i10);
                        if (fragmentTransaction$Op2.mFromExpandedOp && fragmentTransaction$Op2.mFragment.mContainerId == i9) {
                            this.mOps.remove(i10);
                            size--;
                        }
                    }
                }
            }
            size--;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.FragmentTransaction
    public int commit() {
        return commitInternal(false);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.FragmentTransaction
    public int commitAllowingStateLoss() {
        return commitInternal(true);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int commitInternal(boolean z8) {
        if (this.mCommitted) {
            j1.i.l("commit already called");
            return 0;
        }
        if (FragmentManager.isLoggingEnabled(2)) {
            Log.v("FragmentManager", "Commit: " + this);
            PrintWriter printWriter = new PrintWriter(new LogWriter("FragmentManager"));
            dump("  ", printWriter);
            printWriter.close();
        }
        this.mCommitted = true;
        if (this.mAddToBackStack) {
            this.mIndex = this.mManager.allocBackStackIndex();
        } else {
            this.mIndex = -1;
        }
        this.mManager.enqueueAction(this, z8);
        return this.mIndex;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.FragmentTransaction
    public void commitNow() {
        disallowAddToBackStack();
        this.mManager.execSingleAction(this, false);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.FragmentTransaction
    public void commitNowAllowingStateLoss() {
        disallowAddToBackStack();
        this.mManager.execSingleAction(this, true);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.FragmentTransaction
    @NonNull
    public FragmentTransaction detach(@NonNull Fragment fragment) {
        FragmentManager fragmentManager = fragment.mFragmentManager;
        if (fragmentManager == null || fragmentManager == this.mManager) {
            return super.detach(fragment);
        }
        ai.onnxruntime.b.d(fragment, "Cannot detach Fragment attached to a different FragmentManager. Fragment ");
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.FragmentTransaction
    public void doAddOp(int i9, Fragment fragment, @Nullable String str, int i10) {
        super.doAddOp(i9, fragment, str, i10);
        fragment.mFragmentManager = this.mManager;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void dump(String str, PrintWriter printWriter, boolean z8) {
        String str2;
        if (z8) {
            printWriter.print(str);
            printWriter.print("mName=");
            printWriter.print(this.mName);
            printWriter.print(" mIndex=");
            printWriter.print(this.mIndex);
            printWriter.print(" mCommitted=");
            printWriter.println(this.mCommitted);
            if (this.mTransition != 0) {
                printWriter.print(str);
                printWriter.print("mTransition=#");
                printWriter.print(Integer.toHexString(this.mTransition));
            }
            if (this.mEnterAnim != 0 || this.mExitAnim != 0) {
                printWriter.print(str);
                printWriter.print("mEnterAnim=#");
                printWriter.print(Integer.toHexString(this.mEnterAnim));
                printWriter.print(" mExitAnim=#");
                printWriter.println(Integer.toHexString(this.mExitAnim));
            }
            if (this.mPopEnterAnim != 0 || this.mPopExitAnim != 0) {
                printWriter.print(str);
                printWriter.print("mPopEnterAnim=#");
                printWriter.print(Integer.toHexString(this.mPopEnterAnim));
                printWriter.print(" mPopExitAnim=#");
                printWriter.println(Integer.toHexString(this.mPopExitAnim));
            }
            if (this.mBreadCrumbTitleRes != 0 || this.mBreadCrumbTitleText != null) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbTitleRes=#");
                printWriter.print(Integer.toHexString(this.mBreadCrumbTitleRes));
                printWriter.print(" mBreadCrumbTitleText=");
                printWriter.println(this.mBreadCrumbTitleText);
            }
            if (this.mBreadCrumbShortTitleRes != 0 || this.mBreadCrumbShortTitleText != null) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbShortTitleRes=#");
                printWriter.print(Integer.toHexString(this.mBreadCrumbShortTitleRes));
                printWriter.print(" mBreadCrumbShortTitleText=");
                printWriter.println(this.mBreadCrumbShortTitleText);
            }
        }
        if (this.mOps.isEmpty()) {
            return;
        }
        printWriter.print(str);
        printWriter.println("Operations:");
        int size = this.mOps.size();
        for (int i9 = 0; i9 < size; i9++) {
            FragmentTransaction$Op fragmentTransaction$Op = this.mOps.get(i9);
            switch (fragmentTransaction$Op.mCmd) {
                case 0:
                    str2 = "NULL";
                    break;
                case 1:
                    str2 = "ADD";
                    break;
                case 2:
                    str2 = "REPLACE";
                    break;
                case 3:
                    str2 = "REMOVE";
                    break;
                case 4:
                    str2 = "HIDE";
                    break;
                case 5:
                    str2 = "SHOW";
                    break;
                case 6:
                    str2 = "DETACH";
                    break;
                case 7:
                    str2 = "ATTACH";
                    break;
                case 8:
                    str2 = "SET_PRIMARY_NAV";
                    break;
                case 9:
                    str2 = "UNSET_PRIMARY_NAV";
                    break;
                case 10:
                    str2 = "OP_SET_MAX_LIFECYCLE";
                    break;
                default:
                    str2 = "cmd=" + fragmentTransaction$Op.mCmd;
                    break;
            }
            printWriter.print(str);
            printWriter.print("  Op #");
            printWriter.print(i9);
            printWriter.print(": ");
            printWriter.print(str2);
            printWriter.print(" ");
            printWriter.println(fragmentTransaction$Op.mFragment);
            if (z8) {
                if (fragmentTransaction$Op.mEnterAnim != 0 || fragmentTransaction$Op.mExitAnim != 0) {
                    printWriter.print(str);
                    printWriter.print("enterAnim=#");
                    printWriter.print(Integer.toHexString(fragmentTransaction$Op.mEnterAnim));
                    printWriter.print(" exitAnim=#");
                    printWriter.println(Integer.toHexString(fragmentTransaction$Op.mExitAnim));
                }
                if (fragmentTransaction$Op.mPopEnterAnim != 0 || fragmentTransaction$Op.mPopExitAnim != 0) {
                    printWriter.print(str);
                    printWriter.print("popEnterAnim=#");
                    printWriter.print(Integer.toHexString(fragmentTransaction$Op.mPopEnterAnim));
                    printWriter.print(" popExitAnim=#");
                    printWriter.println(Integer.toHexString(fragmentTransaction$Op.mPopExitAnim));
                }
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void executeOps() {
        int size = this.mOps.size();
        for (int i9 = 0; i9 < size; i9++) {
            FragmentTransaction$Op fragmentTransaction$Op = this.mOps.get(i9);
            Fragment fragment = fragmentTransaction$Op.mFragment;
            if (fragment != null) {
                fragment.mBeingSaved = this.mBeingSaved;
                fragment.setPopDirection(false);
                fragment.setNextTransition(this.mTransition);
                fragment.setSharedElementNames(this.mSharedElementSourceNames, this.mSharedElementTargetNames);
            }
            switch (fragmentTransaction$Op.mCmd) {
                case 1:
                    fragment.setAnimations(fragmentTransaction$Op.mEnterAnim, fragmentTransaction$Op.mExitAnim, fragmentTransaction$Op.mPopEnterAnim, fragmentTransaction$Op.mPopExitAnim);
                    this.mManager.setExitAnimationOrder(fragment, false);
                    this.mManager.addFragment(fragment);
                    break;
                case 2:
                default:
                    androidx.navigation.b.b(fragmentTransaction$Op.mCmd, "Unknown cmd: ");
                    return;
                case 3:
                    fragment.setAnimations(fragmentTransaction$Op.mEnterAnim, fragmentTransaction$Op.mExitAnim, fragmentTransaction$Op.mPopEnterAnim, fragmentTransaction$Op.mPopExitAnim);
                    this.mManager.removeFragment(fragment);
                    break;
                case 4:
                    fragment.setAnimations(fragmentTransaction$Op.mEnterAnim, fragmentTransaction$Op.mExitAnim, fragmentTransaction$Op.mPopEnterAnim, fragmentTransaction$Op.mPopExitAnim);
                    this.mManager.hideFragment(fragment);
                    break;
                case 5:
                    fragment.setAnimations(fragmentTransaction$Op.mEnterAnim, fragmentTransaction$Op.mExitAnim, fragmentTransaction$Op.mPopEnterAnim, fragmentTransaction$Op.mPopExitAnim);
                    this.mManager.setExitAnimationOrder(fragment, false);
                    this.mManager.showFragment(fragment);
                    break;
                case 6:
                    fragment.setAnimations(fragmentTransaction$Op.mEnterAnim, fragmentTransaction$Op.mExitAnim, fragmentTransaction$Op.mPopEnterAnim, fragmentTransaction$Op.mPopExitAnim);
                    this.mManager.detachFragment(fragment);
                    break;
                case 7:
                    fragment.setAnimations(fragmentTransaction$Op.mEnterAnim, fragmentTransaction$Op.mExitAnim, fragmentTransaction$Op.mPopEnterAnim, fragmentTransaction$Op.mPopExitAnim);
                    this.mManager.setExitAnimationOrder(fragment, false);
                    this.mManager.attachFragment(fragment);
                    break;
                case 8:
                    this.mManager.setPrimaryNavigationFragment(fragment);
                    break;
                case 9:
                    this.mManager.setPrimaryNavigationFragment(null);
                    break;
                case 10:
                    this.mManager.setMaxLifecycle(fragment, fragmentTransaction$Op.mCurrentMaxState);
                    break;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void executePopOps() {
        for (int size = this.mOps.size() - 1; size >= 0; size--) {
            FragmentTransaction$Op fragmentTransaction$Op = this.mOps.get(size);
            Fragment fragment = fragmentTransaction$Op.mFragment;
            if (fragment != null) {
                fragment.mBeingSaved = this.mBeingSaved;
                fragment.setPopDirection(true);
                fragment.setNextTransition(FragmentManager.reverseTransit(this.mTransition));
                fragment.setSharedElementNames(this.mSharedElementTargetNames, this.mSharedElementSourceNames);
            }
            switch (fragmentTransaction$Op.mCmd) {
                case 1:
                    fragment.setAnimations(fragmentTransaction$Op.mEnterAnim, fragmentTransaction$Op.mExitAnim, fragmentTransaction$Op.mPopEnterAnim, fragmentTransaction$Op.mPopExitAnim);
                    this.mManager.setExitAnimationOrder(fragment, true);
                    this.mManager.removeFragment(fragment);
                    break;
                case 2:
                default:
                    androidx.navigation.b.b(fragmentTransaction$Op.mCmd, "Unknown cmd: ");
                    return;
                case 3:
                    fragment.setAnimations(fragmentTransaction$Op.mEnterAnim, fragmentTransaction$Op.mExitAnim, fragmentTransaction$Op.mPopEnterAnim, fragmentTransaction$Op.mPopExitAnim);
                    this.mManager.addFragment(fragment);
                    break;
                case 4:
                    fragment.setAnimations(fragmentTransaction$Op.mEnterAnim, fragmentTransaction$Op.mExitAnim, fragmentTransaction$Op.mPopEnterAnim, fragmentTransaction$Op.mPopExitAnim);
                    this.mManager.showFragment(fragment);
                    break;
                case 5:
                    fragment.setAnimations(fragmentTransaction$Op.mEnterAnim, fragmentTransaction$Op.mExitAnim, fragmentTransaction$Op.mPopEnterAnim, fragmentTransaction$Op.mPopExitAnim);
                    this.mManager.setExitAnimationOrder(fragment, true);
                    this.mManager.hideFragment(fragment);
                    break;
                case 6:
                    fragment.setAnimations(fragmentTransaction$Op.mEnterAnim, fragmentTransaction$Op.mExitAnim, fragmentTransaction$Op.mPopEnterAnim, fragmentTransaction$Op.mPopExitAnim);
                    this.mManager.attachFragment(fragment);
                    break;
                case 7:
                    fragment.setAnimations(fragmentTransaction$Op.mEnterAnim, fragmentTransaction$Op.mExitAnim, fragmentTransaction$Op.mPopEnterAnim, fragmentTransaction$Op.mPopExitAnim);
                    this.mManager.setExitAnimationOrder(fragment, true);
                    this.mManager.detachFragment(fragment);
                    break;
                case 8:
                    this.mManager.setPrimaryNavigationFragment(null);
                    break;
                case 9:
                    this.mManager.setPrimaryNavigationFragment(fragment);
                    break;
                case 10:
                    this.mManager.setMaxLifecycle(fragment, fragmentTransaction$Op.mOldMaxState);
                    break;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:34:0x00b6  */
    public Fragment expandOps(ArrayList<Fragment> arrayList, Fragment fragment) {
        Fragment fragment2 = fragment;
        int i9 = 0;
        while (i9 < this.mOps.size()) {
            FragmentTransaction$Op fragmentTransaction$Op = this.mOps.get(i9);
            int i10 = fragmentTransaction$Op.mCmd;
            if (i10 == 1) {
                arrayList.add(fragmentTransaction$Op.mFragment);
            } else if (i10 == 2) {
                Fragment fragment3 = fragmentTransaction$Op.mFragment;
                int i11 = fragment3.mContainerId;
                boolean z8 = false;
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    Fragment fragment4 = arrayList.get(size);
                    if (fragment4.mContainerId == i11) {
                        if (fragment4 == fragment3) {
                            z8 = true;
                        } else {
                            if (fragment4 == fragment2) {
                                this.mOps.add(i9, new FragmentTransaction$Op(9, fragment4, true));
                                i9++;
                                fragment2 = null;
                            }
                            FragmentTransaction$Op fragmentTransaction$Op2 = new FragmentTransaction$Op(3, fragment4, true);
                            fragmentTransaction$Op2.mEnterAnim = fragmentTransaction$Op.mEnterAnim;
                            fragmentTransaction$Op2.mPopEnterAnim = fragmentTransaction$Op.mPopEnterAnim;
                            fragmentTransaction$Op2.mExitAnim = fragmentTransaction$Op.mExitAnim;
                            fragmentTransaction$Op2.mPopExitAnim = fragmentTransaction$Op.mPopExitAnim;
                            this.mOps.add(i9, fragmentTransaction$Op2);
                            arrayList.remove(fragment4);
                            i9++;
                        }
                    }
                }
                if (z8) {
                    this.mOps.remove(i9);
                    i9--;
                } else {
                    fragmentTransaction$Op.mCmd = 1;
                    fragmentTransaction$Op.mFromExpandedOp = true;
                    arrayList.add(fragment3);
                }
            } else if (i10 == 3 || i10 == 6) {
                arrayList.remove(fragmentTransaction$Op.mFragment);
                Fragment fragment5 = fragmentTransaction$Op.mFragment;
                if (fragment5 == fragment2) {
                    this.mOps.add(i9, new FragmentTransaction$Op(9, fragment5));
                    i9++;
                    fragment2 = null;
                }
            } else if (i10 == 7) {
                arrayList.add(fragmentTransaction$Op.mFragment);
            } else if (i10 == 8) {
                this.mOps.add(i9, new FragmentTransaction$Op(9, fragment2, true));
                fragmentTransaction$Op.mFromExpandedOp = true;
                i9++;
                fragment2 = fragmentTransaction$Op.mFragment;
            }
            i9++;
        }
        return fragment2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.FragmentManager$OpGenerator
    public boolean generateOps(@NonNull ArrayList<BackStackRecord> arrayList, @NonNull ArrayList<Boolean> arrayList2) {
        if (FragmentManager.isLoggingEnabled(2)) {
            Log.v("FragmentManager", "Run: " + this);
        }
        arrayList.add(this);
        arrayList2.add(Boolean.FALSE);
        if (!this.mAddToBackStack) {
            return true;
        }
        this.mManager.addBackStackState(this);
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.FragmentManager$BackStackEntry
    @Nullable
    public CharSequence getBreadCrumbShortTitle() {
        return this.mBreadCrumbShortTitleRes != 0 ? this.mManager.getHost().getContext().getText(this.mBreadCrumbShortTitleRes) : this.mBreadCrumbShortTitleText;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.FragmentManager$BackStackEntry
    public int getBreadCrumbShortTitleRes() {
        return this.mBreadCrumbShortTitleRes;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.FragmentManager$BackStackEntry
    @Nullable
    public CharSequence getBreadCrumbTitle() {
        return this.mBreadCrumbTitleRes != 0 ? this.mManager.getHost().getContext().getText(this.mBreadCrumbTitleRes) : this.mBreadCrumbTitleText;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.FragmentManager$BackStackEntry
    public int getBreadCrumbTitleRes() {
        return this.mBreadCrumbTitleRes;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.FragmentManager$BackStackEntry
    public int getId() {
        return this.mIndex;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.FragmentManager$BackStackEntry
    @Nullable
    public String getName() {
        return this.mName;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.FragmentTransaction
    @NonNull
    public FragmentTransaction hide(@NonNull Fragment fragment) {
        FragmentManager fragmentManager = fragment.mFragmentManager;
        if (fragmentManager == null || fragmentManager == this.mManager) {
            return super.hide(fragment);
        }
        ai.onnxruntime.b.d(fragment, "Cannot hide Fragment attached to a different FragmentManager. Fragment ");
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.FragmentTransaction
    public boolean isEmpty() {
        return this.mOps.isEmpty();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.FragmentTransaction
    @NonNull
    public FragmentTransaction remove(@NonNull Fragment fragment) {
        FragmentManager fragmentManager = fragment.mFragmentManager;
        if (fragmentManager == null || fragmentManager == this.mManager) {
            return super.remove(fragment);
        }
        ai.onnxruntime.b.d(fragment, "Cannot remove Fragment attached to a different FragmentManager. Fragment ");
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void runOnCommitRunnables() {
        if (this.mCommitRunnables != null) {
            for (int i9 = 0; i9 < this.mCommitRunnables.size(); i9++) {
                this.mCommitRunnables.get(i9).run();
            }
            this.mCommitRunnables = null;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.FragmentTransaction
    @NonNull
    public FragmentTransaction setMaxLifecycle(@NonNull Fragment fragment, @NonNull Lifecycle$State lifecycle$State) {
        if (fragment.mFragmentManager != this.mManager) {
            androidx.navigation.b.o(this.mManager, "Cannot setMaxLifecycle for Fragment not attached to FragmentManager ");
            return null;
        }
        if (lifecycle$State == Lifecycle$State.INITIALIZED && fragment.mState > -1) {
            androidx.navigation.b.p(lifecycle$State, "Cannot set maximum Lifecycle to ", " after the Fragment has been created");
            return null;
        }
        if (lifecycle$State != Lifecycle$State.DESTROYED) {
            return super.setMaxLifecycle(fragment, lifecycle$State);
        }
        androidx.navigation.b.p(lifecycle$State, "Cannot set maximum Lifecycle to ", ". Use remove() to remove the fragment from the FragmentManager and trigger its destruction.");
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.FragmentTransaction
    @NonNull
    public FragmentTransaction setPrimaryNavigationFragment(@Nullable Fragment fragment) {
        FragmentManager fragmentManager;
        if (fragment == null || (fragmentManager = fragment.mFragmentManager) == null || fragmentManager == this.mManager) {
            return super.setPrimaryNavigationFragment(fragment);
        }
        ai.onnxruntime.b.d(fragment, "Cannot setPrimaryNavigation for Fragment attached to a different FragmentManager. Fragment ");
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.FragmentTransaction
    @NonNull
    public FragmentTransaction show(@NonNull Fragment fragment) {
        FragmentManager fragmentManager = fragment.mFragmentManager;
        if (fragmentManager == null || fragmentManager == this.mManager) {
            return super.show(fragment);
        }
        ai.onnxruntime.b.d(fragment, "Cannot show Fragment attached to a different FragmentManager. Fragment ");
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("BackStackEntry{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        if (this.mIndex >= 0) {
            sb.append(" #");
            sb.append(this.mIndex);
        }
        if (this.mName != null) {
            sb.append(" ");
            sb.append(this.mName);
        }
        sb.append("}");
        return sb.toString();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:13:0x0027  */
    /* JADX WARN: Code duplicated, block: B:14:0x002d  */
    public Fragment trackAddedFragmentsInPop(ArrayList<Fragment> arrayList, Fragment fragment) {
        for (int size = this.mOps.size() - 1; size >= 0; size--) {
            FragmentTransaction$Op fragmentTransaction$Op = this.mOps.get(size);
            int i9 = fragmentTransaction$Op.mCmd;
            if (i9 == 1) {
                arrayList.remove(fragmentTransaction$Op.mFragment);
            } else if (i9 != 3) {
                switch (i9) {
                    case 6:
                        arrayList.add(fragmentTransaction$Op.mFragment);
                        break;
                    case 7:
                        arrayList.remove(fragmentTransaction$Op.mFragment);
                        break;
                    case 8:
                        fragment = null;
                        break;
                    case 9:
                        fragment = fragmentTransaction$Op.mFragment;
                        break;
                    case 10:
                        fragmentTransaction$Op.mCurrentMaxState = fragmentTransaction$Op.mOldMaxState;
                        break;
                }
            } else {
                arrayList.add(fragmentTransaction$Op.mFragment);
            }
        }
        return fragment;
    }

    public BackStackRecord(@NonNull FragmentManager fragmentManager) {
        super(fragmentManager.getFragmentFactory(), fragmentManager.getHost() != null ? fragmentManager.getHost().getContext().getClassLoader() : null);
        this.mIndex = -1;
        this.mBeingSaved = false;
        this.mManager = fragmentManager;
    }

    public void dump(String str, PrintWriter printWriter) {
        dump(str, printWriter, true);
    }
}
