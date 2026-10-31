package h0;

import android.content.Context;
import com.example.navistart.cores.AreaDisplayProxy;
import com.example.navistart.cores.CarCmdProxy;
import com.example.navistart.cores.InterC;
import com.example.navistart.cores.ProBroProxy;
import com.example.navistart.cores.ProLanProxy;
import j1.v;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f2414a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public CarCmdProxy f2415b;
    public ProLanProxy c;
    public ProBroProxy d;
    public AreaDisplayProxy e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public i0.b f2416f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public k1.a f2417g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public n0.c f2418h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public v f2419i;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public a(Context context, n0.c cVar) {
        this.f2414a = context;
        this.f2418h = cVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void a(n0.c cVar, InterC interC, Context context) {
        this.f2419i = cVar.f3797i;
        Set setNewSetFromMap = Collections.newSetFromMap(new IdentityHashMap());
        Object[] objArr = {this.f2415b, this.c, this.d};
        for (int i9 = 0; i9 < 3; i9++) {
            Object obj = objArr[i9];
            if ((obj instanceof AutoCloseable) && setNewSetFromMap.add(obj)) {
                try {
                    ai.onnxruntime.a.A((AutoCloseable) obj);
                } catch (Exception unused) {
                }
            }
        }
        interC.c();
        this.f2415b = (CarCmdProxy) cVar.c.create(context);
        this.c = (ProLanProxy) cVar.d.create(context);
        this.d = (ProBroProxy) cVar.e.create(context);
        this.f2416f = (i0.b) cVar.f3794f.create();
        this.e = (AreaDisplayProxy) cVar.f3795g.create(context);
        this.f2417g = (k1.a) cVar.f3796h.create();
        this.f2418h = cVar;
    }
}
