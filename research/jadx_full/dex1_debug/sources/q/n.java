package q;

import android.util.Log;
import androidx.core.view.InputDeviceCompat;
import com.bumptech.glide.load.ImageHeaderParser$ImageType;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import o7.o2;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class n implements h.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final byte[] f4725a = "Exif\u0000\u0000".getBytes(Charset.forName("UTF-8"));

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int[] f4726b = {0, 1, 1, 2, 4, 8, 1, 1, 2, 4, 8, 4, 8};

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int e(m mVar, k.g gVar) {
        try {
            int iC = mVar.c();
            if ((iC & 65496) == 65496 || iC == 19789 || iC == 18761) {
                int iG = g(mVar);
                if (iG != -1) {
                    byte[] bArr = (byte[]) gVar.c(iG, byte[].class);
                    try {
                        return h(mVar, bArr, iG);
                    } finally {
                        gVar.g(bArr);
                    }
                }
                if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                    Log.d("DfltImageHeaderParser", "Failed to parse exif segment length, or exif segment not found");
                    return -1;
                }
            } else if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                Log.d("DfltImageHeaderParser", "Parser doesn't handle magic number: " + iC);
                return -1;
            }
        } catch (l unused) {
        }
        return -1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static ImageHeaderParser$ImageType f(m mVar) {
        try {
            int iC = mVar.c();
            if (iC == 65496) {
                return ImageHeaderParser$ImageType.JPEG;
            }
            int iE = (iC << 8) | mVar.e();
            if (iE == 4671814) {
                return ImageHeaderParser$ImageType.GIF;
            }
            int iE2 = (iE << 8) | mVar.e();
            if (iE2 == -1991225785) {
                mVar.skip(21L);
                try {
                    return mVar.e() >= 3 ? ImageHeaderParser$ImageType.PNG_A : ImageHeaderParser$ImageType.PNG;
                } catch (l unused) {
                    return ImageHeaderParser$ImageType.PNG;
                }
            }
            if (iE2 == 1380533830) {
                mVar.skip(4L);
                if (((mVar.c() << 16) | mVar.c()) != 1464156752) {
                    return ImageHeaderParser$ImageType.UNKNOWN;
                }
                int iC2 = (mVar.c() << 16) | mVar.c();
                if ((iC2 & InputDeviceCompat.SOURCE_ANY) != 1448097792) {
                    return ImageHeaderParser$ImageType.UNKNOWN;
                }
                int i9 = iC2 & 255;
                if (i9 != 88) {
                    if (i9 != 76) {
                        return ImageHeaderParser$ImageType.WEBP;
                    }
                    mVar.skip(4L);
                    return (mVar.e() & 8) != 0 ? ImageHeaderParser$ImageType.WEBP_A : ImageHeaderParser$ImageType.WEBP;
                }
                mVar.skip(4L);
                short sE = mVar.e();
                if ((sE & 2) != 0) {
                    return ImageHeaderParser$ImageType.ANIMATED_WEBP;
                }
                return (sE & 16) != 0 ? ImageHeaderParser$ImageType.WEBP_A : ImageHeaderParser$ImageType.WEBP;
            }
            if (((mVar.c() << 16) | mVar.c()) != 1718909296) {
                return ImageHeaderParser$ImageType.UNKNOWN;
            }
            int iC3 = (mVar.c() << 16) | mVar.c();
            if (iC3 == 1635150195) {
                return ImageHeaderParser$ImageType.ANIMATED_AVIF;
            }
            int i10 = 0;
            boolean z8 = iC3 == 1635150182;
            mVar.skip(4L);
            int i11 = iE2 - 16;
            if (i11 % 4 == 0) {
                while (i10 < 5 && i11 > 0) {
                    int iC4 = (mVar.c() << 16) | mVar.c();
                    if (iC4 == 1635150195) {
                        return ImageHeaderParser$ImageType.ANIMATED_AVIF;
                    }
                    if (iC4 == 1635150182) {
                        z8 = true;
                    }
                    i10++;
                    i11 -= 4;
                }
            }
            return z8 ? ImageHeaderParser$ImageType.AVIF : ImageHeaderParser$ImageType.UNKNOWN;
        } catch (l unused2) {
            return ImageHeaderParser$ImageType.UNKNOWN;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int g(m mVar) {
        short sE;
        int iC;
        long j9;
        long jSkip;
        do {
            short sE2 = mVar.e();
            if (sE2 == 255) {
                sE = mVar.e();
                if (sE != 218) {
                    if (sE != 217) {
                        iC = mVar.c() - 2;
                        if (sE == 225) {
                            return iC;
                        }
                        j9 = iC;
                        jSkip = mVar.skip(j9);
                    } else if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                        Log.d("DfltImageHeaderParser", "Found MARKER_EOI in exif segment");
                        return -1;
                    }
                }
            } else if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                Log.d("DfltImageHeaderParser", "Unknown segmentId=" + ((int) sE2));
                return -1;
            }
            return -1;
        } while (jSkip == j9);
        if (Log.isLoggable("DfltImageHeaderParser", 3)) {
            StringBuilder sbV = ai.onnxruntime.a.v("Unable to skip enough data, type: ", sE, iC, ", wanted to skip: ", ", but actually skipped: ");
            sbV.append(jSkip);
            Log.d("DfltImageHeaderParser", sbV.toString());
        }
        return -1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int h(m mVar, byte[] bArr, int i9) {
        ByteOrder byteOrder;
        int i10 = mVar.read(bArr, i9);
        short s5 = -1;
        if (i10 == i9) {
            int i11 = 0;
            byte[] bArr2 = f4725a;
            boolean z8 = bArr != null && i9 > bArr2.length;
            if (z8) {
                for (int i12 = 0; i12 < bArr2.length; i12++) {
                    if (bArr[i12] != bArr2[i12]) {
                        z8 = false;
                        break;
                    }
                }
            }
            if (!z8) {
                if (!Log.isLoggable("DfltImageHeaderParser", 3)) {
                    return -1;
                }
                Log.d("DfltImageHeaderParser", "Missing jpeg exif preamble");
                return -1;
            }
            ByteBuffer byteBuffer = (ByteBuffer) ByteBuffer.wrap(bArr).order(ByteOrder.BIG_ENDIAN).limit(i9);
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
            int i13 = byteBuffer.remaining() - 10 >= 4 ? byteBuffer.getInt(10) : -1;
            int i14 = i13 + 6;
            short s10 = byteBuffer.remaining() - i14 >= 2 ? byteBuffer.getShort(i14) : (short) -1;
            while (i11 < s10) {
                int i15 = (i11 * 12) + i13 + 8;
                short s11 = byteBuffer.remaining() - i15 >= 2 ? byteBuffer.getShort(i15) : s5;
                if (s11 != 274) {
                    s5 = s5;
                } else {
                    int i16 = i15 + 2;
                    short s12 = byteBuffer.remaining() - i16 >= 2 ? byteBuffer.getShort(i16) : s5;
                    if (s12 < 1 || s12 > 12) {
                        s5 = s5;
                        if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                            Log.d("DfltImageHeaderParser", "Got invalid format code = " + ((int) s12));
                        }
                    } else {
                        int i17 = i15 + 4;
                        int i18 = byteBuffer.remaining() - i17 >= 4 ? byteBuffer.getInt(i17) : s5;
                        if (i18 < 0) {
                            if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                                Log.d("DfltImageHeaderParser", "Negative tiff component count");
                            }
                            s5 = s5;
                        } else {
                            if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                                StringBuilder sbV = ai.onnxruntime.a.v("Got tagIndex=", i11, s11, " tagType=", " formatCode=");
                                sbV.append((int) s12);
                                sbV.append(" componentCount=");
                                sbV.append(i18);
                                Log.d("DfltImageHeaderParser", sbV.toString());
                            }
                            int i19 = i18 + f4726b[s12];
                            if (i19 <= 4) {
                                int i20 = i15 + 8;
                                if (i20 >= 0 && i20 <= byteBuffer.remaining()) {
                                    if (i19 >= 0 && i19 + i20 <= byteBuffer.remaining()) {
                                        return byteBuffer.remaining() - i20 >= 2 ? byteBuffer.getShort(i20) : s5;
                                    }
                                    if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                                        Log.d("DfltImageHeaderParser", "Illegal number of bytes for TI tag data tagType=" + ((int) s11));
                                    }
                                } else if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                                    Log.d("DfltImageHeaderParser", "Illegal tagValueOffset=" + i20 + " tagType=" + ((int) s11));
                                }
                            } else if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                                Log.d("DfltImageHeaderParser", "Got byte count > 4, not orientation, continuing, formatCode=" + ((int) s12));
                            }
                        }
                    }
                }
                i11++;
                s5 = s5;
            }
        } else if (Log.isLoggable("DfltImageHeaderParser", 3)) {
            Log.d("DfltImageHeaderParser", "Unable to read exif segment data, length: " + i9 + ", actually read: " + i10);
            return -1;
        }
        return s5;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // h.d
    public final ImageHeaderParser$ImageType a(ByteBuffer byteBuffer) {
        c0.g.c(byteBuffer, "Argument must not be null");
        return f(new k(byteBuffer, 0));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // h.d
    public final int b(InputStream inputStream, k.g gVar) {
        o2 o2Var = new o2(inputStream);
        c0.g.c(gVar, "Argument must not be null");
        return e(o2Var, gVar);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // h.d
    public final ImageHeaderParser$ImageType c(InputStream inputStream) {
        return f(new o2(inputStream));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // h.d
    public final int d(ByteBuffer byteBuffer, k.g gVar) {
        k kVar = new k(byteBuffer, 0);
        c0.g.c(gVar, "Argument must not be null");
        return e(kVar, gVar);
    }
}
