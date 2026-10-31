package androidx.navigation;

import android.os.Bundle;
import android.view.View;
import android.view.View$OnClickListener;
import e0.m;
import f1.e;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class d implements View$OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f202b = 0;
    public final /* synthetic */ int c;
    public final /* synthetic */ Object d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ d(int i9, Bundle bundle) {
        this.c = i9;
        this.d = bundle;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View$OnClickListener
    public final void onClick(View view) {
        int i9 = this.f202b;
        int i10 = this.c;
        Object obj = this.d;
        switch (i9) {
            case 0:
                Navigation.b(i10, (Bundle) obj, view);
                break;
            default:
                int i11 = e.f2162q;
                ((e) obj).O(Integer.valueOf(i10), m.h(new byte[]{-23, -99, 31, 0, -38, 89, 23, -47, -7, -108, 2, 50, -38, 68, 0, -47, -25, -98, 18, 8}, new byte[]{-118, -15, 118, 109, -69, 45, 114, -114}));
                break;
        }
    }

    public /* synthetic */ d(e eVar, int i9) {
        this.d = eVar;
        this.c = i9;
    }
}
