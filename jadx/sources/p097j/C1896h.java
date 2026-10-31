package p097j;

import ai.onnxruntime.AbstractC0074a;
import androidx.navigation.C0674b;
import com.bumptech.glide.C1032e;
import com.bumptech.glide.C1036i;
import com.bumptech.glide.C1037j;
import com.bumptech.glide.EnumC1035h;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import p025c0.C0939h;
import p025c0.C0945n;
import p077h.C1646h;
import p077h.InterfaceC1640b;
import p077h.InterfaceC1643e;
import p077h.InterfaceC1650l;
import p094i7.C1760i;
import p120l.C2187d;
import p141n.C2456q;
import p141n.InterfaceC2457r;
import p163p.C2947c;
import p215v.C3312b;
import p215v.C3313c;
import p215v.InterfaceC3311a;
import p234x.C3543a;
import p234x.C3544b;
import p234x.C3545c;

/* JADX INFO: renamed from: j.h */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1896h {

    /* JADX INFO: renamed from: a */
    public final ArrayList f4911a = new ArrayList();

    /* JADX INFO: renamed from: b */
    public final ArrayList f4912b = new ArrayList();

    /* JADX INFO: renamed from: c */
    public C1032e f4913c;

    /* JADX INFO: renamed from: d */
    public Object f4914d;

    /* JADX INFO: renamed from: e */
    public int f4915e;

    /* JADX INFO: renamed from: f */
    public int f4916f;

    /* JADX INFO: renamed from: g */
    public Class f4917g;

    /* JADX INFO: renamed from: h */
    public C0939h f4918h;

    /* JADX INFO: renamed from: i */
    public C1646h f4919i;

    /* JADX INFO: renamed from: j */
    public Map f4920j;

    /* JADX INFO: renamed from: k */
    public Class f4921k;

    /* JADX INFO: renamed from: l */
    public boolean f4922l;

    /* JADX INFO: renamed from: m */
    public boolean f4923m;

    /* JADX INFO: renamed from: n */
    public InterfaceC1643e f4924n;

    /* JADX INFO: renamed from: o */
    public EnumC1035h f4925o;

    /* JADX INFO: renamed from: p */
    public C1901m f4926p;

    /* JADX INFO: renamed from: q */
    public boolean f4927q;

    /* JADX INFO: renamed from: r */
    public boolean f4928r;

    /* JADX INFO: renamed from: a */
    public final ArrayList m2938a() {
        boolean z9 = this.f4923m;
        ArrayList arrayList = this.f4912b;
        if (!z9) {
            this.f4923m = true;
            arrayList.clear();
            ArrayList arrayListM2939b = m2939b();
            int size = arrayListM2939b.size();
            for (int i10 = 0; i10 < size; i10++) {
                C2456q c2456q = (C2456q) arrayListM2939b.get(i10);
                InterfaceC1643e interfaceC1643e = c2456q.f6649a;
                List list = c2456q.f6650b;
                if (!arrayList.contains(interfaceC1643e)) {
                    arrayList.add(c2456q.f6649a);
                }
                for (int i11 = 0; i11 < list.size(); i11++) {
                    if (!arrayList.contains(list.get(i11))) {
                        arrayList.add(list.get(i11));
                    }
                }
            }
        }
        return arrayList;
    }

    /* JADX INFO: renamed from: b */
    public final ArrayList m2939b() {
        boolean z9 = this.f4922l;
        ArrayList arrayList = this.f4911a;
        if (!z9) {
            this.f4922l = true;
            arrayList.clear();
            List listM1303f = this.f4913c.m1293a().m1303f(this.f4914d);
            int size = listM1303f.size();
            for (int i10 = 0; i10 < size; i10++) {
                C2456q c2456qMo3791b = ((InterfaceC2457r) listM1303f.get(i10)).mo3791b(this.f4914d, this.f4915e, this.f4916f, this.f4919i);
                if (c2456qMo3791b != null) {
                    arrayList.add(c2456qMo3791b);
                }
            }
        }
        return arrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: c */
    public final C1885b0 m2940c(Class cls) {
        C1885b0 c1885b0;
        Class cls2;
        Class cls3;
        Class cls4;
        C1885b0 c1885b1;
        ArrayList arrayList;
        ArrayList arrayList2;
        InterfaceC3311a interfaceC3311a;
        Class cls5 = cls;
        C1037j c1037jM1293a = this.f4913c.m1293a();
        Class cls6 = this.f4917g;
        Class cls7 = this.f4921k;
        C3544b c3544b = c1037jM1293a.f1104i;
        C0945n c0945n = (C0945n) c3544b.f10517b.getAndSet(null);
        if (c0945n == null) {
            c0945n = new C0945n();
        }
        c0945n.f806a = cls5;
        c0945n.f807b = cls6;
        c0945n.f808c = cls7;
        synchronized (c3544b.f10516a) {
            c1885b0 = (C1885b0) c3544b.f10516a.get(c0945n);
        }
        c3544b.f10517b.set(c0945n);
        c1037jM1293a.f1104i.getClass();
        if (C3544b.f10515c.equals(c1885b0)) {
            return null;
        }
        if (c1885b0 != null) {
            return c1885b0;
        }
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayListM3492u = c1037jM1293a.f1098c.m3492u(cls5, cls6);
        int size = arrayListM3492u.size();
        int i10 = 0;
        while (i10 < size) {
            int i11 = i10 + 1;
            Class<?> cls8 = (Class) arrayListM3492u.get(i10);
            ArrayList arrayListM2886e = c1037jM1293a.f1101f.m2886e(cls8, cls7);
            int size2 = arrayListM2886e.size();
            int i12 = 0;
            while (i12 < size2) {
                int i13 = i12 + 1;
                Class cls9 = (Class) arrayListM2886e.get(i12);
                C2187d c2187d = c1037jM1293a.f1098c;
                synchronized (c2187d) {
                    arrayList = new ArrayList();
                    ArrayList arrayList4 = (ArrayList) c2187d.f5706d;
                    int size3 = arrayList4.size();
                    int i14 = 0;
                    while (i14 < size3) {
                        Object obj = arrayList4.get(i14);
                        int i15 = i14 + 1;
                        String str = (String) obj;
                        ArrayList arrayList5 = arrayListM2886e;
                        List list = (List) ((HashMap) c2187d.f5705c).get(str);
                        if (list != null) {
                            Iterator it = list.iterator();
                            while (it.hasNext()) {
                                C3545c c3545c = (C3545c) it.next();
                                Iterator it2 = it;
                                if (c3545c.f10518a.isAssignableFrom(cls5) && cls8.isAssignableFrom(c3545c.f10519b)) {
                                    arrayList.add(c3545c.f10520c);
                                }
                                it = it2;
                            }
                        }
                        arrayListM2886e = arrayList5;
                        i14 = i15;
                    }
                    arrayList2 = arrayListM2886e;
                }
                C1760i c1760i = c1037jM1293a.f1101f;
                synchronized (c1760i) {
                    if (cls9.isAssignableFrom(cls8)) {
                        interfaceC3311a = C3313c.f9699c;
                    } else {
                        ArrayList arrayList6 = c1760i.f4603b;
                        int size4 = arrayList6.size();
                        int i16 = 0;
                        while (true) {
                            if (i16 >= size4) {
                                throw new IllegalArgumentException("No transcoder registered to transcode from " + cls8 + " to " + cls9);
                            }
                            Object obj2 = arrayList6.get(i16);
                            i16++;
                            C3312b c3312b = (C3312b) obj2;
                            ArrayList arrayList7 = arrayList6;
                            if (c3312b.f9696a.isAssignableFrom(cls8) && cls9.isAssignableFrom(c3312b.f9697b)) {
                                interfaceC3311a = c3312b.f9698c;
                                break;
                            }
                            cls5 = cls;
                            arrayList6 = arrayList7;
                        }
                    }
                }
                arrayList3.add(new C1900l(cls5, cls8, cls9, arrayList, interfaceC3311a, c1037jM1293a.f1105j));
                cls5 = cls;
                size2 = size2;
                i12 = i13;
                arrayListM2886e = arrayList2;
            }
            cls5 = cls;
            i10 = i11;
        }
        if (arrayList3.isEmpty()) {
            cls2 = cls;
            cls3 = cls6;
            cls4 = cls7;
            c1885b1 = null;
        } else {
            cls2 = cls;
            cls3 = cls6;
            cls4 = cls7;
            c1885b1 = new C1885b0(cls2, cls3, cls4, arrayList3, c1037jM1293a.f1105j);
        }
        C3544b c3544b2 = c1037jM1293a.f1104i;
        synchronized (c3544b2.f10516a) {
            c3544b2.f10516a.put(new C0945n(cls2, cls3, cls4), c1885b1 != null ? c1885b1 : C3544b.f10515c);
        }
        return c1885b1;
    }

    /* JADX INFO: renamed from: d */
    public final InterfaceC1640b m2941d(Object obj) {
        InterfaceC1640b interfaceC1640b;
        C1760i c1760i = this.f4913c.m1293a().f1097b;
        Class<?> cls = obj.getClass();
        synchronized (c1760i) {
            ArrayList arrayList = c1760i.f4603b;
            int size = arrayList.size();
            int i10 = 0;
            while (i10 < size) {
                Object obj2 = arrayList.get(i10);
                i10++;
                C3543a c3543a = (C3543a) obj2;
                if (c3543a.f10513a.isAssignableFrom(cls)) {
                    interfaceC1640b = c3543a.f10514b;
                }
            }
            interfaceC1640b = null;
        }
        if (interfaceC1640b != null) {
            return interfaceC1640b;
        }
        throw new C1036i(AbstractC0074a.m159j(obj.getClass(), "Failed to find source encoder for data class: "));
    }

    /* JADX INFO: renamed from: e */
    public final InterfaceC1650l m2942e(Class cls) {
        InterfaceC1650l interfaceC1650l = (InterfaceC1650l) this.f4920j.get(cls);
        if (interfaceC1650l == null) {
            for (Map.Entry entry : this.f4920j.entrySet()) {
                if (((Class) entry.getKey()).isAssignableFrom(cls)) {
                    interfaceC1650l = (InterfaceC1650l) entry.getValue();
                    break;
                }
            }
        }
        if (interfaceC1650l != null) {
            return interfaceC1650l;
        }
        if (!this.f4920j.isEmpty() || !this.f4927q) {
            return C2947c.f8181b;
        }
        C0674b.m849p(cls, "Missing transformation for ", ". If you wish to ignore unknown resource types, use the optional transformation methods.");
        return null;
    }
}
