package p022b7;

import android.content.DialogInterface;
import com.example.navistart.SuperWidgets.WidgetBuilderFragment;
import java.util.ArrayList;
import p132m0.C2331n3;
import p132m0.C2343q2;

/* JADX INFO: renamed from: b7.h */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class DialogInterfaceOnClickListenerC0912h implements DialogInterface.OnClickListener {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f736b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ Object f737c;

    public /* synthetic */ DialogInterfaceOnClickListenerC0912h(int i10, Object obj) {
        this.f736b = i10;
        this.f737c = obj;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i10) {
        switch (this.f736b) {
            case 0:
                ((C0914j) this.f737c).f740a.finish();
                break;
            case 1:
                ((C2343q2) this.f737c).m3721t();
                break;
            case 2:
                ((Runnable) ((ArrayList) this.f737c).get(i10)).run();
                break;
            case 3:
                C2331n3 c2331n3 = (C2331n3) this.f737c;
                c2331n3.f6264m = c2331n3.f6269r;
                c2331n3.m3714w();
                break;
            default:
                ((WidgetBuilderFragment) this.f737c).lambda$editor$27(dialogInterface, i10);
                break;
        }
    }
}
