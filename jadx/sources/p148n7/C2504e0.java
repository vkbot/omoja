package p148n7;

import com.bumptech.glide.AbstractC1030c;
import com.bumptech.glide.manager.C1073s;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import p155o4.AbstractC2587b;

/* JADX INFO: renamed from: n7.e0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2504e0 {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f6905a = 0;

    /* JADX INFO: renamed from: b */
    public List f6906b;

    /* JADX INFO: renamed from: c */
    public C2494b f6907c;

    /* JADX INFO: renamed from: d */
    public Object[][] f6908d;

    public C2504e0(List list, C2494b c2494b, Object[][] objArr) {
        AbstractC2587b.m4042i(list, "addresses are not set");
        this.f6906b = list;
        AbstractC2587b.m4042i(c2494b, "attrs");
        this.f6907c = c2494b;
        AbstractC2587b.m4042i(objArr, "customOptions");
        this.f6908d = objArr;
    }

    /* JADX INFO: renamed from: d */
    public static C2504e0 m3919d() {
        C2504e0 c2504e0 = new C2504e0();
        c2504e0.f6907c = C2494b.f6881b;
        c2504e0.f6908d = (Object[][]) Array.newInstance((Class<?>) Object.class, 0, 2);
        return c2504e0;
    }

    /* JADX INFO: renamed from: a */
    public void m3920a(InterfaceC2516i0 interfaceC2516i0) {
        C2512h c2512h;
        int length = 0;
        while (true) {
            Object[][] objArr = this.f6908d;
            int length2 = objArr.length;
            c2512h = AbstractC2519j0.f6975c;
            if (length >= length2) {
                length = -1;
                break;
            } else if (c2512h.equals(objArr[length][0])) {
                break;
            } else {
                length++;
            }
        }
        if (length == -1) {
            Object[][] objArr2 = (Object[][]) Array.newInstance((Class<?>) Object.class, this.f6908d.length + 1, 2);
            Object[][] objArr3 = this.f6908d;
            System.arraycopy(objArr3, 0, objArr2, 0, objArr3.length);
            this.f6908d = objArr2;
            length = objArr2.length - 1;
        }
        this.f6908d[length] = new Object[]{c2512h, interfaceC2516i0};
    }

    /* JADX INFO: renamed from: b */
    public C2504e0 m3921b() {
        return new C2504e0(this.f6906b, this.f6907c, this.f6908d);
    }

    /* JADX INFO: renamed from: c */
    public Object m3922c() {
        Object[][] objArr = this.f6908d;
        for (int i10 = 0; i10 < objArr.length; i10++) {
            if (AbstractC2519j0.f6975c.equals(objArr[i10][0])) {
                return objArr[i10][1];
            }
        }
        return null;
    }

    /* JADX INFO: renamed from: e */
    public void m3923e(List list) {
        AbstractC2587b.m4037d("addrs is empty", !list.isEmpty());
        this.f6906b = Collections.unmodifiableList(new ArrayList(list));
    }

    public String toString() {
        switch (this.f6905a) {
            case 1:
                C1073s c1073sM1263t = AbstractC1030c.m1263t(this);
                c1073sM1263t.m1347c(this.f6906b, "addrs");
                c1073sM1263t.m1347c(this.f6907c, "attrs");
                c1073sM1263t.m1347c(Arrays.deepToString(this.f6908d), "customOptions");
                return c1073sM1263t.toString();
            default:
                return super.toString();
        }
    }

    public /* synthetic */ C2504e0() {
    }
}
