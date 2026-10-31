package androidx.viewpager2.widget;

import android.R$id;
import android.os.Bundle;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat$AccessibilityActionCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat$CollectionInfoCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat$CollectionItemInfoCompat;
import androidx.core.view.accessibility.AccessibilityViewCommand;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerView$Adapter;
import androidx.recyclerview.widget.RecyclerView$AdapterDataObserver;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ViewPager2$PageAwareAccessibilityProvider extends ViewPager2$AccessibilityProvider {
    private final AccessibilityViewCommand mActionPageBackward;
    private final AccessibilityViewCommand mActionPageForward;
    private RecyclerView$AdapterDataObserver mAdapterDataObserver;
    final /* synthetic */ ViewPager2 this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ViewPager2$PageAwareAccessibilityProvider(ViewPager2 viewPager2) {
        super(viewPager2, null);
        this.this$0 = viewPager2;
        this.mActionPageForward = new ViewPager2$PageAwareAccessibilityProvider$1(this);
        this.mActionPageBackward = new ViewPager2$PageAwareAccessibilityProvider$2(this);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void addCollectionInfo(AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        int itemCount;
        int itemCount2;
        if (this.this$0.getAdapter() != null) {
            int orientation = this.this$0.getOrientation();
            ViewPager2 viewPager2 = this.this$0;
            itemCount2 = 1;
            if (orientation == 1) {
                itemCount2 = viewPager2.getAdapter().getItemCount();
                itemCount = 1;
            } else {
                itemCount = viewPager2.getAdapter().getItemCount();
            }
        } else {
            itemCount = 0;
            itemCount2 = 0;
        }
        accessibilityNodeInfoCompat.setCollectionInfo(AccessibilityNodeInfoCompat$CollectionInfoCompat.obtain(itemCount2, itemCount, false, 0));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void addCollectionItemInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        accessibilityNodeInfoCompat.setCollectionItemInfo(AccessibilityNodeInfoCompat$CollectionItemInfoCompat.obtain(this.this$0.getOrientation() == 1 ? this.this$0.mLayoutManager.getPosition(view) : 0, 1, this.this$0.getOrientation() == 0 ? this.this$0.mLayoutManager.getPosition(view) : 0, 1, false, false));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void addScrollActions(AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        int itemCount;
        RecyclerView$Adapter adapter = this.this$0.getAdapter();
        if (adapter == null || (itemCount = adapter.getItemCount()) == 0 || !this.this$0.isUserInputEnabled()) {
            return;
        }
        if (this.this$0.mCurrentItem > 0) {
            accessibilityNodeInfoCompat.addAction(8192);
        }
        if (this.this$0.mCurrentItem < itemCount - 1) {
            accessibilityNodeInfoCompat.addAction(4096);
        }
        accessibilityNodeInfoCompat.setScrollable(true);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.viewpager2.widget.ViewPager2$AccessibilityProvider
    public boolean handlesGetAccessibilityClassName() {
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.viewpager2.widget.ViewPager2$AccessibilityProvider
    public boolean handlesPerformAccessibilityAction(int i9, Bundle bundle) {
        return i9 == 8192 || i9 == 4096;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.viewpager2.widget.ViewPager2$AccessibilityProvider
    public void onAttachAdapter(@Nullable RecyclerView$Adapter<?> recyclerView$Adapter) {
        updatePageAccessibilityActions();
        if (recyclerView$Adapter != null) {
            recyclerView$Adapter.registerAdapterDataObserver(this.mAdapterDataObserver);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.viewpager2.widget.ViewPager2$AccessibilityProvider
    public void onDetachAdapter(@Nullable RecyclerView$Adapter<?> recyclerView$Adapter) {
        if (recyclerView$Adapter != null) {
            recyclerView$Adapter.unregisterAdapterDataObserver(this.mAdapterDataObserver);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.viewpager2.widget.ViewPager2$AccessibilityProvider
    public String onGetAccessibilityClassName() {
        if (handlesGetAccessibilityClassName()) {
            return "androidx.viewpager.widget.ViewPager";
        }
        throw new IllegalStateException();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.viewpager2.widget.ViewPager2$AccessibilityProvider
    public void onInitialize(@NonNull CompositeOnPageChangeCallback compositeOnPageChangeCallback, @NonNull RecyclerView recyclerView) {
        ViewCompat.setImportantForAccessibility(recyclerView, 2);
        this.mAdapterDataObserver = new ViewPager2$PageAwareAccessibilityProvider$3(this);
        if (ViewCompat.getImportantForAccessibility(this.this$0) == 0) {
            ViewCompat.setImportantForAccessibility(this.this$0, 1);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.viewpager2.widget.ViewPager2$AccessibilityProvider
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        AccessibilityNodeInfoCompat accessibilityNodeInfoCompatWrap = AccessibilityNodeInfoCompat.wrap(accessibilityNodeInfo);
        addCollectionInfo(accessibilityNodeInfoCompatWrap);
        addScrollActions(accessibilityNodeInfoCompatWrap);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.viewpager2.widget.ViewPager2$AccessibilityProvider
    public void onLmInitializeAccessibilityNodeInfoForItem(@NonNull View view, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        addCollectionItemInfo(view, accessibilityNodeInfoCompat);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.viewpager2.widget.ViewPager2$AccessibilityProvider
    public boolean onPerformAccessibilityAction(int i9, Bundle bundle) {
        if (!handlesPerformAccessibilityAction(i9, bundle)) {
            throw new IllegalStateException();
        }
        ViewPager2 viewPager2 = this.this$0;
        setCurrentItemFromAccessibilityCommand(i9 == 8192 ? viewPager2.getCurrentItem() - 1 : viewPager2.getCurrentItem() + 1);
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.viewpager2.widget.ViewPager2$AccessibilityProvider
    public void onRestorePendingState() {
        updatePageAccessibilityActions();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.viewpager2.widget.ViewPager2$AccessibilityProvider
    public void onRvInitializeAccessibilityEvent(@NonNull AccessibilityEvent accessibilityEvent) {
        accessibilityEvent.setSource(this.this$0);
        accessibilityEvent.setClassName(onGetAccessibilityClassName());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.viewpager2.widget.ViewPager2$AccessibilityProvider
    public void onSetLayoutDirection() {
        updatePageAccessibilityActions();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.viewpager2.widget.ViewPager2$AccessibilityProvider
    public void onSetNewCurrentItem() {
        updatePageAccessibilityActions();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.viewpager2.widget.ViewPager2$AccessibilityProvider
    public void onSetOrientation() {
        updatePageAccessibilityActions();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.viewpager2.widget.ViewPager2$AccessibilityProvider
    public void onSetUserInputEnabled() {
        updatePageAccessibilityActions();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setCurrentItemFromAccessibilityCommand(int i9) {
        if (this.this$0.isUserInputEnabled()) {
            this.this$0.setCurrentItemInternal(i9, true);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void updatePageAccessibilityActions() {
        int itemCount;
        ViewPager2 viewPager2 = this.this$0;
        int i9 = R$id.accessibilityActionPageLeft;
        ViewCompat.removeAccessibilityAction(viewPager2, R$id.accessibilityActionPageLeft);
        ViewCompat.removeAccessibilityAction(viewPager2, R$id.accessibilityActionPageRight);
        ViewCompat.removeAccessibilityAction(viewPager2, R$id.accessibilityActionPageUp);
        ViewCompat.removeAccessibilityAction(viewPager2, R$id.accessibilityActionPageDown);
        if (this.this$0.getAdapter() == null || (itemCount = this.this$0.getAdapter().getItemCount()) == 0 || !this.this$0.isUserInputEnabled()) {
            return;
        }
        int orientation = this.this$0.getOrientation();
        ViewPager2 viewPager3 = this.this$0;
        if (orientation != 0) {
            if (viewPager3.mCurrentItem < itemCount - 1) {
                ViewCompat.replaceAccessibilityAction(viewPager2, new AccessibilityNodeInfoCompat$AccessibilityActionCompat(R$id.accessibilityActionPageDown, null), null, this.mActionPageForward);
            }
            if (this.this$0.mCurrentItem > 0) {
                ViewCompat.replaceAccessibilityAction(viewPager2, new AccessibilityNodeInfoCompat$AccessibilityActionCompat(R$id.accessibilityActionPageUp, null), null, this.mActionPageBackward);
                return;
            }
            return;
        }
        boolean zIsRtl = viewPager3.isRtl();
        int i10 = zIsRtl ? 16908360 : 16908361;
        if (zIsRtl) {
            i9 = 16908361;
        }
        if (this.this$0.mCurrentItem < itemCount - 1) {
            ViewCompat.replaceAccessibilityAction(viewPager2, new AccessibilityNodeInfoCompat$AccessibilityActionCompat(i10, null), null, this.mActionPageForward);
        }
        if (this.this$0.mCurrentItem > 0) {
            ViewCompat.replaceAccessibilityAction(viewPager2, new AccessibilityNodeInfoCompat$AccessibilityActionCompat(i9, null), null, this.mActionPageBackward);
        }
    }
}
