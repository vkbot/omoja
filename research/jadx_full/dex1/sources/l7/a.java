package l7;

import android.content.Context;
import com.example.navistart.VJCT;
import com.wireguard.android.backend.GoBackend;
import d2.h;
import e0.m;
import f7.c;
import java.util.Iterator;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class a implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f3311b;
    public final /* synthetic */ h c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ a(h hVar, int i9) {
        this.f3311b = i9;
        this.c = hVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        c cVar;
        int i9 = this.f3311b;
        h hVar = this.c;
        switch (i9) {
            case 0:
                hVar.getClass();
                try {
                    GoBackend goBackend = (GoBackend) hVar.d;
                    if (goBackend == null || (cVar = (c) hVar.e) == null) {
                        hVar.q();
                    } else {
                        goBackend.c(3, cVar, (r5.c) hVar.f1679f);
                    }
                } catch (Exception e) {
                    e.getMessage();
                    return;
                }
                break;
            case 1:
                try {
                    GoBackend goBackend2 = (GoBackend) hVar.d;
                    if (goBackend2 != null) {
                        goBackend2.c(2, (c) hVar.e, (r5.c) hVar.f1679f);
                    } else {
                        hVar.q();
                    }
                } catch (Exception unused) {
                    VJCT.u(((Context) hVar.c).getResources().getString(2131952860));
                    return;
                }
                break;
            default:
                StringBuilder sb = new StringBuilder();
                sb.append(m.h(new byte[]{-44, 92, 70, -113}, new byte[]{-122, 36, 124, -81, -37, -114, 62, 27}));
                Iterator it = ((GoBackend) hVar.d).b((r5.c) hVar.f1679f).f564a.values().iterator();
                long j9 = 0;
                long j10 = 0;
                while (it.hasNext()) {
                    j10 += ((d7.c) it.next()).f1792a;
                }
                sb.append(j10);
                sb.append(m.h(new byte[]{ByteCompanionObject.MIN_VALUE, -30, -25, 20, 65}, new byte[]{-96, -74, -97, 46, 97, -84, -122, 85}));
                Iterator it2 = ((GoBackend) hVar.d).b((r5.c) hVar.f1679f).f564a.values().iterator();
                while (it2.hasNext()) {
                    j9 += ((d7.c) it2.next()).f1793b;
                }
                sb.append(j9);
                VJCT.u(sb.toString());
                break;
        }
    }
}
