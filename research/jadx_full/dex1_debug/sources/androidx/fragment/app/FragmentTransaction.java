package androidx.fragment.app;

import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.AnimRes;
import androidx.annotation.AnimatorRes;
import androidx.annotation.IdRes;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StringRes;
import androidx.annotation.StyleRes;
import androidx.core.view.ViewCompat;
import androidx.fragment.app.strictmode.FragmentStrictMode;
import androidx.lifecycle.Lifecycle$State;
import java.lang.reflect.Modifier;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class FragmentTransaction {
    static final int OP_ADD = 1;
    static final int OP_ATTACH = 7;
    static final int OP_DETACH = 6;
    static final int OP_HIDE = 4;
    static final int OP_NULL = 0;
    static final int OP_REMOVE = 3;
    static final int OP_REPLACE = 2;
    static final int OP_SET_MAX_LIFECYCLE = 10;
    static final int OP_SET_PRIMARY_NAV = 8;
    static final int OP_SHOW = 5;
    static final int OP_UNSET_PRIMARY_NAV = 9;
    public static final int TRANSIT_ENTER_MASK = 4096;
    public static final int TRANSIT_EXIT_MASK = 8192;
    public static final int TRANSIT_FRAGMENT_CLOSE = 8194;
    public static final int TRANSIT_FRAGMENT_FADE = 4099;
    public static final int TRANSIT_FRAGMENT_MATCH_ACTIVITY_CLOSE = 8197;
    public static final int TRANSIT_FRAGMENT_MATCH_ACTIVITY_OPEN = 4100;
    public static final int TRANSIT_FRAGMENT_OPEN = 4097;
    public static final int TRANSIT_NONE = 0;
    public static final int TRANSIT_UNSET = -1;
    boolean mAddToBackStack;
    boolean mAllowAddToBackStack;
    int mBreadCrumbShortTitleRes;
    CharSequence mBreadCrumbShortTitleText;
    int mBreadCrumbTitleRes;
    CharSequence mBreadCrumbTitleText;
    private final ClassLoader mClassLoader;
    ArrayList<Runnable> mCommitRunnables;
    int mEnterAnim;
    int mExitAnim;
    private final FragmentFactory mFragmentFactory;

    @Nullable
    String mName;
    ArrayList<FragmentTransaction$Op> mOps;
    int mPopEnterAnim;
    int mPopExitAnim;
    boolean mReorderingAllowed;
    ArrayList<String> mSharedElementSourceNames;
    ArrayList<String> mSharedElementTargetNames;
    int mTransition;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public FragmentTransaction(@NonNull FragmentFactory fragmentFactory, @Nullable ClassLoader classLoader, @NonNull FragmentTransaction fragmentTransaction) {
        this(fragmentFactory, classLoader);
        ArrayList<FragmentTransaction$Op> arrayList = fragmentTransaction.mOps;
        int size = arrayList.size();
        int i9 = 0;
        while (i9 < size) {
            FragmentTransaction$Op fragmentTransaction$Op = arrayList.get(i9);
            i9++;
            this.mOps.add(new FragmentTransaction$Op(fragmentTransaction$Op));
        }
        this.mEnterAnim = fragmentTransaction.mEnterAnim;
        this.mExitAnim = fragmentTransaction.mExitAnim;
        this.mPopEnterAnim = fragmentTransaction.mPopEnterAnim;
        this.mPopExitAnim = fragmentTransaction.mPopExitAnim;
        this.mTransition = fragmentTransaction.mTransition;
        this.mAddToBackStack = fragmentTransaction.mAddToBackStack;
        this.mAllowAddToBackStack = fragmentTransaction.mAllowAddToBackStack;
        this.mName = fragmentTransaction.mName;
        this.mBreadCrumbShortTitleRes = fragmentTransaction.mBreadCrumbShortTitleRes;
        this.mBreadCrumbShortTitleText = fragmentTransaction.mBreadCrumbShortTitleText;
        this.mBreadCrumbTitleRes = fragmentTransaction.mBreadCrumbTitleRes;
        this.mBreadCrumbTitleText = fragmentTransaction.mBreadCrumbTitleText;
        if (fragmentTransaction.mSharedElementSourceNames != null) {
            ArrayList<String> arrayList2 = new ArrayList<>();
            this.mSharedElementSourceNames = arrayList2;
            arrayList2.addAll(fragmentTransaction.mSharedElementSourceNames);
        }
        if (fragmentTransaction.mSharedElementTargetNames != null) {
            ArrayList<String> arrayList3 = new ArrayList<>();
            this.mSharedElementTargetNames = arrayList3;
            arrayList3.addAll(fragmentTransaction.mSharedElementTargetNames);
        }
        this.mReorderingAllowed = fragmentTransaction.mReorderingAllowed;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    private Fragment createFragment(@NonNull Class<? extends Fragment> cls, @Nullable Bundle bundle) {
        FragmentFactory fragmentFactory = this.mFragmentFactory;
        if (fragmentFactory == null) {
            j1.i.l("Creating a Fragment requires that this FragmentTransaction was built with FragmentManager.beginTransaction()");
            return null;
        }
        ClassLoader classLoader = this.mClassLoader;
        if (classLoader == null) {
            j1.i.l("The FragmentManager must be attached to itshost to create a Fragment");
            return null;
        }
        Fragment fragmentInstantiate = fragmentFactory.instantiate(classLoader, cls.getName());
        if (bundle != null) {
            fragmentInstantiate.setArguments(bundle);
        }
        return fragmentInstantiate;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public FragmentTransaction add(@NonNull ViewGroup viewGroup, @NonNull Fragment fragment, @Nullable String str) {
        fragment.mContainer = viewGroup;
        return add(viewGroup.getId(), fragment, str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addOp(FragmentTransaction$Op fragmentTransaction$Op) {
        this.mOps.add(fragmentTransaction$Op);
        fragmentTransaction$Op.mEnterAnim = this.mEnterAnim;
        fragmentTransaction$Op.mExitAnim = this.mExitAnim;
        fragmentTransaction$Op.mPopEnterAnim = this.mPopEnterAnim;
        fragmentTransaction$Op.mPopExitAnim = this.mPopExitAnim;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public FragmentTransaction addSharedElement(@NonNull View view, @NonNull String str) {
        if (!FragmentTransition.supportsTransition()) {
            return this;
        }
        String transitionName = ViewCompat.getTransitionName(view);
        if (transitionName == null) {
            j1.i.k("Unique transitionNames are required for all sharedElements");
            return null;
        }
        if (this.mSharedElementSourceNames == null) {
            this.mSharedElementSourceNames = new ArrayList<>();
            this.mSharedElementTargetNames = new ArrayList<>();
        } else {
            if (this.mSharedElementTargetNames.contains(str)) {
                j1.i.k(ai.onnxruntime.a.m("A shared element with the target name '", str, "' has already been added to the transaction."));
                return null;
            }
            if (this.mSharedElementSourceNames.contains(transitionName)) {
                j1.i.k(ai.onnxruntime.a.m("A shared element with the source name '", transitionName, "' has already been added to the transaction."));
                return null;
            }
        }
        this.mSharedElementSourceNames.add(transitionName);
        this.mSharedElementTargetNames.add(str);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public FragmentTransaction addToBackStack(@Nullable String str) {
        if (!this.mAllowAddToBackStack) {
            j1.i.l("This FragmentTransaction is not allowed to be added to the back stack.");
            return null;
        }
        this.mAddToBackStack = true;
        this.mName = str;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public FragmentTransaction attach(@NonNull Fragment fragment) {
        addOp(new FragmentTransaction$Op(7, fragment));
        return this;
    }

    public abstract int commit();

    public abstract int commitAllowingStateLoss();

    @MainThread
    public abstract void commitNow();

    @MainThread
    public abstract void commitNowAllowingStateLoss();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public FragmentTransaction detach(@NonNull Fragment fragment) {
        addOp(new FragmentTransaction$Op(6, fragment));
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public FragmentTransaction disallowAddToBackStack() {
        if (this.mAddToBackStack) {
            j1.i.l("This transaction is already being added to the back stack");
            return null;
        }
        this.mAllowAddToBackStack = false;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void doAddOp(int i9, Fragment fragment, @Nullable String str, int i10) {
        String str2 = fragment.mPreviousWho;
        if (str2 != null) {
            FragmentStrictMode.onFragmentReuse(fragment, str2);
        }
        Class<?> cls = fragment.getClass();
        int modifiers = cls.getModifiers();
        if (cls.isAnonymousClass() || !Modifier.isPublic(modifiers) || (cls.isMemberClass() && !Modifier.isStatic(modifiers))) {
            n0.b.j(cls.getCanonicalName(), "Fragment ", " must be a public static class to be  properly recreated from instance state.");
            return;
        }
        if (str != null) {
            String str3 = fragment.mTag;
            if (str3 != null && !str.equals(str3)) {
                StringBuilder sb = new StringBuilder("Can't change tag of fragment ");
                sb.append(fragment);
                String str4 = fragment.mTag;
                sb.append(": was ");
                sb.append(str4);
                sb.append(" now ");
                sb.append(str);
                throw new IllegalStateException(sb.toString());
            }
            fragment.mTag = str;
        }
        if (i9 != 0) {
            if (i9 == -1) {
                androidx.navigation.b.r("Can't add fragment ", fragment, " with tag ", str, " to container view with no id");
                return;
            }
            int i11 = fragment.mFragmentId;
            if (i11 != 0 && i11 != i9) {
                StringBuilder sb2 = new StringBuilder("Can't change container ID of fragment ");
                sb2.append(fragment);
                int i12 = fragment.mFragmentId;
                sb2.append(": was ");
                sb2.append(i12);
                sb2.append(" now ");
                sb2.append(i9);
                throw new IllegalStateException(sb2.toString());
            }
            fragment.mFragmentId = i9;
            fragment.mContainerId = i9;
        }
        addOp(new FragmentTransaction$Op(i10, fragment));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public FragmentTransaction hide(@NonNull Fragment fragment) {
        addOp(new FragmentTransaction$Op(4, fragment));
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isAddToBackStackAllowed() {
        return this.mAllowAddToBackStack;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isEmpty() {
        return this.mOps.isEmpty();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public FragmentTransaction remove(@NonNull Fragment fragment) {
        addOp(new FragmentTransaction$Op(3, fragment));
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public FragmentTransaction replace(@IdRes int i9, @NonNull Fragment fragment, @Nullable String str) {
        if (i9 != 0) {
            doAddOp(i9, fragment, str, 2);
            return this;
        }
        j1.i.k("Must use non-zero containerViewId");
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public FragmentTransaction runOnCommit(@NonNull Runnable runnable) {
        disallowAddToBackStack();
        if (this.mCommitRunnables == null) {
            this.mCommitRunnables = new ArrayList<>();
        }
        this.mCommitRunnables.add(runnable);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    @Deprecated
    public FragmentTransaction setAllowOptimization(boolean z8) {
        return setReorderingAllowed(z8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    @Deprecated
    public FragmentTransaction setBreadCrumbShortTitle(@StringRes int i9) {
        this.mBreadCrumbShortTitleRes = i9;
        this.mBreadCrumbShortTitleText = null;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    @Deprecated
    public FragmentTransaction setBreadCrumbTitle(@StringRes int i9) {
        this.mBreadCrumbTitleRes = i9;
        this.mBreadCrumbTitleText = null;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public FragmentTransaction setCustomAnimations(@AnimRes @AnimatorRes int i9, @AnimRes @AnimatorRes int i10, @AnimRes @AnimatorRes int i11, @AnimRes @AnimatorRes int i12) {
        this.mEnterAnim = i9;
        this.mExitAnim = i10;
        this.mPopEnterAnim = i11;
        this.mPopExitAnim = i12;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public FragmentTransaction setMaxLifecycle(@NonNull Fragment fragment, @NonNull Lifecycle$State lifecycle$State) {
        addOp(new FragmentTransaction$Op(10, fragment, lifecycle$State));
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public FragmentTransaction setPrimaryNavigationFragment(@Nullable Fragment fragment) {
        addOp(new FragmentTransaction$Op(8, fragment));
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public FragmentTransaction setReorderingAllowed(boolean z8) {
        this.mReorderingAllowed = z8;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public FragmentTransaction setTransition(int i9) {
        this.mTransition = i9;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public FragmentTransaction show(@NonNull Fragment fragment) {
        addOp(new FragmentTransaction$Op(5, fragment));
        return this;
    }

    @NonNull
    @Deprecated
    public FragmentTransaction setBreadCrumbShortTitle(@Nullable CharSequence charSequence) {
        this.mBreadCrumbShortTitleRes = 0;
        this.mBreadCrumbShortTitleText = charSequence;
        return this;
    }

    @NonNull
    @Deprecated
    public FragmentTransaction setBreadCrumbTitle(@Nullable CharSequence charSequence) {
        this.mBreadCrumbTitleRes = 0;
        this.mBreadCrumbTitleText = charSequence;
        return this;
    }

    @NonNull
    public FragmentTransaction setCustomAnimations(@AnimRes @AnimatorRes int i9, @AnimRes @AnimatorRes int i10) {
        return setCustomAnimations(i9, i10, 0, 0);
    }

    @NonNull
    public FragmentTransaction add(@NonNull Fragment fragment, @Nullable String str) {
        doAddOp(0, fragment, str, 1);
        return this;
    }

    @NonNull
    public final FragmentTransaction add(@IdRes int i9, @NonNull Class<? extends Fragment> cls, @Nullable Bundle bundle) {
        return add(i9, createFragment(cls, bundle));
    }

    @NonNull
    public FragmentTransaction add(@IdRes int i9, @NonNull Fragment fragment) {
        doAddOp(i9, fragment, null, 1);
        return this;
    }

    @NonNull
    public final FragmentTransaction add(@IdRes int i9, @NonNull Class<? extends Fragment> cls, @Nullable Bundle bundle, @Nullable String str) {
        return add(i9, createFragment(cls, bundle), str);
    }

    @NonNull
    public FragmentTransaction replace(@IdRes int i9, @NonNull Fragment fragment) {
        return replace(i9, fragment, (String) null);
    }

    @NonNull
    public FragmentTransaction add(@IdRes int i9, @NonNull Fragment fragment, @Nullable String str) {
        doAddOp(i9, fragment, str, 1);
        return this;
    }

    @NonNull
    public final FragmentTransaction replace(@IdRes int i9, @NonNull Class<? extends Fragment> cls, @Nullable Bundle bundle, @Nullable String str) {
        return replace(i9, createFragment(cls, bundle), str);
    }

    @NonNull
    public final FragmentTransaction add(@NonNull Class<? extends Fragment> cls, @Nullable Bundle bundle, @Nullable String str) {
        return add(createFragment(cls, bundle), str);
    }

    @NonNull
    public final FragmentTransaction replace(@IdRes int i9, @NonNull Class<? extends Fragment> cls, @Nullable Bundle bundle) {
        return replace(i9, cls, bundle, null);
    }

    @NonNull
    @Deprecated
    public FragmentTransaction setTransitionStyle(@StyleRes int i9) {
        return this;
    }

    public FragmentTransaction(@NonNull FragmentFactory fragmentFactory, @Nullable ClassLoader classLoader) {
        this.mOps = new ArrayList<>();
        this.mAllowAddToBackStack = true;
        this.mReorderingAllowed = false;
        this.mFragmentFactory = fragmentFactory;
        this.mClassLoader = classLoader;
    }

    @Deprecated
    public FragmentTransaction() {
        this.mOps = new ArrayList<>();
        this.mAllowAddToBackStack = true;
        this.mReorderingAllowed = false;
        this.mFragmentFactory = null;
        this.mClassLoader = null;
    }
}
