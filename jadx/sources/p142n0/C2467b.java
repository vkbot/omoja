package p142n0;

import androidx.core.util.Supplier;
import com.example.navistart.cores.ProxyFactory;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.NoSuchElementException;
import kotlin.text.Typography;
import org.apache.commons.net.ftp.FTPFile;
import org.apache.commons.net.ftp.FTPFileFilter;
import org.apache.commons.net.ftp.FTPFileFilters;
import org.apache.commons.p161io.function.IOFunction;
import org.apache.commons.p161io.output.AbstractByteArrayOutputStream;
import org.apache.commons.p161io.output.ThresholdingOutputStream;
import org.apache.commons.p161io.output.UnsynchronizedByteArrayOutputStream;
import p068g1.C1604a;
import p079h1.C1654a;
import p099j1.C1935o;
import p099j1.C1938r;
import p099j1.C1939s;

/* JADX INFO: renamed from: n0.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C2467b implements Supplier, ProxyFactory.ProxyFactoryCreat, AbstractByteArrayOutputStream.InputStreamConstructor, IOFunction, FTPFileFilter {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f6679b;

    public /* synthetic */ C2467b(int i10) {
        this.f6679b = i10;
    }

    /* JADX INFO: renamed from: A */
    public static /* synthetic */ void m3820A(String str) throws IOException {
        throw new IOException(str);
    }

    /* JADX INFO: renamed from: B */
    public static /* synthetic */ void m3821B(String str, Object obj, Object obj2, Object obj3) {
        throw new AssertionError(str + obj + obj2 + obj3);
    }

    /* JADX INFO: renamed from: a */
    public static /* synthetic */ void m3822a() {
        throw new ClassCastException();
    }

    /* JADX INFO: renamed from: b */
    public static /* synthetic */ void m3823b(int i10, long j10) throws IOException {
        throw new IOException("Content-Length (" + j10 + ((Object) ") and stream length (") + i10 + ((Object) ") disagree"));
    }

    /* JADX INFO: renamed from: e */
    public static /* synthetic */ void m3824e(int i10, String str) {
        throw new IllegalStateException((str + i10).toString());
    }

    /* JADX INFO: renamed from: f */
    public static /* synthetic */ void m3825f(long j10) {
        throw new ArithmeticException("The byte count " + j10 + ((Object) " is too large to be converted to an int"));
    }

    /* JADX INFO: renamed from: g */
    public static /* synthetic */ void m3826g(Object obj, String str) {
        throw new IllegalArgumentException((str + obj + Typography.quote).toString());
    }

    /* JADX INFO: renamed from: j */
    public static /* synthetic */ void m3827j(Object obj, String str, Object obj2) {
        throw new IllegalStateException(str + obj + obj2);
    }

    /* JADX INFO: renamed from: n */
    public static /* synthetic */ void m3828n(String str) {
        throw new NullPointerException(str);
    }

    /* JADX INFO: renamed from: o */
    public static /* synthetic */ void m3829o(String str, int i10, int i11, Object obj) {
        throw new IllegalArgumentException(str + i10 + obj + i11);
    }

    /* JADX INFO: renamed from: t */
    public static /* synthetic */ void m3830t(String str, Object obj, Object obj2, Object obj3) {
        throw new IllegalStateException(str + obj + obj2 + obj3);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: u */
    public static /* synthetic */ void m3831u(String str, Object obj, Object obj2, Object obj3, int i10) {
        throw new IllegalArgumentException((str + obj + obj2 + obj3 + ((char) i10)).toString());
    }

    /* JADX INFO: renamed from: v */
    public static /* synthetic */ void m3832v(String str, Object[] objArr) {
        throw new IllegalArgumentException(String.format(str, objArr));
    }

    /* JADX INFO: renamed from: w */
    public static /* synthetic */ void m3833w(Throwable th) {
        throw new RuntimeException(th);
    }

    /* JADX INFO: renamed from: x */
    public static /* synthetic */ void m3834x() {
        throw new NoSuchElementException();
    }

    /* JADX INFO: renamed from: y */
    public static /* synthetic */ void m3835y(int i10, String str) throws IOException {
        throw new IOException(str + i10);
    }

    /* JADX INFO: renamed from: z */
    public static /* synthetic */ void m3836z(Object obj, String str) {
        throw new IllegalStateException((str + obj).toString());
    }

    @Override // org.apache.commons.net.ftp.FTPFileFilter
    public boolean accept(FTPFile fTPFile) {
        return FTPFileFilters.lambda$static$0(fTPFile);
    }

    @Override // org.apache.commons.p161io.function.IOFunction
    public Object apply(Object obj) {
        return ThresholdingOutputStream.lambda$static$0((ThresholdingOutputStream) obj);
    }

    @Override // org.apache.commons.io.output.AbstractByteArrayOutputStream.InputStreamConstructor
    public InputStream construct(byte[] bArr, int i10, int i11) {
        switch (this.f6679b) {
            case 26:
                return new ByteArrayInputStream(bArr, i10, i11);
            default:
                return UnsynchronizedByteArrayOutputStream.lambda$toInputStream$1(bArr, i10, i11);
        }
    }

    @Override // com.example.navistart.cores.ProxyFactory.ProxyFactoryCreat
    public Object create() {
        switch (this.f6679b) {
            case 2:
                return new C1604a(2);
            default:
                return new C1654a(4);
        }
    }

    @Override // androidx.core.util.Supplier
    public Object get() {
        switch (this.f6679b) {
            case 0:
                return new C1935o();
            case 1:
                return new C1938r(0);
            default:
                return new C1939s();
        }
    }
}
