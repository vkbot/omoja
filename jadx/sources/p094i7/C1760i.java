package p094i7;

import java.util.ArrayList;
import p077h.InterfaceC1649k;
import p215v.C3312b;
import p234x.C3546d;

/* JADX INFO: renamed from: i7.i */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1760i {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f4602a;

    /* JADX INFO: renamed from: b */
    public ArrayList f4603b;

    public C1760i(int i10) {
        this.f4602a = i10;
        switch (i10) {
            case 1:
                this.f4603b = new ArrayList();
                break;
            case 2:
                this.f4603b = new ArrayList(20);
                break;
            case 3:
                this.f4603b = new ArrayList();
                break;
            case 4:
                this.f4603b = new ArrayList();
                break;
            case 5:
                this.f4603b = new ArrayList();
                break;
            case 6:
                this.f4603b = new ArrayList();
                break;
        }
    }

    /* JADX INFO: renamed from: a */
    public static double m2882a(double d, double d10) {
        double dAbs = Math.abs(d - d10) % 360.0d;
        return dAbs > 180.0d ? 360.0d - dAbs : dAbs;
    }

    /* JADX INFO: renamed from: c */
    public static double m2883c(double d, double d10, double d11, double d12) {
        double radians = Math.toRadians(d12 - d10);
        return (Math.toDegrees(Math.atan2(Math.cos(Math.toRadians(d11)) * Math.sin(radians), (Math.sin(Math.toRadians(d11)) * Math.cos(Math.toRadians(d))) - (Math.cos(radians) * (Math.cos(Math.toRadians(d11)) * Math.sin(Math.toRadians(d)))))) + 360.0d) % 360.0d;
    }

    /* JADX INFO: renamed from: b */
    public void m2884b(Object obj, String str) {
        this.f4603b.add(str + "=" + obj);
    }

    /* JADX INFO: renamed from: d */
    public synchronized InterfaceC1649k m2885d(Class cls) {
        int size = this.f4603b.size();
        for (int i10 = 0; i10 < size; i10++) {
            C3546d c3546d = (C3546d) this.f4603b.get(i10);
            if (c3546d.f10521a.isAssignableFrom(cls)) {
                return c3546d.f10522b;
            }
        }
        return null;
    }

    /* JADX INFO: renamed from: e */
    public synchronized ArrayList m2886e(Class cls, Class cls2) {
        ArrayList arrayList = new ArrayList();
        if (cls2.isAssignableFrom(cls)) {
            arrayList.add(cls2);
            return arrayList;
        }
        ArrayList arrayList2 = this.f4603b;
        int size = arrayList2.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList2.get(i10);
            i10++;
            C3312b c3312b = (C3312b) obj;
            if ((c3312b.f9696a.isAssignableFrom(cls) && cls2.isAssignableFrom(c3312b.f9697b)) && !arrayList.contains(c3312b.f9697b)) {
                arrayList.add(c3312b.f9697b);
            }
        }
        return arrayList;
    }

    public String toString() {
        switch (this.f4602a) {
            case 1:
                return this.f4603b.toString();
            default:
                return super.toString();
        }
    }
}
