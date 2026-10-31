package androidx.fragment.app;

import android.view.View;
import androidx.core.view.ViewCompat;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class FragmentTransitionImpl$1 implements Runnable {
    final /* synthetic */ FragmentTransitionImpl this$0;
    final /* synthetic */ ArrayList val$inNames;
    final /* synthetic */ int val$numSharedElements;
    final /* synthetic */ ArrayList val$outNames;
    final /* synthetic */ ArrayList val$sharedElementsIn;
    final /* synthetic */ ArrayList val$sharedElementsOut;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Incorrect args count in method signature: ()V */
    public FragmentTransitionImpl$1(FragmentTransitionImpl fragmentTransitionImpl, int i9, ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, ArrayList arrayList4) {
        this.this$0 = fragmentTransitionImpl;
        this.val$numSharedElements = i9;
        this.val$sharedElementsIn = arrayList;
        this.val$inNames = arrayList2;
        this.val$sharedElementsOut = arrayList3;
        this.val$outNames = arrayList4;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public void run() {
        for (int i9 = 0; i9 < this.val$numSharedElements; i9++) {
            ViewCompat.setTransitionName((View) this.val$sharedElementsIn.get(i9), (String) this.val$inNames.get(i9));
            ViewCompat.setTransitionName((View) this.val$sharedElementsOut.get(i9), (String) this.val$outNames.get(i9));
        }
    }
}
