package androidx.viewpager2.adapter;

import ai.onnxruntime.b;
import android.view.ViewParent;
import androidx.annotation.NonNull;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentTransaction;
import androidx.lifecycle.Lifecycle$State;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerView$AdapterDataObserver;
import androidx.viewpager2.widget.ViewPager2;
import androidx.viewpager2.widget.ViewPager2$OnPageChangeCallback;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class FragmentStateAdapter$FragmentMaxLifecycleEnforcer {
    private RecyclerView$AdapterDataObserver mDataObserver;
    private LifecycleEventObserver mLifecycleObserver;
    private ViewPager2$OnPageChangeCallback mPageChangeCallback;
    private long mPrimaryItemId = -1;
    private ViewPager2 mViewPager;
    final /* synthetic */ FragmentStateAdapter this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public FragmentStateAdapter$FragmentMaxLifecycleEnforcer(FragmentStateAdapter fragmentStateAdapter) {
        this.this$0 = fragmentStateAdapter;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    private ViewPager2 inferViewPager(@NonNull RecyclerView recyclerView) {
        ViewParent parent = recyclerView.getParent();
        if (parent instanceof ViewPager2) {
            return (ViewPager2) parent;
        }
        b.q(parent, "Expected ViewPager2 instance. Got: ");
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void register(@NonNull RecyclerView recyclerView) {
        this.mViewPager = inferViewPager(recyclerView);
        FragmentStateAdapter$FragmentMaxLifecycleEnforcer$1 fragmentStateAdapter$FragmentMaxLifecycleEnforcer$1 = new FragmentStateAdapter$FragmentMaxLifecycleEnforcer$1(this);
        this.mPageChangeCallback = fragmentStateAdapter$FragmentMaxLifecycleEnforcer$1;
        this.mViewPager.registerOnPageChangeCallback(fragmentStateAdapter$FragmentMaxLifecycleEnforcer$1);
        FragmentStateAdapter$FragmentMaxLifecycleEnforcer$2 fragmentStateAdapter$FragmentMaxLifecycleEnforcer$2 = new FragmentStateAdapter$FragmentMaxLifecycleEnforcer$2(this);
        this.mDataObserver = fragmentStateAdapter$FragmentMaxLifecycleEnforcer$2;
        this.this$0.registerAdapterDataObserver(fragmentStateAdapter$FragmentMaxLifecycleEnforcer$2);
        FragmentStateAdapter$FragmentMaxLifecycleEnforcer$3 fragmentStateAdapter$FragmentMaxLifecycleEnforcer$3 = new FragmentStateAdapter$FragmentMaxLifecycleEnforcer$3(this);
        this.mLifecycleObserver = fragmentStateAdapter$FragmentMaxLifecycleEnforcer$3;
        this.this$0.mLifecycle.addObserver(fragmentStateAdapter$FragmentMaxLifecycleEnforcer$3);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void unregister(@NonNull RecyclerView recyclerView) {
        inferViewPager(recyclerView).unregisterOnPageChangeCallback(this.mPageChangeCallback);
        this.this$0.unregisterAdapterDataObserver(this.mDataObserver);
        this.this$0.mLifecycle.removeObserver(this.mLifecycleObserver);
        this.mViewPager = null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void updateFragmentMaxLifecycle(boolean z8) {
        int currentItem;
        Fragment fragment;
        if (this.this$0.shouldDelayFragmentTransactions() || this.mViewPager.getScrollState() != 0 || this.this$0.mFragments.isEmpty() || this.this$0.getItemCount() == 0 || (currentItem = this.mViewPager.getCurrentItem()) >= this.this$0.getItemCount()) {
            return;
        }
        long itemId = this.this$0.getItemId(currentItem);
        if ((itemId != this.mPrimaryItemId || z8) && (fragment = this.this$0.mFragments.get(itemId)) != null && fragment.isAdded()) {
            this.mPrimaryItemId = itemId;
            FragmentTransaction fragmentTransactionBeginTransaction = this.this$0.mFragmentManager.beginTransaction();
            ArrayList arrayList = new ArrayList();
            int i9 = 0;
            Fragment fragment2 = null;
            for (int i10 = 0; i10 < this.this$0.mFragments.size(); i10++) {
                long jKeyAt = this.this$0.mFragments.keyAt(i10);
                Fragment fragmentValueAt = this.this$0.mFragments.valueAt(i10);
                if (fragmentValueAt.isAdded()) {
                    if (jKeyAt != this.mPrimaryItemId) {
                        Lifecycle$State lifecycle$State = Lifecycle$State.STARTED;
                        fragmentTransactionBeginTransaction.setMaxLifecycle(fragmentValueAt, lifecycle$State);
                        arrayList.add(this.this$0.mFragmentEventDispatcher.dispatchMaxLifecyclePreUpdated(fragmentValueAt, lifecycle$State));
                    } else {
                        fragment2 = fragmentValueAt;
                    }
                    fragmentValueAt.setMenuVisibility(jKeyAt == this.mPrimaryItemId);
                }
            }
            if (fragment2 != null) {
                Lifecycle$State lifecycle$State2 = Lifecycle$State.RESUMED;
                fragmentTransactionBeginTransaction.setMaxLifecycle(fragment2, lifecycle$State2);
                arrayList.add(this.this$0.mFragmentEventDispatcher.dispatchMaxLifecyclePreUpdated(fragment2, lifecycle$State2));
            }
            if (fragmentTransactionBeginTransaction.isEmpty()) {
                return;
            }
            fragmentTransactionBeginTransaction.commitNow();
            Collections.reverse(arrayList);
            int size = arrayList.size();
            while (i9 < size) {
                Object obj = arrayList.get(i9);
                i9++;
                this.this$0.mFragmentEventDispatcher.dispatchPostEvents((List) obj);
            }
        }
    }
}
