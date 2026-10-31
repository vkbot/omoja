package p132m0;

import com.example.navistart.cores.BTProxy;
import com.google.protobuf.AbstractC1178q;
import java.util.ArrayList;
import java.util.Locale;
import p141n.C2455p;
import p225w0.C3465i0;
import p225w0.C3474l0;
import p225w0.C3479n0;
import p225w0.C3497w0;
import p225w0.EnumC3471k0;
import p225w0.EnumC3477m0;

/* JADX INFO: renamed from: m0.d1 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC2279d1 implements Runnable {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f6002b = 0;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ int f6003c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ int f6004d;

    /* JADX INFO: renamed from: e */
    public final /* synthetic */ Object f6005e;

    /* JADX INFO: renamed from: f */
    public final /* synthetic */ Object f6006f;

    public /* synthetic */ RunnableC2279d1(C2284e1 c2284e1, C2299h1 c2299h1, int i10, int i11) {
        this.f6005e = c2284e1;
        this.f6006f = c2299h1;
        this.f6003c = i10;
        this.f6004d = i11;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String str;
        int i10 = 0;
        switch (this.f6002b) {
            case 0:
                C2284e1 c2284e1 = (C2284e1) this.f6005e;
                C2299h1 c2299h1 = (C2299h1) this.f6006f;
                int i11 = this.f6003c;
                int i12 = this.f6004d;
                StringBuilder sb = new StringBuilder();
                sb.append(i11);
                c2299h1.f6115j = AbstractC1178q.m2075i(new byte[]{106}, new byte[]{79, -104, -67, 101, -78, 1, -87, 23}, sb);
                C2304i1.m3695v((C2304i1) c2284e1.f6048i, i12);
                return;
            default:
                C3465i0 c3465i0 = (C3465i0) this.f6005e;
                int i13 = this.f6003c;
                int i14 = this.f6004d;
                ArrayList arrayList = (ArrayList) this.f6006f;
                if (c3465i0.f10018c.m5446y(i13, i14)) {
                    C3474l0 c3474l0 = c3465i0.f10018c;
                    if (c3474l0.f10098s == null && c3474l0.f10097r) {
                        if (c3474l0.m5445j0()) {
                            C3474l0 c3474l1 = c3465i0.f10018c;
                            synchronized (c3474l1) {
                                String upperCase = c3474l1.f10091l;
                                int size = arrayList.size();
                                while (i10 < size) {
                                    Object obj = arrayList.get(i10);
                                    i10++;
                                    BTProxy.Contact contact = (BTProxy.Contact) obj;
                                    if (contact != null && (str = contact.bluetoothAddress) != null && !str.isEmpty()) {
                                        if (upperCase.isEmpty() || upperCase.equalsIgnoreCase(contact.bluetoothAddress)) {
                                            upperCase = contact.bluetoothAddress.toUpperCase(Locale.ROOT);
                                        }
                                    }
                                }
                                c3474l1.f10091l = upperCase;
                                C3497w0 c3497w0 = new C3497w0(arrayList);
                                if (c3465i0.f10018c.m5446y(i13, i14)) {
                                    C3474l0 c3474l2 = c3465i0.f10018c;
                                    c3474l2.f10098s = c3497w0;
                                    if (c3474l2.m5437c(c3474l2.f10096q)) {
                                        C3474l0 c3474l3 = c3465i0.f10018c;
                                        C3479n0 c3479n0 = c3474l3.f10085f;
                                        EnumC3477m0 enumC3477m0 = c3479n0.f10121a;
                                        if (enumC3477m0 == EnumC3477m0.f10107d || enumC3477m0 == EnumC3477m0.f10108e) {
                                            C2455p c2455p = c3474l3.f10082c;
                                            c3479n0.f10123c = c3474l3.f10098s;
                                            c3479n0.f10128h = true;
                                            c2455p.m3809f(c3479n0.m5462f());
                                            return;
                                        }
                                        return;
                                    }
                                    return;
                                }
                                return;
                            }
                        }
                        c3465i0.f10018c.m5436b(EnumC3471k0.f10043c, i13, i14);
                        return;
                    }
                    return;
                }
                return;
        }
    }

    public /* synthetic */ RunnableC2279d1(C3465i0 c3465i0, int i10, int i11, ArrayList arrayList) {
        this.f6005e = c3465i0;
        this.f6003c = i10;
        this.f6004d = i11;
        this.f6006f = arrayList;
    }
}
