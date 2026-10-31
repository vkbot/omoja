package t1;

import android.content.Context;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class n extends LinearLayout {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TextView f5378b;
    public final l c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public n(Context context) {
        super(context);
        this.c = new l(1, this);
        View.inflate(context, 2131493139, this);
        this.f5378b = (TextView) findViewById(2131297612);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ void a(n nVar, int i9) {
        nVar.setTemperatura(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void setTemperatura(int i9) {
        this.f5378b.setText(i9 + e0.m.h(new byte[]{-94, -84, -51}, new byte[]{96, 28, -114, 89, -99, -8, 119, 102}));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        removeCallbacks(this.c);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public final void onWindowVisibilityChanged(int i9) {
        super.onWindowVisibilityChanged(i9);
        l lVar = this.c;
        if (i9 == 0) {
            post(lVar);
        } else {
            removeCallbacks(lVar);
        }
    }
}
