package s1;

import android.view.View;
import android.view.View$OnClickListener;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class c implements View$OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f5066b;
    public final /* synthetic */ k c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ c(k kVar, int i9) {
        this.f5066b = i9;
        this.c = kVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View$OnClickListener
    public final void onClick(View view) {
        switch (this.f5066b) {
            case 0:
                this.c.r();
                break;
            case 1:
                this.c.y();
                break;
            case 2:
                this.c.z();
                break;
            case 3:
                this.c.j(false);
                break;
            default:
                this.c.j(true);
                break;
        }
    }
}
