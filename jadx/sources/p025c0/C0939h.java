package p025c0;

import com.bumptech.glide.AbstractC1034g;
import com.bumptech.glide.RunnableC1054m;
import com.bumptech.glide.manager.C1069o;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import p120l.C2188e;
import p120l.InterfaceC2184a;
import p148n7.AbstractC2513h0;
import p148n7.EnumC2518j;
import p155o4.AbstractC2587b;
import p157o7.AbstractC2743y0;
import p157o7.C2632f2;
import p157o7.C2639g3;
import p157o7.InterfaceC2737x;
import p184r5.C3105c;
import p232w7.C3537c;

/* JADX INFO: renamed from: c0.h */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C0939h implements InterfaceC0940i {

    /* JADX INFO: renamed from: b */
    public Object f796b;

    /* JADX INFO: renamed from: c */
    public volatile Object f797c;

    public /* synthetic */ C0939h(Object obj) {
        this.f796b = obj;
    }

    /* JADX INFO: renamed from: a */
    public InterfaceC2184a m1073a() {
        if (((InterfaceC2184a) this.f797c) == null) {
            synchronized (this) {
                try {
                    if (((InterfaceC2184a) this.f797c) == null) {
                        File cacheDir = ((C1069o) ((C3105c) this.f796b).f8867c).f1169c.getCacheDir();
                        C2188e c2188e = null;
                        File file = cacheDir == null ? null : new File(cacheDir, "image_manager_disk_cache");
                        if (file != null && (file.isDirectory() || file.mkdirs())) {
                            c2188e = new C2188e(file);
                        }
                        this.f797c = c2188e;
                    }
                    if (((InterfaceC2184a) this.f797c) == null) {
                        this.f797c = new C3537c(13);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return (InterfaceC2184a) this.f797c;
    }

    /* JADX INFO: renamed from: b */
    public InterfaceC2737x m1074b(C2639g3 c2639g3) {
        AbstractC2513h0 abstractC2513h0 = ((C2632f2) this.f796b).f7449y;
        if (((C2632f2) this.f796b).f7403G.get()) {
            return ((C2632f2) this.f796b).f7401E;
        }
        if (abstractC2513h0 == null) {
            ((C2632f2) this.f796b).f7437m.execute(new RunnableC1054m(13, this));
            return ((C2632f2) this.f796b).f7401E;
        }
        InterfaceC2737x interfaceC2737xM4262f = AbstractC2743y0.m4262f(abstractC2513h0.mo3942a(c2639g3), Boolean.TRUE.equals(c2639g3.f7488a.f6895e));
        return interfaceC2737xM4262f != null ? interfaceC2737xM4262f : ((C2632f2) this.f796b).f7401E;
    }

    /* JADX INFO: renamed from: c */
    public void m1075c(EnumC2518j enumC2518j) {
        AbstractC2587b.m4042i(enumC2518j, "newState");
        if (((EnumC2518j) this.f797c) == enumC2518j || ((EnumC2518j) this.f797c) == EnumC2518j.f6972f) {
            return;
        }
        this.f797c = enumC2518j;
        if (((ArrayList) this.f796b).isEmpty()) {
            return;
        }
        ArrayList arrayList = (ArrayList) this.f796b;
        this.f796b = new ArrayList();
        Iterator it = arrayList.iterator();
        if (it.hasNext()) {
            throw AbstractC1034g.m1295b(it);
        }
    }

    @Override // p025c0.InterfaceC0940i
    public Object get() {
        if (this.f797c == null) {
            synchronized (this) {
                try {
                    if (this.f797c == null) {
                        Object obj = ((InterfaceC0940i) this.f796b).get();
                        AbstractC0938g.m1072c(obj, "Argument must not be null");
                        this.f797c = obj;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.f797c;
    }
}
