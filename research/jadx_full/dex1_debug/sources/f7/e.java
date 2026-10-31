package f7;

import java.net.Inet4Address;
import java.net.InetAddress;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.UnknownHostException;
import java.time.Instant;
import java.util.Optional;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class e {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final Pattern f2281g = Pattern.compile("^[^\\[\\]]*:[^\\[\\]]*");

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final Pattern f2282h = Pattern.compile("[/?#]");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f2283a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f2284b;
    public final int d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public e f2285f;
    public final Object c = new Object();
    public Instant e = c5.h.k();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public e(int i9, String str, boolean z8) {
        this.f2283a = str;
        this.f2284b = z8;
        this.d = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static e b(String str) throws i {
        if (f2282h.matcher(str).find()) {
            throw new i(e.class, str, "Forbidden characters", null);
        }
        try {
            URI uri = new URI("wg://" + str);
            if (uri.getPort() < 0 || uri.getPort() > 65535) {
                throw new i(e.class, str, "Missing/invalid port number", null);
            }
            try {
                d.a(uri.getHost());
                return new e(uri.getPort(), uri.getHost(), true);
            } catch (i unused) {
                return new e(uri.getPort(), uri.getHost(), false);
            }
        } catch (URISyntaxException e) {
            throw new i(e.class, str, null, e);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Optional a() {
        Optional optionalOfNullable;
        if (this.f2284b) {
            return Optional.of(this);
        }
        synchronized (this.c) {
            try {
                if (c5.h.a(c5.h.j(this.e, c5.h.B())) > 1) {
                    try {
                        InetAddress[] allByName = InetAddress.getAllByName(this.f2283a);
                        InetAddress inetAddress = allByName[0];
                        for (InetAddress inetAddress2 : allByName) {
                            if (inetAddress2 instanceof Inet4Address) {
                                inetAddress = inetAddress2;
                                break;
                            }
                        }
                        this.f2285f = new e(this.d, inetAddress.getHostAddress(), true);
                        this.e = c5.h.B();
                    } catch (UnknownHostException unused) {
                        this.f2285f = null;
                    }
                }
                optionalOfNullable = Optional.ofNullable(this.f2285f);
            } catch (Throwable th) {
                throw th;
            }
        }
        return optionalOfNullable;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean equals(Object obj) {
        if (!(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        return this.f2283a.equals(eVar.f2283a) && this.d == eVar.d;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int hashCode() {
        return this.f2283a.hashCode() ^ this.d;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        boolean z8 = this.f2284b;
        String str = this.f2283a;
        boolean z9 = z8 && f2281g.matcher(str).matches();
        StringBuilder sb = new StringBuilder();
        if (z9) {
            str = "[" + str + ']';
        }
        sb.append(str);
        sb.append(':');
        sb.append(this.d);
        return sb.toString();
    }
}
