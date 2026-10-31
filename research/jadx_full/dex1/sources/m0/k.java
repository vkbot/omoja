package m0;

import android.widget.CompoundButton;
import android.widget.CompoundButton$OnCheckedChangeListener;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class k implements CompoundButton$OnCheckedChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3487a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ o f3488b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ k(o oVar, int i9) {
        this.f3487a = i9;
        this.f3488b = oVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.CompoundButton$OnCheckedChangeListener
    public final void onCheckedChanged(CompoundButton compoundButton, boolean z8) {
        int i9 = this.f3487a;
        o oVar = this.f3488b;
        switch (i9) {
            case 0:
                String str = o.f3550g;
                h0.b.o().saveBoolean(e0.m.h(new byte[]{-83, -52, 123, -31, 51, 28, 55, -60, -86, -50, 106, -43, 42, 24, 43, -60, -77, -48, 100, -45, 35, 59, 42, -62, -119, -54, 110, -64, 6, 13, 53}, new byte[]{-20, -68, 11, -78, 71, 125, 69, -80}), z8);
                oVar.v();
                break;
            default:
                String str2 = o.f3550g;
                h0.b.o().saveBoolean(o.f3550g, z8);
                oVar.v();
                break;
        }
    }
}
