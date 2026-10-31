package androidx.viewpager2.adapter;

import android.os.Bundle;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentManager$FragmentLifecycleCallbacks;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class FragmentStateAdapter$2 extends FragmentManager$FragmentLifecycleCallbacks {
    final /* synthetic */ FragmentStateAdapter this$0;
    final /* synthetic */ FrameLayout val$container;
    final /* synthetic */ Fragment val$fragment;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public FragmentStateAdapter$2(FragmentStateAdapter fragmentStateAdapter, Fragment fragment, FrameLayout frameLayout) {
        this.this$0 = fragmentStateAdapter;
        this.val$fragment = fragment;
        this.val$container = frameLayout;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.FragmentManager$FragmentLifecycleCallbacks
    public void onFragmentViewCreated(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment, @NonNull View view, @Nullable Bundle bundle) {
        if (fragment == this.val$fragment) {
            fragmentManager.unregisterFragmentLifecycleCallbacks(this);
            this.this$0.addViewToContainer(view, this.val$container);
        }
    }
}
