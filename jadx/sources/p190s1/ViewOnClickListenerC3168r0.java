package p190s1;

import android.view.View;
import p051e4.C1482o;

/* JADX INFO: renamed from: s1.r0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ViewOnClickListenerC3168r0 implements View.OnClickListener {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f9202b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ C3174u0 f9203c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ String f9204d;

    public /* synthetic */ ViewOnClickListenerC3168r0(C3174u0 c3174u0, String str, int i10) {
        this.f9202b = i10;
        this.f9203c = c3174u0;
        this.f9204d = str;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        switch (this.f9202b) {
            case 0:
                C3174u0 c3174u0 = this.f9203c;
                if (!c3174u0.f9232o) {
                    String str = c3174u0.f9234q;
                    String str2 = this.f9204d;
                    if (str == null || str.equals(str2)) {
                        if (c3174u0.f9234q != null) {
                            str2 = null;
                        }
                        c3174u0.f9234q = str2;
                        c3174u0.m5094i();
                        c3174u0.m5099n();
                    } else {
                        c3174u0.m5091f(new C1482o(c3174u0.f9234q, str2, c3174u0.f9235r, c3174u0.f9236s));
                    }
                    break;
                }
                break;
            default:
                this.f9203c.m5091f(new C1482o(this.f9204d, null, 2, 50));
                break;
        }
    }
}
