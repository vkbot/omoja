package androidx.fragment.app;

import android.content.Intent;
import android.content.res.Configuration;
import androidx.core.util.Consumer;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class f implements Consumer {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f186b;
    public final /* synthetic */ FragmentActivity c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ f(FragmentActivity fragmentActivity, int i9) {
        this.f186b = i9;
        this.c = fragmentActivity;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.util.Consumer
    public final void accept(Object obj) {
        switch (this.f186b) {
            case 0:
                FragmentActivity.o(this.c, (Configuration) obj);
                break;
            default:
                FragmentActivity.r(this.c, (Intent) obj);
                break;
        }
    }
}
