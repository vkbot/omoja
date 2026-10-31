package p047e0;

import android.content.Context;
import com.example.navistart.R;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.Response;
import okhttp3.ResponseBody;
import p002a1.RunnableC0003a;
import p005a4.RunnableC0010c;

/* JADX INFO: renamed from: e0.x2 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1441x2 implements Callback {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ Context f3488b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ File f3489c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ long f3490d;

    /* JADX INFO: renamed from: e */
    public final /* synthetic */ C1445y2 f3491e;

    public C1441x2(C1445y2 c1445y2, Context context, File file, long j10) {
        this.f3491e = c1445y2;
        this.f3488b = context;
        this.f3489c = file;
        this.f3490d = j10;
    }

    @Override // okhttp3.Callback
    public final void onFailure(Call call, IOException iOException) {
        C1445y2.m2492a(this.f3491e, this.f3488b);
    }

    @Override // okhttp3.Callback
    public final void onResponse(Call call, Response response) {
        Context context = this.f3488b;
        C1445y2 c1445y2 = this.f3491e;
        try {
            try {
                boolean zIsSuccessful = response.isSuccessful();
                File file = this.f3489c;
                if (!zIsSuccessful || response.body() == null) {
                    if (response.code() != 416 || !file.exists() || file.length() <= 0) {
                        C1445y2.m2492a(c1445y2, context);
                        response.close();
                        return;
                    }
                    c1445y2.f3500b = true;
                    C1360g2 c1360g2 = c1445y2.f3499a;
                    c1360g2.f3242e.runOnUiThread(new RunnableC0003a(29, c1360g2, context.getResources().getString(R.string.install_go)));
                    C1445y2.m2493c(file.getAbsolutePath(), context, c1445y2.f3499a);
                    response.close();
                    return;
                }
                long j10 = this.f3490d;
                int i10 = 0;
                boolean z9 = j10 > 0 && response.code() == 206;
                if (j10 > 0 && !z9) {
                    if (file.exists()) {
                        file.delete();
                    }
                    j10 = 0;
                }
                ResponseBody responseBodyBody = response.body();
                long contentLength = responseBodyBody.getContentLength();
                long j11 = contentLength > 0 ? contentLength + j10 : -1L;
                InputStream inputStreamByteStream = responseBodyBody.byteStream();
                try {
                    FileOutputStream fileOutputStream = new FileOutputStream(file, z9);
                    try {
                        byte[] bArr = new byte[8192];
                        int i11 = 0;
                        while (true) {
                            int i12 = inputStreamByteStream.read(bArr);
                            if (i12 == -1) {
                                fileOutputStream.flush();
                                fileOutputStream.close();
                                inputStreamByteStream.close();
                                c1445y2.f3500b = true;
                                C1360g2 c1360g3 = c1445y2.f3499a;
                                c1360g3.f3242e.runOnUiThread(new RunnableC0003a(29, c1360g3, context.getResources().getString(R.string.install_go)));
                                C1445y2.m2493c(file.getAbsolutePath(), context, c1445y2.f3499a);
                                response.close();
                                return;
                            }
                            fileOutputStream.write(bArr, i10, i12);
                            j10 += (long) i12;
                            if (j11 > 0) {
                                i11 = (int) ((100 * j10) / j11);
                            }
                            C1360g2 c1360g4 = c1445y2.f3499a;
                            c1360g4.f3242e.runOnUiThread(new RunnableC0010c(c1360g4, i11, 5));
                            if (c1445y2.f3500b) {
                                c1445y2.m2494b(context);
                                fileOutputStream.close();
                                inputStreamByteStream.close();
                                response.close();
                                return;
                            }
                            i10 = 0;
                        }
                    } catch (Throwable th) {
                        try {
                            fileOutputStream.close();
                            throw th;
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                            throw th;
                        }
                    }
                } catch (Throwable th3) {
                    if (inputStreamByteStream == null) {
                        throw th3;
                    }
                    try {
                        inputStreamByteStream.close();
                        throw th3;
                    } catch (Throwable th4) {
                        th3.addSuppressed(th4);
                        throw th3;
                    }
                }
            } catch (Exception unused) {
                C1445y2.m2492a(c1445y2, context);
                response.close();
            }
        } catch (Throwable th5) {
            response.close();
            throw th5;
        }
    }
}
