package p141n;

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
import p025c0.AbstractC0933b;
import p077h.C1646h;
import p077h.InterfaceC1640b;
import p099j1.C1929i;

/* JADX INFO: renamed from: n.c0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2438c0 implements InterfaceC2458s, InterfaceC1640b {

    /* JADX INFO: renamed from: c */
    public static final C2438c0 f6610c = new C2438c0(0);

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f6611b;

    public /* synthetic */ C2438c0(int i10) {
        this.f6611b = i10;
    }

    /* JADX INFO: renamed from: a */
    public static ByteArrayInputStream m3792a(String str) {
        if (!str.startsWith("data:image")) {
            C1929i.m3029k("Not a valid image data URL.");
            return null;
        }
        int iIndexOf = str.indexOf(44);
        if (iIndexOf == -1) {
            C1929i.m3029k("Missing comma in data URL.");
            return null;
        }
        if (str.substring(0, iIndexOf).endsWith(";base64")) {
            return new ByteArrayInputStream(Base64.decode(str.substring(iIndexOf + 1), 0));
        }
        C1929i.m3029k("Not a base64 image data URL.");
        return null;
    }

    /* JADX INFO: renamed from: b */
    public Class m3793b() {
        switch (this.f6611b) {
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

    @Override // p077h.InterfaceC1640b
    /* JADX INFO: renamed from: h */
    public boolean mo1146h(Object obj, File file, C1646h c1646h) throws Throwable {
        try {
            AbstractC0933b.m1068d((ByteBuffer) obj, file);
            return true;
        } catch (IOException e) {
            if (!Log.isLoggable("ByteBufferEncoder", 3)) {
                return false;
            }
            Log.d("ByteBufferEncoder", "Failed to write data", e);
            return false;
        }
    }

    @Override // p141n.InterfaceC2458s
    /* JADX INFO: renamed from: j */
    public InterfaceC2457r mo1344j(C2465z c2465z) {
        switch (this.f6611b) {
            case 0:
                return C2440d0.f6614b;
            case 1:
            case 3:
            case 5:
            case 7:
            case 8:
            case 9:
            default:
                return new C2446g0(c2465z.m3816b(C2445g.class, InputStream.class));
            case 2:
                return new C2437c(0, new C2438c0(1));
            case 4:
                return new C2437c(0, new C2438c0(3));
            case 6:
                return new C2440d0(1);
            case 10:
                return new C2436b0(c2465z.m3816b(Uri.class, AssetFileDescriptor.class), 0);
            case 11:
                return new C2436b0(c2465z.m3816b(Uri.class, ParcelFileDescriptor.class), 0);
            case 12:
                return new C2436b0(c2465z.m3816b(Uri.class, InputStream.class), 0);
        }
    }
}
