package p051e4;

import android.view.View;

/* JADX INFO: renamed from: e4.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ViewOnFocusChangeListenerC1465a implements View.OnFocusChangeListener {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f3553b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ AbstractC1484q f3554c;

    public /* synthetic */ ViewOnFocusChangeListenerC1465a(AbstractC1484q abstractC1484q, int i10) {
        this.f3553b = i10;
        this.f3554c = abstractC1484q;
    }

    @Override // android.view.View.OnFocusChangeListener
    public final void onFocusChange(View view, boolean z9) {
        switch (this.f3553b) {
            case 0:
                C1471d c1471d = (C1471d) this.f3554c;
                c1471d.m2530s(c1471d.m2531t());
                break;
            default:
                C1479l c1479l = (C1479l) this.f3554c;
                c1479l.f3588l = z9;
                c1479l.m2559p();
                if (!z9) {
                    c1479l.m2539s(false);
                    c1479l.f3589m = false;
                }
                break;
        }
    }
}
