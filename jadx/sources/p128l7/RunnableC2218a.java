package p128l7;

import android.content.Context;
import com.example.navistart.R;
import com.example.navistart.VJCT;
import com.wireguard.android.backend.GoBackend;
import java.util.Iterator;
import kotlin.jvm.internal.ByteCompanionObject;
import p039d2.C1252h;
import p044d7.C1312c;
import p047e0.AbstractC1387m;
import p064f7.C1586c;
import p184r5.C3105c;

/* JADX INFO: renamed from: l7.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC2218a implements Runnable {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f5826b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ C1252h f5827c;

    public /* synthetic */ RunnableC2218a(C1252h c1252h, int i10) {
        this.f5826b = i10;
        this.f5827c = c1252h;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C1586c c1586c;
        int i10 = this.f5826b;
        C1252h c1252h = this.f5827c;
        switch (i10) {
            case 0:
                c1252h.getClass();
                try {
                    GoBackend goBackend = (GoBackend) c1252h.f2955d;
                    if (goBackend == null || (c1586c = (C1586c) c1252h.f2956e) == null) {
                        c1252h.m2255q();
                    } else {
                        goBackend.m2193c(3, c1586c, (C3105c) c1252h.f2957f);
                    }
                } catch (Exception e) {
                    e.getMessage();
                    return;
                }
                break;
            case 1:
                try {
                    GoBackend goBackend2 = (GoBackend) c1252h.f2955d;
                    if (goBackend2 != null) {
                        goBackend2.m2193c(2, (C1586c) c1252h.f2956e, (C3105c) c1252h.f2957f);
                    } else {
                        c1252h.m2255q();
                    }
                } catch (Exception unused) {
                    VJCT.m1604u(((Context) c1252h.f2954c).getResources().getString(R.string.vpn_start_not_perm));
                    return;
                }
                break;
            default:
                StringBuilder sb = new StringBuilder();
                sb.append(AbstractC1387m.m2421h(new byte[]{-44, 92, 70, -113}, new byte[]{-122, 36, 124, -81, -37, -114, 62, 27}));
                Iterator it = ((GoBackend) c1252h.f2955d).m2192b((C3105c) c1252h.f2957f).f1089a.values().iterator();
                long j10 = 0;
                long j11 = 0;
                while (it.hasNext()) {
                    j11 += ((C1312c) it.next()).f3128a;
                }
                sb.append(j11);
                sb.append(AbstractC1387m.m2421h(new byte[]{ByteCompanionObject.MIN_VALUE, -30, -25, 20, 65}, new byte[]{-96, -74, -97, 46, 97, -84, -122, 85}));
                Iterator it2 = ((GoBackend) c1252h.f2955d).m2192b((C3105c) c1252h.f2957f).f1089a.values().iterator();
                while (it2.hasNext()) {
                    j10 += ((C1312c) it2.next()).f3129b;
                }
                sb.append(j10);
                VJCT.m1604u(sb.toString());
                break;
        }
    }
}
