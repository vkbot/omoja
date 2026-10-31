package p130l9;

import android.content.Context;
import androidx.core.util.Supplier;
import com.example.navistart.cores.ProxyFactory;
import p047e0.AbstractC1387m;
import p068g1.C1604a;
import p079h1.C1654a;
import p099j1.C1921a;
import p099j1.C1922b;
import p099j1.C1925e;
import p099j1.C1931k;
import p099j1.C1932l;
import p099j1.C1937q;
import p099j1.C1938r;
import p110k1.C2028a;
import p122l1.C2196a;

/* JADX INFO: renamed from: l9.i */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2237i implements ProxyFactory.ProxyFactoryCreatContext, ProxyFactory.ProxyFactoryCreat, Supplier {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f5867b;

    public /* synthetic */ C2237i(int i10) {
        this.f5867b = i10;
    }

    /* JADX INFO: renamed from: a */
    public static /* synthetic */ void m3594a() {
        throw new IllegalArgumentException();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: b */
    public static /* synthetic */ void m3595b(int i10, int i11, String str) {
        throw new IllegalArgumentException((str + i10 + ((char) i11)).toString());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: c */
    public static /* synthetic */ void m3596c(int i10, String str) {
        throw new IllegalArgumentException(str + ((char) i10));
    }

    /* JADX INFO: renamed from: d */
    public static /* synthetic */ void m3597d(Object obj) {
        throw new IllegalArgumentException(obj.toString());
    }

    /* JADX INFO: renamed from: e */
    public static /* synthetic */ void m3598e(Object obj, String str) {
        throw new IllegalArgumentException((str + obj).toString());
    }

    @Override // com.example.navistart.cores.ProxyFactory.ProxyFactoryCreat
    public Object create() {
        int i10 = 4;
        int i11 = 2;
        int i12 = 3;
        int i13 = 0;
        int i14 = 1;
        int i15 = 5;
        switch (this.f5867b) {
            case 6:
                return new C2028a(6);
            case 7:
            case 11:
            case 19:
            case 22:
            case 23:
            case 24:
            case 26:
            case 27:
            default:
                return new C1654a(2);
            case 8:
                return new C1654a(0);
            case 9:
                C1654a c1654a = new C1654a(3);
                c1654a.f4217b = AbstractC1387m.m2421h(new byte[]{5, 77, -81, 104, -75, 53, 39, 30, 27, 75, -81, 102, -75, 48, 48, 5, 0, 71, -71, 117, -76, 53, 53, 20, 5, 75, -81, 120, -87, 49, 50, 1}, new byte[]{68, 24, -5, 39, -5, 116, 113, 87});
                return c1654a;
            case 10:
                return new C2028a(i11);
            case 12:
                return new C1604a(i12);
            case 13:
                return new C2028a(i12);
            case 14:
                return new C1604a(i10);
            case 15:
                return new C2028a(i10);
            case 16:
                return new C2028a(i13);
            case 17:
                return new C2028a(i14);
            case 18:
                return new C1604a(i14);
            case 20:
                return new C1604a(i15);
            case 21:
                return new C2028a(i15);
            case 25:
                return new C1604a(i13);
            case 28:
                return new C1654a(1);
        }
    }

    @Override // androidx.core.util.Supplier
    public Object get() {
        switch (this.f5867b) {
            case 7:
                return new C1937q();
            case 11:
                return new C1921a(0);
            case 19:
                return new C1921a(1);
            case 22:
                return new C1925e();
            case 23:
                return new C1922b();
            case 24:
                return new C1938r(1);
            case 26:
                return new C1931k();
            default:
                return new C1932l();
        }
    }

    @Override // com.example.navistart.cores.ProxyFactory.ProxyFactoryCreatContext
    public Object create(Context context) {
        return new C2196a();
    }
}
