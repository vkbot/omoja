package com.bumptech.glide;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.content.res.Resources$NotFoundException;
import android.content.res.Resources$Theme;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Build$VERSION;
import android.os.ParcelFileDescriptor;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.view.ContextThemeWrapper;
import androidx.core.content.ContextCompat;
import androidx.core.content.res.ResourcesCompat;
import com.bumptech.glide.manager.s;
import i9.d1;
import java.io.EOFException;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import kotlin.collections.ArraysKt;
import kotlin.io.encoding.Base64;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.reflect.KClass;
import kotlin.text.StringsKt;
import m0.b3;
import n.a0;
import n.c0;
import n.e0;
import org.json.JSONObject;
import q.b0;
import q.f0;
import q.q;
import q.u;
import ru.transfer.MessageData;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static volatile boolean f553a = true;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final g9.f a(String str, g9.e[] eVarArr, Function1 function1) {
        if (StringsKt.isBlank(str)) {
            j1.i.k("Blank serial names are prohibited");
            return null;
        }
        g9.a aVar = new g9.a(str);
        function1.invoke(aVar);
        return new g9.f(str, g9.j.d, aVar.c.size(), ArraysKt.toList(eVarArr), aVar);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final g9.f b(String str, d dVar, g9.e[] eVarArr, Function1 function1) {
        function1.getClass();
        if (StringsKt.isBlank(str)) {
            j1.i.k("Blank serial names are prohibited");
            return null;
        }
        if (Intrinsics.areEqual(dVar, g9.j.d)) {
            j1.i.k("For StructureKind.CLASS please use 'buildClassSerialDescriptor' instead");
            return null;
        }
        g9.a aVar = new g9.a(str);
        function1.invoke(aVar);
        return new g9.f(str, dVar, aVar.c.size(), ArraysKt.toList(eVarArr), aVar);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static j f(b bVar, ArrayList arrayList) {
        h.j gVar;
        h.j aVar;
        Class cls;
        k.b bVar2 = bVar.f549b;
        k.g gVar2 = bVar.e;
        e eVar = bVar.d;
        Context applicationContext = eVar.getApplicationContext();
        r5.c cVar = eVar.f561h;
        j jVar = new j();
        q.n nVar = new q.n();
        i7.i iVar = jVar.f571g;
        synchronized (iVar) {
            iVar.f2690b.add(nVar);
        }
        int i9 = Build$VERSION.SDK_INT;
        if (i9 >= 27) {
            u uVar = new u();
            i7.i iVar2 = jVar.f571g;
            synchronized (iVar2) {
                iVar2.f2690b.add(uVar);
            }
        }
        Resources resources = applicationContext.getResources();
        ArrayList arrayListE = jVar.e();
        u.a aVar2 = new u.a(applicationContext, arrayListE, bVar2, gVar2);
        f0 f0Var = new f0(bVar2, new p2.e(17));
        q qVar = new q(jVar.e(), resources.getDisplayMetrics(), bVar2, gVar2);
        if (i9 < 28 || !((Map) cVar.c).containsKey(c.class)) {
            gVar = new q.g(qVar, 0);
            aVar = new q.a(2, qVar, gVar2);
        } else {
            aVar = new q.h(1);
            gVar = new q.h(0);
        }
        if (i9 >= 28) {
            jVar.d("Animation", InputStream.class, Drawable.class, new s.a(new l.d(12, arrayListE, gVar2), 1));
            jVar.d("Animation", ByteBuffer.class, Drawable.class, new s.a(new l.d(12, arrayListE, gVar2), 0));
        }
        s.c cVar2 = new s.c(applicationContext);
        q.b bVar3 = new q.b(gVar2);
        j.i iVar3 = new j.i(5);
        v.c cVar3 = new v.c(1);
        ContentResolver contentResolver = applicationContext.getContentResolver();
        jVar.a(ByteBuffer.class, new c0(5));
        jVar.a(InputStream.class, new n.p(1, gVar2));
        jVar.d("Bitmap", ByteBuffer.class, Bitmap.class, gVar);
        jVar.d("Bitmap", InputStream.class, Bitmap.class, aVar);
        String str = Build.FINGERPRINT;
        if ("robolectric".equals(str)) {
            cls = ParcelFileDescriptor.class;
        } else {
            q.g gVar3 = new q.g(qVar, 1);
            cls = ParcelFileDescriptor.class;
            jVar.d("Bitmap", cls, Bitmap.class, gVar3);
        }
        jVar.d("Bitmap", AssetFileDescriptor.class, Bitmap.class, new f0(bVar2, new w7.c(16)));
        jVar.d("Bitmap", cls, Bitmap.class, f0Var);
        c0 c0Var = c0.c;
        jVar.c(Bitmap.class, Bitmap.class, c0Var);
        jVar.d("Bitmap", Bitmap.class, Bitmap.class, new b0(0));
        jVar.b(Bitmap.class, bVar3);
        jVar.d("BitmapDrawable", ByteBuffer.class, BitmapDrawable.class, new q.a(resources, gVar));
        jVar.d("BitmapDrawable", InputStream.class, BitmapDrawable.class, new q.a(resources, aVar));
        jVar.d("BitmapDrawable", cls, BitmapDrawable.class, new q.a(resources, f0Var));
        jVar.b(BitmapDrawable.class, new l.d(7, bVar2, bVar3));
        jVar.d("Animation", InputStream.class, u.b.class, new u.h(arrayListE, aVar2, gVar2));
        jVar.d("Animation", ByteBuffer.class, u.b.class, aVar2);
        jVar.b(u.b.class, new c5.e(18));
        jVar.c(g.d.class, g.d.class, c0Var);
        jVar.d("Bitmap", g.d.class, Bitmap.class, new q.d(bVar2));
        jVar.d("legacy_append", Uri.class, Drawable.class, cVar2);
        jVar.d("legacy_append", Uri.class, Bitmap.class, new q.a(1, cVar2, bVar2));
        jVar.h(new com.bumptech.glide.load.data.h(2));
        jVar.c(File.class, ByteBuffer.class, new c0(6));
        jVar.c(File.class, InputStream.class, new n.f(new c0(9)));
        jVar.d("legacy_append", File.class, File.class, new b0(2));
        jVar.c(File.class, cls, new n.f(new c0(8)));
        jVar.c(File.class, File.class, c0Var);
        jVar.h(new com.bumptech.glide.load.data.m(gVar2));
        if (!"robolectric".equals(str)) {
            jVar.h(new com.bumptech.glide.load.data.h(1));
        }
        com.bumptech.glide.manager.o oVar = new com.bumptech.glide.manager.o(applicationContext, 5);
        com.bumptech.glide.manager.o oVar2 = new com.bumptech.glide.manager.o(applicationContext, 3);
        com.bumptech.glide.manager.o oVar3 = new com.bumptech.glide.manager.o(applicationContext, 4);
        Class cls2 = Integer.TYPE;
        jVar.c(cls2, InputStream.class, oVar);
        jVar.c(Integer.class, InputStream.class, oVar);
        jVar.c(cls2, AssetFileDescriptor.class, oVar2);
        jVar.c(Integer.class, AssetFileDescriptor.class, oVar2);
        jVar.c(cls2, Drawable.class, oVar3);
        jVar.c(Integer.class, Drawable.class, oVar3);
        jVar.c(Uri.class, InputStream.class, new com.bumptech.glide.manager.o(applicationContext, 8));
        jVar.c(Uri.class, AssetFileDescriptor.class, new com.bumptech.glide.manager.o(applicationContext, 7));
        a0 a0Var = new a0(resources, 2);
        a0 a0Var2 = new a0(resources, 0);
        a0 a0Var3 = new a0(resources, 1);
        jVar.c(Integer.class, Uri.class, a0Var);
        jVar.c(cls2, Uri.class, a0Var);
        jVar.c(Integer.class, AssetFileDescriptor.class, a0Var2);
        jVar.c(cls2, AssetFileDescriptor.class, a0Var2);
        jVar.c(Integer.class, InputStream.class, a0Var3);
        jVar.c(cls2, InputStream.class, a0Var3);
        jVar.c(String.class, InputStream.class, new r5.c(29));
        jVar.c(Uri.class, InputStream.class, new r5.c(29));
        jVar.c(String.class, InputStream.class, new c0(12));
        jVar.c(String.class, cls, new c0(11));
        jVar.c(String.class, AssetFileDescriptor.class, new c0(10));
        jVar.c(Uri.class, InputStream.class, new n.a(applicationContext.getAssets(), 1));
        jVar.c(Uri.class, AssetFileDescriptor.class, new n.a(applicationContext.getAssets(), 0));
        jVar.c(Uri.class, InputStream.class, new com.bumptech.glide.manager.o(applicationContext, 9));
        jVar.c(Uri.class, InputStream.class, new com.bumptech.glide.manager.o(applicationContext, 10));
        if (i9 >= 29) {
            jVar.c(Uri.class, InputStream.class, new o.c(applicationContext, InputStream.class));
            jVar.c(Uri.class, cls, new o.c(applicationContext, cls));
        }
        jVar.c(Uri.class, InputStream.class, new e0(contentResolver, 2));
        jVar.c(Uri.class, cls, new e0(contentResolver, 1));
        jVar.c(Uri.class, AssetFileDescriptor.class, new e0(contentResolver, 0));
        jVar.c(Uri.class, InputStream.class, new c0(13));
        jVar.c(URL.class, InputStream.class, new p2.e(15));
        jVar.c(Uri.class, File.class, new com.bumptech.glide.manager.o(applicationContext, 6));
        jVar.c(n.g.class, InputStream.class, new n.p(2));
        jVar.c(byte[].class, ByteBuffer.class, new c0(2));
        jVar.c(byte[].class, InputStream.class, new c0(4));
        jVar.c(Uri.class, Uri.class, c0Var);
        jVar.c(Drawable.class, Drawable.class, c0Var);
        jVar.d("legacy_append", Drawable.class, Drawable.class, new b0(1));
        jVar.i(Bitmap.class, BitmapDrawable.class, new a0(resources, 3));
        jVar.i(Bitmap.class, byte[].class, iVar3);
        jVar.i(Drawable.class, byte[].class, new a5.h(bVar2, iVar3, cVar3, 26));
        jVar.i(u.b.class, byte[].class, cVar3);
        f0 f0Var2 = new f0(bVar2, new z3.f(16));
        jVar.d("legacy_append", ByteBuffer.class, Bitmap.class, f0Var2);
        jVar.d("legacy_append", ByteBuffer.class, BitmapDrawable.class, new q.a(resources, f0Var2));
        Iterator it = arrayList.iterator();
        if (it.hasNext()) {
            throw g.b(it);
        }
        return jVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static MessageData g(String str) {
        JSONObject jSONObject = new JSONObject(str);
        return MessageData.fromEncodedIcon(jSONObject.getString(e0.m.h(new byte[]{116, 25, -22}, new byte[]{31, 124, -109, 21, -4, -25, 73, -66})), jSONObject.optBoolean(e0.m.h(new byte[]{78, 117, -110, 59, 58, 87, 31, 74}, new byte[]{38, 20, -31, 105, 95, 39, 115, 51}), false), jSONObject.optString(e0.m.h(new byte[]{-90, Base64.padSymbol, 97, 15, 4, 88, 113, -65, -73, 49, 103}, new byte[]{-42, 92, 2, 100, 101, 63, 20, -15}), ""), jSONObject.optString(e0.m.h(new byte[]{-32, -60, -77, 28, 9, 78}, new byte[]{-109, -95, -35, 120, 108, 60, -123, -26}), ""), jSONObject.optString(e0.m.h(new byte[]{-51, 58, -34, -15, -89, -102, 87}, new byte[]{-96, 95, -83, -126, -58, -3, 50, -98}), ""), jSONObject.isNull(e0.m.h(new byte[]{-10, 57, -21, -117}, new byte[]{-97, 90, -124, -27, 52, 108, 70, -83})) ? null : jSONObject.optString(e0.m.h(new byte[]{-100, -9, -20, -86}, new byte[]{-11, -108, -125, -60, 82, 24, 98, 73}), null));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static b3 h(String str) {
        JSONObject jSONObject = new JSONObject(str);
        return new b3(jSONObject.getString(e0.m.h(new byte[]{76, -56, -70}, new byte[]{39, -83, -61, 116, 97, -9, -69, -97})), jSONObject.optBoolean(e0.m.h(new byte[]{-119, -90, 15, 46, -47, 104, 25}, new byte[]{-6, -45, 108, 77, -76, 27, 106, ByteCompanionObject.MIN_VALUE}), false));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String i(MessageData messageData) {
        return new JSONObject().put(e0.m.h(new byte[]{-34, -80, -63}, new byte[]{-75, -43, -72, -27, 21, 85, 6, -124}), messageData.getKey()).put(e0.m.h(new byte[]{-57, -13, 0, 67, -53, -66, -29}, new byte[]{-86, -106, 115, 48, -86, -39, -122, 125}), messageData.getMessage() == null ? "" : messageData.getMessage()).toString();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final e9.a j(i9.b bVar, h9.c cVar, String str) {
        j9.a serializersModule = cVar.getSerializersModule();
        KClass kClass = ((e9.e) bVar).a;
        j9.a aVar = serializersModule;
        aVar.getClass();
        kClass.getClass();
        Map map = (Map) aVar.d.get(kClass);
        e9.b bVar2 = map != null ? (e9.b) map.get(str) : null;
        if (bVar2 == null) {
            bVar2 = null;
        }
        if (bVar2 == null) {
            Object obj = aVar.e.get(kClass);
            Function1 function1 = TypeIntrinsics.isFunctionOfArity(obj, 1) ? (Function1) obj : null;
            bVar2 = function1 != null ? (e9.a) function1.invoke(str) : null;
        }
        if (bVar2 != null) {
            return bVar2;
        }
        d1.i(str, kClass);
        throw null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Drawable m(Context context, Context context2, int i9, Resources$Theme resources$Theme) {
        try {
            if (f553a) {
                return n(context2, i9, resources$Theme);
            }
        } catch (Resources$NotFoundException unused) {
        } catch (IllegalStateException e) {
            if (context.getPackageName().equals(context2.getPackageName())) {
                throw e;
            }
            return ContextCompat.getDrawable(context2, i9);
        } catch (NoClassDefFoundError unused2) {
            f553a = false;
        }
        if (resources$Theme == null) {
            resources$Theme = context2.getTheme();
        }
        return ResourcesCompat.getDrawable(context2.getResources(), i9, resources$Theme);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Drawable n(Context context, int i9, Resources$Theme resources$Theme) {
        if (resources$Theme != null) {
            ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(context, resources$Theme);
            contextThemeWrapper.applyOverrideConfiguration(resources$Theme.getResources().getConfiguration());
            context = contextThemeWrapper;
        }
        return AppCompatResources.getDrawable(context, i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static t5.b o(w5.a aVar) {
        boolean z8;
        try {
            try {
                aVar.p0();
                z8 = false;
                try {
                    return (t5.b) v5.a.f5528a.B(aVar);
                } catch (EOFException e) {
                    e = e;
                    if (z8) {
                        return t5.d.f5410b;
                    }
                    throw new t5.c(5, e);
                }
            } catch (EOFException e6) {
                e = e6;
                z8 = true;
            }
        } catch (w5.c e9) {
            throw new t5.c(5, e9);
        } catch (IOException e10) {
            throw new t5.c(5, e10);
        } catch (NumberFormatException e11) {
            throw new t5.c(5, e11);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int s(int i9) {
        return (int) (((long) Integer.rotateLeft((int) (((long) i9) * (-862048943)), 15)) * 461845907);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static s t(Object obj) {
        return new s(obj.getClass().getSimpleName());
    }

    public abstract boolean c(m4.m mVar, m4.d dVar, m4.d dVar2);

    public abstract boolean d(m4.m mVar, Object obj, Object obj2);

    public abstract boolean e(m4.m mVar, m4.l lVar, m4.l lVar2);

    public abstract m4.d k(m4.m mVar);

    public abstract m4.l l(m4.m mVar);

    public abstract void p(String str);

    public abstract void q(m4.l lVar, m4.l lVar2);

    public abstract void r(m4.l lVar, Thread thread);
}
