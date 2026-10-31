package n7;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class e0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3902a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public List f3903b;
    public b c;
    public Object[][] d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public e0(List list, b bVar, Object[][] objArr) {
        o4.b.i(list, "addresses are not set");
        this.f3903b = list;
        o4.b.i(bVar, "attrs");
        this.c = bVar;
        o4.b.i(objArr, "customOptions");
        this.d = objArr;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static e0 d() {
        e0 e0Var = new e0();
        e0Var.c = b.f3886b;
        e0Var.d = (Object[][]) Array.newInstance((Class<?>) Object.class, 0, 2);
        return e0Var;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void a(i0 i0Var) {
        h hVar;
        int length = 0;
        while (true) {
            Object[][] objArr = this.d;
            int length2 = objArr.length;
            hVar = j0.c;
            if (length >= length2) {
                length = -1;
                break;
            } else if (hVar.equals(objArr[length][0])) {
                break;
            } else {
                length++;
            }
        }
        if (length == -1) {
            Object[][] objArr2 = (Object[][]) Array.newInstance((Class<?>) Object.class, this.d.length + 1, 2);
            Object[][] objArr3 = this.d;
            System.arraycopy(objArr3, 0, objArr2, 0, objArr3.length);
            this.d = objArr2;
            length = objArr2.length - 1;
        }
        this.d[length] = new Object[]{hVar, i0Var};
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public e0 b() {
        return new e0(this.f3903b, this.c, this.d);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Object c() {
        Object[][] objArr = this.d;
        for (int i9 = 0; i9 < objArr.length; i9++) {
            if (j0.c.equals(objArr[i9][0])) {
                return objArr[i9][1];
            }
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void e(List list) {
        o4.b.d("addrs is empty", !list.isEmpty());
        this.f3903b = Collections.unmodifiableList(new ArrayList(list));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toString() {
        switch (this.f3902a) {
            case 1:
                com.bumptech.glide.manager.s sVarT = com.bumptech.glide.c.t(this);
                sVarT.c(this.f3903b, "addrs");
                sVarT.c(this.c, "attrs");
                sVarT.c(Arrays.deepToString(this.d), "customOptions");
                return sVarT.toString();
            default:
                return super.toString();
        }
    }

    public /* synthetic */ e0() {
    }
}
