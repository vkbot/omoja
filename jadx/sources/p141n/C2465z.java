package p141n;

import com.bumptech.glide.C1036i;
import java.util.ArrayList;
import java.util.HashSet;
import p037d0.C1236d;

/* JADX INFO: renamed from: n.z */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2465z {

    /* JADX INFO: renamed from: e */
    public static final C2464y f6667e = new C2464y();

    /* JADX INFO: renamed from: f */
    public static final C2440d0 f6668f = new C2440d0(2);

    /* JADX INFO: renamed from: d */
    public final C1236d f6672d;

    /* JADX INFO: renamed from: a */
    public final ArrayList f6669a = new ArrayList();

    /* JADX INFO: renamed from: c */
    public final HashSet f6671c = new HashSet();

    /* JADX INFO: renamed from: b */
    public final C2464y f6670b = f6667e;

    public C2465z(C1236d c1236d) {
        this.f6672d = c1236d;
    }

    /* JADX INFO: renamed from: a */
    public final synchronized ArrayList m3815a(Class cls) {
        ArrayList arrayList;
        try {
            arrayList = new ArrayList();
            ArrayList arrayList2 = this.f6669a;
            int size = arrayList2.size();
            int i10 = 0;
            while (i10 < size) {
                Object obj = arrayList2.get(i10);
                i10++;
                C2463x c2463x = (C2463x) obj;
                if (!this.f6671c.contains(c2463x) && c2463x.f6664a.isAssignableFrom(cls)) {
                    this.f6671c.add(c2463x);
                    arrayList.add(c2463x.f6666c.mo1344j(this));
                    this.f6671c.remove(c2463x);
                }
            }
        } catch (Throwable th) {
            this.f6671c.clear();
            throw th;
        }
        return arrayList;
    }

    /* JADX INFO: renamed from: b */
    public final synchronized InterfaceC2457r m3816b(Class cls, Class cls2) {
        try {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = this.f6669a;
            int size = arrayList2.size();
            boolean z9 = false;
            int i10 = 0;
            while (i10 < size) {
                Object obj = arrayList2.get(i10);
                i10++;
                C2463x c2463x = (C2463x) obj;
                if (this.f6671c.contains(c2463x)) {
                    z9 = true;
                } else if (c2463x.f6664a.isAssignableFrom(cls) && c2463x.f6665b.isAssignableFrom(cls2)) {
                    this.f6671c.add(c2463x);
                    arrayList.add(c2463x.f6666c.mo1344j(this));
                    this.f6671c.remove(c2463x);
                }
            }
            if (arrayList.size() > 1) {
                C2464y c2464y = this.f6670b;
                C1236d c1236d = this.f6672d;
                c2464y.getClass();
                return new C2462w(arrayList, c1236d);
            }
            if (arrayList.size() == 1) {
                return (InterfaceC2457r) arrayList.get(0);
            }
            if (z9) {
                return f6668f;
            }
            throw new C1036i("Failed to find any ModelLoaders for model: " + cls + " and data: " + cls2);
        } catch (Throwable th) {
            this.f6671c.clear();
            throw th;
        }
    }

    /* JADX INFO: renamed from: c */
    public final synchronized ArrayList m3817c(Class cls) {
        ArrayList arrayList;
        arrayList = new ArrayList();
        ArrayList arrayList2 = this.f6669a;
        int size = arrayList2.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList2.get(i10);
            i10++;
            C2463x c2463x = (C2463x) obj;
            if (!arrayList.contains(c2463x.f6665b) && c2463x.f6664a.isAssignableFrom(cls)) {
                arrayList.add(c2463x.f6665b);
            }
        }
        return arrayList;
    }
}
