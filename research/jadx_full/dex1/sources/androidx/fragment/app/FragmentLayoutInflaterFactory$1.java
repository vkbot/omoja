package androidx.fragment.app;

import android.view.View;
import android.view.View$OnAttachStateChangeListener;
import android.view.ViewGroup;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class FragmentLayoutInflaterFactory$1 implements View$OnAttachStateChangeListener {
    final /* synthetic */ FragmentLayoutInflaterFactory this$0;
    final /* synthetic */ FragmentStateManager val$fragmentStateManager;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Incorrect args count in method signature: ()V */
    public FragmentLayoutInflaterFactory$1(FragmentLayoutInflaterFactory fragmentLayoutInflaterFactory, FragmentStateManager fragmentStateManager) {
        this.this$0 = fragmentLayoutInflaterFactory;
        this.val$fragmentStateManager = fragmentStateManager;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View$OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
        Fragment fragment = this.val$fragmentStateManager.getFragment();
        this.val$fragmentStateManager.moveToExpectedState();
        SpecialEffectsController.getOrCreateController((ViewGroup) fragment.mView.getParent(), this.this$0.mFragmentManager).forceCompleteAllOperations();
    }

    @Override // android.view.View$OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
    }
}
