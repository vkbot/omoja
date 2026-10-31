package androidx.navigation;

import android.os.Bundle;
import android.view.View;
import p047e0.AbstractC1387m;
import p058f1.C1532e;

/* JADX INFO: renamed from: androidx.navigation.d */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ViewOnClickListenerC0677d implements View.OnClickListener {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f485b = 0;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ int f486c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ Object f487d;

    public /* synthetic */ ViewOnClickListenerC0677d(int i10, Bundle bundle) {
        this.f486c = i10;
        this.f487d = bundle;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i10 = this.f485b;
        int i11 = this.f486c;
        Object obj = this.f487d;
        switch (i10) {
            case 0:
                Navigation.createNavigateOnClickListener$lambda$0(i11, (Bundle) obj, view);
                break;
            default:
                int i12 = C1532e.f3757q;
                ((C1532e) obj).m2618O(Integer.valueOf(i11), AbstractC1387m.m2421h(new byte[]{-23, -99, 31, 0, -38, 89, 23, -47, -7, -108, 2, 50, -38, 68, 0, -47, -25, -98, 18, 8}, new byte[]{-118, -15, 118, 109, -69, 45, 114, -114}));
                break;
        }
    }

    public /* synthetic */ ViewOnClickListenerC0677d(C1532e c1532e, int i10) {
        this.f487d = c1532e;
        this.f486c = i10;
    }
}
