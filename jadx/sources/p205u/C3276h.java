package p205u;

import android.util.Log;
import com.bumptech.glide.load.ImageHeaderParser$ImageType;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import p077h.C1646h;
import p077h.InterfaceC1648j;
import p097j.InterfaceC1889d0;
import p108k.C2019g;
import p155o4.AbstractC2587b;

/* JADX INFO: renamed from: u.h */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3276h implements InterfaceC1648j {

    /* JADX INFO: renamed from: a */
    public final ArrayList f9607a;

    /* JADX INFO: renamed from: b */
    public final C3269a f9608b;

    /* JADX INFO: renamed from: c */
    public final C2019g f9609c;

    public C3276h(ArrayList arrayList, C3269a c3269a, C2019g c2019g) {
        this.f9607a = arrayList;
        this.f9608b = c3269a;
        this.f9609c = c2019g;
    }

    @Override // p077h.InterfaceC1648j
    /* JADX INFO: renamed from: a */
    public final InterfaceC1889d0 mo2730a(Object obj, int i10, int i11, C1646h c1646h) {
        byte[] byteArray;
        InputStream inputStream = (InputStream) obj;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(16384);
        try {
            byte[] bArr = new byte[16384];
            while (true) {
                int i12 = inputStream.read(bArr);
                if (i12 == -1) {
                    break;
                }
                byteArrayOutputStream.write(bArr, 0, i12);
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
        return this.f9608b.mo2730a(ByteBuffer.wrap(byteArray), i10, i11, c1646h);
    }

    @Override // p077h.InterfaceC1648j
    /* JADX INFO: renamed from: b */
    public final boolean mo2731b(Object obj, C1646h c1646h) {
        return !((Boolean) c1646h.m2729c(AbstractC3275g.f9606b)).booleanValue() && AbstractC2587b.m4055v(this.f9607a, (InputStream) obj, this.f9609c) == ImageHeaderParser$ImageType.GIF;
    }
}
