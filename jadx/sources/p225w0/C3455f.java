package p225w0;

import android.media.AudioManager;
import android.util.Log;
import kotlin.jvm.internal.ByteCompanionObject;
import p047e0.AbstractC1387m;

/* JADX INFO: renamed from: w0.f */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C3455f implements AudioManager.OnModeChangedListener {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f9954a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ InterfaceC3500y f9955b;

    public /* synthetic */ C3455f(InterfaceC3500y interfaceC3500y, int i10) {
        this.f9954a = i10;
        this.f9955b = interfaceC3500y;
    }

    @Override // android.media.AudioManager.OnModeChangedListener
    public final void onModeChanged(int i10) {
        switch (this.f9954a) {
            case 0:
                C3458g c3458g = (C3458g) this.f9955b;
                Log.d(AbstractC1387m.m2421h(new byte[]{-112, 95, -98, 35, -15, -32, 106, -3, -76}, new byte[]{-47, 42, -6, 74, -98, -83, 5, -103}), AbstractC1387m.m2421h(new byte[]{-93, 24, -90, 104, 21, 97, -79}, new byte[]{-50, 119, -62, 13, 53, 92, -111, 21}) + i10);
                if (i10 == 3 || i10 == 2) {
                    c3458g.mo5403b();
                    c3458g.f9977h = true;
                } else if (c3458g.f9977h) {
                    c3458g.mo5404c();
                }
                break;
            case 1:
                C3480o c3480o = (C3480o) this.f9955b;
                Log.d(AbstractC1387m.m2421h(new byte[]{22, -122, -21, -23, 107, -118, -56, 24, 50}, new byte[]{87, -13, -113, ByteCompanionObject.MIN_VALUE, 4, -57, -89, 124}), AbstractC1387m.m2421h(new byte[]{-43, -122, -54, -83, -107, -90, 8}, new byte[]{-72, -23, -82, -56, -75, -101, 40, 73}) + i10);
                if (i10 == 3 || i10 == 2) {
                    c3480o.mo5403b();
                    c3480o.f10170s = true;
                } else if (c3480o.f10170s) {
                    c3480o.mo5404c();
                }
                break;
            default:
                C3498x c3498x = (C3498x) this.f9955b;
                if (!c3498x.f10306o) {
                    Log.d(AbstractC1387m.m2421h(new byte[]{-82, 13, 75, -20, -5, -11, 93, 51, -118}, new byte[]{-17, 120, 47, -123, -108, -72, 50, 87}), AbstractC1387m.m2421h(new byte[]{59, -50, -55, 73, -32, -82, 89}, new byte[]{86, -95, -83, 44, -64, -109, 121, -39}) + i10);
                    if (i10 == 3 || i10 == 2) {
                        c3498x.mo5403b();
                        c3498x.f10265K = true;
                    } else if (c3498x.f10265K) {
                        c3498x.mo5404c();
                    }
                    break;
                }
                break;
        }
    }
}
