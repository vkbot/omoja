package p010a9;

import kotlin.text.Typography;
import p023b8.InterfaceC0930d;

/* JADX INFO: renamed from: a9.w */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class C0061w implements InterfaceC0930d {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f151b;

    /* JADX INFO: renamed from: c */
    public final String f152c;

    public C0061w(String str) {
        this.f151b = 2;
        str.getClass();
        this.f152c = str;
    }

    @Override // p023b8.InterfaceC0930d
    public boolean test(Object obj) {
        String str = this.f152c;
        if (obj != str) {
            return obj != null && obj.equals(str);
        }
        return true;
    }

    public String toString() {
        switch (this.f151b) {
            case 0:
                return "<" + this.f152c + Typography.greater;
            case 3:
                return this.f152c;
            default:
                return super.toString();
        }
    }

    public /* synthetic */ C0061w(String str, int i10) {
        this.f151b = i10;
        this.f152c = str;
    }
}
