package i9;

import androidx.navigation.serialization.RouteDecoder;
import java.util.Arrays;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.collections.ArraysKt;
import kotlin.text.Typography;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class b0 implements e9.b {
    public final Enum[] a;
    public final Lazy b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public b0(String str, Enum[] enumArr) {
        str.getClass();
        enumArr.getClass();
        this.a = enumArr;
        this.b = LazyKt.lazy(new r(1, this, str));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // e9.h, e9.a
    public final g9.e a() {
        return (g9.e) this.b.getValue();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // e9.h
    public final void b(h9.b bVar, Object obj) {
        Enum r5 = (Enum) obj;
        r5.getClass();
        Enum[] enumArr = this.a;
        int iIndexOf = ArraysKt.indexOf(enumArr, r5);
        if (iIndexOf != -1) {
            bVar.encodeEnum(a(), iIndexOf);
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(r5);
        String strA = a().a();
        String string = Arrays.toString(enumArr);
        string.getClass();
        sb.append(" is not a valid enum ");
        sb.append(strA);
        sb.append(", must be one of ");
        sb.append(string);
        throw new e9.g(sb.toString());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // e9.a
    public final Object c(RouteDecoder routeDecoder) {
        int iDecodeEnum = routeDecoder.decodeEnum(a());
        Enum[] enumArr = this.a;
        if (iDecodeEnum >= 0 && iDecodeEnum < enumArr.length) {
            return enumArr[iDecodeEnum];
        }
        throw new e9.g(iDecodeEnum + " is not among valid " + a().a() + " enum values, values size is " + enumArr.length);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        return "kotlinx.serialization.internal.EnumSerializer<" + a().a() + Typography.greater;
    }
}
