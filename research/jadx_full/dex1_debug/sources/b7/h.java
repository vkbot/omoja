package b7;

import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;
import com.example.navistart.SuperWidgets.WidgetBuilderFragment;
import java.util.ArrayList;
import m0.n3;
import m0.q2;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class h implements DialogInterface$OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f360b;
    public final /* synthetic */ Object c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ h(int i9, Object obj) {
        this.f360b = i9;
        this.c = obj;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.content.DialogInterface$OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i9) {
        switch (this.f360b) {
            case 0:
                ((j) this.c).f363a.finish();
                break;
            case 1:
                ((q2) this.c).t();
                break;
            case 2:
                ((Runnable) ((ArrayList) this.c).get(i9)).run();
                break;
            case 3:
                n3 n3Var = (n3) this.c;
                n3Var.f3543m = n3Var.r;
                n3Var.w();
                break;
            default:
                WidgetBuilderFragment.u((WidgetBuilderFragment) this.c, dialogInterface, i9);
                break;
        }
    }
}
