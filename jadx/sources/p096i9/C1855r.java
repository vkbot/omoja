package p096i9;

import android.support.v4.media.C0090h;
import java.util.HashMap;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.KClass;
import p055e9.InterfaceC1506b;

/* JADX INFO: renamed from: i9.r */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class C1855r extends Lambda implements Function0 {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f4815b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ Object f4816c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ Object f4817d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C1855r(int i10, Object obj, Object obj2) {
        super(0);
        this.f4815b = i10;
        this.f4816c = obj;
        this.f4817d = obj2;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        switch (this.f4815b) {
            case 0:
                return new C1834k((InterfaceC1506b) ((Function1) ((C0090h) this.f4816c).f191c).invoke((KClass) this.f4817d));
            default:
                C1804b0 c1804b0 = (C1804b0) this.f4816c;
                String str = (String) this.f4817d;
                Enum[] enumArr = c1804b0.f4725a;
                C1800a0 c1800a0 = new C1800a0(str, enumArr.length);
                for (Enum r1 : enumArr) {
                    String strName = r1.name();
                    strName.getClass();
                    int i10 = c1800a0.f4760d + 1;
                    c1800a0.f4760d = i10;
                    String[] strArr = c1800a0.f4761e;
                    strArr[i10] = strName;
                    c1800a0.f4763g[i10] = false;
                    c1800a0.f4762f[i10] = null;
                    if (i10 == c1800a0.f4759c - 1) {
                        HashMap map = new HashMap();
                        int length = strArr.length;
                        for (int i11 = 0; i11 < length; i11++) {
                            map.put(strArr[i11], Integer.valueOf(i11));
                        }
                        c1800a0.f4764h = map;
                    }
                }
                return c1800a0;
        }
    }
}
