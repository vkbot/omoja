package i9;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.apache.commons.io.FilenameUtils;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class z extends Lambda implements Function0 {
    public final /* synthetic */ int b;
    public final /* synthetic */ String c;
    public final /* synthetic */ a0 d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public z(int i, String str, a0 a0Var) {
        super(0);
        this.b = i;
        this.c = str;
        this.d = a0Var;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Object invoke() {
        int i = this.b;
        g9.e[] eVarArr = new g9.e[i];
        for (int i2 = 0; i2 < i; i2++) {
            eVarArr[i2] = com.bumptech.glide.c.b(this.c + FilenameUtils.EXTENSION_SEPARATOR + this.d.e[i2], g9.j.g, new g9.e[0], g9.i.b);
        }
        return eVarArr;
    }
}
