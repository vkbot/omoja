package androidx.fragment.app;

import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import androidx.annotation.NonNull;
import androidx.core.view.MenuProvider;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class FragmentManager$2 implements MenuProvider {
    final /* synthetic */ FragmentManager this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public FragmentManager$2(FragmentManager fragmentManager) {
        this.this$0 = fragmentManager;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.MenuProvider
    public void onCreateMenu(@NonNull Menu menu, @NonNull MenuInflater menuInflater) {
        this.this$0.dispatchCreateOptionsMenu(menu, menuInflater);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.MenuProvider
    public void onMenuClosed(@NonNull Menu menu) {
        this.this$0.dispatchOptionsMenuClosed(menu);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.MenuProvider
    public boolean onMenuItemSelected(@NonNull MenuItem menuItem) {
        return this.this$0.dispatchOptionsItemSelected(menuItem);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.MenuProvider
    public void onPrepareMenu(@NonNull Menu menu) {
        this.this$0.dispatchPrepareOptionsMenu(menu);
    }
}
