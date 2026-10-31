package m0;

import com.example.navistart.cores.BTProxy$Contact;
import java.util.ArrayList;
import java.util.Locale;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class d1 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f3378b = 0;
    public final /* synthetic */ int c;
    public final /* synthetic */ int d;
    public final /* synthetic */ Object e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f3379f;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ d1(e1 e1Var, h1 h1Var, int i9, int i10) {
        this.e = e1Var;
        this.f3379f = h1Var;
        this.c = i9;
        this.d = i10;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        String str;
        int i9 = 0;
        switch (this.f3378b) {
            case 0:
                e1 e1Var = (e1) this.e;
                h1 h1Var = (h1) this.f3379f;
                int i10 = this.c;
                int i11 = this.d;
                StringBuilder sb = new StringBuilder();
                sb.append(i10);
                h1Var.f3448j = com.google.protobuf.q.i(new byte[]{106}, new byte[]{79, -104, -67, 101, -78, 1, -87, 23}, sb);
                i1.v((i1) e1Var.f3406i, i11);
                return;
            default:
                w0.i0 i0Var = (w0.i0) this.e;
                int i12 = this.c;
                int i13 = this.d;
                ArrayList arrayList = (ArrayList) this.f3379f;
                if (i0Var.c.y(i12, i13)) {
                    w0.l0 l0Var = i0Var.c;
                    if (l0Var.f5707s == null && l0Var.r) {
                        if (l0Var.j0()) {
                            w0.l0 l0Var2 = i0Var.c;
                            synchronized (l0Var2) {
                                String upperCase = l0Var2.f5701l;
                                int size = arrayList.size();
                                while (i9 < size) {
                                    Object obj = arrayList.get(i9);
                                    i9++;
                                    BTProxy$Contact bTProxy$Contact = (BTProxy$Contact) obj;
                                    if (bTProxy$Contact != null && (str = bTProxy$Contact.bluetoothAddress) != null && !str.isEmpty()) {
                                        if (upperCase.isEmpty() || upperCase.equalsIgnoreCase(bTProxy$Contact.bluetoothAddress)) {
                                            upperCase = bTProxy$Contact.bluetoothAddress.toUpperCase(Locale.ROOT);
                                        }
                                    }
                                }
                                l0Var2.f5701l = upperCase;
                                w0.w0 w0Var = new w0.w0(arrayList);
                                if (i0Var.c.y(i12, i13)) {
                                    w0.l0 l0Var3 = i0Var.c;
                                    l0Var3.f5707s = w0Var;
                                    if (l0Var3.c(l0Var3.f5706q)) {
                                        w0.l0 l0Var4 = i0Var.c;
                                        w0.n0 n0Var = l0Var4.f5695f;
                                        w0.m0 m0Var = n0Var.f5725a;
                                        if (m0Var == w0.m0.d || m0Var == w0.m0.e) {
                                            n.p pVar = l0Var4.c;
                                            n0Var.c = l0Var4.f5707s;
                                            n0Var.f5729h = true;
                                            pVar.f(n0Var.f());
                                            return;
                                        }
                                        return;
                                    }
                                    return;
                                }
                                return;
                            }
                        }
                        i0Var.c.b(w0.k0.c, i12, i13);
                        return;
                    }
                    return;
                }
                return;
        }
    }

    public /* synthetic */ d1(w0.i0 i0Var, int i9, int i10, ArrayList arrayList) {
        this.e = i0Var;
        this.c = i9;
        this.d = i10;
        this.f3379f = arrayList;
    }
}
