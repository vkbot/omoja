package m0;

import android.view.View;
import android.view.View$OnClickListener;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class o1 implements View$OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f3555b;
    public final /* synthetic */ q1 c;
    public final /* synthetic */ p1 d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ o1(q1 q1Var, p1 p1Var, int i9) {
        this.f3555b = i9;
        this.c = q1Var;
        this.d = p1Var;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View$OnClickListener
    public final void onClick(View view) {
        androidx.fragment.app.h hVar;
        e0 e0Var;
        ArrayList arrayList;
        int i9 = this.f3555b;
        p1 p1Var = this.d;
        q1 q1Var = this.c;
        switch (i9) {
            case 0:
                int adapterPosition = p1Var.getAdapterPosition();
                if (adapterPosition != -1 && (hVar = q1Var.c) != null && (arrayList = (e0Var = (e0) hVar.c).f3392n) != null && adapterPosition >= 0 && adapterPosition < arrayList.size()) {
                    e0Var.f3396s = adapterPosition;
                    q1 q1Var2 = e0Var.f3391m;
                    if (q1Var2 != null) {
                        q1Var2.a(adapterPosition);
                    }
                    TextView textView = e0Var.f3386h;
                    if (textView != null) {
                        textView.setText(e0.m.h(new byte[]{3, -88, -8, 38, -95, 103, -56, -124, 3, -115, -7, 20, -95, 100, 56, -24, 110, -28, -85, 70, -57, 1, -91, -23, 80, -28, -90, -74, -95, 107, -56, -123, 3, -117, -8, 41, -95, 107, -55, -69, -13, -27, -107, 70, -63, -15, -56, -121, 3, -123, -8, 43, -95, 100, -56, -125, 3, -115}, new byte[]{-45, 53, 40, -106, 113, -47, 24, 56}));
                    }
                    break;
                }
                break;
            default:
                List list = q1Var.f3568a;
                int adapterPosition2 = p1Var.getAdapterPosition();
                if (adapterPosition2 != -1) {
                    list.remove(adapterPosition2);
                    q1Var.notifyItemRemoved(adapterPosition2);
                    q1Var.notifyItemRangeChanged(adapterPosition2, list.size());
                    f5.j jVar = q1Var.d;
                    if (jVar != null) {
                        jVar.run();
                    }
                }
                break;
        }
    }
}
