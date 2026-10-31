package p215v;

import java.nio.ByteBuffer;
import java.util.concurrent.atomic.AtomicReference;
import p022b7.C0923s;
import p025c0.AbstractC0933b;
import p077h.C1646h;
import p097j.InterfaceC1889d0;
import p172q.C3006a0;
import p205u.C3270b;
import p205u.C3274f;

/* JADX INFO: renamed from: v.c */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3313c implements InterfaceC3311a {

    /* JADX INFO: renamed from: c */
    public static final C3313c f9699c = new C3313c(0);

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f9700b;

    public /* synthetic */ C3313c(int i10) {
        this.f9700b = i10;
    }

    @Override // p215v.InterfaceC3311a
    /* JADX INFO: renamed from: a */
    public final InterfaceC1889d0 mo67a(InterfaceC1889d0 interfaceC1889d0, C1646h c1646h) {
        byte[] bArrArray;
        switch (this.f9700b) {
            case 0:
                return interfaceC1889d0;
            default:
                ByteBuffer byteBufferAsReadOnlyBuffer = ((C3274f) ((C3270b) interfaceC1889d0.get()).f9570b.f8794b).f9589a.f3996d.asReadOnlyBuffer();
                AtomicReference atomicReference = AbstractC0933b.f786a;
                C0923s c0923s = (byteBufferAsReadOnlyBuffer.isReadOnly() || !byteBufferAsReadOnlyBuffer.hasArray()) ? null : new C0923s(byteBufferAsReadOnlyBuffer.array(), byteBufferAsReadOnlyBuffer.arrayOffset(), byteBufferAsReadOnlyBuffer.limit());
                if (c0923s != null && c0923s.f773a == 0 && c0923s.f774b == c0923s.f775c.length) {
                    bArrArray = byteBufferAsReadOnlyBuffer.array();
                } else {
                    ByteBuffer byteBufferAsReadOnlyBuffer2 = byteBufferAsReadOnlyBuffer.asReadOnlyBuffer();
                    byte[] bArr = new byte[byteBufferAsReadOnlyBuffer2.limit()];
                    byteBufferAsReadOnlyBuffer2.get(bArr);
                    bArrArray = bArr;
                }
                return new C3006a0(bArrArray);
        }
    }
}
