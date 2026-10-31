package e0;

import android.content.Context;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.Response;
import okhttp3.ResponseBody;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class x2 implements Callback {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Context f2003b;
    public final /* synthetic */ File c;
    public final /* synthetic */ long d;
    public final /* synthetic */ y2 e;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public x2(y2 y2Var, Context context, File file, long j9) {
        this.e = y2Var;
        this.f2003b = context;
        this.c = file;
        this.d = j9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void onFailure(Call call, IOException iOException) {
        y2.a(this.e, this.f2003b);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void onResponse(Call call, Response response) {
        Context context = this.f2003b;
        y2 y2Var = this.e;
        try {
            try {
                boolean zIsSuccessful = response.isSuccessful();
                File file = this.c;
                if (!zIsSuccessful || response.body() == null) {
                    if (response.code() != 416 || !file.exists() || file.length() <= 0) {
                        y2.a(y2Var, context);
                        response.close();
                        return;
                    }
                    y2Var.f2008b = true;
                    g2 g2Var = y2Var.f2007a;
                    g2Var.e.runOnUiThread(new a1.a(29, g2Var, context.getResources().getString(2131952039)));
                    y2.c(file.getAbsolutePath(), context, y2Var.f2007a);
                    response.close();
                    return;
                }
                long j9 = this.d;
                int i9 = 0;
                boolean z8 = j9 > 0 && response.code() == 206;
                if (j9 > 0 && !z8) {
                    if (file.exists()) {
                        file.delete();
                    }
                    j9 = 0;
                }
                ResponseBody responseBodyBody = response.body();
                long jContentLength = responseBodyBody.contentLength();
                long j10 = jContentLength > 0 ? jContentLength + j9 : -1L;
                InputStream inputStreamByteStream = responseBodyBody.byteStream();
                try {
                    FileOutputStream fileOutputStream = new FileOutputStream(file, z8);
                    try {
                        byte[] bArr = new byte[8192];
                        int i10 = 0;
                        while (true) {
                            int i11 = inputStreamByteStream.read(bArr);
                            if (i11 == -1) {
                                fileOutputStream.flush();
                                fileOutputStream.close();
                                inputStreamByteStream.close();
                                y2Var.f2008b = true;
                                g2 g2Var2 = y2Var.f2007a;
                                g2Var2.e.runOnUiThread(new a1.a(29, g2Var2, context.getResources().getString(2131952039)));
                                y2.c(file.getAbsolutePath(), context, y2Var.f2007a);
                                response.close();
                                return;
                            }
                            fileOutputStream.write(bArr, i9, i11);
                            j9 += (long) i11;
                            if (j10 > 0) {
                                i10 = (int) ((100 * j9) / j10);
                            }
                            g2 g2Var3 = y2Var.f2007a;
                            g2Var3.e.runOnUiThread(new a4.c(g2Var3, i10, 5));
                            if (y2Var.f2008b) {
                                y2Var.b(context);
                                fileOutputStream.close();
                                inputStreamByteStream.close();
                                response.close();
                                return;
                            }
                            i9 = 0;
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
                y2.a(y2Var, context);
                response.close();
            }
        } catch (Throwable th5) {
            response.close();
            throw th5;
        }
    }
}
