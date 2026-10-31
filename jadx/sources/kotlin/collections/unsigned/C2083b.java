package kotlin.collections.unsigned;

import kotlin.UByteArray;
import kotlin.UIntArray;
import kotlin.ULongArray;
import kotlin.UShortArray;
import kotlin.jvm.functions.Function0;

/* JADX INFO: renamed from: kotlin.collections.unsigned.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C2083b implements Function0 {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f5629b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ Object f5630c;

    public /* synthetic */ C2083b(int i10, Object obj) {
        this.f5629b = i10;
        this.f5630c = obj;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        switch (this.f5629b) {
            case 0:
                return UIntArray.m6247iteratorimpl((int[]) this.f5630c);
            case 1:
                return ULongArray.m6326iteratorimpl((long[]) this.f5630c);
            case 2:
                return UByteArray.m6168iteratorimpl((byte[]) this.f5630c);
            default:
                return UShortArray.m6431iteratorimpl((short[]) this.f5630c);
        }
    }
}
