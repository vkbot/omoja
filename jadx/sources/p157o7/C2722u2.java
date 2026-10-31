package p157o7;

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
import p091i4.C1748f;
import p094i7.C1760i;
import p099j1.C1929i;
import p130l9.C2237i;
import p142n0.C2467b;
import p148n7.AbstractC2495b0;
import p148n7.C2508f1;
import p148n7.C2512h;
import p148n7.C2532o;
import p148n7.C2536q;
import p148n7.InterfaceC2539r0;
import p148n7.InterfaceC2545u0;
import p155o4.AbstractC2587b;
import p203t7.C3265a;

/* JADX INFO: renamed from: o7.u2 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class C2722u2 implements InterfaceC2719u, InterfaceC2600a0, InterfaceC2706r4, InterfaceC2539r0, InterfaceC2545u0 {

    /* JADX INFO: renamed from: c */
    public static final C2722u2 f7797c = new C2722u2(0);

    /* JADX INFO: renamed from: d */
    public static final C2722u2 f7798d = new C2722u2(1);

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f7799b;

    public C2722u2(C2659k c2659k) {
        this.f7799b = 2;
    }

    /* JADX INFO: renamed from: s */
    public static C2702r0 m4244s() {
        C2702r0 c2702r0 = new C2702r0();
        c2702r0.f7736a = new Random();
        c2702r0.f7737b = 120000000000L;
        c2702r0.f7738c = 1.6d;
        c2702r0.f7739d = 0.2d;
        c2702r0.f7740e = 1000000000L;
        return c2702r0;
    }

    @Override // p148n7.InterfaceC2539r0
    /* JADX INFO: renamed from: b */
    public String mo3937b(Object obj) {
        Long l10 = (Long) obj;
        if (l10.longValue() < 0) {
            C1929i.m3029k("Timeout too small");
            return null;
        }
        if (l10.longValue() < 100000000) {
            return l10 + "n";
        }
        if (l10.longValue() < 100000000000L) {
            return (l10.longValue() / 1000) + "u";
        }
        if (l10.longValue() < 100000000000000L) {
            return (l10.longValue() / 1000000) + "m";
        }
        if (l10.longValue() < 100000000000000000L) {
            return (l10.longValue() / 1000000000) + ExifInterface.LATITUDE_SOUTH;
        }
        if (l10.longValue() < 6000000000000000000L) {
            return (l10.longValue() / 60000000000L) + "M";
        }
        return (l10.longValue() / 3600000000000L) + "H";
    }

    @Override // p157o7.InterfaceC2706r4
    public Object create() {
        switch (this.f7799b) {
            case 10:
                return Executors.newCachedThreadPool(AbstractC2743y0.m4261e("grpc-default-executor-%d"));
            default:
                ScheduledExecutorService scheduledExecutorServiceNewScheduledThreadPool = Executors.newScheduledThreadPool(1, AbstractC2743y0.m4261e("grpc-timer-%d"));
                try {
                    scheduledExecutorServiceNewScheduledThreadPool.getClass().getMethod("setRemoveOnCancelPolicy", Boolean.TYPE).invoke(scheduledExecutorServiceNewScheduledThreadPool, Boolean.TRUE);
                    break;
                } catch (NoSuchMethodException unused) {
                } catch (RuntimeException e) {
                    throw e;
                } catch (Exception e6) {
                    C2467b.m3833w(e6);
                    return null;
                }
                return Executors.unconfigurableScheduledExecutorService(scheduledExecutorServiceNewScheduledThreadPool);
        }
    }

    @Override // p157o7.InterfaceC2719u
    /* JADX INFO: renamed from: e */
    public void mo4094e(C1760i c1760i) {
        c1760i.f4603b.add("noop");
    }

    @Override // p157o7.InterfaceC2724u4
    public boolean isReady() {
        return false;
    }

    @Override // p148n7.InterfaceC2539r0
    /* JADX INFO: renamed from: j */
    public Object mo3940j(String str) {
        AbstractC2587b.m4037d("empty timeout", str.length() > 0);
        AbstractC2587b.m4037d("bad timeout format", str.length() <= 9);
        long j10 = Long.parseLong(str.substring(0, str.length() - 1));
        char cCharAt = str.charAt(str.length() - 1);
        if (cCharAt == 'H') {
            return Long.valueOf(TimeUnit.HOURS.toNanos(j10));
        }
        if (cCharAt == 'M') {
            return Long.valueOf(TimeUnit.MINUTES.toNanos(j10));
        }
        if (cCharAt == 'S') {
            return Long.valueOf(TimeUnit.SECONDS.toNanos(j10));
        }
        if (cCharAt == 'u') {
            return Long.valueOf(TimeUnit.MICROSECONDS.toNanos(j10));
        }
        if (cCharAt == 'm') {
            return Long.valueOf(TimeUnit.MILLISECONDS.toNanos(j10));
        }
        if (cCharAt == 'n') {
            return Long.valueOf(j10);
        }
        C2237i.m3596c(cCharAt, "Invalid timeout unit: ");
        return null;
    }

    @Override // p148n7.InterfaceC2545u0
    /* JADX INFO: renamed from: k */
    public Object mo3941k(byte[] bArr) {
        switch (this.f7799b) {
            case 13:
                return bArr;
            default:
                if (bArr.length < 3) {
                    throw new NumberFormatException("Malformed status code ".concat(new String(bArr, AbstractC2495b0.f6883a)));
                }
                return Integer.valueOf((bArr[2] - 48) + ((bArr[1] - 48) * 10) + ((bArr[0] - 48) * 100));
        }
    }

    @Override // p157o7.InterfaceC2600a0
    /* JADX INFO: renamed from: l */
    public int mo4085l(AbstractC2611c abstractC2611c, int i10, Object obj, int i11) {
        switch (this.f7799b) {
            case 4:
                return abstractC2611c.mo4107e0();
            case 5:
                abstractC2611c.mo4110h0(i10);
                return 0;
            case 6:
                abstractC2611c.mo4106d0((byte[]) obj, i11, i10);
                return i11 + i10;
            case 7:
                ByteBuffer byteBuffer = (ByteBuffer) obj;
                int iLimit = byteBuffer.limit();
                byteBuffer.limit(byteBuffer.position() + i10);
                abstractC2611c.mo4105c0(byteBuffer);
                byteBuffer.limit(iLimit);
                return 0;
            default:
                abstractC2611c.mo4103V((OutputStream) obj, i10);
                return 0;
        }
    }

    @Override // p157o7.InterfaceC2706r4
    /* JADX INFO: renamed from: p */
    public void mo4231p(Object obj) {
        switch (this.f7799b) {
            case 10:
                ((ExecutorService) ((Executor) obj)).shutdown();
                break;
            default:
                ((ScheduledExecutorService) obj).shutdown();
                break;
        }
    }

    /* JADX INFO: renamed from: q */
    public long m4245q() {
        return TimeUnit.MILLISECONDS.toNanos(System.currentTimeMillis());
    }

    /* JADX INFO: renamed from: r */
    public Object m4246r() {
        switch (this.f7799b) {
            case 12:
                return new C1748f();
            default:
                return ProxySelector.getDefault();
        }
    }

    public String toString() {
        switch (this.f7799b) {
            case 10:
                return "grpc-default-executor";
            default:
                return super.toString();
        }
    }

    public /* synthetic */ C2722u2(int i10) {
        this.f7799b = i10;
    }

    @Override // p157o7.InterfaceC2724u4
    public void flush() {
    }

    @Override // p157o7.InterfaceC2719u
    /* JADX INFO: renamed from: i */
    public void mo4098i() {
    }

    @Override // p157o7.InterfaceC2724u4
    /* JADX INFO: renamed from: o */
    public void mo4101o() {
    }

    @Override // p157o7.InterfaceC2724u4
    public void request() {
    }

    @Override // p157o7.InterfaceC2724u4
    /* JADX INFO: renamed from: a */
    public void mo4090a(C2512h c2512h) {
    }

    @Override // p157o7.InterfaceC2719u
    /* JADX INFO: renamed from: c */
    public void mo4092c(int i10) {
    }

    @Override // p157o7.InterfaceC2719u
    /* JADX INFO: renamed from: d */
    public void mo4093d(InterfaceC2731w interfaceC2731w) {
    }

    @Override // p157o7.InterfaceC2724u4
    /* JADX INFO: renamed from: f */
    public void mo4095f(C3265a c3265a) {
    }

    @Override // p157o7.InterfaceC2719u
    /* JADX INFO: renamed from: g */
    public void mo4096g(C2536q c2536q) {
    }

    @Override // p157o7.InterfaceC2719u
    /* JADX INFO: renamed from: h */
    public void mo4097h(C2508f1 c2508f1) {
    }

    @Override // p157o7.InterfaceC2719u
    /* JADX INFO: renamed from: m */
    public void mo4099m(int i10) {
    }

    @Override // p157o7.InterfaceC2719u
    /* JADX INFO: renamed from: n */
    public void mo4100n(C2532o c2532o) {
    }

    @Override // p148n7.InterfaceC2545u0
    /* JADX INFO: renamed from: b */
    public byte[] mo3938b(Object obj) {
        switch (this.f7799b) {
            case 13:
                return (byte[]) obj;
            default:
                throw new UnsupportedOperationException();
        }
    }
}
