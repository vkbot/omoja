package p172q;

import com.bumptech.glide.load.data.InterfaceC1046g;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.MessageDigest;
import kotlin.UByte;
import p077h.InterfaceC1644f;

/* JADX INFO: renamed from: q.k */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3021k implements InterfaceC3023m, InterfaceC1644f, InterfaceC1046g {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f8477b;

    /* JADX INFO: renamed from: c */
    public final ByteBuffer f8478c;

    public C3021k(int i10) {
        this.f8477b = i10;
        switch (i10) {
            case 2:
                this.f8478c = ByteBuffer.allocate(4);
                break;
            default:
                this.f8478c = ByteBuffer.allocate(8);
                break;
        }
    }

    @Override // p077h.InterfaceC1644f
    /* JADX INFO: renamed from: a */
    public void mo1139a(byte[] bArr, Object obj, MessageDigest messageDigest) {
        switch (this.f8477b) {
            case 1:
                Long l10 = (Long) obj;
                messageDigest.update(bArr);
                synchronized (this.f8478c) {
                    this.f8478c.position(0);
                    messageDigest.update(this.f8478c.putLong(l10.longValue()).array());
                    break;
                }
                return;
            default:
                Integer num = (Integer) obj;
                if (num == null) {
                    return;
                }
                messageDigest.update(bArr);
                synchronized (this.f8478c) {
                    this.f8478c.position(0);
                    messageDigest.update(this.f8478c.putInt(num.intValue()).array());
                    break;
                }
                return;
        }
    }

    @Override // p172q.InterfaceC3023m
    /* JADX INFO: renamed from: c */
    public int mo4195c() {
        return (mo4196e() << 8) | mo4196e();
    }

    @Override // com.bumptech.glide.load.data.InterfaceC1046g
    /* JADX INFO: renamed from: d */
    public Object mo1328d() {
        ByteBuffer byteBuffer = this.f8478c;
        byteBuffer.position(0);
        return byteBuffer;
    }

    @Override // p172q.InterfaceC3023m
    /* JADX INFO: renamed from: e */
    public short mo4196e() throws C3022l {
        ByteBuffer byteBuffer = this.f8478c;
        if (byteBuffer.remaining() >= 1) {
            return (short) (byteBuffer.get() & UByte.MAX_VALUE);
        }
        throw new C3022l();
    }

    @Override // p172q.InterfaceC3023m
    public int read(byte[] bArr, int i10) {
        ByteBuffer byteBuffer = this.f8478c;
        int iMin = Math.min(i10, byteBuffer.remaining());
        if (iMin == 0) {
            return -1;
        }
        byteBuffer.get(bArr, 0, iMin);
        return iMin;
    }

    @Override // p172q.InterfaceC3023m
    public long skip(long j10) {
        ByteBuffer byteBuffer = this.f8478c;
        int iMin = (int) Math.min(byteBuffer.remaining(), j10);
        byteBuffer.position(byteBuffer.position() + iMin);
        return iMin;
    }

    @Override // com.bumptech.glide.load.data.InterfaceC1046g
    /* JADX INFO: renamed from: b */
    public void mo1327b() {
    }

    public C3021k(ByteBuffer byteBuffer, int i10) {
        this.f8477b = i10;
        switch (i10) {
            case 3:
                this.f8478c = byteBuffer;
                break;
            default:
                this.f8478c = byteBuffer;
                byteBuffer.order(ByteOrder.BIG_ENDIAN);
                break;
        }
    }
}
