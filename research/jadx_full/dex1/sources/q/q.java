package q;

import android.graphics.Bitmap;
import android.graphics.Bitmap$Config;
import android.graphics.BitmapFactory$Options;
import android.graphics.ColorSpace$Named;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.os.Build$VERSION;
import android.os.SystemClock;
import android.util.DisplayMetrics;
import android.util.Log;
import com.bumptech.glide.load.ImageHeaderParser$ImageType;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.EnumSet;
import java.util.HashSet;
import java.util.List;
import java.util.concurrent.locks.Lock;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class q {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final h.g f4732f = h.g.a(h.a.d, "com.bumptech.glide.load.resource.bitmap.Downsampler.DecodeFormat");

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final h.g f4733g = new h.g("com.bumptech.glide.load.resource.bitmap.Downsampler.PreferredColorSpace", null, h.g.e);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final h.g f4734h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final h.g f4735i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final p2.e f4736j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final ArrayDeque f4737k;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final k.b f4738a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final DisplayMetrics f4739b;
    public final k.g c;
    public final ArrayList d;
    public final w e = w.a();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        o oVar = o.f4727b;
        Boolean bool = Boolean.FALSE;
        f4734h = h.g.a(bool, "com.bumptech.glide.load.resource.bitmap.Downsampler.FixBitmapSize");
        f4735i = h.g.a(bool, "com.bumptech.glide.load.resource.bitmap.Downsampler.AllowHardwareDecode");
        Collections.unmodifiableSet(new HashSet(Arrays.asList("image/vnd.wap.wbmp", "image/x-ico")));
        f4736j = new p2.e(16);
        Collections.unmodifiableSet(EnumSet.of(ImageHeaderParser$ImageType.JPEG, ImageHeaderParser$ImageType.PNG_A, ImageHeaderParser$ImageType.PNG));
        char[] cArr = c0.p.f411a;
        f4737k = new ArrayDeque(0);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public q(ArrayList arrayList, DisplayMetrics displayMetrics, k.b bVar, k.g gVar) {
        this.d = arrayList;
        c0.g.c(displayMetrics, "Argument must not be null");
        this.f4739b = displayMetrics;
        c0.g.c(bVar, "Argument must not be null");
        this.f4738a = bVar;
        c0.g.c(gVar, "Argument must not be null");
        this.c = gVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code restructure failed: missing block: B:39:?, code lost:
    
        throw r5;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Bitmap c(a5.h hVar, BitmapFactory$Options bitmapFactory$Options, p pVar, k.b bVar) {
        if (!bitmapFactory$Options.inJustDecodeBounds) {
            pVar.d();
            switch (hVar.f48b) {
                case 22:
                    x xVar = (x) ((com.bumptech.glide.load.data.i) hVar.c).c;
                    synchronized (xVar) {
                        xVar.d = xVar.f4748b.length;
                        break;
                    }
                    break;
            }
        }
        int i9 = bitmapFactory$Options.outWidth;
        int i10 = bitmapFactory$Options.outHeight;
        String str = bitmapFactory$Options.outMimeType;
        Lock lock = z.f4752b;
        lock.lock();
        try {
            try {
                Bitmap bitmapE = hVar.e(bitmapFactory$Options);
                lock.unlock();
                return bitmapE;
            } catch (IllegalArgumentException e) {
                StringBuilder sbV = ai.onnxruntime.a.v("Exception decoding bitmap, outWidth: ", i9, i10, ", outHeight: ", ", outMimeType: ");
                sbV.append(str);
                sbV.append(", inBitmap: ");
                sbV.append(d(bitmapFactory$Options.inBitmap));
                IOException iOException = new IOException(sbV.toString(), e);
                if (Log.isLoggable("Downsampler", 3)) {
                    Log.d("Downsampler", "Failed to decode with inBitmap, trying again without Bitmap re-use", iOException);
                }
                Bitmap bitmap = bitmapFactory$Options.inBitmap;
                if (bitmap == null) {
                    throw iOException;
                }
                try {
                    bVar.c(bitmap);
                    bitmapFactory$Options.inBitmap = null;
                    Bitmap bitmapC = c(hVar, bitmapFactory$Options, pVar, bVar);
                    z.f4752b.unlock();
                    return bitmapC;
                } catch (IOException unused) {
                    throw iOException;
                }
            }
        } catch (Throwable th) {
            z.f4752b.unlock();
            throw th;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String d(Bitmap bitmap) {
        if (bitmap == null) {
            return null;
        }
        return "[" + bitmap.getWidth() + "x" + bitmap.getHeight() + "] " + bitmap.getConfig() + (" (" + bitmap.getAllocationByteCount() + ")");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void e(BitmapFactory$Options bitmapFactory$Options) {
        bitmapFactory$Options.inTempStorage = null;
        bitmapFactory$Options.inDither = false;
        bitmapFactory$Options.inScaled = false;
        bitmapFactory$Options.inSampleSize = 1;
        bitmapFactory$Options.inPreferredConfig = null;
        bitmapFactory$Options.inJustDecodeBounds = false;
        bitmapFactory$Options.inDensity = 0;
        bitmapFactory$Options.inTargetDensity = 0;
        if (Build$VERSION.SDK_INT >= 26) {
            org.apache.commons.net.util.a.r(bitmapFactory$Options);
            org.apache.commons.net.util.a.z(bitmapFactory$Options);
            org.apache.commons.net.util.a.B(bitmapFactory$Options);
        }
        bitmapFactory$Options.outWidth = 0;
        bitmapFactory$Options.outHeight = 0;
        bitmapFactory$Options.outMimeType = null;
        bitmapFactory$Options.inBitmap = null;
        bitmapFactory$Options.inMutable = true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final e a(a5.h hVar, int i9, int i10, h.h hVar2, p pVar) {
        ArrayDeque arrayDeque;
        BitmapFactory$Options bitmapFactory$Options;
        byte[] bArr = (byte[]) this.c.c(65536, byte[].class);
        synchronized (q.class) {
            arrayDeque = f4737k;
            synchronized (arrayDeque) {
                bitmapFactory$Options = (BitmapFactory$Options) arrayDeque.poll();
            }
            if (bitmapFactory$Options == null) {
                bitmapFactory$Options = new BitmapFactory$Options();
                e(bitmapFactory$Options);
            }
        }
        bitmapFactory$Options.inTempStorage = bArr;
        h.a aVar = (h.a) hVar2.c(f4732f);
        h.i iVar = (h.i) hVar2.c(f4733g);
        o oVar = (o) hVar2.c(o.f4729g);
        boolean zBooleanValue = ((Boolean) hVar2.c(f4734h)).booleanValue();
        h.g gVar = f4735i;
        try {
            e eVarC = e.c(b(hVar, bitmapFactory$Options, oVar, aVar, iVar, hVar2.c(gVar) != null && ((Boolean) hVar2.c(gVar)).booleanValue(), i9, i10, zBooleanValue, pVar), this.f4738a);
            e(bitmapFactory$Options);
            synchronized (arrayDeque) {
                arrayDeque.offer(bitmapFactory$Options);
            }
            return eVarC;
        } finally {
            e(bitmapFactory$Options);
            ArrayDeque arrayDeque2 = f4737k;
            synchronized (arrayDeque2) {
                arrayDeque2.offer(bitmapFactory$Options);
                this.c.g(bArr);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:143:0x0359  */
    /* JADX WARN: Code duplicated, block: B:146:0x0388  */
    /* JADX WARN: Code duplicated, block: B:147:0x0392  */
    /* JADX WARN: Code duplicated, block: B:149:0x0395  */
    /* JADX WARN: Code duplicated, block: B:150:0x0397  */
    /* JADX WARN: Code duplicated, block: B:160:0x03c2  */
    /* JADX WARN: Code duplicated, block: B:161:0x03c5  */
    /* JADX WARN: Code duplicated, block: B:164:0x03cd  */
    /* JADX WARN: Code duplicated, block: B:165:0x03d1  */
    /* JADX WARN: Code duplicated, block: B:167:0x03d8 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:170:0x03de  */
    /* JADX WARN: Code duplicated, block: B:172:0x03e2  */
    /* JADX WARN: Code duplicated, block: B:176:0x03ea  */
    /* JADX WARN: Code duplicated, block: B:178:0x03ed  */
    /* JADX WARN: Code duplicated, block: B:179:0x03f3  */
    /* JADX WARN: Code duplicated, block: B:182:0x041b  */
    /* JADX WARN: Code duplicated, block: B:186:0x045b A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:197:0x047e  */
    /* JADX WARN: Code duplicated, block: B:199:0x0482  */
    /* JADX WARN: Code duplicated, block: B:201:0x0488  */
    /* JADX WARN: Code duplicated, block: B:203:0x048e  */
    /* JADX WARN: Code duplicated, block: B:208:0x04a0  */
    /* JADX WARN: Code duplicated, block: B:210:0x04a3  */
    /* JADX WARN: Code duplicated, block: B:211:0x04a8  */
    /* JADX WARN: Code duplicated, block: B:214:0x04b6 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:215:0x04b8  */
    /* JADX WARN: Code duplicated, block: B:218:0x04d1  */
    /* JADX WARN: Code duplicated, block: B:220:0x0556  */
    /* JADX WARN: Code duplicated, block: B:222:0x0560  */
    /* JADX WARN: Code duplicated, block: B:223:0x0563  */
    /* JADX WARN: Code duplicated, block: B:226:0x0574  */
    /* JADX WARN: Code duplicated, block: B:227:0x0578  */
    /* JADX WARN: Code duplicated, block: B:228:0x0581  */
    /* JADX WARN: Code duplicated, block: B:229:0x0585  */
    /* JADX WARN: Code duplicated, block: B:230:0x058e  */
    /* JADX WARN: Code duplicated, block: B:231:0x0597  */
    /* JADX WARN: Code duplicated, block: B:232:0x059b  */
    /* JADX WARN: Code duplicated, block: B:235:0x05ca  */
    /* JADX WARN: Code duplicated, block: B:236:0x05cf  */
    /* JADX WARN: Code duplicated, block: B:240:0x05ee  */
    /* JADX WARN: Code duplicated, block: B:245:0x039d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:255:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:45:0x010b  */
    /* JADX WARN: Code duplicated, block: B:46:0x010d  */
    /* JADX WARN: Code duplicated, block: B:47:0x0110  */
    /* JADX WARN: Code duplicated, block: B:48:0x0112  */
    /* JADX WARN: Code duplicated, block: B:50:0x0117  */
    /* JADX WARN: Code duplicated, block: B:51:0x0119  */
    /* JADX WARN: Code duplicated, block: B:54:0x011e A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:55:0x0120  */
    /* JADX WARN: Code duplicated, block: B:58:0x0125  */
    /* JADX WARN: Code duplicated, block: B:59:0x0128  */
    /* JADX WARN: Code duplicated, block: B:61:0x012d  */
    /* JADX WARN: Code duplicated, block: B:63:0x0133  */
    /* JADX WARN: Code duplicated, block: B:65:0x0137 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:68:0x013c  */
    /* JADX WARN: Code duplicated, block: B:69:0x013e  */
    /* JADX WARN: Code duplicated, block: B:72:0x0157 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:73:0x0159  */
    /* JADX WARN: Instruction removed from duplicated block: B:143:0x0359, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:218:0x04d1, please report this as an issue */
    public final Bitmap b(a5.h hVar, BitmapFactory$Options bitmapFactory$Options, o oVar, h.a aVar, h.i iVar, boolean z8, int i9, int i10, boolean z9, p pVar) throws Throwable {
        long j9;
        String str;
        int iD;
        int iT;
        int i11;
        boolean z10;
        int i12;
        int i13;
        int i14;
        ImageHeaderParser$ImageType imageHeaderParser$ImageTypeM;
        int i15;
        String str2;
        k.b bVar;
        String str3;
        int i16;
        boolean zC;
        boolean z11;
        boolean zHasAlpha;
        Bitmap$Config bitmap$Config;
        boolean z12;
        int i17;
        boolean z13;
        float f8;
        int i18;
        int iRound;
        int iRound2;
        int i19;
        k.b bVar2;
        Bitmap bitmapC;
        Matrix matrix;
        Bitmap$Config config;
        Bitmap bitmapJ;
        int i20;
        boolean z14;
        ColorSpace$Named colorSpace$NamedO;
        Bitmap$Config bitmap$ConfigH;
        int i21;
        int i22;
        int iFloor;
        int iFloor2;
        int iRound3;
        int i23 = c0.j.f402b;
        long jElapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
        bitmapFactory$Options.inJustDecodeBounds = true;
        k.b bVar3 = this.f4738a;
        c(hVar, bitmapFactory$Options, pVar, bVar3);
        bitmapFactory$Options.inJustDecodeBounds = false;
        int[] iArr = {bitmapFactory$Options.outWidth, bitmapFactory$Options.outHeight};
        int i24 = iArr[0];
        int i25 = iArr[1];
        String str4 = bitmapFactory$Options.outMimeType;
        boolean z15 = (i24 == -1 || i25 == -1) ? false : z8;
        x xVar = null;
        switch (hVar.f48b) {
            case 21:
                j9 = jElapsedRealtimeNanos;
                str = str4;
                List list = (List) hVar.d;
                ByteBuffer byteBufferC = c0.b.c((ByteBuffer) hVar.c);
                k.g gVar = (k.g) hVar.e;
                if (byteBufferC != null) {
                    int size = list.size();
                    int i26 = 0;
                    while (true) {
                        if (i26 < size) {
                            List list2 = list;
                            try {
                                iD = ((h.d) list.get(i26)).d(byteBufferC, gVar);
                                k.g gVar2 = gVar;
                                if (iD != -1) {
                                    iT = iD;
                                    switch (iT) {
                                        case 3:
                                        case 4:
                                            i11 = 180;
                                            break;
                                        case 5:
                                        case 6:
                                            i11 = 90;
                                            break;
                                        case 7:
                                        case 8:
                                            i11 = 270;
                                            break;
                                        default:
                                            i11 = 0;
                                            break;
                                    }
                                    switch (iT) {
                                        case 2:
                                        case 3:
                                        case 4:
                                        case 5:
                                        case 6:
                                        case 7:
                                        case 8:
                                            z10 = true;
                                            break;
                                        default:
                                            z10 = false;
                                            break;
                                    }
                                    if (i9 == Integer.MIN_VALUE) {
                                        if (i11 != 90) {
                                            i12 = 270;
                                            if (i11 == 270) {
                                                i13 = i24;
                                            }
                                        } else {
                                            i12 = 270;
                                        }
                                        i13 = i25;
                                    } else {
                                        i12 = 270;
                                        i13 = i9;
                                    }
                                    if (i10 == Integer.MIN_VALUE) {
                                        i14 = i10;
                                    } else if (i11 != 90 || i11 == i12) {
                                        i14 = i24;
                                    } else {
                                        i14 = i25;
                                    }
                                    imageHeaderParser$ImageTypeM = hVar.m();
                                    i15 = iT;
                                    boolean z16 = z10;
                                    if (i24 > 0 || i25 <= 0) {
                                        str2 = ", density: ";
                                        bVar = bVar3;
                                        str3 = ", target density: ";
                                        i16 = i13;
                                        if (Log.isLoggable("Downsampler", 3)) {
                                            Log.d("Downsampler", "Unable to determine dimensions for: " + imageHeaderParser$ImageTypeM + " with target [" + i16 + "x" + i14 + "]");
                                        }
                                    } else {
                                        if (i11 == 90 || i11 == 270) {
                                            i21 = i25;
                                            i22 = i24;
                                        } else {
                                            i22 = i25;
                                            i21 = i24;
                                        }
                                        i16 = i13;
                                        float fB = oVar.b(i21, i22, i16, i14);
                                        if (fB <= 0.0f) {
                                            throw new IllegalArgumentException("Cannot scale with factor: " + fB + " from: " + oVar + ", source: [" + i24 + "x" + i25 + "], target: [" + i16 + "x" + i14 + "]");
                                        }
                                        int iA = oVar.a(i21, i22, i16, i14);
                                        if (iA == 0) {
                                            j1.i.k("Cannot round with null rounding");
                                            return null;
                                        }
                                        int i27 = i11;
                                        float f9 = i21;
                                        int i28 = i21;
                                        float f10 = i22;
                                        int i29 = i22;
                                        int i30 = (int) (((double) (fB * f10)) + 0.5d);
                                        int i31 = i28 / ((int) (((double) (fB * f9)) + 0.5d));
                                        int i32 = i29 / i30;
                                        int iMax = Math.max(1, Integer.highestOneBit(iA == 1 ? Math.max(i31, i32) : Math.min(i31, i32)));
                                        if (iA == 1 && iMax < 1.0f / fB) {
                                            iMax <<= 1;
                                        }
                                        bitmapFactory$Options.inSampleSize = iMax;
                                        if (imageHeaderParser$ImageTypeM == ImageHeaderParser$ImageType.JPEG) {
                                            float fMin = Math.min(iMax, 8);
                                            iFloor = (int) Math.ceil(f9 / fMin);
                                            iFloor2 = (int) Math.ceil(f10 / fMin);
                                            int i33 = iMax / 8;
                                            if (i33 > 0) {
                                                iFloor2 /= i33;
                                                iRound3 = iFloor / i33;
                                            } else {
                                                iRound3 = iFloor;
                                            }
                                        } else {
                                            if (imageHeaderParser$ImageTypeM == ImageHeaderParser$ImageType.PNG || imageHeaderParser$ImageTypeM == ImageHeaderParser$ImageType.PNG_A) {
                                                float f11 = iMax;
                                                iFloor = (int) Math.floor(f9 / f11);
                                                iFloor2 = (int) Math.floor(f10 / f11);
                                            } else if (imageHeaderParser$ImageTypeM.isWebp()) {
                                                float f12 = iMax;
                                                iRound3 = Math.round(f9 / f12);
                                                iFloor2 = Math.round(f10 / f12);
                                            } else if (i28 % iMax == 0 && i29 % iMax == 0) {
                                                iRound3 = i28 / iMax;
                                                iFloor2 = i29 / iMax;
                                            } else {
                                                bitmapFactory$Options.inJustDecodeBounds = true;
                                                c(hVar, bitmapFactory$Options, pVar, bVar3);
                                                bitmapFactory$Options.inJustDecodeBounds = false;
                                                int[] iArr2 = {bitmapFactory$Options.outWidth, bitmapFactory$Options.outHeight};
                                                iFloor = iArr2[0];
                                                iFloor2 = iArr2[1];
                                            }
                                            iRound3 = iFloor;
                                        }
                                        double dB = oVar.b(iRound3, iFloor2, i16, i14);
                                        int iRound4 = (int) Math.round((dB <= 1.0d ? dB : 1.0d / dB) * 2.147483647E9d);
                                        bVar = bVar3;
                                        int i34 = (int) ((((double) iRound4) * dB) + 0.5d);
                                        float f13 = i34 / iRound4;
                                        int i35 = iMax;
                                        bitmapFactory$Options.inTargetDensity = (int) (((dB / ((double) f13)) * ((double) i34)) + 0.5d);
                                        int iRound5 = (int) Math.round((dB <= 1.0d ? dB : 1.0d / dB) * 2.147483647E9d);
                                        bitmapFactory$Options.inDensity = iRound5;
                                        int i36 = bitmapFactory$Options.inTargetDensity;
                                        if (i36 <= 0 || iRound5 <= 0 || i36 == iRound5) {
                                            bitmapFactory$Options.inTargetDensity = 0;
                                            bitmapFactory$Options.inDensity = 0;
                                        } else {
                                            bitmapFactory$Options.inScaled = true;
                                        }
                                        if (Log.isLoggable("Downsampler", 2)) {
                                            StringBuilder sbV = ai.onnxruntime.a.v("Calculate scaling, source: [", i24, i25, "x", "], degreesToRotate: ");
                                            sbV.append(i27);
                                            sbV.append(", target: [");
                                            sbV.append(i16);
                                            sbV.append("x");
                                            sbV.append(i14);
                                            sbV.append("], power of two scaled: [");
                                            sbV.append(iRound3);
                                            sbV.append("x");
                                            sbV.append(iFloor2);
                                            sbV.append("], exact scale factor: ");
                                            sbV.append(fB);
                                            sbV.append(", power of 2 sample size: ");
                                            sbV.append(i35);
                                            sbV.append(", adjusted scale factor: ");
                                            sbV.append(dB);
                                            str3 = ", target density: ";
                                            sbV.append(str3);
                                            sbV.append(bitmapFactory$Options.inTargetDensity);
                                            str2 = ", density: ";
                                            sbV.append(str2);
                                            sbV.append(bitmapFactory$Options.inDensity);
                                            Log.v("Downsampler", sbV.toString());
                                        } else {
                                            str2 = r7;
                                            str3 = ", target density: ";
                                        }
                                    }
                                    zC = this.e.c(i16, i14, z15, z16);
                                    if (zC) {
                                        bitmapFactory$Options.inPreferredConfig = c5.h.e();
                                        z11 = false;
                                        bitmapFactory$Options.inMutable = false;
                                    } else {
                                        z11 = false;
                                    }
                                    if (zC) {
                                        if (aVar != h.a.f2407b) {
                                            try {
                                                zHasAlpha = hVar.m().hasAlpha();
                                            } catch (IOException e) {
                                                if (Log.isLoggable("Downsampler", 3)) {
                                                    Log.d("Downsampler", "Cannot determine whether the image has alpha or not from header, format " + aVar, e);
                                                }
                                                zHasAlpha = z11;
                                            }
                                            if (zHasAlpha) {
                                                bitmap$Config = Bitmap$Config.ARGB_8888;
                                            } else {
                                                bitmap$Config = Bitmap$Config.RGB_565;
                                            }
                                            bitmapFactory$Options.inPreferredConfig = bitmap$Config;
                                            if (bitmap$Config == Bitmap$Config.RGB_565) {
                                                z12 = true;
                                                bitmapFactory$Options.inDither = true;
                                            } else {
                                                z12 = true;
                                            }
                                        } else {
                                            z12 = true;
                                            bitmapFactory$Options.inPreferredConfig = Bitmap$Config.ARGB_8888;
                                        }
                                        break;
                                    } else {
                                        z12 = true;
                                    }
                                    if (i24 >= 0 || i25 < 0 || !z9) {
                                        i17 = bitmapFactory$Options.inTargetDensity;
                                        if (i17 > 0 || (i19 = bitmapFactory$Options.inDensity) <= 0 || i17 == i19) {
                                            z13 = z11;
                                        } else {
                                            z13 = z12;
                                        }
                                        if (z13) {
                                            f8 = i17 / bitmapFactory$Options.inDensity;
                                        } else {
                                            f8 = 1.0f;
                                        }
                                        i18 = bitmapFactory$Options.inSampleSize;
                                        float f14 = i18;
                                        int iCeil = (int) Math.ceil(i24 / f14);
                                        int iCeil2 = (int) Math.ceil(i25 / f14);
                                        iRound = Math.round(iCeil * f8);
                                        iRound2 = Math.round(iCeil2 * f8);
                                        if (Log.isLoggable("Downsampler", 2)) {
                                            StringBuilder sbV2 = ai.onnxruntime.a.v("Calculated target [", iRound, iRound2, "x", "] for source [");
                                            sbV2.append(i24);
                                            sbV2.append("x");
                                            sbV2.append(i25);
                                            sbV2.append("], sampleSize: ");
                                            sbV2.append(i18);
                                            sbV2.append(", targetDensity: ");
                                            sbV2.append(bitmapFactory$Options.inTargetDensity);
                                            sbV2.append(str2);
                                            sbV2.append(bitmapFactory$Options.inDensity);
                                            sbV2.append(", density multiplier: ");
                                            sbV2.append(f8);
                                            Log.v("Downsampler", sbV2.toString());
                                        }
                                        i16 = iRound;
                                        i14 = iRound2;
                                    }
                                    if (i16 > 0 || i14 <= 0) {
                                        bVar2 = bVar;
                                    } else {
                                        if (Build$VERSION.SDK_INT < 26) {
                                            bitmap$ConfigH = null;
                                        } else if (bitmapFactory$Options.inPreferredConfig == c5.h.e()) {
                                            bVar2 = bVar;
                                        } else {
                                            bitmap$ConfigH = org.apache.commons.net.util.a.h(bitmapFactory$Options);
                                        }
                                        if (bitmap$ConfigH == null) {
                                            bitmap$ConfigH = bitmapFactory$Options.inPreferredConfig;
                                        }
                                        bVar2 = bVar;
                                        bitmapFactory$Options.inBitmap = bVar2.b(i16, i14, bitmap$ConfigH);
                                    }
                                    if (iVar != null) {
                                        i20 = Build$VERSION.SDK_INT;
                                        if (i20 >= 28) {
                                            if (iVar == h.i.f2413b || org.apache.commons.net.util.a.j(bitmapFactory$Options) == null || !org.apache.commons.net.util.a.x(org.apache.commons.net.util.a.j(bitmapFactory$Options))) {
                                                z14 = false;
                                            } else {
                                                z14 = true;
                                            }
                                            if (z14) {
                                                colorSpace$NamedO = org.apache.commons.net.util.a.i();
                                            } else {
                                                colorSpace$NamedO = ai.onnxruntime.c.o();
                                            }
                                            org.apache.commons.net.util.a.s(bitmapFactory$Options, androidx.core.graphics.a.i(colorSpace$NamedO));
                                        } else if (i20 >= 26) {
                                            ai.onnxruntime.c.o();
                                            org.apache.commons.net.util.a.s(bitmapFactory$Options, ai.onnxruntime.c.p());
                                        }
                                    }
                                    bitmapC = c(hVar, bitmapFactory$Options, pVar, bVar2);
                                    pVar.l(bitmapC, bVar2);
                                    if (Log.isLoggable("Downsampler", 2)) {
                                        Log.v("Downsampler", "Decoded " + d(bitmapC) + " from [" + i24 + "x" + i25 + "] " + str + " with inBitmap " + d(bitmapFactory$Options.inBitmap) + " for [" + i9 + "x" + i10 + "], sample size: " + bitmapFactory$Options.inSampleSize + str2 + bitmapFactory$Options.inDensity + str3 + bitmapFactory$Options.inTargetDensity + ", thread: " + Thread.currentThread().getName() + ", duration: " + c0.j.a(j9));
                                    }
                                    if (bitmapC != null) {
                                        return null;
                                    }
                                    bitmapC.setDensity(this.f4739b.densityDpi);
                                    switch (i15) {
                                        case 2:
                                        case 3:
                                        case 4:
                                        case 5:
                                        case 6:
                                        case 7:
                                        case 8:
                                            matrix = new Matrix();
                                            switch (i15) {
                                                case 2:
                                                    matrix.setScale(-1.0f, 1.0f);
                                                    break;
                                                case 3:
                                                    matrix.setRotate(180.0f);
                                                    break;
                                                case 4:
                                                    matrix.setRotate(180.0f);
                                                    matrix.postScale(-1.0f, 1.0f);
                                                    break;
                                                case 5:
                                                    matrix.setRotate(90.0f);
                                                    matrix.postScale(-1.0f, 1.0f);
                                                    break;
                                                case 6:
                                                    matrix.setRotate(90.0f);
                                                    break;
                                                case 7:
                                                    matrix.setRotate(-90.0f);
                                                    matrix.postScale(-1.0f, 1.0f);
                                                    break;
                                                case 8:
                                                    matrix.setRotate(-90.0f);
                                                    break;
                                            }
                                            RectF rectF = new RectF(0.0f, 0.0f, bitmapC.getWidth(), bitmapC.getHeight());
                                            matrix.mapRect(rectF);
                                            int iRound6 = Math.round(rectF.width());
                                            int iRound7 = Math.round(rectF.height());
                                            if (bitmapC.getConfig() != null) {
                                                config = bitmapC.getConfig();
                                            } else {
                                                config = Bitmap$Config.ARGB_8888;
                                            }
                                            bitmapJ = bVar2.j(iRound6, iRound7, config);
                                            matrix.postTranslate(-rectF.left, -rectF.top);
                                            bitmapJ.setHasAlpha(bitmapC.hasAlpha());
                                            z.a(bitmapC, bitmapJ, matrix);
                                            break;
                                        default:
                                            bitmapJ = bitmapC;
                                            break;
                                    }
                                    if (!bitmapC.equals(bitmapJ)) {
                                        bVar2.c(bitmapC);
                                    }
                                    return bitmapJ;
                                }
                                i26++;
                                list = list2;
                                gVar = gVar2;
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                }
                iT = -1;
                switch (iT) {
                    case 3:
                    case 4:
                        i11 = 180;
                        break;
                    case 5:
                    case 6:
                        i11 = 90;
                        break;
                    case 7:
                    case 8:
                        i11 = 270;
                        break;
                    default:
                        i11 = 0;
                        break;
                }
                switch (iT) {
                    case 2:
                    case 3:
                    case 4:
                    case 5:
                    case 6:
                    case 7:
                    case 8:
                        z10 = true;
                        break;
                    default:
                        z10 = false;
                        break;
                }
                if (i9 == Integer.MIN_VALUE) {
                    if (i11 != 90) {
                        i12 = 270;
                        if (i11 == 270) {
                            i13 = i24;
                        }
                    } else {
                        i12 = 270;
                    }
                    i13 = i25;
                } else {
                    i12 = 270;
                    i13 = i9;
                }
                if (i10 == Integer.MIN_VALUE) {
                    i14 = i10;
                } else if (i11 != 90) {
                    i14 = i24;
                } else {
                    i14 = i24;
                }
                imageHeaderParser$ImageTypeM = hVar.m();
                i15 = iT;
                boolean z17 = z10;
                if (i24 > 0) {
                    str2 = ", density: ";
                    bVar = bVar3;
                    str3 = ", target density: ";
                    i16 = i13;
                    if (Log.isLoggable("Downsampler", 3)) {
                        Log.d("Downsampler", "Unable to determine dimensions for: " + imageHeaderParser$ImageTypeM + " with target [" + i16 + "x" + i14 + "]");
                    }
                } else {
                    str2 = ", density: ";
                    bVar = bVar3;
                    str3 = ", target density: ";
                    i16 = i13;
                    if (Log.isLoggable("Downsampler", 3)) {
                        Log.d("Downsampler", "Unable to determine dimensions for: " + imageHeaderParser$ImageTypeM + " with target [" + i16 + "x" + i14 + "]");
                    }
                }
                zC = this.e.c(i16, i14, z15, z17);
                if (zC) {
                    bitmapFactory$Options.inPreferredConfig = c5.h.e();
                    z11 = false;
                    bitmapFactory$Options.inMutable = false;
                } else {
                    z11 = false;
                }
                if (zC) {
                    z12 = true;
                } else if (aVar != h.a.f2407b) {
                    zHasAlpha = hVar.m().hasAlpha();
                    if (zHasAlpha) {
                        bitmap$Config = Bitmap$Config.ARGB_8888;
                    } else {
                        bitmap$Config = Bitmap$Config.RGB_565;
                    }
                    bitmapFactory$Options.inPreferredConfig = bitmap$Config;
                    if (bitmap$Config == Bitmap$Config.RGB_565) {
                        z12 = true;
                        bitmapFactory$Options.inDither = true;
                    } else {
                        z12 = true;
                    }
                } else {
                    z12 = true;
                    bitmapFactory$Options.inPreferredConfig = Bitmap$Config.ARGB_8888;
                }
                if (i24 >= 0) {
                    i17 = bitmapFactory$Options.inTargetDensity;
                    if (i17 > 0) {
                        z13 = z11;
                    } else {
                        z13 = z11;
                    }
                    if (z13) {
                        f8 = i17 / bitmapFactory$Options.inDensity;
                    } else {
                        f8 = 1.0f;
                    }
                    i18 = bitmapFactory$Options.inSampleSize;
                    float f15 = i18;
                    int iCeil3 = (int) Math.ceil(i24 / f15);
                    int iCeil4 = (int) Math.ceil(i25 / f15);
                    iRound = Math.round(iCeil3 * f8);
                    iRound2 = Math.round(iCeil4 * f8);
                    if (Log.isLoggable("Downsampler", 2)) {
                        StringBuilder sbV3 = ai.onnxruntime.a.v("Calculated target [", iRound, iRound2, "x", "] for source [");
                        sbV3.append(i24);
                        sbV3.append("x");
                        sbV3.append(i25);
                        sbV3.append("], sampleSize: ");
                        sbV3.append(i18);
                        sbV3.append(", targetDensity: ");
                        sbV3.append(bitmapFactory$Options.inTargetDensity);
                        sbV3.append(str2);
                        sbV3.append(bitmapFactory$Options.inDensity);
                        sbV3.append(", density multiplier: ");
                        sbV3.append(f8);
                        Log.v("Downsampler", sbV3.toString());
                    }
                    i16 = iRound;
                    i14 = iRound2;
                } else {
                    i17 = bitmapFactory$Options.inTargetDensity;
                    if (i17 > 0) {
                        z13 = z11;
                    } else {
                        z13 = z11;
                    }
                    if (z13) {
                        f8 = i17 / bitmapFactory$Options.inDensity;
                    } else {
                        f8 = 1.0f;
                    }
                    i18 = bitmapFactory$Options.inSampleSize;
                    float f16 = i18;
                    int iCeil5 = (int) Math.ceil(i24 / f16);
                    int iCeil6 = (int) Math.ceil(i25 / f16);
                    iRound = Math.round(iCeil5 * f8);
                    iRound2 = Math.round(iCeil6 * f8);
                    if (Log.isLoggable("Downsampler", 2)) {
                        StringBuilder sbV4 = ai.onnxruntime.a.v("Calculated target [", iRound, iRound2, "x", "] for source [");
                        sbV4.append(i24);
                        sbV4.append("x");
                        sbV4.append(i25);
                        sbV4.append("], sampleSize: ");
                        sbV4.append(i18);
                        sbV4.append(", targetDensity: ");
                        sbV4.append(bitmapFactory$Options.inTargetDensity);
                        sbV4.append(str2);
                        sbV4.append(bitmapFactory$Options.inDensity);
                        sbV4.append(", density multiplier: ");
                        sbV4.append(f8);
                        Log.v("Downsampler", sbV4.toString());
                    }
                    i16 = iRound;
                    i14 = iRound2;
                }
                if (i16 > 0) {
                    bVar2 = bVar;
                } else {
                    bVar2 = bVar;
                }
                if (iVar != null) {
                    i20 = Build$VERSION.SDK_INT;
                    if (i20 >= 28) {
                        if (iVar == h.i.f2413b) {
                            z14 = false;
                        } else {
                            z14 = false;
                        }
                        if (z14) {
                            colorSpace$NamedO = org.apache.commons.net.util.a.i();
                        } else {
                            colorSpace$NamedO = ai.onnxruntime.c.o();
                        }
                        org.apache.commons.net.util.a.s(bitmapFactory$Options, androidx.core.graphics.a.i(colorSpace$NamedO));
                    } else if (i20 >= 26) {
                        ai.onnxruntime.c.o();
                        org.apache.commons.net.util.a.s(bitmapFactory$Options, ai.onnxruntime.c.p());
                    }
                }
                bitmapC = c(hVar, bitmapFactory$Options, pVar, bVar2);
                pVar.l(bitmapC, bVar2);
                if (Log.isLoggable("Downsampler", 2)) {
                    Log.v("Downsampler", "Decoded " + d(bitmapC) + " from [" + i24 + "x" + i25 + "] " + str + " with inBitmap " + d(bitmapFactory$Options.inBitmap) + " for [" + i9 + "x" + i10 + "], sample size: " + bitmapFactory$Options.inSampleSize + str2 + bitmapFactory$Options.inDensity + str3 + bitmapFactory$Options.inTargetDensity + ", thread: " + Thread.currentThread().getName() + ", duration: " + c0.j.a(j9));
                }
                if (bitmapC != null) {
                    return null;
                }
                bitmapC.setDensity(this.f4739b.densityDpi);
                switch (i15) {
                    case 2:
                    case 3:
                    case 4:
                    case 5:
                    case 6:
                    case 7:
                    case 8:
                        matrix = new Matrix();
                        switch (i15) {
                            case 2:
                                matrix.setScale(-1.0f, 1.0f);
                                break;
                            case 3:
                                matrix.setRotate(180.0f);
                                break;
                            case 4:
                                matrix.setRotate(180.0f);
                                matrix.postScale(-1.0f, 1.0f);
                                break;
                            case 5:
                                matrix.setRotate(90.0f);
                                matrix.postScale(-1.0f, 1.0f);
                                break;
                            case 6:
                                matrix.setRotate(90.0f);
                                break;
                            case 7:
                                matrix.setRotate(-90.0f);
                                matrix.postScale(-1.0f, 1.0f);
                                break;
                            case 8:
                                matrix.setRotate(-90.0f);
                                break;
                        }
                        RectF rectF2 = new RectF(0.0f, 0.0f, bitmapC.getWidth(), bitmapC.getHeight());
                        matrix.mapRect(rectF2);
                        int iRound8 = Math.round(rectF2.width());
                        int iRound9 = Math.round(rectF2.height());
                        if (bitmapC.getConfig() != null) {
                            config = bitmapC.getConfig();
                        } else {
                            config = Bitmap$Config.ARGB_8888;
                        }
                        bitmapJ = bVar2.j(iRound8, iRound9, config);
                        matrix.postTranslate(-rectF2.left, -rectF2.top);
                        bitmapJ.setHasAlpha(bitmapC.hasAlpha());
                        z.a(bitmapC, bitmapJ, matrix);
                        break;
                    default:
                        bitmapJ = bitmapC;
                        break;
                }
                if (!bitmapC.equals(bitmapJ)) {
                    bVar2.c(bitmapC);
                }
                return bitmapJ;
            case 22:
                j9 = jElapsedRealtimeNanos;
                str = str4;
                List list3 = (List) hVar.e;
                x xVar2 = (x) ((com.bumptech.glide.load.data.i) hVar.c).c;
                xVar2.reset();
                iT = o4.b.t(list3, xVar2, (k.g) hVar.d);
                switch (iT) {
                    case 3:
                    case 4:
                        i11 = 180;
                        break;
                    case 5:
                    case 6:
                        i11 = 90;
                        break;
                    case 7:
                    case 8:
                        i11 = 270;
                        break;
                    default:
                        i11 = 0;
                        break;
                }
                switch (iT) {
                    case 2:
                    case 3:
                    case 4:
                    case 5:
                    case 6:
                    case 7:
                    case 8:
                        z10 = true;
                        break;
                    default:
                        z10 = false;
                        break;
                }
                if (i9 == Integer.MIN_VALUE) {
                    if (i11 != 90) {
                        i12 = 270;
                        if (i11 == 270) {
                            i13 = i24;
                        }
                    } else {
                        i12 = 270;
                    }
                    i13 = i25;
                } else {
                    i12 = 270;
                    i13 = i9;
                }
                if (i10 == Integer.MIN_VALUE) {
                    i14 = i10;
                } else if (i11 != 90) {
                    i14 = i24;
                } else {
                    i14 = i24;
                }
                imageHeaderParser$ImageTypeM = hVar.m();
                i15 = iT;
                boolean z18 = z10;
                if (i24 > 0) {
                    str2 = ", density: ";
                    bVar = bVar3;
                    str3 = ", target density: ";
                    i16 = i13;
                    if (Log.isLoggable("Downsampler", 3)) {
                        Log.d("Downsampler", "Unable to determine dimensions for: " + imageHeaderParser$ImageTypeM + " with target [" + i16 + "x" + i14 + "]");
                    }
                } else {
                    str2 = ", density: ";
                    bVar = bVar3;
                    str3 = ", target density: ";
                    i16 = i13;
                    if (Log.isLoggable("Downsampler", 3)) {
                        Log.d("Downsampler", "Unable to determine dimensions for: " + imageHeaderParser$ImageTypeM + " with target [" + i16 + "x" + i14 + "]");
                    }
                }
                zC = this.e.c(i16, i14, z15, z18);
                if (zC) {
                    bitmapFactory$Options.inPreferredConfig = c5.h.e();
                    z11 = false;
                    bitmapFactory$Options.inMutable = false;
                } else {
                    z11 = false;
                }
                if (zC) {
                    z12 = true;
                } else if (aVar != h.a.f2407b) {
                    zHasAlpha = hVar.m().hasAlpha();
                    if (zHasAlpha) {
                        bitmap$Config = Bitmap$Config.ARGB_8888;
                    } else {
                        bitmap$Config = Bitmap$Config.RGB_565;
                    }
                    bitmapFactory$Options.inPreferredConfig = bitmap$Config;
                    if (bitmap$Config == Bitmap$Config.RGB_565) {
                        z12 = true;
                        bitmapFactory$Options.inDither = true;
                    } else {
                        z12 = true;
                    }
                } else {
                    z12 = true;
                    bitmapFactory$Options.inPreferredConfig = Bitmap$Config.ARGB_8888;
                }
                if (i24 >= 0) {
                    i17 = bitmapFactory$Options.inTargetDensity;
                    if (i17 > 0) {
                        z13 = z11;
                    } else {
                        z13 = z11;
                    }
                    if (z13) {
                        f8 = i17 / bitmapFactory$Options.inDensity;
                    } else {
                        f8 = 1.0f;
                    }
                    i18 = bitmapFactory$Options.inSampleSize;
                    float f17 = i18;
                    int iCeil7 = (int) Math.ceil(i24 / f17);
                    int iCeil8 = (int) Math.ceil(i25 / f17);
                    iRound = Math.round(iCeil7 * f8);
                    iRound2 = Math.round(iCeil8 * f8);
                    if (Log.isLoggable("Downsampler", 2)) {
                        StringBuilder sbV5 = ai.onnxruntime.a.v("Calculated target [", iRound, iRound2, "x", "] for source [");
                        sbV5.append(i24);
                        sbV5.append("x");
                        sbV5.append(i25);
                        sbV5.append("], sampleSize: ");
                        sbV5.append(i18);
                        sbV5.append(", targetDensity: ");
                        sbV5.append(bitmapFactory$Options.inTargetDensity);
                        sbV5.append(str2);
                        sbV5.append(bitmapFactory$Options.inDensity);
                        sbV5.append(", density multiplier: ");
                        sbV5.append(f8);
                        Log.v("Downsampler", sbV5.toString());
                    }
                    i16 = iRound;
                    i14 = iRound2;
                } else {
                    i17 = bitmapFactory$Options.inTargetDensity;
                    if (i17 > 0) {
                        z13 = z11;
                    } else {
                        z13 = z11;
                    }
                    if (z13) {
                        f8 = i17 / bitmapFactory$Options.inDensity;
                    } else {
                        f8 = 1.0f;
                    }
                    i18 = bitmapFactory$Options.inSampleSize;
                    float f18 = i18;
                    int iCeil9 = (int) Math.ceil(i24 / f18);
                    int iCeil10 = (int) Math.ceil(i25 / f18);
                    iRound = Math.round(iCeil9 * f8);
                    iRound2 = Math.round(iCeil10 * f8);
                    if (Log.isLoggable("Downsampler", 2)) {
                        StringBuilder sbV6 = ai.onnxruntime.a.v("Calculated target [", iRound, iRound2, "x", "] for source [");
                        sbV6.append(i24);
                        sbV6.append("x");
                        sbV6.append(i25);
                        sbV6.append("], sampleSize: ");
                        sbV6.append(i18);
                        sbV6.append(", targetDensity: ");
                        sbV6.append(bitmapFactory$Options.inTargetDensity);
                        sbV6.append(str2);
                        sbV6.append(bitmapFactory$Options.inDensity);
                        sbV6.append(", density multiplier: ");
                        sbV6.append(f8);
                        Log.v("Downsampler", sbV6.toString());
                    }
                    i16 = iRound;
                    i14 = iRound2;
                }
                if (i16 > 0) {
                    bVar2 = bVar;
                } else {
                    bVar2 = bVar;
                }
                if (iVar != null) {
                    i20 = Build$VERSION.SDK_INT;
                    if (i20 >= 28) {
                        if (iVar == h.i.f2413b) {
                            z14 = false;
                        } else {
                            z14 = false;
                        }
                        if (z14) {
                            colorSpace$NamedO = org.apache.commons.net.util.a.i();
                        } else {
                            colorSpace$NamedO = ai.onnxruntime.c.o();
                        }
                        org.apache.commons.net.util.a.s(bitmapFactory$Options, androidx.core.graphics.a.i(colorSpace$NamedO));
                    } else if (i20 >= 26) {
                        ai.onnxruntime.c.o();
                        org.apache.commons.net.util.a.s(bitmapFactory$Options, ai.onnxruntime.c.p());
                    }
                }
                bitmapC = c(hVar, bitmapFactory$Options, pVar, bVar2);
                pVar.l(bitmapC, bVar2);
                if (Log.isLoggable("Downsampler", 2)) {
                    Log.v("Downsampler", "Decoded " + d(bitmapC) + " from [" + i24 + "x" + i25 + "] " + str + " with inBitmap " + d(bitmapFactory$Options.inBitmap) + " for [" + i9 + "x" + i10 + "], sample size: " + bitmapFactory$Options.inSampleSize + str2 + bitmapFactory$Options.inDensity + str3 + bitmapFactory$Options.inTargetDensity + ", thread: " + Thread.currentThread().getName() + ", duration: " + c0.j.a(j9));
                }
                if (bitmapC != null) {
                    return null;
                }
                bitmapC.setDensity(this.f4739b.densityDpi);
                switch (i15) {
                    case 2:
                    case 3:
                    case 4:
                    case 5:
                    case 6:
                    case 7:
                    case 8:
                        matrix = new Matrix();
                        switch (i15) {
                            case 2:
                                matrix.setScale(-1.0f, 1.0f);
                                break;
                            case 3:
                                matrix.setRotate(180.0f);
                                break;
                            case 4:
                                matrix.setRotate(180.0f);
                                matrix.postScale(-1.0f, 1.0f);
                                break;
                            case 5:
                                matrix.setRotate(90.0f);
                                matrix.postScale(-1.0f, 1.0f);
                                break;
                            case 6:
                                matrix.setRotate(90.0f);
                                break;
                            case 7:
                                matrix.setRotate(-90.0f);
                                matrix.postScale(-1.0f, 1.0f);
                                break;
                            case 8:
                                matrix.setRotate(-90.0f);
                                break;
                        }
                        RectF rectF3 = new RectF(0.0f, 0.0f, bitmapC.getWidth(), bitmapC.getHeight());
                        matrix.mapRect(rectF3);
                        int iRound10 = Math.round(rectF3.width());
                        int iRound11 = Math.round(rectF3.height());
                        if (bitmapC.getConfig() != null) {
                            config = bitmapC.getConfig();
                        } else {
                            config = Bitmap$Config.ARGB_8888;
                        }
                        bitmapJ = bVar2.j(iRound10, iRound11, config);
                        matrix.postTranslate(-rectF3.left, -rectF3.top);
                        bitmapJ.setHasAlpha(bitmapC.hasAlpha());
                        z.a(bitmapC, bitmapJ, matrix);
                        break;
                    default:
                        bitmapJ = bitmapC;
                        break;
                }
                if (!bitmapC.equals(bitmapJ)) {
                    bVar2.c(bitmapC);
                }
                return bitmapJ;
            default:
                List list4 = (List) hVar.d;
                j9 = jElapsedRealtimeNanos;
                com.bumptech.glide.load.data.i iVar2 = (com.bumptech.glide.load.data.i) hVar.e;
                k.g gVar3 = (k.g) hVar.c;
                int size2 = list4.size();
                str = str4;
                int i37 = 0;
                while (true) {
                    if (i37 < size2) {
                        int i38 = size2;
                        h.d dVar = (h.d) list4.get(i37);
                        int i39 = i37;
                        try {
                            List list5 = list4;
                            x xVar3 = new x(new FileInputStream(iVar2.e().getFileDescriptor()), gVar3);
                            try {
                                iD = dVar.b(xVar3, gVar3);
                                xVar3.c();
                                iVar2.e();
                                if (iD != -1) {
                                    iT = iD;
                                } else {
                                    i37 = i39 + 1;
                                    size2 = i38;
                                    list4 = list5;
                                }
                            } catch (Throwable th2) {
                                th = th2;
                                xVar = xVar3;
                                if (xVar != null) {
                                    xVar.c();
                                }
                                iVar2.e();
                                throw th;
                            }
                        } catch (Throwable th3) {
                            th = th3;
                        }
                    } else {
                        iT = -1;
                    }
                }
                switch (iT) {
                    case 3:
                    case 4:
                        i11 = 180;
                        break;
                    case 5:
                    case 6:
                        i11 = 90;
                        break;
                    case 7:
                    case 8:
                        i11 = 270;
                        break;
                    default:
                        i11 = 0;
                        break;
                }
                switch (iT) {
                    case 2:
                    case 3:
                    case 4:
                    case 5:
                    case 6:
                    case 7:
                    case 8:
                        z10 = true;
                        break;
                    default:
                        z10 = false;
                        break;
                }
                if (i9 == Integer.MIN_VALUE) {
                    if (i11 != 90) {
                        i12 = 270;
                        if (i11 == 270) {
                            i13 = i24;
                        }
                    } else {
                        i12 = 270;
                    }
                    i13 = i25;
                } else {
                    i12 = 270;
                    i13 = i9;
                }
                if (i10 == Integer.MIN_VALUE) {
                    i14 = i10;
                } else if (i11 != 90) {
                    i14 = i24;
                } else {
                    i14 = i24;
                }
                imageHeaderParser$ImageTypeM = hVar.m();
                i15 = iT;
                boolean z19 = z10;
                if (i24 > 0) {
                    str2 = ", density: ";
                    bVar = bVar3;
                    str3 = ", target density: ";
                    i16 = i13;
                    if (Log.isLoggable("Downsampler", 3)) {
                        Log.d("Downsampler", "Unable to determine dimensions for: " + imageHeaderParser$ImageTypeM + " with target [" + i16 + "x" + i14 + "]");
                    }
                } else {
                    str2 = ", density: ";
                    bVar = bVar3;
                    str3 = ", target density: ";
                    i16 = i13;
                    if (Log.isLoggable("Downsampler", 3)) {
                        Log.d("Downsampler", "Unable to determine dimensions for: " + imageHeaderParser$ImageTypeM + " with target [" + i16 + "x" + i14 + "]");
                    }
                }
                zC = this.e.c(i16, i14, z15, z19);
                if (zC) {
                    bitmapFactory$Options.inPreferredConfig = c5.h.e();
                    z11 = false;
                    bitmapFactory$Options.inMutable = false;
                } else {
                    z11 = false;
                }
                if (zC) {
                    z12 = true;
                } else if (aVar != h.a.f2407b) {
                    zHasAlpha = hVar.m().hasAlpha();
                    if (zHasAlpha) {
                        bitmap$Config = Bitmap$Config.ARGB_8888;
                    } else {
                        bitmap$Config = Bitmap$Config.RGB_565;
                    }
                    bitmapFactory$Options.inPreferredConfig = bitmap$Config;
                    if (bitmap$Config == Bitmap$Config.RGB_565) {
                        z12 = true;
                        bitmapFactory$Options.inDither = true;
                    } else {
                        z12 = true;
                    }
                } else {
                    z12 = true;
                    bitmapFactory$Options.inPreferredConfig = Bitmap$Config.ARGB_8888;
                }
                if (i24 >= 0) {
                    i17 = bitmapFactory$Options.inTargetDensity;
                    if (i17 > 0) {
                        z13 = z11;
                    } else {
                        z13 = z11;
                    }
                    if (z13) {
                        f8 = i17 / bitmapFactory$Options.inDensity;
                    } else {
                        f8 = 1.0f;
                    }
                    i18 = bitmapFactory$Options.inSampleSize;
                    float f19 = i18;
                    int iCeil11 = (int) Math.ceil(i24 / f19);
                    int iCeil12 = (int) Math.ceil(i25 / f19);
                    iRound = Math.round(iCeil11 * f8);
                    iRound2 = Math.round(iCeil12 * f8);
                    if (Log.isLoggable("Downsampler", 2)) {
                        StringBuilder sbV7 = ai.onnxruntime.a.v("Calculated target [", iRound, iRound2, "x", "] for source [");
                        sbV7.append(i24);
                        sbV7.append("x");
                        sbV7.append(i25);
                        sbV7.append("], sampleSize: ");
                        sbV7.append(i18);
                        sbV7.append(", targetDensity: ");
                        sbV7.append(bitmapFactory$Options.inTargetDensity);
                        sbV7.append(str2);
                        sbV7.append(bitmapFactory$Options.inDensity);
                        sbV7.append(", density multiplier: ");
                        sbV7.append(f8);
                        Log.v("Downsampler", sbV7.toString());
                    }
                    i16 = iRound;
                    i14 = iRound2;
                } else {
                    i17 = bitmapFactory$Options.inTargetDensity;
                    if (i17 > 0) {
                        z13 = z11;
                    } else {
                        z13 = z11;
                    }
                    if (z13) {
                        f8 = i17 / bitmapFactory$Options.inDensity;
                    } else {
                        f8 = 1.0f;
                    }
                    i18 = bitmapFactory$Options.inSampleSize;
                    float f110 = i18;
                    int iCeil13 = (int) Math.ceil(i24 / f110);
                    int iCeil14 = (int) Math.ceil(i25 / f110);
                    iRound = Math.round(iCeil13 * f8);
                    iRound2 = Math.round(iCeil14 * f8);
                    if (Log.isLoggable("Downsampler", 2)) {
                        StringBuilder sbV8 = ai.onnxruntime.a.v("Calculated target [", iRound, iRound2, "x", "] for source [");
                        sbV8.append(i24);
                        sbV8.append("x");
                        sbV8.append(i25);
                        sbV8.append("], sampleSize: ");
                        sbV8.append(i18);
                        sbV8.append(", targetDensity: ");
                        sbV8.append(bitmapFactory$Options.inTargetDensity);
                        sbV8.append(str2);
                        sbV8.append(bitmapFactory$Options.inDensity);
                        sbV8.append(", density multiplier: ");
                        sbV8.append(f8);
                        Log.v("Downsampler", sbV8.toString());
                    }
                    i16 = iRound;
                    i14 = iRound2;
                }
                if (i16 > 0) {
                    bVar2 = bVar;
                } else {
                    bVar2 = bVar;
                }
                if (iVar != null) {
                    i20 = Build$VERSION.SDK_INT;
                    if (i20 >= 28) {
                        if (iVar == h.i.f2413b) {
                            z14 = false;
                        } else {
                            z14 = false;
                        }
                        if (z14) {
                            colorSpace$NamedO = org.apache.commons.net.util.a.i();
                        } else {
                            colorSpace$NamedO = ai.onnxruntime.c.o();
                        }
                        org.apache.commons.net.util.a.s(bitmapFactory$Options, androidx.core.graphics.a.i(colorSpace$NamedO));
                    } else if (i20 >= 26) {
                        ai.onnxruntime.c.o();
                        org.apache.commons.net.util.a.s(bitmapFactory$Options, ai.onnxruntime.c.p());
                    }
                }
                bitmapC = c(hVar, bitmapFactory$Options, pVar, bVar2);
                pVar.l(bitmapC, bVar2);
                if (Log.isLoggable("Downsampler", 2)) {
                    Log.v("Downsampler", "Decoded " + d(bitmapC) + " from [" + i24 + "x" + i25 + "] " + str + " with inBitmap " + d(bitmapFactory$Options.inBitmap) + " for [" + i9 + "x" + i10 + "], sample size: " + bitmapFactory$Options.inSampleSize + str2 + bitmapFactory$Options.inDensity + str3 + bitmapFactory$Options.inTargetDensity + ", thread: " + Thread.currentThread().getName() + ", duration: " + c0.j.a(j9));
                }
                if (bitmapC != null) {
                    return null;
                }
                bitmapC.setDensity(this.f4739b.densityDpi);
                switch (i15) {
                    case 2:
                    case 3:
                    case 4:
                    case 5:
                    case 6:
                    case 7:
                    case 8:
                        matrix = new Matrix();
                        switch (i15) {
                            case 2:
                                matrix.setScale(-1.0f, 1.0f);
                                break;
                            case 3:
                                matrix.setRotate(180.0f);
                                break;
                            case 4:
                                matrix.setRotate(180.0f);
                                matrix.postScale(-1.0f, 1.0f);
                                break;
                            case 5:
                                matrix.setRotate(90.0f);
                                matrix.postScale(-1.0f, 1.0f);
                                break;
                            case 6:
                                matrix.setRotate(90.0f);
                                break;
                            case 7:
                                matrix.setRotate(-90.0f);
                                matrix.postScale(-1.0f, 1.0f);
                                break;
                            case 8:
                                matrix.setRotate(-90.0f);
                                break;
                        }
                        RectF rectF4 = new RectF(0.0f, 0.0f, bitmapC.getWidth(), bitmapC.getHeight());
                        matrix.mapRect(rectF4);
                        int iRound12 = Math.round(rectF4.width());
                        int iRound13 = Math.round(rectF4.height());
                        if (bitmapC.getConfig() != null) {
                            config = bitmapC.getConfig();
                        } else {
                            config = Bitmap$Config.ARGB_8888;
                        }
                        bitmapJ = bVar2.j(iRound12, iRound13, config);
                        matrix.postTranslate(-rectF4.left, -rectF4.top);
                        bitmapJ.setHasAlpha(bitmapC.hasAlpha());
                        z.a(bitmapC, bitmapJ, matrix);
                        break;
                    default:
                        bitmapJ = bitmapC;
                        break;
                }
                if (!bitmapC.equals(bitmapJ)) {
                    bVar2.c(bitmapC);
                }
                return bitmapJ;
        }
    }
}
