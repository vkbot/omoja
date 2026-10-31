package p141n;

import androidx.core.util.Pools;
import com.bumptech.glide.EnumC1035h;
import com.bumptech.glide.load.data.InterfaceC1043d;
import com.bumptech.glide.load.data.InterfaceC1044e;
import java.util.ArrayList;
import java.util.List;
import p025c0.AbstractC0938g;
import p097j.C1914z;
import p099j1.C1929i;

/* JADX INFO: renamed from: n.v */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2461v implements InterfaceC1044e, InterfaceC1043d {

    /* JADX INFO: renamed from: b */
    public final ArrayList f6655b;

    /* JADX INFO: renamed from: c */
    public final Pools.Pool f6656c;

    /* JADX INFO: renamed from: d */
    public int f6657d;

    /* JADX INFO: renamed from: e */
    public EnumC1035h f6658e;

    /* JADX INFO: renamed from: f */
    public InterfaceC1043d f6659f;

    /* JADX INFO: renamed from: g */
    public List f6660g;

    /* JADX INFO: renamed from: h */
    public boolean f6661h;

    public C2461v(ArrayList arrayList, Pools.Pool pool) {
        this.f6656c = pool;
        if (arrayList.isEmpty()) {
            C1929i.m3029k("Must not be empty.");
            throw null;
        }
        this.f6655b = arrayList;
        this.f6657d = 0;
    }

    @Override // com.bumptech.glide.load.data.InterfaceC1044e
    /* JADX INFO: renamed from: a */
    public final Class mo1316a() {
        return ((InterfaceC1044e) this.f6655b.get(0)).mo1316a();
    }

    @Override // com.bumptech.glide.load.data.InterfaceC1044e
    /* JADX INFO: renamed from: b */
    public final void mo1321b() {
        List list = this.f6660g;
        if (list != null) {
            this.f6656c.release(list);
        }
        this.f6660g = null;
        ArrayList arrayList = this.f6655b;
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            ((InterfaceC1044e) obj).mo1321b();
        }
    }

    @Override // com.bumptech.glide.load.data.InterfaceC1044e
    /* JADX INFO: renamed from: c */
    public final int mo1322c() {
        return ((InterfaceC1044e) this.f6655b.get(0)).mo1322c();
    }

    @Override // com.bumptech.glide.load.data.InterfaceC1044e
    public final void cancel() {
        this.f6661h = true;
        ArrayList arrayList = this.f6655b;
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            ((InterfaceC1044e) obj).cancel();
        }
    }

    @Override // com.bumptech.glide.load.data.InterfaceC1043d
    /* JADX INFO: renamed from: d */
    public final void mo240d(Exception exc) {
        List list = this.f6660g;
        AbstractC0938g.m1072c(list, "Argument must not be null");
        list.add(exc);
        m3814g();
    }

    @Override // com.bumptech.glide.load.data.InterfaceC1044e
    /* JADX INFO: renamed from: e */
    public final void mo1323e(EnumC1035h enumC1035h, InterfaceC1043d interfaceC1043d) {
        this.f6658e = enumC1035h;
        this.f6659f = interfaceC1043d;
        this.f6660g = (List) this.f6656c.acquire();
        ((InterfaceC1044e) this.f6655b.get(this.f6657d)).mo1323e(enumC1035h, this);
        if (this.f6661h) {
            cancel();
        }
    }

    @Override // com.bumptech.glide.load.data.InterfaceC1043d
    /* JADX INFO: renamed from: f */
    public final void mo242f(Object obj) {
        if (obj != null) {
            this.f6659f.mo242f(obj);
        } else {
            m3814g();
        }
    }

    /* JADX INFO: renamed from: g */
    public final void m3814g() {
        if (this.f6661h) {
            return;
        }
        if (this.f6657d < this.f6655b.size() - 1) {
            this.f6657d++;
            mo1323e(this.f6658e, this.f6659f);
        } else {
            AbstractC0938g.m1071b(this.f6660g);
            this.f6659f.mo240d(new C1914z("Fetch failed", new ArrayList(this.f6660g)));
        }
    }
}
