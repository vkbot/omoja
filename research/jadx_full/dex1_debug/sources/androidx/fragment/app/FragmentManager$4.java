package androidx.fragment.app;

import android.view.ViewGroup;
import androidx.annotation.NonNull;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class FragmentManager$4 implements SpecialEffectsControllerFactory {
    final /* synthetic */ FragmentManager this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public FragmentManager$4(FragmentManager fragmentManager) {
        this.this$0 = fragmentManager;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.SpecialEffectsControllerFactory
    @NonNull
    public SpecialEffectsController createController(@NonNull ViewGroup viewGroup) {
        return new DefaultSpecialEffectsController(viewGroup);
    }
}
