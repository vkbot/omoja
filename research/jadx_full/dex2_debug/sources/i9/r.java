package i9;

import java.util.HashMap;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.KClass;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class r extends Lambda implements Function0 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ r(int i, Object obj, Object obj2) {
        super(0);
        this.b = i;
        this.c = obj;
        this.d = obj2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Object invoke() {
        switch (this.b) {
            case 0:
                return new k((e9.b) ((Function1) ((android.support.v4.media.h) this.c).c).invoke((KClass) this.d));
            default:
                b0 b0Var = (b0) this.c;
                String str = (String) this.d;
                Enum[] enumArr = b0Var.a;
                a0 a0Var = new a0(str, enumArr.length);
                for (Enum r0 : enumArr) {
                    String strName = r0.name();
                    strName.getClass();
                    int i = a0Var.d + 1;
                    a0Var.d = i;
                    String[] strArr = a0Var.e;
                    strArr[i] = strName;
                    a0Var.g[i] = false;
                    a0Var.f[i] = null;
                    if (i == a0Var.c - 1) {
                        HashMap map = new HashMap();
                        int length = strArr.length;
                        for (int i2 = 0; i2 < length; i2++) {
                            map.put(strArr[i2], Integer.valueOf(i2));
                        }
                        a0Var.h = map;
                    }
                }
                return a0Var;
        }
    }
}
