package m0;

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

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class e1 implements Callback {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f3402b;
    public Object c;
    public Object d;
    public Serializable e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Object f3403f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Object f3404g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Object f3405h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Object f3406i;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public e1(z3.o oVar) {
        b();
        a(StateSet.WILD_CARD, oVar);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Type inference failed for: r1v4, types: [java.io.Serializable, java.lang.Object, z3.o[]] */
    public void a(int[] iArr, z3.o oVar) {
        int i9 = this.f3402b;
        if (i9 == 0 || iArr.length == 0) {
            this.c = oVar;
        }
        int[][] iArr2 = (int[][]) this.d;
        if (i9 >= iArr2.length) {
            int i10 = i9 + 10;
            int[][] iArr3 = new int[i10][];
            System.arraycopy(iArr2, 0, iArr3, 0, i9);
            this.d = iArr3;
            ?? r1 = new z3.o[i10];
            System.arraycopy((z3.o[]) this.e, 0, r1, 0, i9);
            this.e = r1;
        }
        int[][] iArr4 = (int[][]) this.d;
        int i11 = this.f3402b;
        iArr4[i11] = iArr;
        ((z3.o[]) this.e)[i11] = oVar;
        this.f3402b = i11 + 1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Type inference failed for: r0v2, types: [java.io.Serializable, z3.o[]] */
    public void b() {
        this.c = new z3.o();
        this.d = new int[10][];
        this.e = new z3.o[10];
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void onFailure(Call call, IOException iOException) {
        i1 i1Var = (i1) this.f3406i;
        RecyclerView recyclerView = (RecyclerView) this.c;
        c1 c1Var = new c1(this, (h1) this.d, (String) this.e, this.f3402b, 0);
        String str = i1.f3465i;
        i1Var.z(recyclerView, c1Var);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void onResponse(Call call, Response response) {
        Context context = (Context) this.f3405h;
        String str = (String) this.e;
        int i9 = this.f3402b;
        RecyclerView recyclerView = (RecyclerView) this.c;
        i1 i1Var = (i1) this.f3406i;
        h1 h1Var = (h1) this.d;
        try {
            try {
                if (!response.isSuccessful()) {
                    c1 c1Var = new c1(this, h1Var, str, i9, 1);
                    String str2 = i1.f3465i;
                    i1Var.z(recyclerView, c1Var);
                    response.close();
                    return;
                }
                File file = new File(context.getCacheDir(), e0.m.h(new byte[]{122, -42, 25, -21, 29, -123, ByteCompanionObject.MAX_VALUE}, new byte[]{9, -75, 107, -114, 120, -21, 12, 33}));
                if (!file.exists()) {
                    file.mkdirs();
                }
                File file2 = new File(file, h1Var.c + e0.m.h(new byte[]{106, -83, -30, -34}, new byte[]{68, -41, -117, -82, 47, -27, 86, 95}));
                long jContentLength = response.body().contentLength();
                InputStream inputStreamByteStream = response.body().byteStream();
                FileOutputStream fileOutputStream = new FileOutputStream(file2);
                byte[] bArr = new byte[8192];
                long j9 = 0;
                while (true) {
                    int i10 = inputStreamByteStream.read(bArr);
                    if (i10 == -1) {
                        break;
                    }
                    fileOutputStream.write(bArr, 0, i10);
                    j9 += (long) i10;
                    d1 d1Var = new d1(this, h1Var, jContentLength > 0 ? (int) ((100 * j9) / jContentLength) : 0, i9);
                    String str3 = i1.f3465i;
                    i1Var.z(recyclerView, d1Var);
                }
                fileOutputStream.flush();
                fileOutputStream.close();
                inputStreamByteStream.close();
                if (i1.t(i1Var, context, (String) this.f3403f, h1Var.d, file2)) {
                    str = (String) this.f3404g;
                }
                try {
                    file2.delete();
                } catch (Exception unused) {
                }
                i1Var.z(recyclerView, new c1(this, h1Var, str, i9, 2));
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
