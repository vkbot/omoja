package e9;

import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.KClass;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class j extends Lambda implements Function2 {
    public static final j c = new j(2, 0);
    public static final j d = new j(2, 1);
    public final /* synthetic */ int b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ j(int i, int i2) {
        super(i);
        this.b = i2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Object invoke(Object obj, Object obj2) {
        switch (this.b) {
            case 0:
                KClass kClass = (KClass) obj;
                List list = (List) obj2;
                kClass.getClass();
                list.getClass();
                ArrayList arrayListU = com.bumptech.glide.d.u(j9.c.a, list, true);
                arrayListU.getClass();
                return com.bumptech.glide.d.o(kClass, arrayListU, new i(list, 0));
            default:
                KClass kClass2 = (KClass) obj;
                List list2 = (List) obj2;
                kClass2.getClass();
                list2.getClass();
                ArrayList arrayListU2 = com.bumptech.glide.d.u(j9.c.a, list2, true);
                arrayListU2.getClass();
                b bVarO = com.bumptech.glide.d.o(kClass2, arrayListU2, new i(list2, 1));
                if (bVarO != null) {
                    return f9.a.a(bVarO);
                }
                return null;
        }
    }
}
