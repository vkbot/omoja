package p132m0;

import android.content.Context;
import android.util.StateSet;
import androidx.recyclerview.widget.RecyclerView;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.Serializable;
import kotlin.jvm.internal.ByteCompanionObject;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.Response;
import p047e0.AbstractC1387m;
import p258z3.C3729o;

/* JADX INFO: renamed from: m0.e1 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2284e1 implements Callback {

    /* JADX INFO: renamed from: b */
    public int f6041b;

    /* JADX INFO: renamed from: c */
    public Object f6042c;

    /* JADX INFO: renamed from: d */
    public Object f6043d;

    /* JADX INFO: renamed from: e */
    public Serializable f6044e;

    /* JADX INFO: renamed from: f */
    public Object f6045f;

    /* JADX INFO: renamed from: g */
    public Object f6046g;

    /* JADX INFO: renamed from: h */
    public Object f6047h;

    /* JADX INFO: renamed from: i */
    public Object f6048i;

    public C2284e1(C3729o c3729o) {
        m3684b();
        m3683a(StateSet.WILD_CARD, c3729o);
    }

    /* JADX WARN: Type inference failed for: r1v4, types: [java.io.Serializable, java.lang.Object, z3.o[]] */
    /* JADX INFO: renamed from: a */
    public void m3683a(int[] iArr, C3729o c3729o) {
        int i10 = this.f6041b;
        if (i10 == 0 || iArr.length == 0) {
            this.f6042c = c3729o;
        }
        int[][] iArr2 = (int[][]) this.f6043d;
        if (i10 >= iArr2.length) {
            int i11 = i10 + 10;
            int[][] iArr3 = new int[i11][];
            System.arraycopy(iArr2, 0, iArr3, 0, i10);
            this.f6043d = iArr3;
            ?? r1 = new C3729o[i11];
            System.arraycopy((C3729o[]) this.f6044e, 0, r1, 0, i10);
            this.f6044e = r1;
        }
        int[][] iArr4 = (int[][]) this.f6043d;
        int i12 = this.f6041b;
        iArr4[i12] = iArr;
        ((C3729o[]) this.f6044e)[i12] = c3729o;
        this.f6041b = i12 + 1;
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [java.io.Serializable, z3.o[]] */
    /* JADX INFO: renamed from: b */
    public void m3684b() {
        this.f6042c = new C3729o();
        this.f6043d = new int[10][];
        this.f6044e = new C3729o[10];
    }

    @Override // okhttp3.Callback
    public void onFailure(Call call, IOException iOException) {
        C2304i1 c2304i1 = (C2304i1) this.f6048i;
        RecyclerView recyclerView = (RecyclerView) this.f6042c;
        RunnableC2274c1 runnableC2274c1 = new RunnableC2274c1(this, (C2299h1) this.f6043d, (String) this.f6044e, this.f6041b, 0);
        String str = C2304i1.f6142i;
        c2304i1.m3699z(recyclerView, runnableC2274c1);
    }

    @Override // okhttp3.Callback
    public void onResponse(Call call, Response response) {
        Context context = (Context) this.f6047h;
        String str = (String) this.f6044e;
        int i10 = this.f6041b;
        RecyclerView recyclerView = (RecyclerView) this.f6042c;
        C2304i1 c2304i1 = (C2304i1) this.f6048i;
        C2299h1 c2299h1 = (C2299h1) this.f6043d;
        try {
            try {
                if (!response.isSuccessful()) {
                    RunnableC2274c1 runnableC2274c1 = new RunnableC2274c1(this, c2299h1, str, i10, 1);
                    String str2 = C2304i1.f6142i;
                    c2304i1.m3699z(recyclerView, runnableC2274c1);
                    response.close();
                    return;
                }
                File file = new File(context.getCacheDir(), AbstractC1387m.m2421h(new byte[]{122, -42, 25, -21, 29, -123, ByteCompanionObject.MAX_VALUE}, new byte[]{9, -75, 107, -114, 120, -21, 12, 33}));
                if (!file.exists()) {
                    file.mkdirs();
                }
                File file2 = new File(file, c2299h1.f6108c + AbstractC1387m.m2421h(new byte[]{106, -83, -30, -34}, new byte[]{68, -41, -117, -82, 47, -27, 86, 95}));
                long jContentLength = response.body().contentLength();
                InputStream inputStreamByteStream = response.body().byteStream();
                FileOutputStream fileOutputStream = new FileOutputStream(file2);
                byte[] bArr = new byte[8192];
                long j10 = 0;
                while (true) {
                    int i11 = inputStreamByteStream.read(bArr);
                    if (i11 == -1) {
                        break;
                    }
                    fileOutputStream.write(bArr, 0, i11);
                    j10 += (long) i11;
                    RunnableC2279d1 runnableC2279d1 = new RunnableC2279d1(this, c2299h1, jContentLength > 0 ? (int) ((100 * j10) / jContentLength) : 0, i10);
                    String str3 = C2304i1.f6142i;
                    c2304i1.m3699z(recyclerView, runnableC2279d1);
                }
                fileOutputStream.flush();
                fileOutputStream.close();
                inputStreamByteStream.close();
                if (C2304i1.m3693t(c2304i1, context, (String) this.f6045f, c2299h1.f6109d, file2)) {
                    str = (String) this.f6046g;
                }
                try {
                    file2.delete();
                } catch (Exception unused) {
                }
                c2304i1.m3699z(recyclerView, new RunnableC2274c1(this, c2299h1, str, i10, 2));
                response.close();
            } catch (Throwable th) {
                if (response == null) {
                    throw th;
                }
                try {
                    response.close();
                    throw th;
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                    throw th;
                }
            }
        } catch (Exception unused2) {
        }
    }
}
