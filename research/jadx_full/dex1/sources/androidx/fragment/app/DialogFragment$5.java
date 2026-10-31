package androidx.fragment.app;

import android.view.View;
import androidx.annotation.Nullable;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class DialogFragment$5 extends FragmentContainer {
    final /* synthetic */ DialogFragment this$0;
    final /* synthetic */ FragmentContainer val$fragmentContainer;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public DialogFragment$5(DialogFragment dialogFragment, FragmentContainer fragmentContainer) {
        this.this$0 = dialogFragment;
        this.val$fragmentContainer = fragmentContainer;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.FragmentContainer
    @Nullable
    public View onFindViewById(int i9) {
        return this.val$fragmentContainer.onHasView() ? this.val$fragmentContainer.onFindViewById(i9) : this.this$0.onFindViewById(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.FragmentContainer
    public boolean onHasView() {
        return this.val$fragmentContainer.onHasView() || this.this$0.onHasView();
    }
}
