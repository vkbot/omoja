package i7;

import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2689a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ArrayList f2690b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public i(int i9) {
        this.f2689a = i9;
        switch (i9) {
            case 1:
                this.f2690b = new ArrayList();
                break;
            case 2:
                this.f2690b = new ArrayList(20);
                break;
            case 3:
                this.f2690b = new ArrayList();
                break;
            case 4:
                this.f2690b = new ArrayList();
                break;
            case 5:
                this.f2690b = new ArrayList();
                break;
            case 6:
                this.f2690b = new ArrayList();
                break;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static double a(double d, double d9) {
        double dAbs = Math.abs(d - d9) % 360.0d;
        return dAbs > 180.0d ? 360.0d - dAbs : dAbs;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static double c(double d, double d9, double d10, double d11) {
        double radians = Math.toRadians(d11 - d9);
        return (Math.toDegrees(Math.atan2(Math.cos(Math.toRadians(d10)) * Math.sin(radians), (Math.sin(Math.toRadians(d10)) * Math.cos(Math.toRadians(d))) - (Math.cos(radians) * (Math.cos(Math.toRadians(d10)) * Math.sin(Math.toRadians(d)))))) + 360.0d) % 360.0d;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void b(Object obj, String str) {
        this.f2690b.add(str + "=" + obj);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public synchronized h.k d(Class cls) {
        int size = this.f2690b.size();
        for (int i9 = 0; i9 < size; i9++) {
            x.d dVar = (x.d) this.f2690b.get(i9);
            if (dVar.f5955a.isAssignableFrom(cls)) {
                return dVar.f5956b;
            }
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public synchronized ArrayList e(Class cls, Class cls2) {
        ArrayList arrayList = new ArrayList();
        if (cls2.isAssignableFrom(cls)) {
            arrayList.add(cls2);
            return arrayList;
        }
        ArrayList arrayList2 = this.f2690b;
        int size = arrayList2.size();
        int i9 = 0;
        while (i9 < size) {
            Object obj = arrayList2.get(i9);
            i9++;
            v.b bVar = (v.b) obj;
            if ((bVar.f5495a.isAssignableFrom(cls) && cls2.isAssignableFrom(bVar.f5496b)) && !arrayList.contains(bVar.f5496b)) {
                arrayList.add(bVar.f5496b);
            }
        }
        return arrayList;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toString() {
        switch (this.f2689a) {
            case 1:
                return this.f2690b.toString();
            default:
                return super.toString();
        }
    }
}
