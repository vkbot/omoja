package p058f1;

import android.view.View;

/* JADX INFO: renamed from: f1.c */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ViewOnClickListenerC1530c implements View.OnClickListener {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f3754b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ Runnable f3755c;

    public /* synthetic */ ViewOnClickListenerC1530c(Runnable runnable, int i10) {
        this.f3754b = i10;
        this.f3755c = runnable;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i10 = this.f3754b;
        Runnable runnable = this.f3755c;
        switch (i10) {
            case 0:
                int i11 = C1532e.f3757q;
                runnable.run();
                break;
            default:
                runnable.run();
                break;
        }
    }
}
