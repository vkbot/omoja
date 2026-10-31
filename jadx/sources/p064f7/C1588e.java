package p064f7;

import java.net.Inet4Address;
import java.net.InetAddress;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.UnknownHostException;
import java.time.Duration;
import java.time.Instant;
import java.util.Optional;
import java.util.regex.Pattern;

/* JADX INFO: renamed from: f7.e */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1588e {

    /* JADX INFO: renamed from: g */
    public static final Pattern f3941g = Pattern.compile("^[^\\[\\]]*:[^\\[\\]]*");

    /* JADX INFO: renamed from: h */
    public static final Pattern f3942h = Pattern.compile("[/?#]");

    /* JADX INFO: renamed from: a */
    public final String f3943a;

    /* JADX INFO: renamed from: b */
    public final boolean f3944b;

    /* JADX INFO: renamed from: d */
    public final int f3946d;

    /* JADX INFO: renamed from: f */
    public C1588e f3948f;

    /* JADX INFO: renamed from: c */
    public final Object f3945c = new Object();

    /* JADX INFO: renamed from: e */
    public Instant f3947e = Instant.EPOCH;

    public C1588e(int i10, String str, boolean z9) {
        this.f3943a = str;
        this.f3944b = z9;
        this.f3946d = i10;
    }

    /* JADX INFO: renamed from: b */
    public static C1588e m2672b(String str) throws C1592i {
        if (f3942h.matcher(str).find()) {
            throw new C1592i(C1588e.class, str, "Forbidden characters", null);
        }
        try {
            URI uri = new URI("wg://" + str);
            if (uri.getPort() < 0 || uri.getPort() > 65535) {
                throw new C1592i(C1588e.class, str, "Missing/invalid port number", null);
            }
            try {
                AbstractC1587d.m2671a(uri.getHost());
                return new C1588e(uri.getPort(), uri.getHost(), true);
            } catch (C1592i unused) {
                return new C1588e(uri.getPort(), uri.getHost(), false);
            }
        } catch (URISyntaxException e) {
            throw new C1592i(C1588e.class, str, null, e);
        }
    }

    /* JADX INFO: renamed from: a */
    public final Optional m2673a() {
        Optional optionalOfNullable;
        if (this.f3944b) {
            return Optional.of(this);
        }
        synchronized (this.f3945c) {
            try {
                if (Duration.between(this.f3947e, Instant.now()).toMinutes() > 1) {
                    try {
                        InetAddress[] allByName = InetAddress.getAllByName(this.f3943a);
                        InetAddress inetAddress = allByName[0];
                        for (InetAddress inetAddress2 : allByName) {
                            if (inetAddress2 instanceof Inet4Address) {
                                inetAddress = inetAddress2;
                                break;
                            }
                        }
                        this.f3948f = new C1588e(this.f3946d, inetAddress.getHostAddress(), true);
                        this.f3947e = Instant.now();
                    } catch (UnknownHostException unused) {
                        this.f3948f = null;
                    }
                }
                optionalOfNullable = Optional.ofNullable(this.f3948f);
            } catch (Throwable th) {
                throw th;
            }
        }
        return optionalOfNullable;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C1588e)) {
            return false;
        }
        C1588e c1588e = (C1588e) obj;
        return this.f3943a.equals(c1588e.f3943a) && this.f3946d == c1588e.f3946d;
    }

    public final int hashCode() {
        return this.f3943a.hashCode() ^ this.f3946d;
    }

    public final String toString() {
        boolean z9 = this.f3944b;
        String str = this.f3943a;
        boolean z10 = z9 && f3941g.matcher(str).matches();
        StringBuilder sb = new StringBuilder();
        if (z10) {
            str = "[" + str + ']';
        }
        sb.append(str);
        sb.append(':');
        sb.append(this.f3946d);
        return sb.toString();
    }
}
