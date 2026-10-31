package l5;

import android.util.Log;
import com.google.firebase.components.ComponentRegistrar;
import java.lang.reflect.InvocationTargetException;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class b implements k5.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3289a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f3290b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ b(int i9, Object obj) {
        this.f3289a = i9;
        this.f3290b = obj;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // k5.b
    public final Object get() {
        switch (this.f3289a) {
            case 0:
                return new m5.c((o4.f) this.f3290b);
            case 1:
                String str = (String) this.f3290b;
                try {
                    Class<?> cls = Class.forName(str);
                    if (ComponentRegistrar.class.isAssignableFrom(cls)) {
                        return (ComponentRegistrar) cls.getDeclaredConstructor(null).newInstance(null);
                    }
                    throw new t4.k("Class " + str + " is not an instance of com.google.firebase.components.ComponentRegistrar");
                } catch (ClassNotFoundException unused) {
                    Log.w("ComponentDiscovery", "Class " + str + " is not an found.");
                    return null;
                } catch (IllegalAccessException e) {
                    throw new t4.k(ai.onnxruntime.a.m("Could not instantiate ", str, "."), e);
                } catch (InstantiationException e6) {
                    throw new t4.k(ai.onnxruntime.a.m("Could not instantiate ", str, "."), e6);
                } catch (NoSuchMethodException e9) {
                    throw new t4.k(ai.onnxruntime.a.l("Could not instantiate ", str), e9);
                } catch (InvocationTargetException e10) {
                    throw new t4.k(ai.onnxruntime.a.l("Could not instantiate ", str), e10);
                }
            default:
                return (ComponentRegistrar) this.f3290b;
        }
    }
}
