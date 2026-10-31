package androidx.fragment.app;

import androidx.annotation.NonNull;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class FragmentManager$7 implements FragmentOnAttachListener {
    final /* synthetic */ FragmentManager this$0;
    final /* synthetic */ Fragment val$parent;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Incorrect args count in method signature: ()V */
    public FragmentManager$7(FragmentManager fragmentManager, Fragment fragment) {
        this.this$0 = fragmentManager;
        this.val$parent = fragment;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.FragmentOnAttachListener
    public void onAttachFragment(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment) {
        this.val$parent.onAttachFragment(fragment);
    }
}
