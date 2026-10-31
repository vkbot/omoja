package p096i9;

import androidx.navigation.serialization.RouteDecoder;
import java.util.Arrays;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.collections.ArraysKt;
import kotlin.text.Typography;
import p055e9.C1511g;
import p055e9.InterfaceC1506b;
import p076g9.InterfaceC1633e;
import p086h9.AbstractC1729b;

/* JADX INFO: renamed from: i9.b0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class C1804b0 implements InterfaceC1506b {

    /* JADX INFO: renamed from: a */
    public final Enum[] f4725a;

    /* JADX INFO: renamed from: b */
    public final Lazy f4726b;

    public C1804b0(String str, Enum[] enumArr) {
        str.getClass();
        enumArr.getClass();
        this.f4725a = enumArr;
        this.f4726b = LazyKt.lazy(new C1855r(1, this, str));
    }

    @Override // p055e9.InterfaceC1512h, p055e9.InterfaceC1505a
    /* JADX INFO: renamed from: a */
    public final InterfaceC1633e mo2581a() {
        return (InterfaceC1633e) this.f4726b.getValue();
    }

    @Override // p055e9.InterfaceC1512h
    /* JADX INFO: renamed from: b */
    public final void mo2583b(AbstractC1729b abstractC1729b, Object obj) {
        Enum r9 = (Enum) obj;
        r9.getClass();
        Enum[] enumArr = this.f4725a;
        int iIndexOf = ArraysKt.indexOf(enumArr, r9);
        if (iIndexOf != -1) {
            abstractC1729b.encodeEnum(mo2581a(), iIndexOf);
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(r9);
        String strMo2717a = mo2581a().mo2717a();
        String string = Arrays.toString(enumArr);
        string.getClass();
        sb.append(" is not a valid enum ");
        sb.append(strMo2717a);
        sb.append(", must be one of ");
        sb.append(string);
        throw new C1511g(sb.toString());
    }

    @Override // p055e9.InterfaceC1505a
    /* JADX INFO: renamed from: c */
    public final Object mo2582c(RouteDecoder routeDecoder) {
        int iDecodeEnum = routeDecoder.decodeEnum(mo2581a());
        Enum[] enumArr = this.f4725a;
        if (iDecodeEnum >= 0 && iDecodeEnum < enumArr.length) {
            return enumArr[iDecodeEnum];
        }
        throw new C1511g(iDecodeEnum + " is not among valid " + mo2581a().mo2717a() + " enum values, values size is " + enumArr.length);
    }

    public final String toString() {
        return "kotlinx.serialization.internal.EnumSerializer<" + mo2581a().mo2717a() + Typography.greater;
    }
}
