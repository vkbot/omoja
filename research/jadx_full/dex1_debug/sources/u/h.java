package u;

import android.util.Log;
import com.bumptech.glide.load.ImageHeaderParser$ImageType;
import h.j;
import j.d0;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class h implements j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList f5451a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final a f5452b;
    public final k.g c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public h(ArrayList arrayList, a aVar, k.g gVar) {
        this.f5451a = arrayList;
        this.f5452b = aVar;
        this.c = gVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // h.j
    public final d0 a(Object obj, int i9, int i10, h.h hVar) {
        byte[] byteArray;
        InputStream inputStream = (InputStream) obj;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(16384);
        try {
            byte[] bArr = new byte[16384];
            while (true) {
                int i11 = inputStream.read(bArr);
                if (i11 == -1) {
                    break;
                }
                byteArrayOutputStream.write(bArr, 0, i11);
            }
            byteArrayOutputStream.flush();
            byteArray = byteArrayOutputStream.toByteArray();
        } catch (IOException e) {
            if (Log.isLoggable("StreamGifDecoder", 5)) {
                Log.w("StreamGifDecoder", "Error reading data from stream", e);
            }
            byteArray = null;
        }
        if (byteArray == null) {
            return null;
        }
        return this.f5452b.a(ByteBuffer.wrap(byteArray), i9, i10, hVar);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // h.j
    public final boolean b(Object obj, h.h hVar) {
        return !((Boolean) hVar.c(g.f5450b)).booleanValue() && o4.b.v(this.f5451a, (InputStream) obj, this.c) == ImageHeaderParser$ImageType.GIF;
    }
}
