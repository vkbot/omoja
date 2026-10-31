package e0;

import android.view.View;
import android.view.View$OnLongClickListener;
import com.example.navistart.VibVodPopUp;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class k3 implements View$OnLongClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f1878b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ k3(int i9) {
        this.f1878b = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View$OnLongClickListener
    public final boolean onLongClick(View view) {
        switch (this.f1878b) {
            case 0:
                h0.b.a();
                h0.b.d().carsavvod(1);
                a.a.v(VibVodPopUp.f888b, VibVodPopUp.c);
                throw null;
            case 1:
                h0.b.a();
                h0.b.d().carsavvod(2);
                a.a.v(VibVodPopUp.f888b, VibVodPopUp.c);
                throw null;
            default:
                h0.b.a();
                h0.b.d().carsavvod(3);
                a.a.v(VibVodPopUp.f888b, VibVodPopUp.c);
                throw null;
        }
    }
}
