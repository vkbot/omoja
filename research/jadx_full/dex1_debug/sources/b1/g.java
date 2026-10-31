package b1;

import android.view.View;
import android.view.View$OnLongClickListener;
import androidx.fragment.app.Fragment;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class g implements View$OnLongClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f252b;
    public final /* synthetic */ Fragment c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ g(Fragment fragment, int i9) {
        this.f252b = i9;
        this.c = fragment;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View$OnLongClickListener
    public final boolean onLongClick(View view) {
        switch (this.f252b) {
            case 0:
                ((h) this.c).f257f.c();
                break;
            case 1:
                ((f0.a) this.c).f2153b.c();
                break;
            case 2:
                ((f0.d) this.c).f2156b.c();
                break;
            default:
                ((f0.e) this.c).f2157b.c();
                break;
        }
        return true;
    }
}
