package n0;

import androidx.core.util.Supplier;
import com.example.navistart.cores.ProxyFactory$ProxyFactoryCreat;
import j1.o;
import j1.r;
import j1.s;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.NoSuchElementException;
import org.apache.commons.io.function.IOFunction;
import org.apache.commons.io.output.AbstractByteArrayOutputStream$InputStreamConstructor;
import org.apache.commons.io.output.ThresholdingOutputStream;
import org.apache.commons.io.output.UnsynchronizedByteArrayOutputStream;
import org.apache.commons.net.ftp.FTPFile;
import org.apache.commons.net.ftp.FTPFileFilter;
import org.apache.commons.net.ftp.FTPFileFilters;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class b implements Supplier, ProxyFactory$ProxyFactoryCreat, AbstractByteArrayOutputStream$InputStreamConstructor, IOFunction, FTPFileFilter {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f3779b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ b(int i9) {
        this.f3779b = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void A(String str) throws IOException {
        throw new IOException(str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void B(String str, Object obj, Object obj2, Object obj3) {
        throw new AssertionError(str + obj + obj2 + obj3);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void a() {
        throw new ClassCastException();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void b(int i9, long j9) throws IOException {
        throw new IOException("Content-Length (" + j9 + ((Object) ") and stream length (") + i9 + ((Object) ") disagree"));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void e(int i9, String str) {
        throw new IllegalStateException((str + i9).toString());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void f(long j9) {
        throw new ArithmeticException("The byte count " + j9 + ((Object) " is too large to be converted to an int"));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void g(Object obj, String str) {
        throw new IllegalArgumentException((str + obj + '\"').toString());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void j(Object obj, String str, Object obj2) {
        throw new IllegalStateException(str + obj + obj2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void n(String str) {
        throw new NullPointerException(str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void o(String str, int i9, int i10, Object obj) {
        throw new IllegalArgumentException(str + i9 + obj + i10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void t(String str, Object obj, Object obj2, Object obj3) {
        throw new IllegalStateException(str + obj + obj2 + obj3);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r5v0, resolved type: int */
    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void u(String str, Object obj, Object obj2, Object obj3, int i9) {
        throw new IllegalArgumentException((str + obj + obj2 + obj3 + ((char) i9)).toString());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void v(String str, Object[] objArr) {
        throw new IllegalArgumentException(String.format(str, objArr));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void w(Throwable th) {
        throw new RuntimeException(th);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void x() {
        throw new NoSuchElementException();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void y(int i9, String str) throws IOException {
        throw new IOException(str + i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void z(Object obj, String str) {
        throw new IllegalStateException((str + obj).toString());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean accept(FTPFile fTPFile) {
        return FTPFileFilters.a(fTPFile);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Object apply(Object obj) {
        return ThresholdingOutputStream.b((ThresholdingOutputStream) obj);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public InputStream construct(byte[] bArr, int i9, int i10) {
        switch (this.f3779b) {
            case 26:
                return new ByteArrayInputStream(bArr, i9, i10);
            default:
                return UnsynchronizedByteArrayOutputStream.b(bArr, i9, i10);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.example.navistart.cores.ProxyFactory$ProxyFactoryCreat
    public Object create() {
        switch (this.f3779b) {
            case 2:
                return new g1.a(2);
            default:
                return new h1.a(4);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.util.Supplier
    public Object get() {
        switch (this.f3779b) {
            case 0:
                return new o();
            case 1:
                return new r(0);
            default:
                return new s();
        }
    }
}
