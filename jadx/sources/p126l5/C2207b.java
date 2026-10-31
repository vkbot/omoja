package p126l5;

import ai.onnxruntime.AbstractC0074a;
import android.util.Log;
import com.google.firebase.components.ComponentRegistrar;
import java.lang.reflect.InvocationTargetException;
import p114k5.InterfaceC2050b;
import p136m5.C2400c;
import p155o4.C2591f;
import p200t4.C3250k;

/* JADX INFO: renamed from: l5.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C2207b implements InterfaceC2050b {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f5799a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ Object f5800b;

    public /* synthetic */ C2207b(int i10, Object obj) {
        this.f5799a = i10;
        this.f5800b = obj;
    }

    @Override // p114k5.InterfaceC2050b
    public final Object get() {
        switch (this.f5799a) {
            case 0:
                return new C2400c((C2591f) this.f5800b);
            case 1:
                String str = (String) this.f5800b;
                try {
                    Class<?> cls = Class.forName(str);
                    if (ComponentRegistrar.class.isAssignableFrom(cls)) {
                        return (ComponentRegistrar) cls.getDeclaredConstructor(null).newInstance(null);
                    }
                    throw new C3250k("Class " + str + " is not an instance of com.google.firebase.components.ComponentRegistrar");
                } catch (ClassNotFoundException unused) {
                    Log.w("ComponentDiscovery", "Class " + str + " is not an found.");
                    return null;
                } catch (IllegalAccessException e) {
                    throw new C3250k(AbstractC0074a.m162m("Could not instantiate ", str, "."), e);
                } catch (InstantiationException e6) {
                    throw new C3250k(AbstractC0074a.m162m("Could not instantiate ", str, "."), e6);
                } catch (NoSuchMethodException e10) {
                    throw new C3250k(AbstractC0074a.m161l("Could not instantiate ", str), e10);
                } catch (InvocationTargetException e11) {
                    throw new C3250k(AbstractC0074a.m161l("Could not instantiate ", str), e11);
                }
            default:
                return (ComponentRegistrar) this.f5800b;
        }
    }
}
