package p157o7;

import p148n7.AbstractC2542t;
import p148n7.EnumC2518j;

/* JADX INFO: renamed from: o7.z2 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2750z2 {

    /* JADX INFO: renamed from: a */
    public final AbstractC2542t f7906a;

    /* JADX INFO: renamed from: c */
    public final C2734w2 f7908c;

    /* JADX INFO: renamed from: d */
    public boolean f7909d = false;

    /* JADX INFO: renamed from: b */
    public EnumC2518j f7907b = EnumC2518j.f6971e;

    public C2750z2(AbstractC2542t abstractC2542t, C2734w2 c2734w2) {
        this.f7906a = abstractC2542t;
        this.f7908c = c2734w2;
    }

    /* JADX INFO: renamed from: a */
    public static void m4266a(C2750z2 c2750z2, EnumC2518j enumC2518j) {
        c2750z2.f7907b = enumC2518j;
        if (enumC2518j == EnumC2518j.f6969c || enumC2518j == EnumC2518j.f6970d) {
            c2750z2.f7909d = true;
        } else if (enumC2518j == EnumC2518j.f6971e) {
            c2750z2.f7909d = false;
        }
    }
}
