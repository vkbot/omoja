package androidx.fragment.app;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class FragmentManager$PopBackStackState implements FragmentManager$OpGenerator {
    final int mFlags;
    final int mId;
    final String mName;
    final /* synthetic */ FragmentManager this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public FragmentManager$PopBackStackState(@Nullable FragmentManager fragmentManager, String str, int i9, int i10) {
        this.this$0 = fragmentManager;
        this.mName = str;
        this.mId = i9;
        this.mFlags = i10;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.FragmentManager$OpGenerator
    public boolean generateOps(@NonNull ArrayList<BackStackRecord> arrayList, @NonNull ArrayList<Boolean> arrayList2) {
        Fragment fragment = this.this$0.mPrimaryNav;
        if (fragment == null || this.mId >= 0 || this.mName != null || !fragment.getChildFragmentManager().popBackStackImmediate()) {
            return this.this$0.popBackStackState(arrayList, arrayList2, this.mName, this.mId, this.mFlags);
        }
        return false;
    }
}
