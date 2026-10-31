package v;

import b7.s;
import h.h;
import j.d0;
import java.nio.ByteBuffer;
import java.util.concurrent.atomic.AtomicReference;
import q.a0;
import u.f;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class c implements a {
    public static final c c = new c(0);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f5497b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ c(int i9) {
        this.f5497b = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // v.a
    public final d0 a(d0 d0Var, h hVar) {
        byte[] bArrArray;
        switch (this.f5497b) {
            case 0:
                return d0Var;
            default:
                ByteBuffer byteBufferAsReadOnlyBuffer = ((f) ((u.b) d0Var.get()).f5423b.f4939b).f5436a.d.asReadOnlyBuffer();
                AtomicReference atomicReference = c0.b.f393a;
                s sVar = (byteBufferAsReadOnlyBuffer.isReadOnly() || !byteBufferAsReadOnlyBuffer.hasArray()) ? null : new s(byteBufferAsReadOnlyBuffer.array(), byteBufferAsReadOnlyBuffer.arrayOffset(), byteBufferAsReadOnlyBuffer.limit());
                if (sVar != null && sVar.f386a == 0 && sVar.f387b == sVar.c.length) {
                    bArrArray = byteBufferAsReadOnlyBuffer.array();
                } else {
                    ByteBuffer byteBufferAsReadOnlyBuffer2 = byteBufferAsReadOnlyBuffer.asReadOnlyBuffer();
                    byte[] bArr = new byte[byteBufferAsReadOnlyBuffer2.limit()];
                    byteBufferAsReadOnlyBuffer2.get(bArr);
                    bArrArray = bArr;
                }
                return new a0(bArrArray);
        }
    }
}
