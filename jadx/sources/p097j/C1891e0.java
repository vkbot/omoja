package p097j;

import ai.onnxruntime.C0075b;
import androidx.collection.ArrayMap;
import com.bumptech.glide.C1037j;
import com.bumptech.glide.load.data.InterfaceC1043d;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;
import p025c0.C0945n;
import p077h.InterfaceC1643e;
import p077h.InterfaceC1650l;
import p120l.C2187d;
import p141n.C2456q;
import p141n.C2460u;
import p141n.InterfaceC2457r;

/* JADX INFO: renamed from: j.e0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1891e0 implements InterfaceC1894g, InterfaceC1043d {

    /* JADX INFO: renamed from: b */
    public final RunnableC1899k f4885b;

    /* JADX INFO: renamed from: c */
    public final C1896h f4886c;

    /* JADX INFO: renamed from: d */
    public int f4887d;

    /* JADX INFO: renamed from: e */
    public int f4888e = -1;

    /* JADX INFO: renamed from: f */
    public InterfaceC1643e f4889f;

    /* JADX INFO: renamed from: g */
    public List f4890g;

    /* JADX INFO: renamed from: h */
    public int f4891h;

    /* JADX INFO: renamed from: i */
    public volatile C2456q f4892i;

    /* JADX INFO: renamed from: j */
    public File f4893j;

    /* JADX INFO: renamed from: k */
    public C1893f0 f4894k;

    public C1891e0(C1896h c1896h, RunnableC1899k runnableC1899k) {
        this.f4886c = c1896h;
        this.f4885b = runnableC1899k;
    }

    @Override // p097j.InterfaceC1894g
    /* JADX INFO: renamed from: c */
    public final boolean mo2934c() {
        List list;
        boolean z9;
        List list2;
        boolean z10;
        ArrayList arrayListM3817c;
        ArrayList arrayListM2938a = this.f4886c.m2938a();
        if (arrayListM2938a.isEmpty()) {
            return false;
        }
        C1896h c1896h = this.f4886c;
        C1037j c1037jM1293a = c1896h.f4913c.m1293a();
        Class<?> cls = c1896h.f4914d.getClass();
        Class cls2 = c1896h.f4917g;
        Class cls3 = c1896h.f4921k;
        C2187d c2187d = c1037jM1293a.f1103h;
        C0945n c0945n = (C0945n) ((AtomicReference) c2187d.f5705c).getAndSet(null);
        if (c0945n == null) {
            c0945n = new C0945n(cls, cls2, cls3);
        } else {
            c0945n.f806a = cls;
            c0945n.f807b = cls2;
            c0945n.f808c = cls3;
        }
        synchronized (((ArrayMap) c2187d.f5706d)) {
            list = (List) ((ArrayMap) c2187d.f5706d).get(c0945n);
        }
        ((AtomicReference) c2187d.f5705c).set(c0945n);
        if (list == null) {
            ArrayList arrayList = new ArrayList();
            C2460u c2460u = c1037jM1293a.f1096a;
            synchronized (c2460u) {
                arrayListM3817c = c2460u.f6653a.m3817c(cls);
            }
            int size = arrayListM3817c.size();
            int i10 = 0;
            while (i10 < size) {
                Object obj = arrayListM3817c.get(i10);
                i10++;
                ArrayList arrayListM3492u = c1037jM1293a.f1098c.m3492u((Class) obj, cls2);
                int size2 = arrayListM3492u.size();
                int i11 = 0;
                while (i11 < size2) {
                    Object obj2 = arrayListM3492u.get(i11);
                    i11++;
                    Class cls4 = (Class) obj2;
                    if (!c1037jM1293a.f1101f.m2886e(cls4, cls3).isEmpty() && !arrayList.contains(cls4)) {
                        arrayList.add(cls4);
                    }
                }
            }
            z9 = false;
            C2187d c2187d2 = c1037jM1293a.f1103h;
            List listUnmodifiableList = Collections.unmodifiableList(arrayList);
            synchronized (((ArrayMap) c2187d2.f5706d)) {
                ((ArrayMap) c2187d2.f5706d).put(new C0945n(cls, cls2, cls3), listUnmodifiableList);
            }
            list2 = arrayList;
        } else {
            z9 = false;
            list2 = list;
        }
        if (list2.isEmpty()) {
            if (File.class.equals(this.f4886c.f4921k)) {
                return z9;
            }
            StringBuilder sb = new StringBuilder("Failed to find any load path from ");
            sb.append(this.f4886c.f4914d.getClass());
            C0075b.m191p(sb, " to ", this.f4886c.f4921k);
            return false;
        }
        while (true) {
            List list3 = this.f4890g;
            if (list3 != null && this.f4891h < list3.size()) {
                this.f4892i = null;
                boolean z11 = z9;
                while (!z11 && this.f4891h < this.f4890g.size()) {
                    List list4 = this.f4890g;
                    int i12 = this.f4891h;
                    this.f4891h = i12 + 1;
                    InterfaceC2457r interfaceC2457r = (InterfaceC2457r) list4.get(i12);
                    File file = this.f4893j;
                    C1896h c1896h2 = this.f4886c;
                    this.f4892i = interfaceC2457r.mo3791b(file, c1896h2.f4915e, c1896h2.f4916f, c1896h2.f4919i);
                    if (this.f4892i != null && this.f4886c.m2940c(this.f4892i.f6651c.mo1316a()) != null) {
                        this.f4892i.f6651c.mo1323e(this.f4886c.f4925o, this);
                        z11 = true;
                    }
                }
                return z11;
            }
            int i13 = this.f4888e + 1;
            this.f4888e = i13;
            if (i13 >= list2.size()) {
                int i14 = this.f4887d + 1;
                this.f4887d = i14;
                if (i14 >= arrayListM2938a.size()) {
                    return z9;
                }
                this.f4888e = z9 ? 1 : 0;
            }
            InterfaceC1643e interfaceC1643e = (InterfaceC1643e) arrayListM2938a.get(this.f4887d);
            Class cls5 = (Class) list2.get(this.f4888e);
            InterfaceC1650l interfaceC1650lM2942e = this.f4886c.m2942e(cls5);
            C1896h c1896h3 = this.f4886c;
            this.f4894k = new C1893f0(c1896h3.f4913c.f1079a, interfaceC1643e, c1896h3.f4924n, c1896h3.f4915e, c1896h3.f4916f, interfaceC1650lM2942e, cls5, c1896h3.f4919i);
            File fileMo3455c = c1896h3.f4918h.m1073a().mo3455c(this.f4894k);
            this.f4893j = fileMo3455c;
            if (fileMo3455c != null) {
                this.f4889f = interfaceC1643e;
                this.f4890g = this.f4886c.f4913c.m1293a().m1303f(fileMo3455c);
                z10 = false;
                this.f4891h = 0;
            } else {
                z10 = false;
            }
            z9 = z10;
        }
    }

    @Override // p097j.InterfaceC1894g
    public final void cancel() {
        C2456q c2456q = this.f4892i;
        if (c2456q != null) {
            c2456q.f6651c.cancel();
        }
    }

    @Override // com.bumptech.glide.load.data.InterfaceC1043d
    /* JADX INFO: renamed from: d */
    public final void mo240d(Exception exc) {
        this.f4885b.mo2936b(this.f4894k, exc, this.f4892i.f6651c, 4);
    }

    @Override // com.bumptech.glide.load.data.InterfaceC1043d
    /* JADX INFO: renamed from: f */
    public final void mo242f(Object obj) {
        this.f4885b.mo2935a(this.f4889f, obj, this.f4892i.f6651c, 4, this.f4894k);
    }
}
