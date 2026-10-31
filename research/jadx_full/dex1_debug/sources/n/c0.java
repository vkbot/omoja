package n;

import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.util.Base64;
import android.util.Log;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class c0 implements s, h.b {
    public static final c0 c = new c0(0);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f3735b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ c0(int i9) {
        this.f3735b = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static ByteArrayInputStream a(String str) {
        if (!str.startsWith("data:image")) {
            j1.i.k("Not a valid image data URL.");
            return null;
        }
        int iIndexOf = str.indexOf(44);
        if (iIndexOf == -1) {
            j1.i.k("Missing comma in data URL.");
            return null;
        }
        if (str.substring(0, iIndexOf).endsWith(";base64")) {
            return new ByteArrayInputStream(Base64.decode(str.substring(iIndexOf + 1), 0));
        }
        j1.i.k("Not a base64 image data URL.");
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Class b() {
        switch (this.f3735b) {
            case 1:
                return ByteBuffer.class;
            case 3:
                return InputStream.class;
            case 8:
                return ParcelFileDescriptor.class;
            default:
                return InputStream.class;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // h.b
    public boolean h(Object obj, File file, h.h hVar) throws Throwable {
        try {
            c0.b.d((ByteBuffer) obj, file);
            return true;
        } catch (IOException e) {
            if (!Log.isLoggable("ByteBufferEncoder", 3)) {
                return false;
            }
            Log.d("ByteBufferEncoder", "Failed to write data", e);
            return false;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n.s
    public r j(z zVar) {
        switch (this.f3735b) {
            case 0:
                return d0.f3737b;
            case 1:
            case 3:
            case 5:
            case 7:
            case 8:
            case 9:
            default:
                return new g0(zVar.b(g.class, InputStream.class));
            case 2:
                return new c(0, new c0(1));
            case 4:
                return new c(0, new c0(3));
            case 6:
                return new d0(1);
            case 10:
                return new b0(zVar.b(Uri.class, AssetFileDescriptor.class), 0);
            case 11:
                return new b0(zVar.b(Uri.class, ParcelFileDescriptor.class), 0);
            case 12:
                return new b0(zVar.b(Uri.class, InputStream.class), 0);
        }
    }
}
