package okhttp3.internal.tls;

import java.security.cert.Certificate;
import java.util.List;
import kotlin.Metadata;
import okhttp3.HttpUrl;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\b&\u0018\u0000 \t2\u00020\u0001:\u0001\tB\u0005¢\u0006\u0002\u0010\u0002J$\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0007\u001a\u00020\bH&¨\u0006\n"}, d2 = {"Lokhttp3/internal/tls/CertificateChainCleaner;", HttpUrl.FRAGMENT_ENCODE_SET, "()V", "clean", HttpUrl.FRAGMENT_ENCODE_SET, "Ljava/security/cert/Certificate;", "chain", "hostname", HttpUrl.FRAGMENT_ENCODE_SET, "Companion", "okhttp"}, k = 1, mv = {1, 8, 0}, xi = 48)
public abstract class CertificateChainCleaner {
    public static final CertificateChainCleaner$Companion Companion = new CertificateChainCleaner$Companion(null);

    public abstract List<Certificate> clean(List<? extends Certificate> chain, String hostname);
}
