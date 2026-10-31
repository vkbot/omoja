package androidx.fragment.app;

import android.view.View;
import androidx.annotation.Nullable;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class Fragment$5 extends FragmentContainer {
    final /* synthetic */ Fragment this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Fragment$5(Fragment fragment) {
        this.this$0 = fragment;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.FragmentContainer
    @Nullable
    public View onFindViewById(int i9) {
        View view = this.this$0.mView;
        if (view != null) {
            return view.findViewById(i9);
        }
        n0.b.j(this.this$0, "Fragment ", " does not have a view");
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.FragmentContainer
    public boolean onHasView() {
        return this.this$0.mView != null;
    }
}
