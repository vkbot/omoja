package p078h0;

import ai.onnxruntime.AbstractC0074a;
import android.content.Context;
import com.example.navistart.cores.AreaDisplayProxy;
import com.example.navistart.cores.CarCmdProxy;
import com.example.navistart.cores.InterC;
import com.example.navistart.cores.ProBroProxy;
import com.example.navistart.cores.ProLanProxy;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Set;
import p088i0.InterfaceC1738b;
import p099j1.InterfaceC1942v;
import p110k1.C2028a;
import p142n0.EnumC2468c;

/* JADX INFO: renamed from: h0.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1651a {

    /* JADX INFO: renamed from: a */
    public final Context f4185a;

    /* JADX INFO: renamed from: b */
    public CarCmdProxy f4186b;

    /* JADX INFO: renamed from: c */
    public ProLanProxy f4187c;

    /* JADX INFO: renamed from: d */
    public ProBroProxy f4188d;

    /* JADX INFO: renamed from: e */
    public AreaDisplayProxy f4189e;

    /* JADX INFO: renamed from: f */
    public InterfaceC1738b f4190f;

    /* JADX INFO: renamed from: g */
    public C2028a f4191g;

    /* JADX INFO: renamed from: h */
    public EnumC2468c f4192h;

    /* JADX INFO: renamed from: i */
    public InterfaceC1942v f4193i;

    public C1651a(Context context, EnumC2468c enumC2468c) {
        this.f4185a = context;
        this.f4192h = enumC2468c;
    }

    /* JADX INFO: renamed from: a */
    public final void m2733a(EnumC2468c enumC2468c, InterC interC, Context context) {
        this.f4193i = enumC2468c.f6710i;
        Set setNewSetFromMap = Collections.newSetFromMap(new IdentityHashMap());
        Object[] objArr = {this.f4186b, this.f4187c, this.f4188d};
        for (int i10 = 0; i10 < 3; i10++) {
            Object obj = objArr[i10];
            if ((obj instanceof AutoCloseable) && setNewSetFromMap.add(obj)) {
                try {
                    AbstractC0074a.m146A((AutoCloseable) obj);
                } catch (Exception unused) {
                }
            }
        }
        interC.m1632c();
        this.f4186b = (CarCmdProxy) enumC2468c.f6704c.create(context);
        this.f4187c = (ProLanProxy) enumC2468c.f6705d.create(context);
        this.f4188d = (ProBroProxy) enumC2468c.f6706e.create(context);
        this.f4190f = (InterfaceC1738b) enumC2468c.f6707f.create();
        this.f4189e = (AreaDisplayProxy) enumC2468c.f6708g.create(context);
        this.f4191g = (C2028a) enumC2468c.f6709h.create();
        this.f4192h = enumC2468c;
    }
}
