package p190s1;

import android.view.View;

/* JADX INFO: renamed from: s1.c */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ViewOnClickListenerC3137c implements View.OnClickListener {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f8985b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ C3153k f8986c;

    public /* synthetic */ ViewOnClickListenerC3137c(C3153k c3153k, int i10) {
        this.f8985b = i10;
        this.f8986c = c3153k;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        switch (this.f8985b) {
            case 0:
                this.f8986c.m5006r();
                break;
            case 1:
                this.f8986c.m5012y();
                break;
            case 2:
                this.f8986c.m5013z();
                break;
            case 3:
                this.f8986c.m4998j(false);
                break;
            default:
                this.f8986c.m4998j(true);
                break;
        }
    }
}
