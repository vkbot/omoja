package l9;

import android.content.Context;
import androidx.core.util.Supplier;
import com.example.navistart.cores.ProxyFactory$ProxyFactoryCreat;
import com.example.navistart.cores.ProxyFactory$ProxyFactoryCreatContext;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final /* synthetic */ class i implements ProxyFactory$ProxyFactoryCreatContext, ProxyFactory$ProxyFactoryCreat, Supplier {
    public final /* synthetic */ int b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ i(int i) {
        this.b = i;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void a() {
        throw new IllegalArgumentException();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r2v0, resolved type: int */
    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void b(int i, int i2, String str) {
        throw new IllegalArgumentException((str + i + ((char) i2)).toString());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r2v0, resolved type: int */
    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void c(int i, String str) {
        throw new IllegalArgumentException(str + ((char) i));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void d(Object obj) {
        throw new IllegalArgumentException(obj.toString());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void e(Object obj, String str) {
        throw new IllegalArgumentException((str + obj).toString());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Object create() {
        switch (this.b) {
            case 6:
                return new k1.a(6);
            case 7:
            case 11:
            case 19:
            case 22:
            case 23:
            case 24:
            case 26:
            case 27:
            default:
                return new h1.a(2);
            case 8:
                return new h1.a(0);
            case 9:
                h1.a aVar = new h1.a(3);
                aVar.b = e0.m.h(new byte[]{5, 77, -81, 104, -75, 53, 39, 30, 27, 75, -81, 102, -75, 48, 48, 5, 0, 71, -71, 117, -76, 53, 53, 20, 5, 75, -81, 120, -87, 49, 50, 1}, new byte[]{68, 24, -5, 39, -5, 116, 113, 87});
                return aVar;
            case 10:
                return new k1.a(2);
            case 12:
                return new g1.a(3);
            case 13:
                return new k1.a(3);
            case 14:
                return new g1.a(4);
            case 15:
                return new k1.a(4);
            case 16:
                return new k1.a(0);
            case 17:
                return new k1.a(1);
            case 18:
                return new g1.a(1);
            case 20:
                return new g1.a(5);
            case 21:
                return new k1.a(5);
            case 25:
                return new g1.a(0);
            case 28:
                return new h1.a(1);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Object get() {
        switch (this.b) {
            case 7:
                return new j1.q();
            case 11:
                return new j1.a(0);
            case 19:
                return new j1.a(1);
            case 22:
                return new j1.e();
            case 23:
                return new j1.b();
            case 24:
                return new j1.r(1);
            case 26:
                return new j1.k();
            default:
                return new j1.l();
        }
    }

    public Object create(Context context) {
        return new l1.a();
    }
}
