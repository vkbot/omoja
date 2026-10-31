package e4;

import android.os.SystemClock;
import android.widget.AutoCompleteTextView$OnDismissListener;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class j implements AutoCompleteTextView$OnDismissListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ l f2056a;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ j(l lVar) {
        this.f2056a = lVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.AutoCompleteTextView$OnDismissListener
    public final void onDismiss() {
        l lVar = this.f2056a;
        lVar.f2065m = true;
        lVar.f2067o = SystemClock.uptimeMillis();
        lVar.s(false);
    }
}
