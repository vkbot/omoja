package a5;

import android.app.Application;
import android.app.job.JobInfo;
import android.app.job.JobInfo$Builder;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory$Options;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.ParcelFileDescriptor;
import android.os.PersistableBundle;
import android.util.Base64;
import android.util.Log;
import androidx.recyclerview.widget.ItemTouchHelper$Callback;
import b1.m;
import com.bumptech.glide.load.ImageHeaderParser$ImageType;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.JobInfoSchedulerService;
import d2.s;
import e0.s3;
import f5.k0;
import f5.l0;
import f5.y;
import j.d0;
import java.io.ByteArrayOutputStream;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.zip.Adler32;
import javax.net.ssl.SSLSocket;
import kotlin.jvm.internal.ByteCompanionObject;
import n7.e1;
import n7.f1;
import n7.o;
import n7.v0;
import n7.w0;
import o7.o2;
import o7.p;
import o7.q;
import o7.r;
import o7.t;
import o7.v;
import o7.w;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.Response;
import okhttp3.ResponseBody;
import q.x;
import q6.k;
import t4.j;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class h implements f2.b, e5.b, Callback, w, v.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f48b;
    public Object c;
    public Object d;
    public Object e;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public h(f6.b bVar) throws z5.e {
        int i9;
        int i10;
        this.f48b = 16;
        int i11 = bVar.c;
        if (i11 < 8 || i11 > 144 || (i9 = i11 & 1) != 0) {
            throw z5.e.a();
        }
        int i12 = bVar.f2258b;
        j6.d[] dVarArr = j6.d.f3092h;
        if (i9 != 0 || (i12 & 1) != 0) {
            throw z5.e.a();
        }
        j6.d[] dVarArr2 = j6.d.f3092h;
        for (int i13 = 0; i13 < 30; i13++) {
            j6.d dVar = dVarArr2[i13];
            int i14 = dVar.f3094b;
            if (i14 == i11 && (i10 = dVar.c) == i12) {
                this.e = dVar;
                if (i11 != i14) {
                    j1.i.k("Dimension of bitMatrix must match the version size");
                    throw null;
                }
                int i15 = dVar.d;
                int i16 = dVar.e;
                int i17 = i14 / i15;
                int i18 = i10 / i16;
                f6.b bVar2 = new f6.b(i18 * i16, i17 * i15);
                for (int i19 = 0; i19 < i17; i19++) {
                    int i20 = i19 * i15;
                    for (int i21 = 0; i21 < i18; i21++) {
                        int i22 = i21 * i16;
                        for (int i23 = 0; i23 < i15; i23++) {
                            int i24 = ((i15 + 2) * i19) + 1 + i23;
                            int i25 = i20 + i23;
                            for (int i26 = 0; i26 < i16; i26++) {
                                if (bVar.b(((i16 + 2) * i21) + 1 + i26, i24)) {
                                    bVar2.f(i22 + i26, i25);
                                }
                            }
                        }
                    }
                }
                this.c = bVar2;
                this.d = new f6.b(bVar2.f2258b, bVar2.c);
                return;
            }
        }
        throw z5.e.a();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int h(int i9, int i10, f6.a aVar) {
        int i11 = 0;
        for (int i12 = 0; i12 < i10; i12++) {
            if (aVar.d(i9 + i12)) {
                i11 |= 1 << ((i10 - i12) - 1);
            }
        }
        return i11;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Method o(Class cls, String str, Class[] clsArr) {
        if (cls != null) {
            try {
                if ((cls.getModifiers() & 1) == 0) {
                    return o(cls.getSuperclass(), str, clsArr);
                }
                Method method = cls.getMethod(str, clsArr);
                try {
                    if ((method.getModifiers() & 1) != 0) {
                        return method;
                    }
                } catch (NoSuchMethodException unused) {
                    return method;
                }
            } catch (NoSuchMethodException unused2) {
                return null;
            }
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // v.a
    public d0 a(d0 d0Var, h.h hVar) {
        Drawable drawable = (Drawable) d0Var.get();
        if (drawable instanceof BitmapDrawable) {
            return ((j.i) this.d).a(q.e.c(((BitmapDrawable) drawable).getBitmap(), (k.b) this.c), hVar);
        }
        if (drawable instanceof u.b) {
            return ((v.c) this.e).a(d0Var, hVar);
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.w
    public void b(f1 f1Var, v vVar, v0 v0Var) {
        w7.b.c();
        try {
            w7.b.a();
            c(f1Var, v0Var);
            w7.b.f5947a.getClass();
        } catch (Throwable th) {
            try {
                w7.b.f5947a.getClass();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void c(f1 f1Var, v0 v0Var) {
        t tVar = (t) this.e;
        o oVar = tVar.f4435k.f3893a;
        tVar.f4432h.getClass();
        if (oVar == null) {
            oVar = null;
        }
        if (f1Var.f3933a == e1.CANCELLED && oVar != null && oVar.a()) {
            i7.i iVar = new i7.i(1);
            tVar.f4436l.e(iVar);
            f1Var = f1.f3925h.b("ClientCall was cancelled at or after deadline. " + iVar);
            v0Var = new v0();
        }
        w7.b.b();
        tVar.e.execute(new q(this, f1Var, v0Var));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String d(StringBuilder sb, int i9) throws z5.e, z5.i {
        String str = null;
        while (true) {
            q6.h hVarF = f(i9, str);
            String strA = k.a(hVarF.f4875b);
            if (strA != null) {
                sb.append(strA);
            }
            String strValueOf = hVarF.d ? String.valueOf(hVarF.c) : null;
            int i10 = hVarF.f4877a;
            if (i9 == i10) {
                return sb.toString();
            }
            i9 = i10;
            str = strValueOf;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Bitmap e(BitmapFactory$Options bitmapFactory$Options) {
        switch (this.f48b) {
            case 21:
                return BitmapFactory.decodeStream(new c0.a(c0.b.c((ByteBuffer) this.c)), null, bitmapFactory$Options);
            case 22:
                x xVar = (x) ((com.bumptech.glide.load.data.i) this.c).c;
                xVar.reset();
                return BitmapFactory.decodeStream(xVar, null, bitmapFactory$Options);
            default:
                return BitmapFactory.decodeFileDescriptor(((com.bumptech.glide.load.data.i) this.e).e().getFileDescriptor(), null, bitmapFactory$Options);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:139:0x022b  */
    /* JADX WARN: Code duplicated, block: B:141:0x0233  */
    /* JADX WARN: Code duplicated, block: B:142:0x0238  */
    /* JADX WARN: Code duplicated, block: B:203:0x0324 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:208:0x0330  */
    /* JADX WARN: Code duplicated, block: B:53:0x00e6  */
    /* JADX WARN: Code duplicated, block: B:55:0x00ee  */
    /* JADX WARN: Code duplicated, block: B:57:0x00f4  */
    public q6.h f(int i9, String str) throws z5.e {
        boolean zD;
        d6.d dVar;
        boolean z8;
        boolean z9;
        q6.i iVar;
        d6.d dVar2;
        int i10;
        int i11;
        int i12;
        boolean z10;
        int iH;
        int iH2;
        int iH3;
        char c;
        q6.g gVar;
        q6.g gVar2;
        int i13;
        int i14;
        int i15;
        int i16;
        int iH4;
        int iH5;
        char c9;
        q6.g gVar3;
        q6.g gVar4;
        f6.a aVar = (f6.a) this.c;
        c6.a aVar2 = (c6.a) this.d;
        StringBuilder sb = (StringBuilder) this.e;
        sb.setLength(0);
        if (str != null) {
            sb.append(str);
        }
        aVar2.f501b = i9;
        do {
            int i17 = aVar2.f501b;
            int i18 = aVar2.c;
            int i19 = 16;
            if (i18 != 2) {
                if (i18 == 3) {
                    while (true) {
                        int i20 = aVar2.f501b;
                        if (i20 + 5 <= aVar.c && (((iH = h(i20, 5, aVar)) >= 5 && iH < i19) || (i20 + 7 <= aVar.c && (((iH2 = h(i20, 7, aVar)) >= 64 && iH2 < 116) || (i20 + 8 <= aVar.c && (iH3 = h(i20, 8, aVar)) >= 232 && iH3 < 253))))) {
                            int i21 = aVar2.f501b;
                            int iH6 = h(i21, 5, aVar);
                            if (iH6 == 15) {
                                gVar2 = new q6.g('$', i21 + 5);
                            } else {
                                if (iH6 < 5 || iH6 >= 15) {
                                    int iH7 = h(i21, 7, aVar);
                                    if (iH7 >= 64 && iH7 < 90) {
                                        gVar = new q6.g((char) (iH7 + 1), i21 + 7);
                                    } else if (iH7 < 90 || iH7 >= 116) {
                                        switch (h(i21, 8, aVar)) {
                                            case 232:
                                                c = '!';
                                                break;
                                            case 233:
                                                c = '\"';
                                                break;
                                            case 234:
                                                c = '%';
                                                break;
                                            case 235:
                                                c = '&';
                                                break;
                                            case 236:
                                                c = '\'';
                                                break;
                                            case 237:
                                                c = '(';
                                                break;
                                            case 238:
                                                c = ')';
                                                break;
                                            case 239:
                                                c = '*';
                                                break;
                                            case 240:
                                                c = '+';
                                                break;
                                            case 241:
                                                c = ',';
                                                break;
                                            case 242:
                                                c = '-';
                                                break;
                                            case 243:
                                                c = '.';
                                                break;
                                            case 244:
                                                c = '/';
                                                break;
                                            case 245:
                                                c = ':';
                                                break;
                                            case 246:
                                                c = ';';
                                                break;
                                            case 247:
                                                c = '<';
                                                break;
                                            case 248:
                                                c = '=';
                                                break;
                                            case 249:
                                                c = '>';
                                                break;
                                            case ItemTouchHelper$Callback.DEFAULT_SWIPE_ANIMATION_DURATION /* 250 */:
                                                c = '?';
                                                break;
                                            case 251:
                                                c = '_';
                                                break;
                                            case 252:
                                                c = ' ';
                                                break;
                                            default:
                                                throw z5.e.a();
                                        }
                                        gVar = new q6.g(c, i21 + 8);
                                    } else {
                                        gVar = new q6.g((char) (iH7 + 7), i21 + 7);
                                    }
                                } else {
                                    gVar = new q6.g((char) (iH6 + 43), i21 + 5);
                                }
                                gVar2 = gVar;
                            }
                            int i22 = gVar2.f4877a;
                            aVar2.f501b = i22;
                            char c10 = gVar2.f4874b;
                            if (c10 == '$') {
                                dVar = new d6.d(new q6.h(i22, sb.toString()), true);
                            } else {
                                sb.append(c10);
                                i19 = 16;
                            }
                        } else {
                            int i23 = aVar2.f501b;
                            int i24 = i23 + 3;
                            if (i24 <= aVar.c) {
                                while (true) {
                                    if (i23 >= i24) {
                                        aVar2.f501b += 3;
                                        aVar2.c = 1;
                                    } else if (!aVar.d(i23)) {
                                        i23++;
                                    } else if (s(aVar2.f501b)) {
                                        i10 = aVar2.f501b;
                                        i11 = i10 + 5;
                                        i12 = aVar.c;
                                        if (i11 < i12) {
                                            aVar2.f501b = i10 + 5;
                                        } else {
                                            aVar2.f501b = i12;
                                        }
                                        aVar2.c = 2;
                                    }
                                }
                            } else if (s(aVar2.f501b)) {
                                i10 = aVar2.f501b;
                                i11 = i10 + 5;
                                i12 = aVar.c;
                                if (i11 < i12) {
                                    aVar2.f501b = i10 + 5;
                                } else {
                                    aVar2.f501b = i12;
                                }
                                aVar2.c = 2;
                            }
                            dVar = new d6.d(null, false);
                        }
                    }
                    z10 = dVar.f1780a;
                } else {
                    while (true) {
                        int i25 = aVar2.f501b;
                        int i26 = i25 + 7;
                        int i27 = aVar.c;
                        if (i26 > i27) {
                            zD = i25 + 4 <= i27;
                        } else {
                            int i28 = i25;
                            while (true) {
                                int i29 = i25 + 3;
                                if (i28 >= i29) {
                                    zD = aVar.d(i29);
                                } else if (!aVar.d(i28)) {
                                    i28++;
                                }
                            }
                        }
                        int i30 = aVar2.f501b;
                        int i31 = aVar.c;
                        if (zD) {
                            int i32 = i30 + 7;
                            if (i32 > i31) {
                                int iH8 = h(i30, 4, aVar);
                                int i33 = aVar.c;
                                iVar = iH8 == 0 ? new q6.i(i33, 10, 10) : new q6.i(i33, iH8 - 1, 10);
                            } else {
                                int iH9 = h(i30, 7, aVar) - 8;
                                iVar = new q6.i(i32, iH9 / 11, iH9 % 11);
                            }
                            int i34 = iVar.f4877a;
                            aVar2.f501b = i34;
                            int i35 = iVar.c;
                            int i36 = iVar.f4876b;
                            if (i36 == 10) {
                                dVar2 = new d6.d(i35 == 10 ? new q6.h(i34, sb.toString()) : new q6.h(i34, sb.toString(), i35), true);
                            } else {
                                sb.append(i36);
                                if (i35 == 10) {
                                    dVar2 = new d6.d(new q6.h(aVar2.f501b, sb.toString()), true);
                                } else {
                                    sb.append(i35);
                                }
                            }
                            dVar = dVar2;
                            z8 = false;
                        } else {
                            if (i30 + 1 <= i31) {
                                int i37 = 0;
                                while (true) {
                                    if (i37 < 4) {
                                        int i38 = i37 + i30;
                                        if (i38 < aVar.c) {
                                            if (!aVar.d(i38)) {
                                                i37++;
                                            }
                                        }
                                    }
                                    aVar2.c = 2;
                                    aVar2.f501b += 4;
                                }
                            }
                            z8 = false;
                            dVar = new d6.d(null, false);
                        }
                    }
                    z9 = dVar.f1780a;
                }
                i13 = aVar2.f501b;
                if (i17 != i13 && !z9) {
                }
                q6.h hVar = (q6.h) dVar.f1781b;
                return (hVar == null && hVar.d) ? new q6.h(i13, sb.toString(), hVar.c) : new q6.h(i13, sb.toString());
            }
            while (true) {
                int i39 = aVar2.f501b;
                if (i39 + 5 <= aVar.c && (((iH4 = h(i39, 5, aVar)) >= 5 && iH4 < 16) || (i39 + 6 <= aVar.c && (iH5 = h(i39, 6, aVar)) >= 16 && iH5 < 63))) {
                    int i40 = aVar2.f501b;
                    int iH10 = h(i40, 5, aVar);
                    if (iH10 == 15) {
                        gVar4 = new q6.g('$', i40 + 5);
                    } else {
                        if (iH10 < 5 || iH10 >= 15) {
                            int iH11 = h(i40, 6, aVar);
                            if (iH11 < 32 || iH11 >= 58) {
                                switch (iH11) {
                                    case 58:
                                        c9 = '*';
                                        break;
                                    case 59:
                                        c9 = ',';
                                        break;
                                    case 60:
                                        c9 = '-';
                                        break;
                                    case 61:
                                        c9 = '.';
                                        break;
                                    case 62:
                                        c9 = '/';
                                        break;
                                    default:
                                        j1.i.l("Decoding invalid alphanumeric value: ".concat(String.valueOf(iH11)));
                                        return null;
                                }
                                gVar3 = new q6.g(c9, i40 + 6);
                            } else {
                                gVar3 = new q6.g((char) (iH11 + 33), i40 + 6);
                            }
                        } else {
                            gVar3 = new q6.g((char) (iH10 + 43), i40 + 5);
                        }
                        gVar4 = gVar3;
                    }
                    int i41 = gVar4.f4877a;
                    aVar2.f501b = i41;
                    char c11 = gVar4.f4874b;
                    if (c11 == '$') {
                        dVar = new d6.d(new q6.h(i41, sb.toString()), true);
                    } else {
                        sb.append(c11);
                    }
                } else {
                    int i42 = aVar2.f501b;
                    int i43 = i42 + 3;
                    if (i43 <= aVar.c) {
                        while (true) {
                            if (i42 >= i43) {
                                aVar2.f501b += 3;
                                aVar2.c = 1;
                            } else if (!aVar.d(i42)) {
                                i42++;
                            } else if (s(aVar2.f501b)) {
                                i14 = aVar2.f501b;
                                i15 = i14 + 5;
                                i16 = aVar.c;
                                if (i15 < i16) {
                                    aVar2.f501b = i14 + 5;
                                } else {
                                    aVar2.f501b = i16;
                                }
                                aVar2.c = 3;
                            }
                        }
                    } else if (s(aVar2.f501b)) {
                        i14 = aVar2.f501b;
                        i15 = i14 + 5;
                        i16 = aVar.c;
                        if (i15 < i16) {
                            aVar2.f501b = i14 + 5;
                        } else {
                            aVar2.f501b = i16;
                        }
                        aVar2.c = 3;
                    }
                    dVar = new d6.d(null, false);
                }
            }
            z10 = dVar.f1780a;
            z9 = z10;
            z8 = false;
            i13 = aVar2.f501b;
            if (i17 != i13) {
            }
            q6.h hVar2 = (q6.h) dVar.f1781b;
            if (hVar2 == null) {
            }
        } while (!z9);
        q6.h hVar3 = (q6.h) dVar.f1781b;
        if (hVar3 == null) {
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void g(g2.a aVar, ByteArrayOutputStream byteArrayOutputStream) {
        HashMap map = (HashMap) this.c;
        f fVar = new f(byteArrayOutputStream, map, (HashMap) this.d, (x4.d) this.e);
        x4.d dVar = (x4.d) map.get(g2.a.class);
        if (dVar == null) {
            throw new x4.b(ai.onnxruntime.a.j(g2.a.class, "No encoder for "));
        }
        dVar.a(aVar, fVar);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // t8.a
    public Object get() {
        boolean z8;
        switch (this.f48b) {
            case 2:
                ((s3) this.c).get();
                return new s((j2.i) ((c2.k) this.d).get(), (m) ((m) this.e).get());
            case 3:
            case 6:
            default:
                return new h((Context) ((t8.a) this.c).get(), (k2.d) ((t8.a) this.d).get(), (j2.a) ((c5.e) this.e).get(), 15);
            case 4:
                return new f5.g((y) ((t8.a) this.c).get(), (Application) ((t8.a) this.d).get(), (i5.a) ((w7.c) this.e).get());
            case 5:
                x7.k kVar = (x7.k) ((t8.a) this.c).get();
                return new k0(kVar, (x7.k) ((t8.a) this.e).get());
            case 7:
                h hVar = (h) this.c;
                l0 l0Var = (l0) ((h5.a) this.d).get();
                b5.b bVar = (b5.b) ((g5.a) this.e).get();
                o4.f fVar = (o4.f) hVar.c;
                android.support.v4.media.h hVar2 = new android.support.v4.media.h(8, false);
                hVar2.c = l0Var;
                fVar.a();
                p5.a aVar = (p5.a) fVar.f4091g.get();
                synchronized (aVar) {
                    z8 = aVar.f4592a;
                }
                hVar2.d = new AtomicBoolean(z8);
                e0.g gVar = new e0.g(8);
                j jVar = (j) bVar;
                u4.j jVar2 = jVar.c;
                synchronized (jVar) {
                    try {
                        jVar2.getClass();
                        if (!jVar.f5399a.containsKey(o4.b.class)) {
                            jVar.f5399a.put(o4.b.class, new ConcurrentHashMap());
                        }
                        ((ConcurrentHashMap) jVar.f5399a.get(o4.b.class)).put(gVar, jVar2);
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                return hVar2;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean i() {
        String str = (String) this.e;
        return str.equals(e0.m.h(new byte[]{69, 100, 73, -83, 43, 81, -33, 98, 116, 110, 92, -109, 60, 89, -34, 111, 78, 109}, new byte[]{43, 1, 46, -52, 95, 56, -80, 12})) || str.equals(e0.m.h(new byte[]{-90, -74, 73, 3, -24, 3, -21, 121, -120, -84, 94, 47, -1, 5, -22, 115, -66, -73, 69, 31, -14}, new byte[]{-41, -61, 44, 112, -100, 106, -124, 23})) || str.equals(e0.m.h(new byte[]{32, -26, -83, -7, 122, 105, -79, 26, 27, -20, -71, -61, 101, 110, -72, 10, 45, -13, -89, -7, 87, 120, -69, 19, 41, -30, -91, -8, 123}, new byte[]{68, -125, -53, -100, 8, 27, -44, 126})) || str.equals(e0.m.h(new byte[]{8, -92, 112, -31, -78, 39, 89, -90, 58, -78, 115, -8, -74, 54, 91, -89, 22}, new byte[]{101, -47, 28, -107, -37, 87, 53, -61})) || str.equals(e0.m.h(new byte[]{-94, -37, 57, 10, ByteCompanionObject.MIN_VALUE, 106, 73, 81, -112, -63, 55, 20, -116, 121, 81, 71}, new byte[]{-49, -82, 85, 126, -23, 26, 37, 52})) || str.equals(e0.m.h(new byte[]{-4, 39, 3, 22, 77, -19, 58, -53, -50, 36, 14, 14, 81, -8, 37}, new byte[]{-111, 82, 111, 98, 36, -99, 86, -82})) || str.equals(e0.m.h(new byte[]{37, -61, 51, 110, 15, 40, -18, 2, 55, -15, 54, 117, 7, 40, -15}, new byte[]{68, -82, 81, 7, 104, 93, -127, 119})) || str.equals(e0.m.h(new byte[]{-48, 7, -75, 3, -8, 100, -102, 43, -44, 30, -66, 4, -2, 117, -68, 19, -47, 24, -91, 16}, new byte[]{-93, 119, -48, 96, -111, 2, -29, 116})) || str.equals(e0.m.h(new byte[]{80, -94, 12, 126, -66, -21, 99, 75, 66, -112, 15, 126, -85, -8, 96, 81, 70, -112, 10, 126, -85, -5, 111, 74, 88, -96, 0}, new byte[]{49, -49, 110, 23, -39, -98, 12, 62})) || str.equals(e0.m.h(new byte[]{-47, 65, -117, 25, -26, 106, -112, -73, -64, 73, -117, 30, -25, 96, -109, -115, -62, 119, -105, 16, -2, 90, -108, -99, -64, 88, -106, 13, -2, 96, -125}, new byte[]{-80, 40, -7, ByteCompanionObject.MAX_VALUE, -118, 5, -25, -24})) || str.equals(e0.m.h(new byte[]{83, 124, -55, 113, -33, -114, 45, 6, 82, 119, -34, 91, -56, -116, 45, 1, 86}, new byte[]{38, 18, -70, 4, -81, -2, 66, 116})) || str.startsWith(e0.m.h(new byte[]{60, ByteCompanionObject.MIN_VALUE, 36, -63, 7, -104, -16, 55, 54, -127, 45, -8}, new byte[]{95, -17, 74, -89, 107, -15, -109, 67})) || str.equals(e0.m.h(new byte[]{63, -86, 65, 71, -105, 29, 10, 49, 14, -71, 71, 74, -106, 17}, new byte[]{81, -49, 38, 38, -29, 116, 124, 84})) || str.startsWith(e0.m.h(new byte[]{32, 124, 120, 37, -6, 19, -113}, new byte[]{85, 18, 11, 68, -100, 118, -48, 6})) || str.equals(e0.m.h(new byte[]{102, 83, -57, 58, -57, -99, 80, 120, 75, 89, -39, 4, -35, -111, 65, 124, 96, 95, -35, 62, -20, -126, 71, 113, 97, 83}, new byte[]{20, 54, -85, 91, -77, -12, 38, 29}));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.w
    public void j() {
        t tVar = (t) this.e;
        w0 w0Var = tVar.d.f3984a;
        w0Var.getClass();
        if (w0Var == w0.f3981b || w0Var == w0.c) {
            return;
        }
        w7.b.c();
        try {
            w7.b.a();
            w7.b.b();
            tVar.e.execute(new r(this));
            w7.b.f5947a.getClass();
        } catch (Throwable th) {
            try {
                w7.b.f5947a.getClass();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.w
    public void k(o2 o2Var) {
        t tVar = (t) this.e;
        w7.b.c();
        try {
            w7.b.a();
            w7.b.b();
            tVar.e.execute(new p(this, o2Var));
            w7.b.f5947a.getClass();
        } catch (Throwable th) {
            try {
                w7.b.f5947a.getClass();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.w
    public void l(v0 v0Var) {
        t tVar = (t) this.e;
        w7.b.c();
        try {
            w7.b.a();
            w7.b.b();
            tVar.e.execute(new p(this, v0Var));
            w7.b.f5947a.getClass();
        } catch (Throwable th) {
            try {
                w7.b.f5947a.getClass();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ImageHeaderParser$ImageType m() throws Throwable {
        switch (this.f48b) {
            case 21:
                return o4.b.w((List) this.d, c0.b.c((ByteBuffer) this.c));
            case 22:
                List list = (List) this.e;
                x xVar = (x) ((com.bumptech.glide.load.data.i) this.c).c;
                xVar.reset();
                return o4.b.v(list, xVar, (k.g) this.d);
            default:
                List list2 = (List) this.d;
                com.bumptech.glide.load.data.i iVar = (com.bumptech.glide.load.data.i) this.e;
                k.g gVar = (k.g) this.c;
                int size = list2.size();
                for (int i9 = 0; i9 < size; i9++) {
                    h.d dVar = (h.d) list2.get(i9);
                    x xVar2 = null;
                    try {
                        x xVar3 = new x(new FileInputStream(iVar.e().getFileDescriptor()), gVar);
                        try {
                            ImageHeaderParser$ImageType imageHeaderParser$ImageTypeC = dVar.c(xVar3);
                            xVar3.c();
                            iVar.e();
                            if (imageHeaderParser$ImageTypeC != ImageHeaderParser$ImageType.UNKNOWN) {
                                return imageHeaderParser$ImageTypeC;
                            }
                        } catch (Throwable th) {
                            th = th;
                            xVar2 = xVar3;
                            if (xVar2 != null) {
                                xVar2.c();
                            }
                            iVar.e();
                            throw th;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                    }
                }
                return ImageHeaderParser$ImageType.UNKNOWN;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Method n(Class cls) {
        Class cls2;
        Method methodO = o(cls, (String) this.d, (Class[]) this.e);
        if (methodO == null || (cls2 = (Class) this.c) == null || cls2.isAssignableFrom(methodO.getReturnType())) {
            return methodO;
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void onFailure(Call call, IOException iOException) {
        Log.e(e0.m.h(new byte[]{93, -39, 15, -30, -100, 2, 55, 84, 124, -53, 8, -20, -66}, new byte[]{25, -72, 123, -125, -52, 112, 88, 55}), e0.m.h(new byte[]{99, 116, 103, -85, -114, 111, 77, 73, 99, 80, 102, -109, 126, 7, 42, 40, 3, 58, 5, -14, -34, 6, 30, 40, 4, 58, 12, -13, -26, -9, 77, 64, -109, 58, 8, -13, -17, 6, 29, 40, 3, 58, 7, -13, -32, 6, 31, 40, 9, 58, 14, 3, -114, 99, 77, 72, 99, 87, 102, -98, -113, 92, 76, 125, -119, -54}, new byte[]{-77, -22, -74, 35, 94, -41, -99, -8}) + iOException.getMessage());
        i7.j.f2691f = Boolean.TRUE;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void onResponse(Call call, Response response) {
        String str = (String) this.d;
        i7.j jVar = (i7.j) this.e;
        String str2 = (String) this.c;
        try {
            ResponseBody responseBodyBody = response.body();
            if (responseBodyBody != null) {
                InputStream inputStreamByteStream = responseBodyBody.byteStream();
                try {
                    FileOutputStream fileOutputStream = new FileOutputStream(str2);
                    try {
                        byte[] bArr = new byte[8192];
                        while (true) {
                            int i9 = inputStreamByteStream.read(bArr);
                            if (i9 == -1) {
                                break;
                            } else {
                                fileOutputStream.write(bArr, 0, i9);
                            }
                            throw new RuntimeException(e);
                        }
                        Log.d(e0.m.h(new byte[]{-82, 88, -77, -109, 66, -116, 91, 67, -113, 74, -76, -99, 96}, new byte[]{-22, 57, -57, -14, 18, -2, 52, 32}), e0.m.h(new byte[]{-65, 43, -61, 115, 67, -91, 36, -105, 53, -37, 67, -24, -78, -16, 117, -9, 95, -78, 35, -126, 21, -15, 68, -9, 88, 88, -77}, new byte[]{-27, 98, -109, 83, -110, 33, -12, 39}) + str2);
                        i7.j.c(jVar, str2, str);
                        i7.j.b(jVar, str);
                        fileOutputStream.close();
                    } catch (Throwable th) {
                        try {
                            fileOutputStream.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                } catch (Exception e) {
                    throw new RuntimeException(e);
                }
            }
            i7.j.f2691f = Boolean.TRUE;
        } catch (Exception e6) {
            Log.e(e0.m.h(new byte[]{78, 64, 69, -104, 99, -37, -72, -19, 111, 82, 66, -106, 65}, new byte[]{10, 33, 49, -7, 51, -87, -41, -114}), e0.m.h(new byte[]{47, -92, -2, 90, 8, 32, -119, 3, 47, ByteCompanionObject.MIN_VALUE, -1, 98, -8, 72, -18, 98, 79, -22, -100, 3, 88, 73, -38, 98, 72, -22, -107, 2, 96, -72, -119, 10, -33, -22, -111, 2, 105, 73, -39, 98, 79, -22, -98, 2, 102, 73, -37, 98, 69, -22, -105, -14, 8, 44, -119, 2, 47, -121, -1, 111, 9, 19, -120, 55, -59, 26}, new byte[]{-1, 58, 47, -46, -40, -104, 89, -78}) + e6.getMessage());
            i7.j.f2691f = Boolean.TRUE;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Object p(SSLSocket sSLSocket, Object... objArr) {
        Method methodN = n(sSLSocket.getClass());
        if (methodN == null) {
            n0.b.B("Method ", (String) this.d, " not supported for object ", sSLSocket);
            return null;
        }
        try {
            return methodN.invoke(sSLSocket, objArr);
        } catch (IllegalAccessException e) {
            AssertionError assertionError = new AssertionError("Unexpectedly could not call: " + methodN);
            assertionError.initCause(e);
            throw assertionError;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void q(SSLSocket sSLSocket, Object... objArr) {
        try {
            Method methodN = n(sSLSocket.getClass());
            if (methodN == null) {
                return;
            }
            try {
                methodN.invoke(sSLSocket, objArr);
            } catch (IllegalAccessException unused) {
            }
        } catch (InvocationTargetException e) {
            Throwable targetException = e.getTargetException();
            if (targetException instanceof RuntimeException) {
                throw ((RuntimeException) targetException);
            }
            AssertionError assertionError = new AssertionError("Unexpected exception");
            assertionError.initCause(targetException);
            throw assertionError;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Object r(SSLSocket sSLSocket, Object... objArr) {
        try {
            return p(sSLSocket, objArr);
        } catch (InvocationTargetException e) {
            Throwable targetException = e.getTargetException();
            if (targetException instanceof RuntimeException) {
                throw ((RuntimeException) targetException);
            }
            AssertionError assertionError = new AssertionError("Unexpected exception");
            assertionError.initCause(targetException);
            throw assertionError;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean s(int i9) {
        int i10;
        int i11 = i9 + 1;
        f6.a aVar = (f6.a) this.c;
        if (i11 > aVar.c) {
            return false;
        }
        for (int i12 = 0; i12 < 5 && (i10 = i12 + i9) < aVar.c; i12++) {
            if (i12 == 2) {
                if (!aVar.d(i9 + 2)) {
                    return false;
                }
            } else if (aVar.d(i10)) {
                return false;
            }
        }
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean t(int i9, int i10, int i11, int i12) {
        if (i9 < 0) {
            i9 += i11;
            i10 += 4 - ((i11 + 4) & 7);
        }
        if (i10 < 0) {
            i10 += i12;
            i9 += 4 - ((i12 + 4) & 7);
        }
        ((f6.b) this.d).f(i10, i9);
        return ((f6.b) this.c).b(i10, i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int u(int i9, int i10, int i11, int i12) {
        int i13 = i9 - 2;
        int i14 = i10 - 2;
        int i15 = (t(i13, i14, i11, i12) ? 1 : 0) << 1;
        int i16 = i10 - 1;
        if (t(i13, i16, i11, i12)) {
            i15 |= 1;
        }
        int i17 = i15 << 1;
        int i18 = i9 - 1;
        if (t(i18, i14, i11, i12)) {
            i17 |= 1;
        }
        int i19 = i17 << 1;
        if (t(i18, i16, i11, i12)) {
            i19 |= 1;
        }
        int i20 = i19 << 1;
        if (t(i18, i10, i11, i12)) {
            i20 |= 1;
        }
        int i21 = i20 << 1;
        if (t(i9, i14, i11, i12)) {
            i21 |= 1;
        }
        int i22 = i21 << 1;
        if (t(i9, i16, i11, i12)) {
            i22 |= 1;
        }
        int i23 = i22 << 1;
        return t(i9, i10, i11, i12) ? i23 | 1 : i23;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void v(d2.q qVar, int i9, boolean z8) {
        j2.a aVar = (j2.a) this.e;
        Context context = (Context) this.c;
        ComponentName componentName = new ComponentName(context, (Class<?>) JobInfoSchedulerService.class);
        JobScheduler jobScheduler = (JobScheduler) context.getSystemService("jobscheduler");
        Adler32 adler32 = new Adler32();
        adler32.update(context.getPackageName().getBytes(Charset.forName("UTF-8")));
        d2.j jVar = (d2.j) qVar;
        adler32.update(jVar.f1683a.getBytes(Charset.forName("UTF-8")));
        adler32.update(ByteBuffer.allocate(4).putInt(n2.a.a(jVar.c)).array());
        byte[] bArr = jVar.f1684b;
        if (bArr != null) {
            adler32.update(bArr);
        }
        int value = (int) adler32.getValue();
        if (!z8) {
            for (JobInfo jobInfo : jobScheduler.getAllPendingJobs()) {
                int i10 = jobInfo.getExtras().getInt("attemptNumber");
                if (jobInfo.getId() == value) {
                    if (i10 < i9) {
                        break;
                    }
                    e3.d.d(qVar, "JobInfoScheduler", "Upload for context %s is already scheduled. Returning...");
                    return;
                }
            }
        }
        SQLiteDatabase sQLiteDatabaseB = ((k2.h) ((k2.d) this.d)).b();
        String str = jVar.f1683a;
        a2.b bVar = jVar.c;
        Cursor cursorRawQuery = sQLiteDatabaseB.rawQuery("SELECT next_request_ms FROM transport_contexts WHERE backend_name = ? and priority = ?", new String[]{str, String.valueOf(n2.a.a(bVar))});
        try {
            Long lValueOf = cursorRawQuery.moveToNext() ? Long.valueOf(cursorRawQuery.getLong(0)) : 0L;
            cursorRawQuery.close();
            long jLongValue = lValueOf.longValue();
            JobInfo$Builder jobInfo$Builder = new JobInfo$Builder(value, componentName);
            jobInfo$Builder.setMinimumLatency(aVar.a(bVar, jLongValue, i9));
            Set set = ((j2.b) aVar.f3020b.get(bVar)).c;
            if (set.contains(j2.c.f3023b)) {
                jobInfo$Builder.setRequiredNetworkType(2);
            } else {
                jobInfo$Builder.setRequiredNetworkType(1);
            }
            if (set.contains(j2.c.d)) {
                jobInfo$Builder.setRequiresCharging(true);
            }
            if (set.contains(j2.c.c)) {
                jobInfo$Builder.setRequiresDeviceIdle(true);
            }
            PersistableBundle persistableBundle = new PersistableBundle();
            persistableBundle.putInt("attemptNumber", i9);
            persistableBundle.putString("backendName", str);
            persistableBundle.putInt("priority", n2.a.a(bVar));
            byte[] bArr2 = jVar.f1684b;
            if (bArr2 != null) {
                persistableBundle.putString("extras", Base64.encodeToString(bArr2, 0));
            }
            jobInfo$Builder.setExtras(persistableBundle);
            Object[] objArr = {qVar, Integer.valueOf(value), Long.valueOf(aVar.a(bVar, jLongValue, i9)), lValueOf, Integer.valueOf(i9)};
            String strJ = e3.d.j("JobInfoScheduler");
            if (Log.isLoggable(strJ, 3)) {
                Log.d(strJ, String.format("Scheduling upload for context %s with jobId=%d in %dms(Backend next call timestamp %d). Attempt %d", objArr));
            }
            jobScheduler.schedule(jobInfo$Builder.build());
        } catch (Throwable th) {
            cursorRawQuery.close();
            throw th;
        }
    }

    private final void w() {
    }

    private final void x() {
    }

    public /* synthetic */ h(Object obj, Object obj2, Object obj3, int i9) {
        this.f48b = i9;
        this.c = obj;
        this.d = obj2;
        this.e = obj3;
    }

    public /* synthetic */ h(Object obj, Object obj2, Object obj3, int i9, boolean z8) {
        this.f48b = i9;
        this.e = obj;
        this.c = obj2;
        this.d = obj3;
    }

    public /* synthetic */ h(int i9) {
        this.f48b = i9;
    }

    public h(f6.a aVar) {
        this.f48b = 24;
        c6.a aVar2 = new c6.a();
        aVar2.f501b = 0;
        aVar2.c = 1;
        this.d = aVar2;
        this.e = new StringBuilder();
        this.c = aVar;
    }

    public h(c0.m mVar, ArrayList arrayList, k.g gVar) {
        this.f48b = 22;
        c0.g.c(gVar, "Argument must not be null");
        this.d = gVar;
        c0.g.c(arrayList, "Argument must not be null");
        this.e = arrayList;
        this.c = new com.bumptech.glide.load.data.i(mVar, gVar);
    }

    public h(ParcelFileDescriptor parcelFileDescriptor, ArrayList arrayList, k.g gVar) {
        this.f48b = 23;
        c0.g.c(gVar, "Argument must not be null");
        this.c = gVar;
        c0.g.c(arrayList, "Argument must not be null");
        this.d = arrayList;
        this.e = new com.bumptech.glide.load.data.i(parcelFileDescriptor);
    }

    public h(j.r rVar, y.f fVar, j.v vVar) {
        this.f48b = 14;
        this.e = rVar;
        this.d = fVar;
        this.c = vVar;
    }

    public h(t tVar, n7.e eVar) {
        this.f48b = 18;
        this.e = tVar;
        this.c = eVar;
    }
}
