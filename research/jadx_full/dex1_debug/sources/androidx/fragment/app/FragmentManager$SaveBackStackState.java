package androidx.fragment.app;

import androidx.annotation.NonNull;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class FragmentManager$SaveBackStackState implements FragmentManager$OpGenerator {
    private final String mName;
    final /* synthetic */ FragmentManager this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public FragmentManager$SaveBackStackState(@NonNull FragmentManager fragmentManager, String str) {
        this.this$0 = fragmentManager;
        this.mName = str;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.FragmentManager$OpGenerator
    public boolean generateOps(@NonNull ArrayList<BackStackRecord> arrayList, @NonNull ArrayList<Boolean> arrayList2) {
        return this.this$0.saveBackStackState(arrayList, arrayList2, this.mName);
    }
}
