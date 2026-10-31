package p208u2;

import ai.onnxruntime.AbstractC0074a;
import android.os.IBinder;
import android.os.IInterface;
import java.lang.reflect.Field;
import p099j1.C1929i;
import p181r2.AbstractC3093a;
import p227w2.AbstractBinderC3514b;

/* JADX INFO: renamed from: u2.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class BinderC3284b extends AbstractBinderC3514b implements InterfaceC3283a {

    /* JADX INFO: renamed from: c */
    public final Object f9619c;

    public BinderC3284b(Object obj) {
        super("u2.a");
        this.f9619c = obj;
    }

    /* JADX INFO: renamed from: c */
    public static InterfaceC3283a m5217c(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("u2.a");
        return iInterfaceQueryLocalInterface instanceof InterfaceC3283a ? (InterfaceC3283a) iInterfaceQueryLocalInterface : new C3285c(iBinder, "u2.a");
    }

    /* JADX INFO: renamed from: d */
    public static Object m5218d(InterfaceC3283a interfaceC3283a) {
        if (interfaceC3283a instanceof BinderC3284b) {
            return ((BinderC3284b) interfaceC3283a).f9619c;
        }
        IBinder iBinderAsBinder = interfaceC3283a.asBinder();
        Field[] declaredFields = iBinderAsBinder.getClass().getDeclaredFields();
        Field field = null;
        int i10 = 0;
        for (Field field2 : declaredFields) {
            if (!field2.isSynthetic()) {
                i10++;
                field = field2;
            }
        }
        if (i10 != 1) {
            C1929i.m3029k(AbstractC0074a.m154e(declaredFields.length, "Unexpected number of IObjectWrapper declared fields: "));
            return null;
        }
        AbstractC3093a.m4926b(field);
        if (field.isAccessible()) {
            C1929i.m3029k("IObjectWrapper declared field not private!");
            return null;
        }
        field.setAccessible(true);
        try {
            return field.get(iBinderAsBinder);
        } catch (IllegalAccessException e) {
            throw new IllegalArgumentException("Could not access the field in remoteBinder.", e);
        } catch (NullPointerException e6) {
            throw new IllegalArgumentException("Binder object is null.", e6);
        }
    }
}
