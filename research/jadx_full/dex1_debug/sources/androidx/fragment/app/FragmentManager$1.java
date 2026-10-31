package androidx.fragment.app;

import androidx.activity.OnBackPressedCallback;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class FragmentManager$1 extends OnBackPressedCallback {
    final /* synthetic */ FragmentManager this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FragmentManager$1(FragmentManager fragmentManager, boolean z8) {
        super(z8);
        this.this$0 = fragmentManager;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.activity.OnBackPressedCallback
    public void handleOnBackPressed() {
        this.this$0.handleOnBackPressed();
    }
}
