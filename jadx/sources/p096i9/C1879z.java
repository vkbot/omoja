package p096i9;

import com.bumptech.glide.AbstractC1030c;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.apache.commons.p161io.FilenameUtils;
import p076g9.C1637i;
import p076g9.C1638j;
import p076g9.InterfaceC1633e;

/* JADX INFO: renamed from: i9.z */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class C1879z extends Lambda implements Function0 {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f4857b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ String f4858c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ C1800a0 f4859d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1879z(int i10, String str, C1800a0 c1800a0) {
        super(0);
        this.f4857b = i10;
        this.f4858c = str;
        this.f4859d = c1800a0;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i10 = this.f4857b;
        InterfaceC1633e[] interfaceC1633eArr = new InterfaceC1633e[i10];
        for (int i11 = 0; i11 < i10; i11++) {
            interfaceC1633eArr[i11] = AbstractC1030c.m1253b(this.f4858c + FilenameUtils.EXTENSION_SEPARATOR + this.f4859d.f4761e[i11], C1638j.f4170g, new InterfaceC1633e[0], C1637i.f4166b);
        }
        return interfaceC1633eArr;
    }
}
