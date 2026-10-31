package p172q;

import ai.onnxruntime.AbstractC0074a;
import android.util.Log;
import androidx.core.view.InputDeviceCompat;
import com.bumptech.glide.load.ImageHeaderParser$ImageType;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import p025c0.AbstractC0938g;
import p077h.InterfaceC1642d;
import p108k.C2019g;
import p157o7.C2686o2;

/* JADX INFO: renamed from: q.n */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3024n implements InterfaceC1642d {

    /* JADX INFO: renamed from: a */
    public static final byte[] f8479a = "Exif\u0000\u0000".getBytes(Charset.forName("UTF-8"));

    /* JADX INFO: renamed from: b */
    public static final int[] f8480b = {0, 1, 1, 2, 4, 8, 1, 1, 2, 4, 8, 4, 8};

    /* JADX INFO: renamed from: e */
    public static int m4840e(InterfaceC3023m interfaceC3023m, C2019g c2019g) {
        try {
            int iMo4195c = interfaceC3023m.mo4195c();
            if ((iMo4195c & 65496) == 65496 || iMo4195c == 19789 || iMo4195c == 18761) {
                int iM4842g = m4842g(interfaceC3023m);
                if (iM4842g != -1) {
                    byte[] bArr = (byte[]) c2019g.m3106c(iM4842g, byte[].class);
                    try {
                        return m4843h(interfaceC3023m, bArr, iM4842g);
                    } finally {
                        c2019g.m3110g(bArr);
                    }
                }
                if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                    Log.d("DfltImageHeaderParser", "Failed to parse exif segment length, or exif segment not found");
                    return -1;
                }
            } else if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                Log.d("DfltImageHeaderParser", "Parser doesn't handle magic number: " + iMo4195c);
                return -1;
            }
        } catch (C3022l unused) {
        }
        return -1;
    }

    /* JADX INFO: renamed from: f */
    public static ImageHeaderParser$ImageType m4841f(InterfaceC3023m interfaceC3023m) {
        try {
            int iMo4195c = interfaceC3023m.mo4195c();
            if (iMo4195c == 65496) {
                return ImageHeaderParser$ImageType.JPEG;
            }
            int iMo4196e = (iMo4195c << 8) | interfaceC3023m.mo4196e();
            if (iMo4196e == 4671814) {
                return ImageHeaderParser$ImageType.GIF;
            }
            int iMo4196e2 = (iMo4196e << 8) | interfaceC3023m.mo4196e();
            if (iMo4196e2 == -1991225785) {
                interfaceC3023m.skip(21L);
                try {
                    return interfaceC3023m.mo4196e() >= 3 ? ImageHeaderParser$ImageType.PNG_A : ImageHeaderParser$ImageType.PNG;
                } catch (C3022l unused) {
                    return ImageHeaderParser$ImageType.PNG;
                }
            }
            if (iMo4196e2 == 1380533830) {
                interfaceC3023m.skip(4L);
                if (((interfaceC3023m.mo4195c() << 16) | interfaceC3023m.mo4195c()) != 1464156752) {
                    return ImageHeaderParser$ImageType.UNKNOWN;
                }
                int iMo4195c2 = (interfaceC3023m.mo4195c() << 16) | interfaceC3023m.mo4195c();
                if ((iMo4195c2 & InputDeviceCompat.SOURCE_ANY) != 1448097792) {
                    return ImageHeaderParser$ImageType.UNKNOWN;
                }
                int i10 = iMo4195c2 & 255;
                if (i10 != 88) {
                    if (i10 != 76) {
                        return ImageHeaderParser$ImageType.WEBP;
                    }
                    interfaceC3023m.skip(4L);
                    return (interfaceC3023m.mo4196e() & 8) != 0 ? ImageHeaderParser$ImageType.WEBP_A : ImageHeaderParser$ImageType.WEBP;
                }
                interfaceC3023m.skip(4L);
                short sMo4196e = interfaceC3023m.mo4196e();
                if ((sMo4196e & 2) != 0) {
                    return ImageHeaderParser$ImageType.ANIMATED_WEBP;
                }
                return (sMo4196e & 16) != 0 ? ImageHeaderParser$ImageType.WEBP_A : ImageHeaderParser$ImageType.WEBP;
            }
            if (((interfaceC3023m.mo4195c() << 16) | interfaceC3023m.mo4195c()) != 1718909296) {
                return ImageHeaderParser$ImageType.UNKNOWN;
            }
            int iMo4195c3 = (interfaceC3023m.mo4195c() << 16) | interfaceC3023m.mo4195c();
            if (iMo4195c3 == 1635150195) {
                return ImageHeaderParser$ImageType.ANIMATED_AVIF;
            }
            int i11 = 0;
            boolean z9 = iMo4195c3 == 1635150182;
            interfaceC3023m.skip(4L);
            int i12 = iMo4196e2 - 16;
            if (i12 % 4 == 0) {
                while (i11 < 5 && i12 > 0) {
                    int iMo4195c4 = (interfaceC3023m.mo4195c() << 16) | interfaceC3023m.mo4195c();
                    if (iMo4195c4 == 1635150195) {
                        return ImageHeaderParser$ImageType.ANIMATED_AVIF;
                    }
                    if (iMo4195c4 == 1635150182) {
                        z9 = true;
                    }
                    i11++;
                    i12 -= 4;
                }
            }
            return z9 ? ImageHeaderParser$ImageType.AVIF : ImageHeaderParser$ImageType.UNKNOWN;
        } catch (C3022l unused2) {
            return ImageHeaderParser$ImageType.UNKNOWN;
        }
    }

    /* JADX INFO: renamed from: g */
    public static int m4842g(InterfaceC3023m interfaceC3023m) {
        short sMo4196e;
        int iMo4195c;
        long j10;
        long jSkip;
        do {
            short sMo4196e2 = interfaceC3023m.mo4196e();
            if (sMo4196e2 == 255) {
                sMo4196e = interfaceC3023m.mo4196e();
                if (sMo4196e != 218) {
                    if (sMo4196e != 217) {
                        iMo4195c = interfaceC3023m.mo4195c() - 2;
                        if (sMo4196e == 225) {
                            return iMo4195c;
                        }
                        j10 = iMo4195c;
                        jSkip = interfaceC3023m.skip(j10);
                    } else if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                        Log.d("DfltImageHeaderParser", "Found MARKER_EOI in exif segment");
                        return -1;
                    }
                }
            } else if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                Log.d("DfltImageHeaderParser", "Unknown segmentId=" + ((int) sMo4196e2));
                return -1;
            }
            return -1;
        } while (jSkip == j10);
        if (Log.isLoggable("DfltImageHeaderParser", 3)) {
            StringBuilder sbM171v = AbstractC0074a.m171v("Unable to skip enough data, type: ", sMo4196e, iMo4195c, ", wanted to skip: ", ", but actually skipped: ");
            sbM171v.append(jSkip);
            Log.d("DfltImageHeaderParser", sbM171v.toString());
        }
        return -1;
    }

    /* JADX INFO: renamed from: h */
    public static int m4843h(InterfaceC3023m interfaceC3023m, byte[] bArr, int i10) {
        ByteOrder byteOrder;
        int i11 = interfaceC3023m.read(bArr, i10);
        short s5 = -1;
        if (i11 == i10) {
            int i12 = 0;
            byte[] bArr2 = f8479a;
            boolean z9 = bArr != null && i10 > bArr2.length;
            if (z9) {
                for (int i13 = 0; i13 < bArr2.length; i13++) {
                    if (bArr[i13] != bArr2[i13]) {
                        z9 = false;
                        break;
                    }
                }
            }
            if (!z9) {
                if (!Log.isLoggable("DfltImageHeaderParser", 3)) {
                    return -1;
                }
                Log.d("DfltImageHeaderParser", "Missing jpeg exif preamble");
                return -1;
            }
            ByteBuffer byteBuffer = (ByteBuffer) ByteBuffer.wrap(bArr).order(ByteOrder.BIG_ENDIAN).limit(i10);
            short s9 = byteBuffer.remaining() - 6 >= 2 ? byteBuffer.getShort(6) : (short) -1;
            if (s9 != 18761) {
                if (s9 != 19789 && Log.isLoggable("DfltImageHeaderParser", 3)) {
                    Log.d("DfltImageHeaderParser", "Unknown endianness = " + ((int) s9));
                }
                byteOrder = ByteOrder.BIG_ENDIAN;
            } else {
                byteOrder = ByteOrder.LITTLE_ENDIAN;
            }
            byteBuffer.order(byteOrder);
            int i14 = byteBuffer.remaining() - 10 >= 4 ? byteBuffer.getInt(10) : -1;
            int i15 = i14 + 6;
            short s10 = byteBuffer.remaining() - i15 >= 2 ? byteBuffer.getShort(i15) : (short) -1;
            while (i12 < s10) {
                int i16 = (i12 * 12) + i14 + 8;
                short s11 = byteBuffer.remaining() - i16 >= 2 ? byteBuffer.getShort(i16) : s5;
                if (s11 != 274) {
                    s5 = s5;
                } else {
                    int i17 = i16 + 2;
                    short s12 = byteBuffer.remaining() - i17 >= 2 ? byteBuffer.getShort(i17) : s5;
                    if (s12 < 1 || s12 > 12) {
                        s5 = s5;
                        if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                            Log.d("DfltImageHeaderParser", "Got invalid format code = " + ((int) s12));
                        }
                    } else {
                        int i18 = i16 + 4;
                        int i19 = byteBuffer.remaining() - i18 >= 4 ? byteBuffer.getInt(i18) : s5;
                        if (i19 < 0) {
                            if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                                Log.d("DfltImageHeaderParser", "Negative tiff component count");
                            }
                            s5 = s5;
                        } else {
                            if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                                StringBuilder sbM171v = AbstractC0074a.m171v("Got tagIndex=", i12, s11, " tagType=", " formatCode=");
                                sbM171v.append((int) s12);
                                sbM171v.append(" componentCount=");
                                sbM171v.append(i19);
                                Log.d("DfltImageHeaderParser", sbM171v.toString());
                            }
                            int i20 = i19 + f8480b[s12];
                            if (i20 <= 4) {
                                int i21 = i16 + 8;
                                if (i21 >= 0 && i21 <= byteBuffer.remaining()) {
                                    if (i20 >= 0 && i20 + i21 <= byteBuffer.remaining()) {
                                        return byteBuffer.remaining() - i21 >= 2 ? byteBuffer.getShort(i21) : s5;
                                    }
                                    if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                                        Log.d("DfltImageHeaderParser", "Illegal number of bytes for TI tag data tagType=" + ((int) s11));
                                    }
                                } else if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                                    Log.d("DfltImageHeaderParser", "Illegal tagValueOffset=" + i21 + " tagType=" + ((int) s11));
                                }
                            } else if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                                Log.d("DfltImageHeaderParser", "Got byte count > 4, not orientation, continuing, formatCode=" + ((int) s12));
                            }
                        }
                    }
                }
                i12++;
                s5 = s5;
            }
        } else if (Log.isLoggable("DfltImageHeaderParser", 3)) {
            Log.d("DfltImageHeaderParser", "Unable to read exif segment data, length: " + i10 + ", actually read: " + i11);
            return -1;
        }
        return s5;
    }

    @Override // p077h.InterfaceC1642d
    /* JADX INFO: renamed from: a */
    public final ImageHeaderParser$ImageType mo2724a(ByteBuffer byteBuffer) {
        AbstractC0938g.m1072c(byteBuffer, "Argument must not be null");
        return m4841f(new C3021k(byteBuffer, 0));
    }

    @Override // p077h.InterfaceC1642d
    /* JADX INFO: renamed from: b */
    public final int mo2725b(InputStream inputStream, C2019g c2019g) {
        C2686o2 c2686o2 = new C2686o2(inputStream);
        AbstractC0938g.m1072c(c2019g, "Argument must not be null");
        return m4840e(c2686o2, c2019g);
    }

    @Override // p077h.InterfaceC1642d
    /* JADX INFO: renamed from: c */
    public final ImageHeaderParser$ImageType mo2726c(InputStream inputStream) {
        return m4841f(new C2686o2(inputStream));
    }

    @Override // p077h.InterfaceC1642d
    /* JADX INFO: renamed from: d */
    public final int mo2727d(ByteBuffer byteBuffer, C2019g c2019g) {
        C3021k c3021k = new C3021k(byteBuffer, 0);
        AbstractC0938g.m1072c(c2019g, "Argument must not be null");
        return m4840e(c3021k, c2019g);
    }
}
