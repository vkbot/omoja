package o7;

import androidx.exifinterface.media.ExifInterface;
import java.io.OutputStream;
import java.net.ProxySelector;
import java.nio.ByteBuffer;
import java.util.Random;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class u2 implements u, a0, r4, n7.r0, n7.u0 {
    public static final u2 c = new u2(0);
    public static final u2 d = new u2(1);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f4460b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public u2(k kVar) {
        this.f4460b = 2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static r0 s() {
        r0 r0Var = new r0();
        r0Var.f4416a = new Random();
        r0Var.f4417b = 120000000000L;
        r0Var.c = 1.6d;
        r0Var.d = 0.2d;
        r0Var.e = 1000000000L;
        return r0Var;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n7.r0
    public String b(Object obj) {
        Long l9 = (Long) obj;
        if (l9.longValue() < 0) {
            j1.i.k("Timeout too small");
            return null;
        }
        if (l9.longValue() < 100000000) {
            return l9 + "n";
        }
        if (l9.longValue() < 100000000000L) {
            return (l9.longValue() / 1000) + "u";
        }
        if (l9.longValue() < 100000000000000L) {
            return (l9.longValue() / 1000000) + "m";
        }
        if (l9.longValue() < 100000000000000000L) {
            return (l9.longValue() / 1000000000) + ExifInterface.LATITUDE_SOUTH;
        }
        if (l9.longValue() < 6000000000000000000L) {
            return (l9.longValue() / 60000000000L) + "M";
        }
        return (l9.longValue() / 3600000000000L) + "H";
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.r4
    public Object create() {
        switch (this.f4460b) {
            case 10:
                return Executors.newCachedThreadPool(y0.e("grpc-default-executor-%d"));
            default:
                ScheduledExecutorService scheduledExecutorServiceNewScheduledThreadPool = Executors.newScheduledThreadPool(1, y0.e("grpc-timer-%d"));
                try {
                    scheduledExecutorServiceNewScheduledThreadPool.getClass().getMethod("setRemoveOnCancelPolicy", Boolean.TYPE).invoke(scheduledExecutorServiceNewScheduledThreadPool, Boolean.TRUE);
                    break;
                } catch (NoSuchMethodException unused) {
                } catch (RuntimeException e) {
                    throw e;
                } catch (Exception e6) {
                    n0.b.w(e6);
                    return null;
                }
                return Executors.unconfigurableScheduledExecutorService(scheduledExecutorServiceNewScheduledThreadPool);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.u
    public void e(i7.i iVar) {
        iVar.f2690b.add("noop");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.u4
    public boolean isReady() {
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n7.r0
    public Object j(String str) {
        o4.b.d("empty timeout", str.length() > 0);
        o4.b.d("bad timeout format", str.length() <= 9);
        long j9 = Long.parseLong(str.substring(0, str.length() - 1));
        char cCharAt = str.charAt(str.length() - 1);
        if (cCharAt == 'H') {
            return Long.valueOf(TimeUnit.HOURS.toNanos(j9));
        }
        if (cCharAt == 'M') {
            return Long.valueOf(TimeUnit.MINUTES.toNanos(j9));
        }
        if (cCharAt == 'S') {
            return Long.valueOf(TimeUnit.SECONDS.toNanos(j9));
        }
        if (cCharAt == 'u') {
            return Long.valueOf(TimeUnit.MICROSECONDS.toNanos(j9));
        }
        if (cCharAt == 'm') {
            return Long.valueOf(TimeUnit.MILLISECONDS.toNanos(j9));
        }
        if (cCharAt == 'n') {
            return Long.valueOf(j9);
        }
        l9.i.c(cCharAt, "Invalid timeout unit: ");
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n7.u0
    public Object k(byte[] bArr) {
        switch (this.f4460b) {
            case 13:
                return bArr;
            default:
                if (bArr.length < 3) {
                    throw new NumberFormatException("Malformed status code ".concat(new String(bArr, n7.b0.f3888a)));
                }
                return Integer.valueOf((bArr[2] - 48) + ((bArr[1] - 48) * 10) + ((bArr[0] - 48) * 100));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.a0
    public int l(c cVar, int i9, Object obj, int i10) {
        switch (this.f4460b) {
            case 4:
                return cVar.e0();
            case 5:
                cVar.h0(i9);
                return 0;
            case 6:
                cVar.d0((byte[]) obj, i10, i9);
                return i10 + i9;
            case 7:
                ByteBuffer byteBuffer = (ByteBuffer) obj;
                int iLimit = byteBuffer.limit();
                byteBuffer.limit(byteBuffer.position() + i9);
                cVar.c0(byteBuffer);
                byteBuffer.limit(iLimit);
                return 0;
            default:
                cVar.V((OutputStream) obj, i9);
                return 0;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.r4
    public void p(Object obj) {
        switch (this.f4460b) {
            case 10:
                ((ExecutorService) ((Executor) obj)).shutdown();
                break;
            default:
                ((ScheduledExecutorService) obj).shutdown();
                break;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public long q() {
        return TimeUnit.MILLISECONDS.toNanos(System.currentTimeMillis());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Object r() {
        switch (this.f4460b) {
            case 12:
                return new i4.f();
            default:
                return ProxySelector.getDefault();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toString() {
        switch (this.f4460b) {
            case 10:
                return "grpc-default-executor";
            default:
                return super.toString();
        }
    }

    public /* synthetic */ u2(int i9) {
        this.f4460b = i9;
    }

    @Override // o7.u4
    public void flush() {
    }

    @Override // o7.u
    public void i() {
    }

    @Override // o7.u4
    public void o() {
    }

    @Override // o7.u4
    public void request() {
    }

    @Override // o7.u4
    public void a(n7.h hVar) {
    }

    @Override // o7.u
    public void c(int i9) {
    }

    @Override // o7.u
    public void d(w wVar) {
    }

    @Override // o7.u4
    public void f(t7.a aVar) {
    }

    @Override // o7.u
    public void g(n7.q qVar) {
    }

    @Override // o7.u
    public void h(n7.f1 f1Var) {
    }

    @Override // o7.u
    public void m(int i9) {
    }

    @Override // o7.u
    public void n(n7.o oVar) {
    }

    /* JADX DEBUG: Possible override for method n7.r0.b(Ljava/lang/Object;)Ljava/lang/String; */
    @Override // n7.u0
    /* JADX INFO: renamed from: b */
    public byte[] mo1385b(Object obj) {
        switch (this.f4460b) {
            case 13:
                return (byte[]) obj;
            default:
                throw new UnsupportedOperationException();
        }
    }
}
