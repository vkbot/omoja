package p172q;

import androidx.exifinterface.media.ExifInterface;
import com.bumptech.glide.load.ImageHeaderParser$ImageType;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.concurrent.atomic.AtomicReference;
import p025c0.AbstractC0933b;
import p025c0.C0932a;
import p077h.InterfaceC1642d;
import p108k.C2019g;

/* JADX INFO: renamed from: q.u */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3031u implements InterfaceC1642d {
    @Override // p077h.InterfaceC1642d
    /* JADX INFO: renamed from: a */
    public final ImageHeaderParser$ImageType mo2724a(ByteBuffer byteBuffer) {
        return ImageHeaderParser$ImageType.UNKNOWN;
    }

    @Override // p077h.InterfaceC1642d
    /* JADX INFO: renamed from: b */
    public final int mo2725b(InputStream inputStream, C2019g c2019g) {
        int attributeInt = new ExifInterface(inputStream).getAttributeInt(ExifInterface.TAG_ORIENTATION, 1);
        if (attributeInt == 0) {
            return -1;
        }
        return attributeInt;
    }

    @Override // p077h.InterfaceC1642d
    /* JADX INFO: renamed from: c */
    public final ImageHeaderParser$ImageType mo2726c(InputStream inputStream) {
        return ImageHeaderParser$ImageType.UNKNOWN;
    }

    @Override // p077h.InterfaceC1642d
    /* JADX INFO: renamed from: d */
    public final int mo2727d(ByteBuffer byteBuffer, C2019g c2019g) {
        AtomicReference atomicReference = AbstractC0933b.f786a;
        return mo2725b(new C0932a(byteBuffer), c2019g);
    }
}
