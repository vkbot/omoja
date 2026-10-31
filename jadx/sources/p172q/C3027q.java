package p172q;

import ai.onnxruntime.AbstractC0074a;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.ColorSpace;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.os.Build;
import android.os.SystemClock;
import android.util.DisplayMetrics;
import android.util.Log;
import com.bumptech.glide.load.ImageHeaderParser$ImageType;
import com.bumptech.glide.load.data.C1048i;
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
import p006a5.C0023h;
import p025c0.AbstractC0933b;
import p025c0.AbstractC0938g;
import p025c0.AbstractC0941j;
import p025c0.AbstractC0947p;
import p077h.C1645g;
import p077h.C1646h;
import p077h.EnumC1639a;
import p077h.EnumC1647i;
import p077h.InterfaceC1642d;
import p099j1.C1929i;
import p108k.C2019g;
import p108k.InterfaceC2014b;
import p155o4.AbstractC2587b;
import p165p2.C2962e;

/* JADX INFO: renamed from: q.q */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3027q {

    /* JADX INFO: renamed from: f */
    public static final C1645g f8489f = C1645g.m2728a(EnumC1639a.f4173d, "com.bumptech.glide.load.resource.bitmap.Downsampler.DecodeFormat");

    /* JADX INFO: renamed from: g */
    public static final C1645g f8490g = new C1645g("com.bumptech.glide.load.resource.bitmap.Downsampler.PreferredColorSpace", null, C1645g.f4177e);

    /* JADX INFO: renamed from: h */
    public static final C1645g f8491h;

    /* JADX INFO: renamed from: i */
    public static final C1645g f8492i;

    /* JADX INFO: renamed from: j */
    public static final C2962e f8493j;

    /* JADX INFO: renamed from: k */
    public static final ArrayDeque f8494k;

    /* JADX INFO: renamed from: a */
    public final InterfaceC2014b f8495a;

    /* JADX INFO: renamed from: b */
    public final DisplayMetrics f8496b;

    /* JADX INFO: renamed from: c */
    public final C2019g f8497c;

    /* JADX INFO: renamed from: d */
    public final ArrayList f8498d;

    /* JADX INFO: renamed from: e */
    public final C3033w f8499e = C3033w.m4852a();

    static {
        C3025o c3025o = C3025o.f8481b;
        Boolean bool = Boolean.FALSE;
        f8491h = C1645g.m2728a(bool, "com.bumptech.glide.load.resource.bitmap.Downsampler.FixBitmapSize");
        f8492i = C1645g.m2728a(bool, "com.bumptech.glide.load.resource.bitmap.Downsampler.AllowHardwareDecode");
        Collections.unmodifiableSet(new HashSet(Arrays.asList("image/vnd.wap.wbmp", "image/x-ico")));
        f8493j = new C2962e(16);
        Collections.unmodifiableSet(EnumSet.of(ImageHeaderParser$ImageType.JPEG, ImageHeaderParser$ImageType.PNG_A, ImageHeaderParser$ImageType.PNG));
        char[] cArr = AbstractC0947p.f810a;
        f8494k = new ArrayDeque(0);
    }

    public C3027q(ArrayList arrayList, DisplayMetrics displayMetrics, InterfaceC2014b interfaceC2014b, C2019g c2019g) {
        this.f8498d = arrayList;
        AbstractC0938g.m1072c(displayMetrics, "Argument must not be null");
        this.f8496b = displayMetrics;
        AbstractC0938g.m1072c(interfaceC2014b, "Argument must not be null");
        this.f8495a = interfaceC2014b;
        AbstractC0938g.m1072c(c2019g, "Argument must not be null");
        this.f8497c = c2019g;
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:?, code lost:
    
        throw r5;
     */
    /* JADX INFO: renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static android.graphics.Bitmap m4846c(p006a5.C0023h r9, android.graphics.BitmapFactory.Options r10, p172q.InterfaceC3026p r11, p108k.InterfaceC2014b r12) {
        /*
            java.lang.String r0 = "Downsampler"
            boolean r1 = r10.inJustDecodeBounds
            if (r1 != 0) goto L22
            r11.mo3478d()
            int r1 = r9.f80b
            switch(r1) {
                case 21: goto L22;
                case 22: goto Lf;
                default: goto Le;
            }
        Le:
            goto L22
        Lf:
            java.lang.Object r1 = r9.f81c
            com.bumptech.glide.load.data.i r1 = (com.bumptech.glide.load.data.C1048i) r1
            java.lang.Object r1 = r1.f1134c
            q.x r1 = (p172q.C3034x) r1
            monitor-enter(r1)
            byte[] r2 = r1.f8512b     // Catch: java.lang.Throwable -> L1f
            int r2 = r2.length     // Catch: java.lang.Throwable -> L1f
            r1.f8514d = r2     // Catch: java.lang.Throwable -> L1f
            monitor-exit(r1)
            goto L22
        L1f:
            r9 = move-exception
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L1f
            throw r9
        L22:
            int r1 = r10.outWidth
            int r2 = r10.outHeight
            java.lang.String r3 = r10.outMimeType
            java.util.concurrent.locks.Lock r4 = p172q.AbstractC3036z.f8519b
            r4.lock()
            android.graphics.Bitmap r9 = r9.m71e(r10)     // Catch: java.lang.IllegalArgumentException -> L35 java.lang.Throwable -> L7c
            r4.unlock()
            return r9
        L35:
            r4 = move-exception
            java.io.IOException r5 = new java.io.IOException     // Catch: java.lang.Throwable -> L7c
            java.lang.String r6 = "Exception decoding bitmap, outWidth: "
            java.lang.String r7 = ", outHeight: "
            java.lang.String r8 = ", outMimeType: "
            java.lang.StringBuilder r1 = ai.onnxruntime.AbstractC0074a.m171v(r6, r1, r2, r7, r8)     // Catch: java.lang.Throwable -> L7c
            r1.append(r3)     // Catch: java.lang.Throwable -> L7c
            java.lang.String r2 = ", inBitmap: "
            r1.append(r2)     // Catch: java.lang.Throwable -> L7c
            android.graphics.Bitmap r2 = r10.inBitmap     // Catch: java.lang.Throwable -> L7c
            java.lang.String r2 = m4847d(r2)     // Catch: java.lang.Throwable -> L7c
            r1.append(r2)     // Catch: java.lang.Throwable -> L7c
            java.lang.String r1 = r1.toString()     // Catch: java.lang.Throwable -> L7c
            r5.<init>(r1, r4)     // Catch: java.lang.Throwable -> L7c
            r1 = 3
            boolean r1 = android.util.Log.isLoggable(r0, r1)     // Catch: java.lang.Throwable -> L7c
            if (r1 == 0) goto L66
            java.lang.String r1 = "Failed to decode with inBitmap, trying again without Bitmap re-use"
            android.util.Log.d(r0, r1, r5)     // Catch: java.lang.Throwable -> L7c
        L66:
            android.graphics.Bitmap r0 = r10.inBitmap     // Catch: java.lang.Throwable -> L7c
            if (r0 == 0) goto L7b
            r12.mo1141c(r0)     // Catch: java.io.IOException -> L7a java.lang.Throwable -> L7c
            r0 = 0
            r10.inBitmap = r0     // Catch: java.io.IOException -> L7a java.lang.Throwable -> L7c
            android.graphics.Bitmap r9 = m4846c(r9, r10, r11, r12)     // Catch: java.io.IOException -> L7a java.lang.Throwable -> L7c
            java.util.concurrent.locks.Lock r10 = p172q.AbstractC3036z.f8519b
            r10.unlock()
            return r9
        L7a:
            throw r5     // Catch: java.lang.Throwable -> L7c
        L7b:
            throw r5     // Catch: java.lang.Throwable -> L7c
        L7c:
            r9 = move-exception
            java.util.concurrent.locks.Lock r10 = p172q.AbstractC3036z.f8519b
            r10.unlock()
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: p172q.C3027q.m4846c(a5.h, android.graphics.BitmapFactory$Options, q.p, k.b):android.graphics.Bitmap");
    }

    /* JADX INFO: renamed from: d */
    public static String m4847d(Bitmap bitmap) {
        if (bitmap == null) {
            return null;
        }
        return "[" + bitmap.getWidth() + "x" + bitmap.getHeight() + "] " + bitmap.getConfig() + (" (" + bitmap.getAllocationByteCount() + ")");
    }

    /* JADX INFO: renamed from: e */
    public static void m4848e(BitmapFactory.Options options) {
        options.inTempStorage = null;
        options.inDither = false;
        options.inScaled = false;
        options.inSampleSize = 1;
        options.inPreferredConfig = null;
        options.inJustDecodeBounds = false;
        options.inDensity = 0;
        options.inTargetDensity = 0;
        if (Build.VERSION.SDK_INT >= 26) {
            options.inPreferredColorSpace = null;
            options.outColorSpace = null;
            options.outConfig = null;
        }
        options.outWidth = 0;
        options.outHeight = 0;
        options.outMimeType = null;
        options.inBitmap = null;
        options.inMutable = true;
    }

    /* JADX INFO: renamed from: a */
    public final C3013e m4849a(C0023h c0023h, int i10, int i11, C1646h c1646h, InterfaceC3026p interfaceC3026p) {
        ArrayDeque arrayDeque;
        BitmapFactory.Options options;
        byte[] bArr = (byte[]) this.f8497c.m3106c(65536, byte[].class);
        synchronized (C3027q.class) {
            arrayDeque = f8494k;
            synchronized (arrayDeque) {
                options = (BitmapFactory.Options) arrayDeque.poll();
            }
            if (options == null) {
                options = new BitmapFactory.Options();
                m4848e(options);
            }
        }
        options.inTempStorage = bArr;
        EnumC1639a enumC1639a = (EnumC1639a) c1646h.m2729c(f8489f);
        EnumC1647i enumC1647i = (EnumC1647i) c1646h.m2729c(f8490g);
        C3025o c3025o = (C3025o) c1646h.m2729c(C3025o.f8486g);
        boolean zBooleanValue = ((Boolean) c1646h.m2729c(f8491h)).booleanValue();
        C1645g c1645g = f8492i;
        try {
            C3013e c3013eM4837c = C3013e.m4837c(m4850b(c0023h, options, c3025o, enumC1639a, enumC1647i, c1646h.m2729c(c1645g) != null && ((Boolean) c1646h.m2729c(c1645g)).booleanValue(), i10, i11, zBooleanValue, interfaceC3026p), this.f8495a);
            m4848e(options);
            synchronized (arrayDeque) {
                arrayDeque.offer(options);
            }
            return c3013eM4837c;
        } finally {
            m4848e(options);
            ArrayDeque arrayDeque2 = f8494k;
            synchronized (arrayDeque2) {
                arrayDeque2.offer(options);
                this.f8497c.m3110g(bArr);
            }
        }
    }

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
    /* JADX INFO: renamed from: b */
    public final Bitmap m4850b(C0023h c0023h, BitmapFactory.Options options, C3025o c3025o, EnumC1639a enumC1639a, EnumC1647i enumC1647i, boolean z9, int i10, int i11, boolean z10, InterfaceC3026p interfaceC3026p) throws Throwable {
        long j10;
        String str;
        int iMo2727d;
        int iM4053t;
        int i12;
        boolean z11;
        int i13;
        int i14;
        int i15;
        ImageHeaderParser$ImageType imageHeaderParser$ImageTypeM78m;
        int i16;
        String str2;
        InterfaceC2014b interfaceC2014b;
        String str3;
        int i17;
        boolean zM4854c;
        boolean z12;
        boolean zHasAlpha;
        Bitmap.Config config;
        boolean z13;
        int i18;
        boolean z14;
        float f8;
        int i19;
        int iRound;
        int iRound2;
        int i20;
        InterfaceC2014b interfaceC2014b2;
        Bitmap bitmapM4846c;
        Matrix matrix;
        Bitmap.Config config2;
        Bitmap bitmapMo1148j;
        int i21;
        boolean z15;
        ColorSpace.Named named;
        Bitmap.Config config3;
        int i22;
        int i23;
        int iFloor;
        int iFloor2;
        int iRound3;
        int i24 = AbstractC0941j.f799b;
        long jElapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
        options.inJustDecodeBounds = true;
        InterfaceC2014b interfaceC2014b3 = this.f8495a;
        m4846c(c0023h, options, interfaceC3026p, interfaceC2014b3);
        options.inJustDecodeBounds = false;
        int[] iArr = {options.outWidth, options.outHeight};
        int i25 = iArr[0];
        int i26 = iArr[1];
        String str4 = options.outMimeType;
        boolean z16 = (i25 == -1 || i26 == -1) ? false : z9;
        C3034x c3034x = null;
        switch (c0023h.f80b) {
            case 21:
                j10 = jElapsedRealtimeNanos;
                str = str4;
                List list = (List) c0023h.f82d;
                ByteBuffer byteBufferM1067c = AbstractC0933b.m1067c((ByteBuffer) c0023h.f81c);
                C2019g c2019g = (C2019g) c0023h.f83e;
                if (byteBufferM1067c != null) {
                    int size = list.size();
                    int i27 = 0;
                    while (true) {
                        if (i27 < size) {
                            List list2 = list;
                            try {
                                iMo2727d = ((InterfaceC1642d) list.get(i27)).mo2727d(byteBufferM1067c, c2019g);
                                C2019g c2019g2 = c2019g;
                                if (iMo2727d != -1) {
                                    iM4053t = iMo2727d;
                                    switch (iM4053t) {
                                        case 3:
                                        case 4:
                                            i12 = 180;
                                            break;
                                        case 5:
                                        case 6:
                                            i12 = 90;
                                            break;
                                        case 7:
                                        case 8:
                                            i12 = 270;
                                            break;
                                        default:
                                            i12 = 0;
                                            break;
                                    }
                                    switch (iM4053t) {
                                        case 2:
                                        case 3:
                                        case 4:
                                        case 5:
                                        case 6:
                                        case 7:
                                        case 8:
                                            z11 = true;
                                            break;
                                        default:
                                            z11 = false;
                                            break;
                                    }
                                    if (i10 == Integer.MIN_VALUE) {
                                        if (i12 != 90) {
                                            i13 = 270;
                                            if (i12 == 270) {
                                                i14 = i25;
                                            }
                                        } else {
                                            i13 = 270;
                                        }
                                        i14 = i26;
                                    } else {
                                        i13 = 270;
                                        i14 = i10;
                                    }
                                    if (i11 == Integer.MIN_VALUE) {
                                        i15 = i11;
                                    } else if (i12 != 90 || i12 == i13) {
                                        i15 = i25;
                                    } else {
                                        i15 = i26;
                                    }
                                    imageHeaderParser$ImageTypeM78m = c0023h.m78m();
                                    i16 = iM4053t;
                                    boolean z17 = z11;
                                    if (i25 > 0 || i26 <= 0) {
                                        str2 = ", density: ";
                                        interfaceC2014b = interfaceC2014b3;
                                        str3 = ", target density: ";
                                        i17 = i14;
                                        if (Log.isLoggable("Downsampler", 3)) {
                                            Log.d("Downsampler", "Unable to determine dimensions for: " + imageHeaderParser$ImageTypeM78m + " with target [" + i17 + "x" + i15 + "]");
                                        }
                                    } else {
                                        if (i12 == 90 || i12 == 270) {
                                            i22 = i26;
                                            i23 = i25;
                                        } else {
                                            i23 = i26;
                                            i22 = i25;
                                        }
                                        i17 = i14;
                                        float fM4845b = c3025o.m4845b(i22, i23, i17, i15);
                                        if (fM4845b <= 0.0f) {
                                            throw new IllegalArgumentException("Cannot scale with factor: " + fM4845b + " from: " + c3025o + ", source: [" + i25 + "x" + i26 + "], target: [" + i17 + "x" + i15 + "]");
                                        }
                                        int iM4844a = c3025o.m4844a(i22, i23, i17, i15);
                                        if (iM4844a == 0) {
                                            C1929i.m3029k("Cannot round with null rounding");
                                            return null;
                                        }
                                        int i28 = i12;
                                        float f10 = i22;
                                        int i29 = i22;
                                        float f11 = i23;
                                        int i30 = i23;
                                        int i31 = (int) (((double) (fM4845b * f11)) + 0.5d);
                                        int i32 = i29 / ((int) (((double) (fM4845b * f10)) + 0.5d));
                                        int i33 = i30 / i31;
                                        int iMax = Math.max(1, Integer.highestOneBit(iM4844a == 1 ? Math.max(i32, i33) : Math.min(i32, i33)));
                                        if (iM4844a == 1 && iMax < 1.0f / fM4845b) {
                                            iMax <<= 1;
                                        }
                                        options.inSampleSize = iMax;
                                        if (imageHeaderParser$ImageTypeM78m == ImageHeaderParser$ImageType.JPEG) {
                                            float fMin = Math.min(iMax, 8);
                                            iFloor = (int) Math.ceil(f10 / fMin);
                                            iFloor2 = (int) Math.ceil(f11 / fMin);
                                            int i34 = iMax / 8;
                                            if (i34 > 0) {
                                                iFloor2 /= i34;
                                                iRound3 = iFloor / i34;
                                            } else {
                                                iRound3 = iFloor;
                                            }
                                        } else {
                                            if (imageHeaderParser$ImageTypeM78m == ImageHeaderParser$ImageType.PNG || imageHeaderParser$ImageTypeM78m == ImageHeaderParser$ImageType.PNG_A) {
                                                float f12 = iMax;
                                                iFloor = (int) Math.floor(f10 / f12);
                                                iFloor2 = (int) Math.floor(f11 / f12);
                                            } else if (imageHeaderParser$ImageTypeM78m.isWebp()) {
                                                float f13 = iMax;
                                                iRound3 = Math.round(f10 / f13);
                                                iFloor2 = Math.round(f11 / f13);
                                            } else if (i29 % iMax == 0 && i30 % iMax == 0) {
                                                iRound3 = i29 / iMax;
                                                iFloor2 = i30 / iMax;
                                            } else {
                                                options.inJustDecodeBounds = true;
                                                m4846c(c0023h, options, interfaceC3026p, interfaceC2014b3);
                                                options.inJustDecodeBounds = false;
                                                int[] iArr2 = {options.outWidth, options.outHeight};
                                                iFloor = iArr2[0];
                                                iFloor2 = iArr2[1];
                                            }
                                            iRound3 = iFloor;
                                        }
                                        double dM4845b = c3025o.m4845b(iRound3, iFloor2, i17, i15);
                                        int iRound4 = (int) Math.round((dM4845b <= 1.0d ? dM4845b : 1.0d / dM4845b) * 2.147483647E9d);
                                        interfaceC2014b = interfaceC2014b3;
                                        int i35 = (int) ((((double) iRound4) * dM4845b) + 0.5d);
                                        float f14 = i35 / iRound4;
                                        int i36 = iMax;
                                        options.inTargetDensity = (int) (((dM4845b / ((double) f14)) * ((double) i35)) + 0.5d);
                                        int iRound5 = (int) Math.round((dM4845b <= 1.0d ? dM4845b : 1.0d / dM4845b) * 2.147483647E9d);
                                        options.inDensity = iRound5;
                                        int i37 = options.inTargetDensity;
                                        if (i37 <= 0 || iRound5 <= 0 || i37 == iRound5) {
                                            options.inTargetDensity = 0;
                                            options.inDensity = 0;
                                        } else {
                                            options.inScaled = true;
                                        }
                                        if (Log.isLoggable("Downsampler", 2)) {
                                            StringBuilder sbM171v = AbstractC0074a.m171v("Calculate scaling, source: [", i25, i26, "x", "], degreesToRotate: ");
                                            sbM171v.append(i28);
                                            sbM171v.append(", target: [");
                                            sbM171v.append(i17);
                                            sbM171v.append("x");
                                            sbM171v.append(i15);
                                            sbM171v.append("], power of two scaled: [");
                                            sbM171v.append(iRound3);
                                            sbM171v.append("x");
                                            sbM171v.append(iFloor2);
                                            sbM171v.append("], exact scale factor: ");
                                            sbM171v.append(fM4845b);
                                            sbM171v.append(", power of 2 sample size: ");
                                            sbM171v.append(i36);
                                            sbM171v.append(", adjusted scale factor: ");
                                            sbM171v.append(dM4845b);
                                            str3 = ", target density: ";
                                            sbM171v.append(str3);
                                            sbM171v.append(options.inTargetDensity);
                                            str2 = ", density: ";
                                            sbM171v.append(str2);
                                            sbM171v.append(options.inDensity);
                                            Log.v("Downsampler", sbM171v.toString());
                                        } else {
                                            str2 = r7;
                                            str3 = ", target density: ";
                                        }
                                    }
                                    zM4854c = this.f8499e.m4854c(i17, i15, z16, z17);
                                    if (zM4854c) {
                                        options.inPreferredConfig = Bitmap.Config.HARDWARE;
                                        z12 = false;
                                        options.inMutable = false;
                                    } else {
                                        z12 = false;
                                    }
                                    if (zM4854c) {
                                        if (enumC1639a != EnumC1639a.f4171b) {
                                            try {
                                                zHasAlpha = c0023h.m78m().hasAlpha();
                                            } catch (IOException e) {
                                                if (Log.isLoggable("Downsampler", 3)) {
                                                    Log.d("Downsampler", "Cannot determine whether the image has alpha or not from header, format " + enumC1639a, e);
                                                }
                                                zHasAlpha = z12;
                                            }
                                            if (zHasAlpha) {
                                                config = Bitmap.Config.ARGB_8888;
                                            } else {
                                                config = Bitmap.Config.RGB_565;
                                            }
                                            options.inPreferredConfig = config;
                                            if (config == Bitmap.Config.RGB_565) {
                                                z13 = true;
                                                options.inDither = true;
                                            } else {
                                                z13 = true;
                                            }
                                        } else {
                                            z13 = true;
                                            options.inPreferredConfig = Bitmap.Config.ARGB_8888;
                                        }
                                        break;
                                    } else {
                                        z13 = true;
                                    }
                                    if (i25 >= 0 || i26 < 0 || !z10) {
                                        i18 = options.inTargetDensity;
                                        if (i18 > 0 || (i20 = options.inDensity) <= 0 || i18 == i20) {
                                            z14 = z12;
                                        } else {
                                            z14 = z13;
                                        }
                                        if (z14) {
                                            f8 = i18 / options.inDensity;
                                        } else {
                                            f8 = 1.0f;
                                        }
                                        i19 = options.inSampleSize;
                                        float f15 = i19;
                                        int iCeil = (int) Math.ceil(i25 / f15);
                                        int iCeil2 = (int) Math.ceil(i26 / f15);
                                        iRound = Math.round(iCeil * f8);
                                        iRound2 = Math.round(iCeil2 * f8);
                                        if (Log.isLoggable("Downsampler", 2)) {
                                            StringBuilder sbM171v2 = AbstractC0074a.m171v("Calculated target [", iRound, iRound2, "x", "] for source [");
                                            sbM171v2.append(i25);
                                            sbM171v2.append("x");
                                            sbM171v2.append(i26);
                                            sbM171v2.append("], sampleSize: ");
                                            sbM171v2.append(i19);
                                            sbM171v2.append(", targetDensity: ");
                                            sbM171v2.append(options.inTargetDensity);
                                            sbM171v2.append(str2);
                                            sbM171v2.append(options.inDensity);
                                            sbM171v2.append(", density multiplier: ");
                                            sbM171v2.append(f8);
                                            Log.v("Downsampler", sbM171v2.toString());
                                        }
                                        i17 = iRound;
                                        i15 = iRound2;
                                    }
                                    if (i17 > 0 || i15 <= 0) {
                                        interfaceC2014b2 = interfaceC2014b;
                                    } else {
                                        if (Build.VERSION.SDK_INT < 26) {
                                            config3 = null;
                                        } else if (options.inPreferredConfig == Bitmap.Config.HARDWARE) {
                                            interfaceC2014b2 = interfaceC2014b;
                                        } else {
                                            config3 = options.outConfig;
                                        }
                                        if (config3 == null) {
                                            config3 = options.inPreferredConfig;
                                        }
                                        interfaceC2014b2 = interfaceC2014b;
                                        options.inBitmap = interfaceC2014b2.mo1140b(i17, i15, config3);
                                    }
                                    if (enumC1647i != null) {
                                        i21 = Build.VERSION.SDK_INT;
                                        if (i21 >= 28) {
                                            if (enumC1647i == EnumC1647i.f4183b || options.outColorSpace == null || !options.outColorSpace.isWideGamut()) {
                                                z15 = false;
                                            } else {
                                                z15 = true;
                                            }
                                            if (z15) {
                                                named = ColorSpace.Named.DISPLAY_P3;
                                            } else {
                                                named = ColorSpace.Named.SRGB;
                                            }
                                            options.inPreferredColorSpace = ColorSpace.get(named);
                                        } else if (i21 >= 26) {
                                            ColorSpace.Named unused = ColorSpace.Named.SRGB;
                                            options.inPreferredColorSpace = ColorSpace.get(ColorSpace.Named.SRGB);
                                        }
                                    }
                                    bitmapM4846c = m4846c(c0023h, options, interfaceC3026p, interfaceC2014b2);
                                    interfaceC3026p.mo3484l(bitmapM4846c, interfaceC2014b2);
                                    if (Log.isLoggable("Downsampler", 2)) {
                                        Log.v("Downsampler", "Decoded " + m4847d(bitmapM4846c) + " from [" + i25 + "x" + i26 + "] " + str + " with inBitmap " + m4847d(options.inBitmap) + " for [" + i10 + "x" + i11 + "], sample size: " + options.inSampleSize + str2 + options.inDensity + str3 + options.inTargetDensity + ", thread: " + Thread.currentThread().getName() + ", duration: " + AbstractC0941j.m1076a(j10));
                                    }
                                    if (bitmapM4846c != null) {
                                        return null;
                                    }
                                    bitmapM4846c.setDensity(this.f8496b.densityDpi);
                                    switch (i16) {
                                        case 2:
                                        case 3:
                                        case 4:
                                        case 5:
                                        case 6:
                                        case 7:
                                        case 8:
                                            matrix = new Matrix();
                                            switch (i16) {
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
                                            RectF rectF = new RectF(0.0f, 0.0f, bitmapM4846c.getWidth(), bitmapM4846c.getHeight());
                                            matrix.mapRect(rectF);
                                            int iRound6 = Math.round(rectF.width());
                                            int iRound7 = Math.round(rectF.height());
                                            if (bitmapM4846c.getConfig() != null) {
                                                config2 = bitmapM4846c.getConfig();
                                            } else {
                                                config2 = Bitmap.Config.ARGB_8888;
                                            }
                                            bitmapMo1148j = interfaceC2014b2.mo1148j(iRound6, iRound7, config2);
                                            matrix.postTranslate(-rectF.left, -rectF.top);
                                            bitmapMo1148j.setHasAlpha(bitmapM4846c.hasAlpha());
                                            AbstractC3036z.m4858a(bitmapM4846c, bitmapMo1148j, matrix);
                                            break;
                                        default:
                                            bitmapMo1148j = bitmapM4846c;
                                            break;
                                    }
                                    if (!bitmapM4846c.equals(bitmapMo1148j)) {
                                        interfaceC2014b2.mo1141c(bitmapM4846c);
                                    }
                                    return bitmapMo1148j;
                                }
                                i27++;
                                list = list2;
                                c2019g = c2019g2;
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                }
                iM4053t = -1;
                switch (iM4053t) {
                    case 3:
                    case 4:
                        i12 = 180;
                        break;
                    case 5:
                    case 6:
                        i12 = 90;
                        break;
                    case 7:
                    case 8:
                        i12 = 270;
                        break;
                    default:
                        i12 = 0;
                        break;
                }
                switch (iM4053t) {
                    case 2:
                    case 3:
                    case 4:
                    case 5:
                    case 6:
                    case 7:
                    case 8:
                        z11 = true;
                        break;
                    default:
                        z11 = false;
                        break;
                }
                if (i10 == Integer.MIN_VALUE) {
                    if (i12 != 90) {
                        i13 = 270;
                        if (i12 == 270) {
                            i14 = i25;
                        }
                    } else {
                        i13 = 270;
                    }
                    i14 = i26;
                } else {
                    i13 = 270;
                    i14 = i10;
                }
                if (i11 == Integer.MIN_VALUE) {
                    i15 = i11;
                } else if (i12 != 90) {
                    i15 = i25;
                } else {
                    i15 = i25;
                }
                imageHeaderParser$ImageTypeM78m = c0023h.m78m();
                i16 = iM4053t;
                boolean z18 = z11;
                if (i25 > 0) {
                    str2 = ", density: ";
                    interfaceC2014b = interfaceC2014b3;
                    str3 = ", target density: ";
                    i17 = i14;
                    if (Log.isLoggable("Downsampler", 3)) {
                        Log.d("Downsampler", "Unable to determine dimensions for: " + imageHeaderParser$ImageTypeM78m + " with target [" + i17 + "x" + i15 + "]");
                    }
                } else {
                    str2 = ", density: ";
                    interfaceC2014b = interfaceC2014b3;
                    str3 = ", target density: ";
                    i17 = i14;
                    if (Log.isLoggable("Downsampler", 3)) {
                        Log.d("Downsampler", "Unable to determine dimensions for: " + imageHeaderParser$ImageTypeM78m + " with target [" + i17 + "x" + i15 + "]");
                    }
                }
                zM4854c = this.f8499e.m4854c(i17, i15, z16, z18);
                if (zM4854c) {
                    options.inPreferredConfig = Bitmap.Config.HARDWARE;
                    z12 = false;
                    options.inMutable = false;
                } else {
                    z12 = false;
                }
                if (zM4854c) {
                    z13 = true;
                } else if (enumC1639a != EnumC1639a.f4171b) {
                    zHasAlpha = c0023h.m78m().hasAlpha();
                    if (zHasAlpha) {
                        config = Bitmap.Config.ARGB_8888;
                    } else {
                        config = Bitmap.Config.RGB_565;
                    }
                    options.inPreferredConfig = config;
                    if (config == Bitmap.Config.RGB_565) {
                        z13 = true;
                        options.inDither = true;
                    } else {
                        z13 = true;
                    }
                } else {
                    z13 = true;
                    options.inPreferredConfig = Bitmap.Config.ARGB_8888;
                }
                if (i25 >= 0) {
                    i18 = options.inTargetDensity;
                    if (i18 > 0) {
                        z14 = z12;
                    } else {
                        z14 = z12;
                    }
                    if (z14) {
                        f8 = i18 / options.inDensity;
                    } else {
                        f8 = 1.0f;
                    }
                    i19 = options.inSampleSize;
                    float f16 = i19;
                    int iCeil3 = (int) Math.ceil(i25 / f16);
                    int iCeil4 = (int) Math.ceil(i26 / f16);
                    iRound = Math.round(iCeil3 * f8);
                    iRound2 = Math.round(iCeil4 * f8);
                    if (Log.isLoggable("Downsampler", 2)) {
                        StringBuilder sbM171v3 = AbstractC0074a.m171v("Calculated target [", iRound, iRound2, "x", "] for source [");
                        sbM171v3.append(i25);
                        sbM171v3.append("x");
                        sbM171v3.append(i26);
                        sbM171v3.append("], sampleSize: ");
                        sbM171v3.append(i19);
                        sbM171v3.append(", targetDensity: ");
                        sbM171v3.append(options.inTargetDensity);
                        sbM171v3.append(str2);
                        sbM171v3.append(options.inDensity);
                        sbM171v3.append(", density multiplier: ");
                        sbM171v3.append(f8);
                        Log.v("Downsampler", sbM171v3.toString());
                    }
                    i17 = iRound;
                    i15 = iRound2;
                } else {
                    i18 = options.inTargetDensity;
                    if (i18 > 0) {
                        z14 = z12;
                    } else {
                        z14 = z12;
                    }
                    if (z14) {
                        f8 = i18 / options.inDensity;
                    } else {
                        f8 = 1.0f;
                    }
                    i19 = options.inSampleSize;
                    float f17 = i19;
                    int iCeil5 = (int) Math.ceil(i25 / f17);
                    int iCeil6 = (int) Math.ceil(i26 / f17);
                    iRound = Math.round(iCeil5 * f8);
                    iRound2 = Math.round(iCeil6 * f8);
                    if (Log.isLoggable("Downsampler", 2)) {
                        StringBuilder sbM171v4 = AbstractC0074a.m171v("Calculated target [", iRound, iRound2, "x", "] for source [");
                        sbM171v4.append(i25);
                        sbM171v4.append("x");
                        sbM171v4.append(i26);
                        sbM171v4.append("], sampleSize: ");
                        sbM171v4.append(i19);
                        sbM171v4.append(", targetDensity: ");
                        sbM171v4.append(options.inTargetDensity);
                        sbM171v4.append(str2);
                        sbM171v4.append(options.inDensity);
                        sbM171v4.append(", density multiplier: ");
                        sbM171v4.append(f8);
                        Log.v("Downsampler", sbM171v4.toString());
                    }
                    i17 = iRound;
                    i15 = iRound2;
                }
                if (i17 > 0) {
                    interfaceC2014b2 = interfaceC2014b;
                } else {
                    interfaceC2014b2 = interfaceC2014b;
                }
                if (enumC1647i != null) {
                    i21 = Build.VERSION.SDK_INT;
                    if (i21 >= 28) {
                        if (enumC1647i == EnumC1647i.f4183b) {
                            z15 = false;
                        } else {
                            z15 = false;
                        }
                        if (z15) {
                            named = ColorSpace.Named.DISPLAY_P3;
                        } else {
                            named = ColorSpace.Named.SRGB;
                        }
                        options.inPreferredColorSpace = ColorSpace.get(named);
                    } else if (i21 >= 26) {
                        ColorSpace.Named unused2 = ColorSpace.Named.SRGB;
                        options.inPreferredColorSpace = ColorSpace.get(ColorSpace.Named.SRGB);
                    }
                }
                bitmapM4846c = m4846c(c0023h, options, interfaceC3026p, interfaceC2014b2);
                interfaceC3026p.mo3484l(bitmapM4846c, interfaceC2014b2);
                if (Log.isLoggable("Downsampler", 2)) {
                    Log.v("Downsampler", "Decoded " + m4847d(bitmapM4846c) + " from [" + i25 + "x" + i26 + "] " + str + " with inBitmap " + m4847d(options.inBitmap) + " for [" + i10 + "x" + i11 + "], sample size: " + options.inSampleSize + str2 + options.inDensity + str3 + options.inTargetDensity + ", thread: " + Thread.currentThread().getName() + ", duration: " + AbstractC0941j.m1076a(j10));
                }
                if (bitmapM4846c != null) {
                    return null;
                }
                bitmapM4846c.setDensity(this.f8496b.densityDpi);
                switch (i16) {
                    case 2:
                    case 3:
                    case 4:
                    case 5:
                    case 6:
                    case 7:
                    case 8:
                        matrix = new Matrix();
                        switch (i16) {
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
                        RectF rectF2 = new RectF(0.0f, 0.0f, bitmapM4846c.getWidth(), bitmapM4846c.getHeight());
                        matrix.mapRect(rectF2);
                        int iRound8 = Math.round(rectF2.width());
                        int iRound9 = Math.round(rectF2.height());
                        if (bitmapM4846c.getConfig() != null) {
                            config2 = bitmapM4846c.getConfig();
                        } else {
                            config2 = Bitmap.Config.ARGB_8888;
                        }
                        bitmapMo1148j = interfaceC2014b2.mo1148j(iRound8, iRound9, config2);
                        matrix.postTranslate(-rectF2.left, -rectF2.top);
                        bitmapMo1148j.setHasAlpha(bitmapM4846c.hasAlpha());
                        AbstractC3036z.m4858a(bitmapM4846c, bitmapMo1148j, matrix);
                        break;
                    default:
                        bitmapMo1148j = bitmapM4846c;
                        break;
                }
                if (!bitmapM4846c.equals(bitmapMo1148j)) {
                    interfaceC2014b2.mo1141c(bitmapM4846c);
                }
                return bitmapMo1148j;
            case 22:
                j10 = jElapsedRealtimeNanos;
                str = str4;
                List list3 = (List) c0023h.f83e;
                C3034x c3034x2 = (C3034x) ((C1048i) c0023h.f81c).f1134c;
                c3034x2.reset();
                iM4053t = AbstractC2587b.m4053t(list3, c3034x2, (C2019g) c0023h.f82d);
                switch (iM4053t) {
                    case 3:
                    case 4:
                        i12 = 180;
                        break;
                    case 5:
                    case 6:
                        i12 = 90;
                        break;
                    case 7:
                    case 8:
                        i12 = 270;
                        break;
                    default:
                        i12 = 0;
                        break;
                }
                switch (iM4053t) {
                    case 2:
                    case 3:
                    case 4:
                    case 5:
                    case 6:
                    case 7:
                    case 8:
                        z11 = true;
                        break;
                    default:
                        z11 = false;
                        break;
                }
                if (i10 == Integer.MIN_VALUE) {
                    if (i12 != 90) {
                        i13 = 270;
                        if (i12 == 270) {
                            i14 = i25;
                        }
                    } else {
                        i13 = 270;
                    }
                    i14 = i26;
                } else {
                    i13 = 270;
                    i14 = i10;
                }
                if (i11 == Integer.MIN_VALUE) {
                    i15 = i11;
                } else if (i12 != 90) {
                    i15 = i25;
                } else {
                    i15 = i25;
                }
                imageHeaderParser$ImageTypeM78m = c0023h.m78m();
                i16 = iM4053t;
                boolean z19 = z11;
                if (i25 > 0) {
                    str2 = ", density: ";
                    interfaceC2014b = interfaceC2014b3;
                    str3 = ", target density: ";
                    i17 = i14;
                    if (Log.isLoggable("Downsampler", 3)) {
                        Log.d("Downsampler", "Unable to determine dimensions for: " + imageHeaderParser$ImageTypeM78m + " with target [" + i17 + "x" + i15 + "]");
                    }
                } else {
                    str2 = ", density: ";
                    interfaceC2014b = interfaceC2014b3;
                    str3 = ", target density: ";
                    i17 = i14;
                    if (Log.isLoggable("Downsampler", 3)) {
                        Log.d("Downsampler", "Unable to determine dimensions for: " + imageHeaderParser$ImageTypeM78m + " with target [" + i17 + "x" + i15 + "]");
                    }
                }
                zM4854c = this.f8499e.m4854c(i17, i15, z16, z19);
                if (zM4854c) {
                    options.inPreferredConfig = Bitmap.Config.HARDWARE;
                    z12 = false;
                    options.inMutable = false;
                } else {
                    z12 = false;
                }
                if (zM4854c) {
                    z13 = true;
                } else if (enumC1639a != EnumC1639a.f4171b) {
                    zHasAlpha = c0023h.m78m().hasAlpha();
                    if (zHasAlpha) {
                        config = Bitmap.Config.ARGB_8888;
                    } else {
                        config = Bitmap.Config.RGB_565;
                    }
                    options.inPreferredConfig = config;
                    if (config == Bitmap.Config.RGB_565) {
                        z13 = true;
                        options.inDither = true;
                    } else {
                        z13 = true;
                    }
                } else {
                    z13 = true;
                    options.inPreferredConfig = Bitmap.Config.ARGB_8888;
                }
                if (i25 >= 0) {
                    i18 = options.inTargetDensity;
                    if (i18 > 0) {
                        z14 = z12;
                    } else {
                        z14 = z12;
                    }
                    if (z14) {
                        f8 = i18 / options.inDensity;
                    } else {
                        f8 = 1.0f;
                    }
                    i19 = options.inSampleSize;
                    float f18 = i19;
                    int iCeil7 = (int) Math.ceil(i25 / f18);
                    int iCeil8 = (int) Math.ceil(i26 / f18);
                    iRound = Math.round(iCeil7 * f8);
                    iRound2 = Math.round(iCeil8 * f8);
                    if (Log.isLoggable("Downsampler", 2)) {
                        StringBuilder sbM171v5 = AbstractC0074a.m171v("Calculated target [", iRound, iRound2, "x", "] for source [");
                        sbM171v5.append(i25);
                        sbM171v5.append("x");
                        sbM171v5.append(i26);
                        sbM171v5.append("], sampleSize: ");
                        sbM171v5.append(i19);
                        sbM171v5.append(", targetDensity: ");
                        sbM171v5.append(options.inTargetDensity);
                        sbM171v5.append(str2);
                        sbM171v5.append(options.inDensity);
                        sbM171v5.append(", density multiplier: ");
                        sbM171v5.append(f8);
                        Log.v("Downsampler", sbM171v5.toString());
                    }
                    i17 = iRound;
                    i15 = iRound2;
                } else {
                    i18 = options.inTargetDensity;
                    if (i18 > 0) {
                        z14 = z12;
                    } else {
                        z14 = z12;
                    }
                    if (z14) {
                        f8 = i18 / options.inDensity;
                    } else {
                        f8 = 1.0f;
                    }
                    i19 = options.inSampleSize;
                    float f19 = i19;
                    int iCeil9 = (int) Math.ceil(i25 / f19);
                    int iCeil10 = (int) Math.ceil(i26 / f19);
                    iRound = Math.round(iCeil9 * f8);
                    iRound2 = Math.round(iCeil10 * f8);
                    if (Log.isLoggable("Downsampler", 2)) {
                        StringBuilder sbM171v6 = AbstractC0074a.m171v("Calculated target [", iRound, iRound2, "x", "] for source [");
                        sbM171v6.append(i25);
                        sbM171v6.append("x");
                        sbM171v6.append(i26);
                        sbM171v6.append("], sampleSize: ");
                        sbM171v6.append(i19);
                        sbM171v6.append(", targetDensity: ");
                        sbM171v6.append(options.inTargetDensity);
                        sbM171v6.append(str2);
                        sbM171v6.append(options.inDensity);
                        sbM171v6.append(", density multiplier: ");
                        sbM171v6.append(f8);
                        Log.v("Downsampler", sbM171v6.toString());
                    }
                    i17 = iRound;
                    i15 = iRound2;
                }
                if (i17 > 0) {
                    interfaceC2014b2 = interfaceC2014b;
                } else {
                    interfaceC2014b2 = interfaceC2014b;
                }
                if (enumC1647i != null) {
                    i21 = Build.VERSION.SDK_INT;
                    if (i21 >= 28) {
                        if (enumC1647i == EnumC1647i.f4183b) {
                            z15 = false;
                        } else {
                            z15 = false;
                        }
                        if (z15) {
                            named = ColorSpace.Named.DISPLAY_P3;
                        } else {
                            named = ColorSpace.Named.SRGB;
                        }
                        options.inPreferredColorSpace = ColorSpace.get(named);
                    } else if (i21 >= 26) {
                        ColorSpace.Named unused3 = ColorSpace.Named.SRGB;
                        options.inPreferredColorSpace = ColorSpace.get(ColorSpace.Named.SRGB);
                    }
                }
                bitmapM4846c = m4846c(c0023h, options, interfaceC3026p, interfaceC2014b2);
                interfaceC3026p.mo3484l(bitmapM4846c, interfaceC2014b2);
                if (Log.isLoggable("Downsampler", 2)) {
                    Log.v("Downsampler", "Decoded " + m4847d(bitmapM4846c) + " from [" + i25 + "x" + i26 + "] " + str + " with inBitmap " + m4847d(options.inBitmap) + " for [" + i10 + "x" + i11 + "], sample size: " + options.inSampleSize + str2 + options.inDensity + str3 + options.inTargetDensity + ", thread: " + Thread.currentThread().getName() + ", duration: " + AbstractC0941j.m1076a(j10));
                }
                if (bitmapM4846c != null) {
                    return null;
                }
                bitmapM4846c.setDensity(this.f8496b.densityDpi);
                switch (i16) {
                    case 2:
                    case 3:
                    case 4:
                    case 5:
                    case 6:
                    case 7:
                    case 8:
                        matrix = new Matrix();
                        switch (i16) {
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
                        RectF rectF3 = new RectF(0.0f, 0.0f, bitmapM4846c.getWidth(), bitmapM4846c.getHeight());
                        matrix.mapRect(rectF3);
                        int iRound10 = Math.round(rectF3.width());
                        int iRound11 = Math.round(rectF3.height());
                        if (bitmapM4846c.getConfig() != null) {
                            config2 = bitmapM4846c.getConfig();
                        } else {
                            config2 = Bitmap.Config.ARGB_8888;
                        }
                        bitmapMo1148j = interfaceC2014b2.mo1148j(iRound10, iRound11, config2);
                        matrix.postTranslate(-rectF3.left, -rectF3.top);
                        bitmapMo1148j.setHasAlpha(bitmapM4846c.hasAlpha());
                        AbstractC3036z.m4858a(bitmapM4846c, bitmapMo1148j, matrix);
                        break;
                    default:
                        bitmapMo1148j = bitmapM4846c;
                        break;
                }
                if (!bitmapM4846c.equals(bitmapMo1148j)) {
                    interfaceC2014b2.mo1141c(bitmapM4846c);
                }
                return bitmapMo1148j;
            default:
                List list4 = (List) c0023h.f82d;
                j10 = jElapsedRealtimeNanos;
                C1048i c1048i = (C1048i) c0023h.f83e;
                C2019g c2019g3 = (C2019g) c0023h.f81c;
                int size2 = list4.size();
                str = str4;
                int i38 = 0;
                while (true) {
                    if (i38 < size2) {
                        int i39 = size2;
                        InterfaceC1642d interfaceC1642d = (InterfaceC1642d) list4.get(i38);
                        int i40 = i38;
                        try {
                            List list5 = list4;
                            C3034x c3034x3 = new C3034x(new FileInputStream(c1048i.m1331e().getFileDescriptor()), c2019g3);
                            try {
                                iMo2727d = interfaceC1642d.mo2725b(c3034x3, c2019g3);
                                c3034x3.m4857c();
                                c1048i.m1331e();
                                if (iMo2727d != -1) {
                                    iM4053t = iMo2727d;
                                } else {
                                    i38 = i40 + 1;
                                    size2 = i39;
                                    list4 = list5;
                                }
                            } catch (Throwable th2) {
                                th = th2;
                                c3034x = c3034x3;
                                if (c3034x != null) {
                                    c3034x.m4857c();
                                }
                                c1048i.m1331e();
                                throw th;
                            }
                        } catch (Throwable th3) {
                            th = th3;
                        }
                    } else {
                        iM4053t = -1;
                    }
                }
                switch (iM4053t) {
                    case 3:
                    case 4:
                        i12 = 180;
                        break;
                    case 5:
                    case 6:
                        i12 = 90;
                        break;
                    case 7:
                    case 8:
                        i12 = 270;
                        break;
                    default:
                        i12 = 0;
                        break;
                }
                switch (iM4053t) {
                    case 2:
                    case 3:
                    case 4:
                    case 5:
                    case 6:
                    case 7:
                    case 8:
                        z11 = true;
                        break;
                    default:
                        z11 = false;
                        break;
                }
                if (i10 == Integer.MIN_VALUE) {
                    if (i12 != 90) {
                        i13 = 270;
                        if (i12 == 270) {
                            i14 = i25;
                        }
                    } else {
                        i13 = 270;
                    }
                    i14 = i26;
                } else {
                    i13 = 270;
                    i14 = i10;
                }
                if (i11 == Integer.MIN_VALUE) {
                    i15 = i11;
                } else if (i12 != 90) {
                    i15 = i25;
                } else {
                    i15 = i25;
                }
                imageHeaderParser$ImageTypeM78m = c0023h.m78m();
                i16 = iM4053t;
                boolean z110 = z11;
                if (i25 > 0) {
                    str2 = ", density: ";
                    interfaceC2014b = interfaceC2014b3;
                    str3 = ", target density: ";
                    i17 = i14;
                    if (Log.isLoggable("Downsampler", 3)) {
                        Log.d("Downsampler", "Unable to determine dimensions for: " + imageHeaderParser$ImageTypeM78m + " with target [" + i17 + "x" + i15 + "]");
                    }
                } else {
                    str2 = ", density: ";
                    interfaceC2014b = interfaceC2014b3;
                    str3 = ", target density: ";
                    i17 = i14;
                    if (Log.isLoggable("Downsampler", 3)) {
                        Log.d("Downsampler", "Unable to determine dimensions for: " + imageHeaderParser$ImageTypeM78m + " with target [" + i17 + "x" + i15 + "]");
                    }
                }
                zM4854c = this.f8499e.m4854c(i17, i15, z16, z110);
                if (zM4854c) {
                    options.inPreferredConfig = Bitmap.Config.HARDWARE;
                    z12 = false;
                    options.inMutable = false;
                } else {
                    z12 = false;
                }
                if (zM4854c) {
                    z13 = true;
                } else if (enumC1639a != EnumC1639a.f4171b) {
                    zHasAlpha = c0023h.m78m().hasAlpha();
                    if (zHasAlpha) {
                        config = Bitmap.Config.ARGB_8888;
                    } else {
                        config = Bitmap.Config.RGB_565;
                    }
                    options.inPreferredConfig = config;
                    if (config == Bitmap.Config.RGB_565) {
                        z13 = true;
                        options.inDither = true;
                    } else {
                        z13 = true;
                    }
                } else {
                    z13 = true;
                    options.inPreferredConfig = Bitmap.Config.ARGB_8888;
                }
                if (i25 >= 0) {
                    i18 = options.inTargetDensity;
                    if (i18 > 0) {
                        z14 = z12;
                    } else {
                        z14 = z12;
                    }
                    if (z14) {
                        f8 = i18 / options.inDensity;
                    } else {
                        f8 = 1.0f;
                    }
                    i19 = options.inSampleSize;
                    float f110 = i19;
                    int iCeil11 = (int) Math.ceil(i25 / f110);
                    int iCeil12 = (int) Math.ceil(i26 / f110);
                    iRound = Math.round(iCeil11 * f8);
                    iRound2 = Math.round(iCeil12 * f8);
                    if (Log.isLoggable("Downsampler", 2)) {
                        StringBuilder sbM171v7 = AbstractC0074a.m171v("Calculated target [", iRound, iRound2, "x", "] for source [");
                        sbM171v7.append(i25);
                        sbM171v7.append("x");
                        sbM171v7.append(i26);
                        sbM171v7.append("], sampleSize: ");
                        sbM171v7.append(i19);
                        sbM171v7.append(", targetDensity: ");
                        sbM171v7.append(options.inTargetDensity);
                        sbM171v7.append(str2);
                        sbM171v7.append(options.inDensity);
                        sbM171v7.append(", density multiplier: ");
                        sbM171v7.append(f8);
                        Log.v("Downsampler", sbM171v7.toString());
                    }
                    i17 = iRound;
                    i15 = iRound2;
                } else {
                    i18 = options.inTargetDensity;
                    if (i18 > 0) {
                        z14 = z12;
                    } else {
                        z14 = z12;
                    }
                    if (z14) {
                        f8 = i18 / options.inDensity;
                    } else {
                        f8 = 1.0f;
                    }
                    i19 = options.inSampleSize;
                    float f111 = i19;
                    int iCeil13 = (int) Math.ceil(i25 / f111);
                    int iCeil14 = (int) Math.ceil(i26 / f111);
                    iRound = Math.round(iCeil13 * f8);
                    iRound2 = Math.round(iCeil14 * f8);
                    if (Log.isLoggable("Downsampler", 2)) {
                        StringBuilder sbM171v8 = AbstractC0074a.m171v("Calculated target [", iRound, iRound2, "x", "] for source [");
                        sbM171v8.append(i25);
                        sbM171v8.append("x");
                        sbM171v8.append(i26);
                        sbM171v8.append("], sampleSize: ");
                        sbM171v8.append(i19);
                        sbM171v8.append(", targetDensity: ");
                        sbM171v8.append(options.inTargetDensity);
                        sbM171v8.append(str2);
                        sbM171v8.append(options.inDensity);
                        sbM171v8.append(", density multiplier: ");
                        sbM171v8.append(f8);
                        Log.v("Downsampler", sbM171v8.toString());
                    }
                    i17 = iRound;
                    i15 = iRound2;
                }
                if (i17 > 0) {
                    interfaceC2014b2 = interfaceC2014b;
                } else {
                    interfaceC2014b2 = interfaceC2014b;
                }
                if (enumC1647i != null) {
                    i21 = Build.VERSION.SDK_INT;
                    if (i21 >= 28) {
                        if (enumC1647i == EnumC1647i.f4183b) {
                            z15 = false;
                        } else {
                            z15 = false;
                        }
                        if (z15) {
                            named = ColorSpace.Named.DISPLAY_P3;
                        } else {
                            named = ColorSpace.Named.SRGB;
                        }
                        options.inPreferredColorSpace = ColorSpace.get(named);
                    } else if (i21 >= 26) {
                        ColorSpace.Named unused4 = ColorSpace.Named.SRGB;
                        options.inPreferredColorSpace = ColorSpace.get(ColorSpace.Named.SRGB);
                    }
                }
                bitmapM4846c = m4846c(c0023h, options, interfaceC3026p, interfaceC2014b2);
                interfaceC3026p.mo3484l(bitmapM4846c, interfaceC2014b2);
                if (Log.isLoggable("Downsampler", 2)) {
                    Log.v("Downsampler", "Decoded " + m4847d(bitmapM4846c) + " from [" + i25 + "x" + i26 + "] " + str + " with inBitmap " + m4847d(options.inBitmap) + " for [" + i10 + "x" + i11 + "], sample size: " + options.inSampleSize + str2 + options.inDensity + str3 + options.inTargetDensity + ", thread: " + Thread.currentThread().getName() + ", duration: " + AbstractC0941j.m1076a(j10));
                }
                if (bitmapM4846c != null) {
                    return null;
                }
                bitmapM4846c.setDensity(this.f8496b.densityDpi);
                switch (i16) {
                    case 2:
                    case 3:
                    case 4:
                    case 5:
                    case 6:
                    case 7:
                    case 8:
                        matrix = new Matrix();
                        switch (i16) {
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
                        RectF rectF4 = new RectF(0.0f, 0.0f, bitmapM4846c.getWidth(), bitmapM4846c.getHeight());
                        matrix.mapRect(rectF4);
                        int iRound12 = Math.round(rectF4.width());
                        int iRound13 = Math.round(rectF4.height());
                        if (bitmapM4846c.getConfig() != null) {
                            config2 = bitmapM4846c.getConfig();
                        } else {
                            config2 = Bitmap.Config.ARGB_8888;
                        }
                        bitmapMo1148j = interfaceC2014b2.mo1148j(iRound12, iRound13, config2);
                        matrix.postTranslate(-rectF4.left, -rectF4.top);
                        bitmapMo1148j.setHasAlpha(bitmapM4846c.hasAlpha());
                        AbstractC3036z.m4858a(bitmapM4846c, bitmapMo1148j, matrix);
                        break;
                    default:
                        bitmapMo1148j = bitmapM4846c;
                        break;
                }
                if (!bitmapM4846c.equals(bitmapMo1148j)) {
                    interfaceC2014b2.mo1141c(bitmapM4846c);
                }
                return bitmapMo1148j;
        }
    }
}
