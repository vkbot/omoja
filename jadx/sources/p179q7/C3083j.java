package p179q7;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: renamed from: q7.j */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3083j implements InvocationHandler {

    /* JADX INFO: renamed from: a */
    public final ArrayList f8751a;

    /* JADX INFO: renamed from: b */
    public boolean f8752b;

    /* JADX INFO: renamed from: c */
    public String f8753c;

    public C3083j(ArrayList arrayList) {
        this.f8751a = arrayList;
    }

    @Override // java.lang.reflect.InvocationHandler
    public final Object invoke(Object obj, Method method, Object[] objArr) {
        String name = method.getName();
        Class<?> returnType = method.getReturnType();
        if (objArr == null) {
            objArr = AbstractC3087n.f8771a;
        }
        if (name.equals("supports") && Boolean.TYPE == returnType) {
            return Boolean.TRUE;
        }
        if (name.equals("unsupported") && Void.TYPE == returnType) {
            this.f8752b = true;
            return null;
        }
        boolean zEquals = name.equals("protocols");
        ArrayList arrayList = this.f8751a;
        if (zEquals && objArr.length == 0) {
            return arrayList;
        }
        if ((name.equals("selectProtocol") || name.equals("select")) && String.class == returnType && objArr.length == 1) {
            Object obj2 = objArr[0];
            if (obj2 instanceof List) {
                List list = (List) obj2;
                int size = list.size();
                for (int i10 = 0; i10 < size; i10++) {
                    if (arrayList.contains(list.get(i10))) {
                        String str = (String) list.get(i10);
                        this.f8753c = str;
                        return str;
                    }
                }
                String str2 = (String) arrayList.get(0);
                this.f8753c = str2;
                return str2;
            }
        }
        if ((!name.equals("protocolSelected") && !name.equals("selected")) || objArr.length != 1) {
            return method.invoke(this, objArr);
        }
        this.f8753c = (String) objArr[0];
        return null;
    }
}
