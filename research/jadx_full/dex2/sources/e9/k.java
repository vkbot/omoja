package e9;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.KClass;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class k extends Lambda implements Function1 {
    public static final k c = new k(1, 0);
    public static final k d = new k(1, 1);
    public final /* synthetic */ int b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ k(int i, int i2) {
        super(i);
        this.b = i2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Object invoke(Object obj) {
        switch (this.b) {
            case 0:
                KClass kClass = (KClass) obj;
                kClass.getClass();
                return com.bumptech.glide.d.t(kClass);
            default:
                KClass kClass2 = (KClass) obj;
                kClass2.getClass();
                b bVarT = com.bumptech.glide.d.t(kClass2);
                if (bVarT != null) {
                    return f9.a.a(bVarT);
                }
                return null;
        }
    }
}
