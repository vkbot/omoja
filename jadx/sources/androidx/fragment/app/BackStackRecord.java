package androidx.fragment.app;

import ai.onnxruntime.C0075b;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.lifecycle.Lifecycle;
import androidx.navigation.C0674b;
import java.io.PrintWriter;
import java.util.ArrayList;
import p099j1.C1929i;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
final class BackStackRecord extends FragmentTransaction implements FragmentManager.BackStackEntry, FragmentManager.OpGenerator {
    private static final String TAG = "FragmentManager";
    boolean mBeingSaved;
    boolean mCommitted;
    int mIndex;
    final FragmentManager mManager;

    public BackStackRecord(@NonNull BackStackRecord backStackRecord) {
        super(backStackRecord.mManager.getFragmentFactory(), backStackRecord.mManager.getHost() != null ? backStackRecord.mManager.getHost().getContext().getClassLoader() : null, backStackRecord);
        this.mIndex = -1;
        this.mBeingSaved = false;
        this.mManager = backStackRecord.mManager;
        this.mCommitted = backStackRecord.mCommitted;
        this.mIndex = backStackRecord.mIndex;
        this.mBeingSaved = backStackRecord.mBeingSaved;
    }

    public void bumpBackStackNesting(int i10) {
        if (this.mAddToBackStack) {
            if (FragmentManager.isLoggingEnabled(2)) {
                Log.v("FragmentManager", "Bump nesting in " + this + " by " + i10);
            }
            int size = this.mOps.size();
            for (int i11 = 0; i11 < size; i11++) {
                FragmentTransaction.C0534Op c0534Op = this.mOps.get(i11);
                Fragment fragment = c0534Op.mFragment;
                if (fragment != null) {
                    fragment.mBackStackNesting += i10;
                    if (FragmentManager.isLoggingEnabled(2)) {
                        Log.v("FragmentManager", "Bump nesting of " + c0534Op.mFragment + " to " + c0534Op.mFragment.mBackStackNesting);
                    }
                }
            }
        }
    }

    public void collapseOps() {
        int size = this.mOps.size() - 1;
        while (size >= 0) {
            FragmentTransaction.C0534Op c0534Op = this.mOps.get(size);
            if (c0534Op.mFromExpandedOp) {
                if (c0534Op.mCmd == 8) {
                    c0534Op.mFromExpandedOp = false;
                    this.mOps.remove(size - 1);
                    size--;
                } else {
                    int i10 = c0534Op.mFragment.mContainerId;
                    c0534Op.mCmd = 2;
                    c0534Op.mFromExpandedOp = false;
                    for (int i11 = size - 1; i11 >= 0; i11--) {
                        FragmentTransaction.C0534Op c0534Op2 = this.mOps.get(i11);
                        if (c0534Op2.mFromExpandedOp && c0534Op2.mFragment.mContainerId == i10) {
                            this.mOps.remove(i11);
                            size--;
                        }
                    }
                }
            }
            size--;
        }
    }

    @Override // androidx.fragment.app.FragmentTransaction
    public int commit() {
        return commitInternal(false);
    }

    @Override // androidx.fragment.app.FragmentTransaction
    public int commitAllowingStateLoss() {
        return commitInternal(true);
    }

    public int commitInternal(boolean z9) {
        if (this.mCommitted) {
            C1929i.m3030l("commit already called");
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
        this.mManager.enqueueAction(this, z9);
        return this.mIndex;
    }

    @Override // androidx.fragment.app.FragmentTransaction
    public void commitNow() {
        disallowAddToBackStack();
        this.mManager.execSingleAction(this, false);
    }

    @Override // androidx.fragment.app.FragmentTransaction
    public void commitNowAllowingStateLoss() {
        disallowAddToBackStack();
        this.mManager.execSingleAction(this, true);
    }

    @Override // androidx.fragment.app.FragmentTransaction
    @NonNull
    public FragmentTransaction detach(@NonNull Fragment fragment) {
        FragmentManager fragmentManager = fragment.mFragmentManager;
        if (fragmentManager == null || fragmentManager == this.mManager) {
            return super.detach(fragment);
        }
        C0075b.m179d(fragment, "Cannot detach Fragment attached to a different FragmentManager. Fragment ");
        return null;
    }

    @Override // androidx.fragment.app.FragmentTransaction
    public void doAddOp(int i10, Fragment fragment, @Nullable String str, int i11) {
        super.doAddOp(i10, fragment, str, i11);
        fragment.mFragmentManager = this.mManager;
    }

    public void dump(String str, PrintWriter printWriter, boolean z9) {
        String str2;
        if (z9) {
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
        for (int i10 = 0; i10 < size; i10++) {
            FragmentTransaction.C0534Op c0534Op = this.mOps.get(i10);
            switch (c0534Op.mCmd) {
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
                    str2 = "cmd=" + c0534Op.mCmd;
                    break;
            }
            printWriter.print(str);
            printWriter.print("  Op #");
            printWriter.print(i10);
            printWriter.print(": ");
            printWriter.print(str2);
            printWriter.print(" ");
            printWriter.println(c0534Op.mFragment);
            if (z9) {
                if (c0534Op.mEnterAnim != 0 || c0534Op.mExitAnim != 0) {
                    printWriter.print(str);
                    printWriter.print("enterAnim=#");
                    printWriter.print(Integer.toHexString(c0534Op.mEnterAnim));
                    printWriter.print(" exitAnim=#");
                    printWriter.println(Integer.toHexString(c0534Op.mExitAnim));
                }
                if (c0534Op.mPopEnterAnim != 0 || c0534Op.mPopExitAnim != 0) {
                    printWriter.print(str);
                    printWriter.print("popEnterAnim=#");
                    printWriter.print(Integer.toHexString(c0534Op.mPopEnterAnim));
                    printWriter.print(" popExitAnim=#");
                    printWriter.println(Integer.toHexString(c0534Op.mPopExitAnim));
                }
            }
        }
    }

    public void executeOps() {
        int size = this.mOps.size();
        for (int i10 = 0; i10 < size; i10++) {
            FragmentTransaction.C0534Op c0534Op = this.mOps.get(i10);
            Fragment fragment = c0534Op.mFragment;
            if (fragment != null) {
                fragment.mBeingSaved = this.mBeingSaved;
                fragment.setPopDirection(false);
                fragment.setNextTransition(this.mTransition);
                fragment.setSharedElementNames(this.mSharedElementSourceNames, this.mSharedElementTargetNames);
            }
            switch (c0534Op.mCmd) {
                case 1:
                    fragment.setAnimations(c0534Op.mEnterAnim, c0534Op.mExitAnim, c0534Op.mPopEnterAnim, c0534Op.mPopExitAnim);
                    this.mManager.setExitAnimationOrder(fragment, false);
                    this.mManager.addFragment(fragment);
                    break;
                case 2:
                default:
                    C0674b.m836b(c0534Op.mCmd, "Unknown cmd: ");
                    return;
                case 3:
                    fragment.setAnimations(c0534Op.mEnterAnim, c0534Op.mExitAnim, c0534Op.mPopEnterAnim, c0534Op.mPopExitAnim);
                    this.mManager.removeFragment(fragment);
                    break;
                case 4:
                    fragment.setAnimations(c0534Op.mEnterAnim, c0534Op.mExitAnim, c0534Op.mPopEnterAnim, c0534Op.mPopExitAnim);
                    this.mManager.hideFragment(fragment);
                    break;
                case 5:
                    fragment.setAnimations(c0534Op.mEnterAnim, c0534Op.mExitAnim, c0534Op.mPopEnterAnim, c0534Op.mPopExitAnim);
                    this.mManager.setExitAnimationOrder(fragment, false);
                    this.mManager.showFragment(fragment);
                    break;
                case 6:
                    fragment.setAnimations(c0534Op.mEnterAnim, c0534Op.mExitAnim, c0534Op.mPopEnterAnim, c0534Op.mPopExitAnim);
                    this.mManager.detachFragment(fragment);
                    break;
                case 7:
                    fragment.setAnimations(c0534Op.mEnterAnim, c0534Op.mExitAnim, c0534Op.mPopEnterAnim, c0534Op.mPopExitAnim);
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
                    this.mManager.setMaxLifecycle(fragment, c0534Op.mCurrentMaxState);
                    break;
            }
        }
    }

    public void executePopOps() {
        for (int size = this.mOps.size() - 1; size >= 0; size--) {
            FragmentTransaction.C0534Op c0534Op = this.mOps.get(size);
            Fragment fragment = c0534Op.mFragment;
            if (fragment != null) {
                fragment.mBeingSaved = this.mBeingSaved;
                fragment.setPopDirection(true);
                fragment.setNextTransition(FragmentManager.reverseTransit(this.mTransition));
                fragment.setSharedElementNames(this.mSharedElementTargetNames, this.mSharedElementSourceNames);
            }
            switch (c0534Op.mCmd) {
                case 1:
                    fragment.setAnimations(c0534Op.mEnterAnim, c0534Op.mExitAnim, c0534Op.mPopEnterAnim, c0534Op.mPopExitAnim);
                    this.mManager.setExitAnimationOrder(fragment, true);
                    this.mManager.removeFragment(fragment);
                    break;
                case 2:
                default:
                    C0674b.m836b(c0534Op.mCmd, "Unknown cmd: ");
                    return;
                case 3:
                    fragment.setAnimations(c0534Op.mEnterAnim, c0534Op.mExitAnim, c0534Op.mPopEnterAnim, c0534Op.mPopExitAnim);
                    this.mManager.addFragment(fragment);
                    break;
                case 4:
                    fragment.setAnimations(c0534Op.mEnterAnim, c0534Op.mExitAnim, c0534Op.mPopEnterAnim, c0534Op.mPopExitAnim);
                    this.mManager.showFragment(fragment);
                    break;
                case 5:
                    fragment.setAnimations(c0534Op.mEnterAnim, c0534Op.mExitAnim, c0534Op.mPopEnterAnim, c0534Op.mPopExitAnim);
                    this.mManager.setExitAnimationOrder(fragment, true);
                    this.mManager.hideFragment(fragment);
                    break;
                case 6:
                    fragment.setAnimations(c0534Op.mEnterAnim, c0534Op.mExitAnim, c0534Op.mPopEnterAnim, c0534Op.mPopExitAnim);
                    this.mManager.attachFragment(fragment);
                    break;
                case 7:
                    fragment.setAnimations(c0534Op.mEnterAnim, c0534Op.mExitAnim, c0534Op.mPopEnterAnim, c0534Op.mPopExitAnim);
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
                    this.mManager.setMaxLifecycle(fragment, c0534Op.mOldMaxState);
                    break;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:34:0x00b6  */
    public Fragment expandOps(ArrayList<Fragment> arrayList, Fragment fragment) {
        Fragment fragment2 = fragment;
        int i10 = 0;
        while (i10 < this.mOps.size()) {
            FragmentTransaction.C0534Op c0534Op = this.mOps.get(i10);
            int i11 = c0534Op.mCmd;
            if (i11 == 1) {
                arrayList.add(c0534Op.mFragment);
            } else if (i11 == 2) {
                Fragment fragment3 = c0534Op.mFragment;
                int i12 = fragment3.mContainerId;
                boolean z9 = false;
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    Fragment fragment4 = arrayList.get(size);
                    if (fragment4.mContainerId == i12) {
                        if (fragment4 == fragment3) {
                            z9 = true;
                        } else {
                            if (fragment4 == fragment2) {
                                this.mOps.add(i10, new FragmentTransaction.C0534Op(9, fragment4, true));
                                i10++;
                                fragment2 = null;
                            }
                            FragmentTransaction.C0534Op c0534Op2 = new FragmentTransaction.C0534Op(3, fragment4, true);
                            c0534Op2.mEnterAnim = c0534Op.mEnterAnim;
                            c0534Op2.mPopEnterAnim = c0534Op.mPopEnterAnim;
                            c0534Op2.mExitAnim = c0534Op.mExitAnim;
                            c0534Op2.mPopExitAnim = c0534Op.mPopExitAnim;
                            this.mOps.add(i10, c0534Op2);
                            arrayList.remove(fragment4);
                            i10++;
                        }
                    }
                }
                if (z9) {
                    this.mOps.remove(i10);
                    i10--;
                } else {
                    c0534Op.mCmd = 1;
                    c0534Op.mFromExpandedOp = true;
                    arrayList.add(fragment3);
                }
            } else if (i11 == 3 || i11 == 6) {
                arrayList.remove(c0534Op.mFragment);
                Fragment fragment5 = c0534Op.mFragment;
                if (fragment5 == fragment2) {
                    this.mOps.add(i10, new FragmentTransaction.C0534Op(9, fragment5));
                    i10++;
                    fragment2 = null;
                }
            } else if (i11 == 7) {
                arrayList.add(c0534Op.mFragment);
            } else if (i11 == 8) {
                this.mOps.add(i10, new FragmentTransaction.C0534Op(9, fragment2, true));
                c0534Op.mFromExpandedOp = true;
                i10++;
                fragment2 = c0534Op.mFragment;
            }
            i10++;
        }
        return fragment2;
    }

    @Override // androidx.fragment.app.FragmentManager.OpGenerator
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

    @Override // androidx.fragment.app.FragmentManager.BackStackEntry
    @Nullable
    public CharSequence getBreadCrumbShortTitle() {
        return this.mBreadCrumbShortTitleRes != 0 ? this.mManager.getHost().getContext().getText(this.mBreadCrumbShortTitleRes) : this.mBreadCrumbShortTitleText;
    }

    @Override // androidx.fragment.app.FragmentManager.BackStackEntry
    public int getBreadCrumbShortTitleRes() {
        return this.mBreadCrumbShortTitleRes;
    }

    @Override // androidx.fragment.app.FragmentManager.BackStackEntry
    @Nullable
    public CharSequence getBreadCrumbTitle() {
        return this.mBreadCrumbTitleRes != 0 ? this.mManager.getHost().getContext().getText(this.mBreadCrumbTitleRes) : this.mBreadCrumbTitleText;
    }

    @Override // androidx.fragment.app.FragmentManager.BackStackEntry
    public int getBreadCrumbTitleRes() {
        return this.mBreadCrumbTitleRes;
    }

    @Override // androidx.fragment.app.FragmentManager.BackStackEntry
    public int getId() {
        return this.mIndex;
    }

    @Override // androidx.fragment.app.FragmentManager.BackStackEntry
    @Nullable
    public String getName() {
        return this.mName;
    }

    @Override // androidx.fragment.app.FragmentTransaction
    @NonNull
    public FragmentTransaction hide(@NonNull Fragment fragment) {
        FragmentManager fragmentManager = fragment.mFragmentManager;
        if (fragmentManager == null || fragmentManager == this.mManager) {
            return super.hide(fragment);
        }
        C0075b.m179d(fragment, "Cannot hide Fragment attached to a different FragmentManager. Fragment ");
        return null;
    }

    @Override // androidx.fragment.app.FragmentTransaction
    public boolean isEmpty() {
        return this.mOps.isEmpty();
    }

    @Override // androidx.fragment.app.FragmentTransaction
    @NonNull
    public FragmentTransaction remove(@NonNull Fragment fragment) {
        FragmentManager fragmentManager = fragment.mFragmentManager;
        if (fragmentManager == null || fragmentManager == this.mManager) {
            return super.remove(fragment);
        }
        C0075b.m179d(fragment, "Cannot remove Fragment attached to a different FragmentManager. Fragment ");
        return null;
    }

    public void runOnCommitRunnables() {
        if (this.mCommitRunnables != null) {
            for (int i10 = 0; i10 < this.mCommitRunnables.size(); i10++) {
                this.mCommitRunnables.get(i10).run();
            }
            this.mCommitRunnables = null;
        }
    }

    @Override // androidx.fragment.app.FragmentTransaction
    @NonNull
    public FragmentTransaction setMaxLifecycle(@NonNull Fragment fragment, @NonNull Lifecycle.State state) {
        if (fragment.mFragmentManager != this.mManager) {
            C0674b.m848o(this.mManager, "Cannot setMaxLifecycle for Fragment not attached to FragmentManager ");
            return null;
        }
        if (state == Lifecycle.State.INITIALIZED && fragment.mState > -1) {
            C0674b.m849p(state, "Cannot set maximum Lifecycle to ", " after the Fragment has been created");
            return null;
        }
        if (state != Lifecycle.State.DESTROYED) {
            return super.setMaxLifecycle(fragment, state);
        }
        C0674b.m849p(state, "Cannot set maximum Lifecycle to ", ". Use remove() to remove the fragment from the FragmentManager and trigger its destruction.");
        return null;
    }

    @Override // androidx.fragment.app.FragmentTransaction
    @NonNull
    public FragmentTransaction setPrimaryNavigationFragment(@Nullable Fragment fragment) {
        FragmentManager fragmentManager;
        if (fragment == null || (fragmentManager = fragment.mFragmentManager) == null || fragmentManager == this.mManager) {
            return super.setPrimaryNavigationFragment(fragment);
        }
        C0075b.m179d(fragment, "Cannot setPrimaryNavigation for Fragment attached to a different FragmentManager. Fragment ");
        return null;
    }

    @Override // androidx.fragment.app.FragmentTransaction
    @NonNull
    public FragmentTransaction show(@NonNull Fragment fragment) {
        FragmentManager fragmentManager = fragment.mFragmentManager;
        if (fragmentManager == null || fragmentManager == this.mManager) {
            return super.show(fragment);
        }
        C0075b.m179d(fragment, "Cannot show Fragment attached to a different FragmentManager. Fragment ");
        return null;
    }

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

    /* JADX WARN: Code duplicated, block: B:13:0x0027  */
    /* JADX WARN: Code duplicated, block: B:14:0x002d  */
    public Fragment trackAddedFragmentsInPop(ArrayList<Fragment> arrayList, Fragment fragment) {
        for (int size = this.mOps.size() - 1; size >= 0; size--) {
            FragmentTransaction.C0534Op c0534Op = this.mOps.get(size);
            int i10 = c0534Op.mCmd;
            if (i10 == 1) {
                arrayList.remove(c0534Op.mFragment);
            } else if (i10 != 3) {
                switch (i10) {
                    case 6:
                        arrayList.add(c0534Op.mFragment);
                        break;
                    case 7:
                        arrayList.remove(c0534Op.mFragment);
                        break;
                    case 8:
                        fragment = null;
                        break;
                    case 9:
                        fragment = c0534Op.mFragment;
                        break;
                    case 10:
                        c0534Op.mCurrentMaxState = c0534Op.mOldMaxState;
                        break;
                }
            } else {
                arrayList.add(c0534Op.mFragment);
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
