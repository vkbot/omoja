package n;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class l implements com.bumptech.glide.load.data.e {
    public static final String[] e = {"_data"};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f3754b;
    public final Object c;
    public Object d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ l(int i9, Object obj, Object obj2) {
        this.f3754b = i9;
        this.c = obj;
        this.d = obj2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.bumptech.glide.load.data.e
    public final Class a() {
        switch (this.f3754b) {
            case 0:
                return File.class;
            case 1:
                return ((c0) this.d).b();
            default:
                return InputStream.class;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.bumptech.glide.load.data.e
    public final void b() {
        switch (this.f3754b) {
            case 0:
            case 1:
                break;
            default:
                try {
                    ((ByteArrayInputStream) this.d).close();
                } catch (IOException unused) {
                    return;
                }
                break;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.bumptech.glide.load.data.e
    public final int c() {
        switch (this.f3754b) {
        }
        return 1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.bumptech.glide.load.data.e
    public final void cancel() {
        int i9 = this.f3754b;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.bumptech.glide.load.data.e
    public final void e(com.bumptech.glide.h hVar, com.bumptech.glide.load.data.d dVar) {
        Object objWrap;
        switch (this.f3754b) {
            case 0:
                Cursor cursorQuery = ((Context) this.c).getContentResolver().query((Uri) this.d, e, null, null, null);
                String string = null;
                if (cursorQuery != null) {
                    try {
                        string = cursorQuery.moveToFirst() ? cursorQuery.getString(cursorQuery.getColumnIndexOrThrow("_data")) : null;
                        cursorQuery.close();
                    } catch (Throwable th) {
                        cursorQuery.close();
                        throw th;
                    }
                    break;
                }
                if (!TextUtils.isEmpty(string)) {
                    dVar.f(new File(string));
                    return;
                }
                dVar.d(new FileNotFoundException("Failed to find file path for: " + ((Uri) this.d)));
                return;
            case 1:
                c0 c0Var = (c0) this.d;
                byte[] bArr = (byte[]) this.c;
                switch (c0Var.f3735b) {
                    case 1:
                        objWrap = ByteBuffer.wrap(bArr);
                        break;
                    default:
                        objWrap = new ByteArrayInputStream(bArr);
                        break;
                }
                dVar.f(objWrap);
                return;
            default:
                try {
                    ByteArrayInputStream byteArrayInputStreamA = c0.a((String) this.c);
                    this.d = byteArrayInputStreamA;
                    dVar.f(byteArrayInputStreamA);
                    return;
                } catch (IllegalArgumentException e6) {
                    dVar.d(e6);
                    return;
                }
        }
    }

    public l(String str, c0 c0Var) {
        this.f3754b = 2;
        this.c = str;
    }

    private final void d() {
    }

    private final void f() {
    }

    private final void g() {
    }

    private final void h() {
    }

    private final void i() {
    }
}
