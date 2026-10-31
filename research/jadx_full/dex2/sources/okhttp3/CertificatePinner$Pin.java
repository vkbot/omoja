package okhttp3;

import java.security.cert.X509Certificate;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import l9.i;
import l9.o;
import okhttp3.internal.HostnamesKt;
import org.apache.commons.io.FilenameUtils;
import org.apache.commons.io.IOUtils;
import w7.c;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u0015\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\t\u0010\nJ\u0015\u0010\r\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u001a\u0010\u0012\u001a\u00020\b2\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001H\u0096\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0015\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u0015\u0010\u0016R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0017\u001a\u0004\b\u0018\u0010\u0010R\u0017\u0010\u0019\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0019\u0010\u0017\u001a\u0004\b\u001a\u0010\u0010R\u0017\u0010\u001c\u001a\u00020\u001b8\u0006¢\u0006\f\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u001f¨\u0006 "}, d2 = {"Lokhttp3/CertificatePinner$Pin;", HttpUrl.FRAGMENT_ENCODE_SET, HttpUrl.FRAGMENT_ENCODE_SET, "pattern", "pin", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "hostname", HttpUrl.FRAGMENT_ENCODE_SET, "matchesHostname", "(Ljava/lang/String;)Z", "Ljava/security/cert/X509Certificate;", "certificate", "matchesCertificate", "(Ljava/security/cert/X509Certificate;)Z", "toString", "()Ljava/lang/String;", "other", "equals", "(Ljava/lang/Object;)Z", HttpUrl.FRAGMENT_ENCODE_SET, "hashCode", "()I", "Ljava/lang/String;", "getPattern", "hashAlgorithm", "getHashAlgorithm", "Ll9/o;", "hash", "Ll9/o;", "getHash", "()Ll9/o;", "okhttp"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class CertificatePinner$Pin {
    private final o hash;
    private final String hashAlgorithm;
    private final String pattern;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public CertificatePinner$Pin(String str, String str2) {
        str.getClass();
        str2.getClass();
        if ((!StringsKt.M(str, "*.") || StringsKt.u(1, str, "*", 4) != -1) && ((!StringsKt.M(str, "**.") || StringsKt.u(2, str, "*", 4) != -1) && StringsKt.u(0, str, "*", 6) != -1)) {
            i.d("Unexpected pattern: ".concat(str));
            throw null;
        }
        String canonicalHost = HostnamesKt.toCanonicalHost(str);
        if (canonicalHost == null) {
            j1.i.k("Invalid pattern: ".concat(str));
            throw null;
        }
        this.pattern = canonicalHost;
        if (StringsKt.M(str2, "sha1/")) {
            this.hashAlgorithm = "sha1";
            o oVar = o.e;
            o oVarI = c.i(str2.substring(5));
            if (oVarI != null) {
                this.hash = oVarI;
                return;
            } else {
                j1.i.k("Invalid pin hash: ".concat(str2));
                throw null;
            }
        }
        if (!StringsKt.M(str2, "sha256/")) {
            j1.i.k("pins must start with 'sha256/' or 'sha1/': ".concat(str2));
            throw null;
        }
        this.hashAlgorithm = "sha256";
        o oVar2 = o.e;
        o oVarI2 = c.i(str2.substring(7));
        if (oVarI2 != null) {
            this.hash = oVarI2;
        } else {
            j1.i.k("Invalid pin hash: ".concat(str2));
            throw null;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof CertificatePinner$Pin)) {
            return false;
        }
        CertificatePinner$Pin certificatePinner$Pin = (CertificatePinner$Pin) other;
        return Intrinsics.areEqual(this.pattern, certificatePinner$Pin.pattern) && Intrinsics.areEqual(this.hashAlgorithm, certificatePinner$Pin.hashAlgorithm) && Intrinsics.areEqual(this.hash, certificatePinner$Pin.hash);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final o getHash() {
        return this.hash;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String getHashAlgorithm() {
        return this.hashAlgorithm;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String getPattern() {
        return this.pattern;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int hashCode() {
        return this.hash.hashCode() + ((this.hashAlgorithm.hashCode() + (this.pattern.hashCode() * 31)) * 31);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean matchesCertificate(X509Certificate certificate) {
        certificate.getClass();
        String str = this.hashAlgorithm;
        if (Intrinsics.areEqual(str, "sha256")) {
            return Intrinsics.areEqual(this.hash, CertificatePinner.Companion.sha256Hash(certificate));
        }
        if (Intrinsics.areEqual(str, "sha1")) {
            return Intrinsics.areEqual(this.hash, CertificatePinner.Companion.sha1Hash(certificate));
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean matchesHostname(String hostname) {
        hostname.getClass();
        boolean zM = StringsKt.M(this.pattern, "**.");
        String str = this.pattern;
        if (zM) {
            int length = str.length() - 3;
            int length2 = hostname.length() - length;
            if (!StringsKt.A(hostname, hostname.length() - length, this.pattern, 3, length)) {
                return false;
            }
            if (length2 != 0 && hostname.charAt(length2 - 1) != '.') {
                return false;
            }
        } else {
            boolean zM2 = StringsKt.M(str, "*.");
            String str2 = this.pattern;
            if (!zM2) {
                return Intrinsics.areEqual(hostname, str2);
            }
            int length3 = str2.length() - 1;
            int length4 = hostname.length() - length3;
            if (!StringsKt.A(hostname, hostname.length() - length3, this.pattern, 1, length3) || StringsKt.x(hostname, FilenameUtils.EXTENSION_SEPARATOR, length4 - 1, 4) != -1) {
                return false;
            }
        }
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toString() {
        return this.hashAlgorithm + IOUtils.DIR_SEPARATOR_UNIX + this.hash.a();
    }
}
