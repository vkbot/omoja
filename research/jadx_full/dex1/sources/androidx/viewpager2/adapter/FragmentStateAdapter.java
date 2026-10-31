package androidx.viewpager2.adapter;

import ai.onnxruntime.a;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcelable;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.collection.ArraySet;
import androidx.collection.LongSparseArray;
import androidx.core.util.Preconditions;
import androidx.core.view.ViewCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.Fragment$SavedState;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.Lifecycle$State;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerView$Adapter;
import androidx.recyclerview.widget.RecyclerView$ViewHolder;
import j1.i;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class FragmentStateAdapter extends RecyclerView$Adapter<FragmentViewHolder> implements StatefulAdapter {
    private static final long GRACE_WINDOW_TIME_MS = 10000;
    private static final String KEY_PREFIX_FRAGMENT = "f#";
    private static final String KEY_PREFIX_STATE = "s#";
    FragmentStateAdapter$FragmentEventDispatcher mFragmentEventDispatcher;
    final FragmentManager mFragmentManager;
    private FragmentStateAdapter$FragmentMaxLifecycleEnforcer mFragmentMaxLifecycleEnforcer;
    final LongSparseArray<Fragment> mFragments;
    private boolean mHasStaleFragments;
    boolean mIsInGracePeriod;
    private final LongSparseArray<Integer> mItemIdToViewHolder;
    final Lifecycle mLifecycle;
    private final LongSparseArray<Fragment$SavedState> mSavedStates;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public FragmentStateAdapter(@NonNull FragmentManager fragmentManager, @NonNull Lifecycle lifecycle) {
        this.mFragments = new LongSparseArray<>();
        this.mSavedStates = new LongSparseArray<>();
        this.mItemIdToViewHolder = new LongSparseArray<>();
        this.mFragmentEventDispatcher = new FragmentStateAdapter$FragmentEventDispatcher();
        this.mIsInGracePeriod = false;
        this.mHasStaleFragments = false;
        this.mFragmentManager = fragmentManager;
        this.mLifecycle = lifecycle;
        super.setHasStableIds(true);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    private static String createKey(@NonNull String str, long j9) {
        return str + j9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void ensureFragment(int i9) {
        long itemId = getItemId(i9);
        if (this.mFragments.containsKey(itemId)) {
            return;
        }
        Fragment fragmentCreateFragment = createFragment(i9);
        fragmentCreateFragment.setInitialSavedState(this.mSavedStates.get(itemId));
        this.mFragments.put(itemId, fragmentCreateFragment);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private boolean isFragmentViewBound(long j9) {
        View view;
        if (this.mItemIdToViewHolder.containsKey(j9)) {
            return true;
        }
        Fragment fragment = this.mFragments.get(j9);
        return (fragment == null || (view = fragment.getView()) == null || view.getParent() == null) ? false : true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static boolean isValidKey(@NonNull String str, @NonNull String str2) {
        return str.startsWith(str2) && str.length() > str2.length();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private Long itemForViewHolder(int i9) {
        Long lValueOf = null;
        for (int i10 = 0; i10 < this.mItemIdToViewHolder.size(); i10++) {
            if (this.mItemIdToViewHolder.valueAt(i10).intValue() == i9) {
                if (lValueOf != null) {
                    i.l("Design assumption violated: a ViewHolder can only be bound to one item at a time.");
                    return null;
                }
                lValueOf = Long.valueOf(this.mItemIdToViewHolder.keyAt(i10));
            }
        }
        return lValueOf;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static long parseIdFromKey(@NonNull String str, @NonNull String str2) {
        return Long.parseLong(str.substring(str2.length()));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void removeFragment(long j9) {
        ViewParent parent;
        Fragment fragment = this.mFragments.get(j9);
        if (fragment == null) {
            return;
        }
        if (fragment.getView() != null && (parent = fragment.getView().getParent()) != null) {
            ((FrameLayout) parent).removeAllViews();
        }
        if (!containsItem(j9)) {
            this.mSavedStates.remove(j9);
        }
        if (!fragment.isAdded()) {
            this.mFragments.remove(j9);
            return;
        }
        if (shouldDelayFragmentTransactions()) {
            this.mHasStaleFragments = true;
            return;
        }
        if (fragment.isAdded() && containsItem(j9)) {
            List<FragmentStateAdapter$FragmentTransactionCallback$OnPostEventListener> listDispatchPreSavedInstanceState = this.mFragmentEventDispatcher.dispatchPreSavedInstanceState(fragment);
            Fragment$SavedState fragment$SavedStateSaveFragmentInstanceState = this.mFragmentManager.saveFragmentInstanceState(fragment);
            this.mFragmentEventDispatcher.dispatchPostEvents(listDispatchPreSavedInstanceState);
            this.mSavedStates.put(j9, fragment$SavedStateSaveFragmentInstanceState);
        }
        List<FragmentStateAdapter$FragmentTransactionCallback$OnPostEventListener> listDispatchPreRemoved = this.mFragmentEventDispatcher.dispatchPreRemoved(fragment);
        try {
            this.mFragmentManager.beginTransaction().remove(fragment).commitNow();
            this.mFragments.remove(j9);
        } finally {
            this.mFragmentEventDispatcher.dispatchPostEvents(listDispatchPreRemoved);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void scheduleGracePeriodEnd() {
        Handler handler = new Handler(Looper.getMainLooper());
        FragmentStateAdapter$3 fragmentStateAdapter$3 = new FragmentStateAdapter$3(this);
        this.mLifecycle.addObserver(new FragmentStateAdapter$4(this, handler, fragmentStateAdapter$3));
        handler.postDelayed(fragmentStateAdapter$3, GRACE_WINDOW_TIME_MS);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void scheduleViewAttach(Fragment fragment, @NonNull FrameLayout frameLayout) {
        this.mFragmentManager.registerFragmentLifecycleCallbacks(new FragmentStateAdapter$2(this, fragment, frameLayout), false);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addViewToContainer(@NonNull View view, @NonNull FrameLayout frameLayout) {
        if (frameLayout.getChildCount() > 1) {
            i.l("Design assumption violated.");
            return;
        }
        if (view.getParent() == frameLayout) {
            return;
        }
        if (frameLayout.getChildCount() > 0) {
            frameLayout.removeAllViews();
        }
        if (view.getParent() != null) {
            ((ViewGroup) view.getParent()).removeView(view);
        }
        frameLayout.addView(view);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean containsItem(long j9) {
        return j9 >= 0 && j9 < ((long) getItemCount());
    }

    @NonNull
    public abstract Fragment createFragment(int i9);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void gcFragments() {
        if (!this.mHasStaleFragments || shouldDelayFragmentTransactions()) {
            return;
        }
        ArraySet arraySet = new ArraySet();
        for (int i9 = 0; i9 < this.mFragments.size(); i9++) {
            long jKeyAt = this.mFragments.keyAt(i9);
            if (!containsItem(jKeyAt)) {
                arraySet.add(Long.valueOf(jKeyAt));
                this.mItemIdToViewHolder.remove(jKeyAt);
            }
        }
        if (!this.mIsInGracePeriod) {
            this.mHasStaleFragments = false;
            for (int i10 = 0; i10 < this.mFragments.size(); i10++) {
                long jKeyAt2 = this.mFragments.keyAt(i10);
                if (!isFragmentViewBound(jKeyAt2)) {
                    arraySet.add(Long.valueOf(jKeyAt2));
                }
            }
        }
        Iterator<E> it = arraySet.iterator();
        while (it.hasNext()) {
            removeFragment(((Long) it.next()).longValue());
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$Adapter
    public long getItemId(int i9) {
        return i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$Adapter
    @CallSuper
    public void onAttachedToRecyclerView(@NonNull RecyclerView recyclerView) {
        Preconditions.checkArgument(this.mFragmentMaxLifecycleEnforcer == null);
        FragmentStateAdapter$FragmentMaxLifecycleEnforcer fragmentStateAdapter$FragmentMaxLifecycleEnforcer = new FragmentStateAdapter$FragmentMaxLifecycleEnforcer(this);
        this.mFragmentMaxLifecycleEnforcer = fragmentStateAdapter$FragmentMaxLifecycleEnforcer;
        fragmentStateAdapter$FragmentMaxLifecycleEnforcer.register(recyclerView);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void onBindViewHolder(@NonNull FragmentViewHolder fragmentViewHolder, int i9) {
        long itemId = fragmentViewHolder.getItemId();
        int id = fragmentViewHolder.getContainer().getId();
        Long lItemForViewHolder = itemForViewHolder(id);
        if (lItemForViewHolder != null && lItemForViewHolder.longValue() != itemId) {
            removeFragment(lItemForViewHolder.longValue());
            this.mItemIdToViewHolder.remove(lItemForViewHolder.longValue());
        }
        this.mItemIdToViewHolder.put(itemId, Integer.valueOf(id));
        ensureFragment(i9);
        if (ViewCompat.isAttachedToWindow(fragmentViewHolder.getContainer())) {
            placeFragmentInViewHolder(fragmentViewHolder);
        }
        gcFragments();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$Adapter
    @NonNull
    public /* bridge */ /* synthetic */ RecyclerView$ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i9) {
        return onCreateViewHolder(viewGroup, i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$Adapter
    @CallSuper
    public void onDetachedFromRecyclerView(@NonNull RecyclerView recyclerView) {
        this.mFragmentMaxLifecycleEnforcer.unregister(recyclerView);
        this.mFragmentMaxLifecycleEnforcer = null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$Adapter
    public /* bridge */ /* synthetic */ boolean onFailedToRecycleView(@NonNull RecyclerView$ViewHolder recyclerView$ViewHolder) {
        return onFailedToRecycleView((FragmentViewHolder) recyclerView$ViewHolder);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void onViewAttachedToWindow(@NonNull FragmentViewHolder fragmentViewHolder) {
        placeFragmentInViewHolder(fragmentViewHolder);
        gcFragments();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void onViewRecycled(@NonNull FragmentViewHolder fragmentViewHolder) {
        Long lItemForViewHolder = itemForViewHolder(fragmentViewHolder.getContainer().getId());
        if (lItemForViewHolder != null) {
            removeFragment(lItemForViewHolder.longValue());
            this.mItemIdToViewHolder.remove(lItemForViewHolder.longValue());
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void placeFragmentInViewHolder(@NonNull FragmentViewHolder fragmentViewHolder) {
        Fragment fragment = this.mFragments.get(fragmentViewHolder.getItemId());
        if (fragment == null) {
            i.l("Design assumption violated.");
            return;
        }
        FrameLayout container = fragmentViewHolder.getContainer();
        View view = fragment.getView();
        if (!fragment.isAdded() && view != null) {
            i.l("Design assumption violated.");
            return;
        }
        if (fragment.isAdded() && view == null) {
            scheduleViewAttach(fragment, container);
            return;
        }
        if (fragment.isAdded() && view.getParent() != null) {
            if (view.getParent() != container) {
                addViewToContainer(view, container);
                return;
            }
            return;
        }
        if (fragment.isAdded()) {
            addViewToContainer(view, container);
            return;
        }
        if (shouldDelayFragmentTransactions()) {
            if (this.mFragmentManager.isDestroyed()) {
                return;
            }
            this.mLifecycle.addObserver(new FragmentStateAdapter$1(this, fragmentViewHolder));
            return;
        }
        scheduleViewAttach(fragment, container);
        List<FragmentStateAdapter$FragmentTransactionCallback$OnPostEventListener> listDispatchPreAdded = this.mFragmentEventDispatcher.dispatchPreAdded(fragment);
        try {
            fragment.setMenuVisibility(false);
            this.mFragmentManager.beginTransaction().add(fragment, "f" + fragmentViewHolder.getItemId()).setMaxLifecycle(fragment, Lifecycle$State.STARTED).commitNow();
            this.mFragmentMaxLifecycleEnforcer.updateFragmentMaxLifecycle(false);
        } finally {
            this.mFragmentEventDispatcher.dispatchPostEvents(listDispatchPreAdded);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void registerFragmentTransactionCallback(@NonNull FragmentStateAdapter$FragmentTransactionCallback fragmentStateAdapter$FragmentTransactionCallback) {
        this.mFragmentEventDispatcher.registerCallback(fragmentStateAdapter$FragmentTransactionCallback);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.viewpager2.adapter.StatefulAdapter
    public final void restoreState(@NonNull Parcelable parcelable) {
        if (!this.mSavedStates.isEmpty() || !this.mFragments.isEmpty()) {
            i.l("Expected the adapter to be 'fresh' while restoring state.");
            return;
        }
        Bundle bundle = (Bundle) parcelable;
        if (bundle.getClassLoader() == null) {
            bundle.setClassLoader(getClass().getClassLoader());
        }
        for (String str : bundle.keySet()) {
            if (isValidKey(str, KEY_PREFIX_FRAGMENT)) {
                this.mFragments.put(parseIdFromKey(str, KEY_PREFIX_FRAGMENT), this.mFragmentManager.getFragment(bundle, str));
            } else {
                if (!isValidKey(str, KEY_PREFIX_STATE)) {
                    i.k(a.l("Unexpected key in savedState: ", str));
                    return;
                }
                long idFromKey = parseIdFromKey(str, KEY_PREFIX_STATE);
                Fragment$SavedState fragment$SavedState = (Fragment$SavedState) bundle.getParcelable(str);
                if (containsItem(idFromKey)) {
                    this.mSavedStates.put(idFromKey, fragment$SavedState);
                }
            }
        }
        if (this.mFragments.isEmpty()) {
            return;
        }
        this.mHasStaleFragments = true;
        this.mIsInGracePeriod = true;
        gcFragments();
        scheduleGracePeriodEnd();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.viewpager2.adapter.StatefulAdapter
    @NonNull
    public final Parcelable saveState() {
        Bundle bundle = new Bundle(this.mSavedStates.size() + this.mFragments.size());
        for (int i9 = 0; i9 < this.mFragments.size(); i9++) {
            long jKeyAt = this.mFragments.keyAt(i9);
            Fragment fragment = this.mFragments.get(jKeyAt);
            if (fragment != null && fragment.isAdded()) {
                this.mFragmentManager.putFragment(bundle, createKey(KEY_PREFIX_FRAGMENT, jKeyAt), fragment);
            }
        }
        for (int i10 = 0; i10 < this.mSavedStates.size(); i10++) {
            long jKeyAt2 = this.mSavedStates.keyAt(i10);
            if (containsItem(jKeyAt2)) {
                bundle.putParcelable(createKey(KEY_PREFIX_STATE, jKeyAt2), this.mSavedStates.get(jKeyAt2));
            }
        }
        return bundle;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$Adapter
    public final void setHasStableIds(boolean z8) {
        throw new UnsupportedOperationException("Stable Ids are required for the adapter to function properly, and the adapter takes care of setting the flag.");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean shouldDelayFragmentTransactions() {
        return this.mFragmentManager.isStateSaved();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void unregisterFragmentTransactionCallback(@NonNull FragmentStateAdapter$FragmentTransactionCallback fragmentStateAdapter$FragmentTransactionCallback) {
        this.mFragmentEventDispatcher.unregisterCallback(fragmentStateAdapter$FragmentTransactionCallback);
    }

    @Override // androidx.recyclerview.widget.RecyclerView$Adapter
    @NonNull
    public final FragmentViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i9) {
        return FragmentViewHolder.create(viewGroup);
    }

    public final boolean onFailedToRecycleView(@NonNull FragmentViewHolder fragmentViewHolder) {
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView$Adapter
    public /* bridge */ /* synthetic */ void onViewAttachedToWindow(@NonNull RecyclerView$ViewHolder recyclerView$ViewHolder) {
        onViewAttachedToWindow((FragmentViewHolder) recyclerView$ViewHolder);
    }

    @Override // androidx.recyclerview.widget.RecyclerView$Adapter
    public /* bridge */ /* synthetic */ void onViewRecycled(@NonNull RecyclerView$ViewHolder recyclerView$ViewHolder) {
        onViewRecycled((FragmentViewHolder) recyclerView$ViewHolder);
    }

    public FragmentStateAdapter(@NonNull Fragment fragment) {
        this(fragment.getChildFragmentManager(), fragment.getLifecycle());
    }

    public FragmentStateAdapter(@NonNull FragmentActivity fragmentActivity) {
        this(fragmentActivity.getSupportFragmentManager(), fragmentActivity.getLifecycle());
    }

    @Override // androidx.recyclerview.widget.RecyclerView$Adapter
    public /* bridge */ /* synthetic */ void onBindViewHolder(@NonNull RecyclerView$ViewHolder recyclerView$ViewHolder, int i9) {
        onBindViewHolder((FragmentViewHolder) recyclerView$ViewHolder, i9);
    }
}
