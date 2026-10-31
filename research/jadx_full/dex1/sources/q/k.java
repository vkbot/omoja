package q;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.MessageDigest;
import kotlin.UByte;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class k implements m, h.f, com.bumptech.glide.load.data.g {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f4724b;
    public final ByteBuffer c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public k(int i9) {
        this.f4724b = i9;
        switch (i9) {
            case 2:
                this.c = ByteBuffer.allocate(4);
                break;
            default:
                this.c = ByteBuffer.allocate(8);
                break;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // h.f
    public void a(byte[] bArr, Object obj, MessageDigest messageDigest) {
        switch (this.f4724b) {
            case 1:
                Long l9 = (Long) obj;
                messageDigest.update(bArr);
                synchronized (this.c) {
                    this.c.position(0);
                    messageDigest.update(this.c.putLong(l9.longValue()).array());
                    break;
                }
                return;
            default:
                Integer num = (Integer) obj;
                if (num == null) {
                    return;
                }
                messageDigest.update(bArr);
                synchronized (this.c) {
                    this.c.position(0);
                    messageDigest.update(this.c.putInt(num.intValue()).array());
                    break;
                }
                return;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // q.m
    public int c() {
        return (e() << 8) | e();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.bumptech.glide.load.data.g
    public Object d() {
        ByteBuffer byteBuffer = this.c;
        byteBuffer.position(0);
        return byteBuffer;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // q.m
    public short e() throws l {
        ByteBuffer byteBuffer = this.c;
        if (byteBuffer.remaining() >= 1) {
            return (short) (byteBuffer.get() & UByte.MAX_VALUE);
        }
        throw new l();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // q.m
    public int read(byte[] bArr, int i9) {
        ByteBuffer byteBuffer = this.c;
        int iMin = Math.min(i9, byteBuffer.remaining());
        if (iMin == 0) {
            return -1;
        }
        byteBuffer.get(bArr, 0, iMin);
        return iMin;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // q.m
    public long skip(long j9) {
        ByteBuffer byteBuffer = this.c;
        int iMin = (int) Math.min(byteBuffer.remaining(), j9);
        byteBuffer.position(byteBuffer.position() + iMin);
        return iMin;
    }

    @Override // com.bumptech.glide.load.data.g
    public void b() {
    }

    public k(ByteBuffer byteBuffer, int i9) {
        this.f4724b = i9;
        switch (i9) {
            case 3:
                this.c = byteBuffer;
                break;
            default:
                this.c = byteBuffer;
                byteBuffer.order(ByteOrder.BIG_ENDIAN);
                break;
        }
    }
}
