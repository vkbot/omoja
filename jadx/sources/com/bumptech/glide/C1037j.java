package com.bumptech.glide;

import androidx.core.util.Pools;
import com.bumptech.glide.load.data.C1048i;
import com.bumptech.glide.load.data.InterfaceC1045f;
import com.bumptech.glide.load.data.InterfaceC1046g;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import p025c0.AbstractC0938g;
import p037d0.C1233a;
import p037d0.C1234b;
import p037d0.C1236d;
import p077h.InterfaceC1640b;
import p077h.InterfaceC1648j;
import p077h.InterfaceC1649k;
import p094i7.C1760i;
import p120l.C2187d;
import p141n.C2459t;
import p141n.C2460u;
import p141n.C2463x;
import p141n.C2465z;
import p141n.InterfaceC2457r;
import p141n.InterfaceC2458s;
import p215v.C3312b;
import p215v.InterfaceC3311a;
import p234x.C3543a;
import p234x.C3544b;
import p234x.C3545c;
import p234x.C3546d;

/* JADX INFO: renamed from: com.bumptech.glide.j */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1037j {

    /* JADX INFO: renamed from: a */
    public final C2460u f1096a;

    /* JADX INFO: renamed from: b */
    public final C1760i f1097b;

    /* JADX INFO: renamed from: c */
    public final C2187d f1098c;

    /* JADX INFO: renamed from: d */
    public final C1760i f1099d;

    /* JADX INFO: renamed from: e */
    public final C1048i f1100e;

    /* JADX INFO: renamed from: f */
    public final C1760i f1101f;

    /* JADX INFO: renamed from: g */
    public final C1760i f1102g;

    /* JADX INFO: renamed from: h */
    public final C2187d f1103h = new C2187d(21);

    /* JADX INFO: renamed from: i */
    public final C3544b f1104i = new C3544b();

    /* JADX INFO: renamed from: j */
    public final C1236d f1105j;

    public C1037j() {
        C1236d c1236d = new C1236d(new Pools.SynchronizedPool(20), new C1233a(), new C1234b());
        this.f1105j = c1236d;
        this.f1096a = new C2460u(c1236d);
        this.f1097b = new C1760i(4);
        this.f1098c = new C2187d(22);
        this.f1099d = new C1760i(6);
        this.f1100e = new C1048i();
        this.f1101f = new C1760i(3);
        this.f1102g = new C1760i(5);
        List listAsList = Arrays.asList("Animation", "Bitmap", "BitmapDrawable");
        ArrayList arrayList = new ArrayList(listAsList.size());
        arrayList.add("legacy_prepend_all");
        Iterator it = listAsList.iterator();
        while (it.hasNext()) {
            arrayList.add((String) it.next());
        }
        arrayList.add("legacy_append");
        C2187d c2187d = this.f1098c;
        synchronized (c2187d) {
            try {
                ArrayList arrayList2 = new ArrayList((ArrayList) c2187d.f5706d);
                ((ArrayList) c2187d.f5706d).clear();
                int size = arrayList.size();
                int i10 = 0;
                int i11 = 0;
                while (i11 < size) {
                    Object obj = arrayList.get(i11);
                    i11++;
                    ((ArrayList) c2187d.f5706d).add((String) obj);
                }
                int size2 = arrayList2.size();
                while (i10 < size2) {
                    Object obj2 = arrayList2.get(i10);
                    i10++;
                    String str = (String) obj2;
                    if (!arrayList.contains(str)) {
                        ((ArrayList) c2187d.f5706d).add(str);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: renamed from: a */
    public final void m1298a(Class cls, InterfaceC1640b interfaceC1640b) {
        C1760i c1760i = this.f1097b;
        synchronized (c1760i) {
            c1760i.f4603b.add(new C3543a(cls, interfaceC1640b));
        }
    }

    /* JADX INFO: renamed from: b */
    public final void m1299b(Class cls, InterfaceC1649k interfaceC1649k) {
        C1760i c1760i = this.f1099d;
        synchronized (c1760i) {
            c1760i.f4603b.add(new C3546d(cls, interfaceC1649k));
        }
    }

    /* JADX INFO: renamed from: c */
    public final void m1300c(Class cls, Class cls2, InterfaceC2458s interfaceC2458s) {
        C2460u c2460u = this.f1096a;
        synchronized (c2460u) {
            C2465z c2465z = c2460u.f6653a;
            synchronized (c2465z) {
                try {
                    C2463x c2463x = new C2463x(cls, cls2, interfaceC2458s);
                    ArrayList arrayList = c2465z.f6669a;
                    arrayList.add(arrayList.size(), c2463x);
                } catch (Throwable th) {
                    throw th;
                }
            }
            c2460u.f6654b.f1089a.clear();
        }
    }

    /* JADX INFO: renamed from: d */
    public final void m1301d(String str, Class cls, Class cls2, InterfaceC1648j interfaceC1648j) {
        C2187d c2187d = this.f1098c;
        synchronized (c2187d) {
            c2187d.m3491t(str).add(new C3545c(cls, cls2, interfaceC1648j));
        }
    }

    /* JADX INFO: renamed from: e */
    public final ArrayList m1302e() {
        ArrayList arrayList;
        C1760i c1760i = this.f1102g;
        synchronized (c1760i) {
            arrayList = c1760i.f4603b;
        }
        if (arrayList.isEmpty()) {
            throw new C1036i("Failed to find image header parser.");
        }
        return arrayList;
    }

    /* JADX INFO: renamed from: f */
    public final List m1303f(Object obj) {
        List listUnmodifiableList;
        C2460u c2460u = this.f1096a;
        c2460u.getClass();
        Class<?> cls = obj.getClass();
        synchronized (c2460u) {
            C2459t c2459t = (C2459t) c2460u.f6654b.f1089a.get(cls);
            listUnmodifiableList = c2459t == null ? null : c2459t.f6652a;
            if (listUnmodifiableList == null) {
                listUnmodifiableList = Collections.unmodifiableList(c2460u.f6653a.m3815a(cls));
                if (((C2459t) c2460u.f6654b.f1089a.put(cls, new C2459t(listUnmodifiableList))) != null) {
                    throw new IllegalStateException("Already cached loaders for model: " + cls);
                }
            }
        }
        if (listUnmodifiableList.isEmpty()) {
            throw new C1036i("Failed to find any ModelLoaders registered for model class: " + obj.getClass());
        }
        int size = listUnmodifiableList.size();
        List arrayList = Collections.EMPTY_LIST;
        boolean z9 = true;
        for (int i10 = 0; i10 < size; i10++) {
            InterfaceC2457r interfaceC2457r = (InterfaceC2457r) listUnmodifiableList.get(i10);
            if (interfaceC2457r.mo3790a(obj)) {
                if (z9) {
                    arrayList = new ArrayList(size - i10);
                    z9 = false;
                }
                arrayList.add(interfaceC2457r);
            }
        }
        if (!arrayList.isEmpty()) {
            return arrayList;
        }
        throw new C1036i("Found ModelLoaders for model class: " + listUnmodifiableList + ", but none that handle this specific model instance: " + obj);
    }

    /* JADX INFO: renamed from: g */
    public final InterfaceC1046g m1304g(Object obj) {
        InterfaceC1046g interfaceC1046gMo1326b;
        C1048i c1048i = this.f1100e;
        synchronized (c1048i) {
            try {
                AbstractC0938g.m1071b(obj);
                InterfaceC1045f interfaceC1045f = (InterfaceC1045f) ((HashMap) c1048i.f1134c).get(obj.getClass());
                if (interfaceC1045f == null) {
                    for (InterfaceC1045f interfaceC1045f2 : ((HashMap) c1048i.f1134c).values()) {
                        if (interfaceC1045f2.mo1325a().isAssignableFrom(obj.getClass())) {
                            interfaceC1045f = interfaceC1045f2;
                            break;
                        }
                    }
                }
                if (interfaceC1045f == null) {
                    interfaceC1045f = C1048i.f1132d;
                }
                interfaceC1046gMo1326b = interfaceC1045f.mo1326b(obj);
            } catch (Throwable th) {
                throw th;
            }
        }
        return interfaceC1046gMo1326b;
    }

    /* JADX INFO: renamed from: h */
    public final void m1305h(InterfaceC1045f interfaceC1045f) {
        C1048i c1048i = this.f1100e;
        synchronized (c1048i) {
            ((HashMap) c1048i.f1134c).put(interfaceC1045f.mo1325a(), interfaceC1045f);
        }
    }

    /* JADX INFO: renamed from: i */
    public final void m1306i(Class cls, Class cls2, InterfaceC3311a interfaceC3311a) {
        C1760i c1760i = this.f1101f;
        synchronized (c1760i) {
            c1760i.f4603b.add(new C3312b(cls, cls2, interfaceC3311a));
        }
    }
}
