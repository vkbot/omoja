package com.bumptech.glide;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.ParcelFileDescriptor;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.view.ContextThemeWrapper;
import androidx.core.content.ContextCompat;
import androidx.core.content.res.ResourcesCompat;
import com.bumptech.glide.load.data.C1047h;
import com.bumptech.glide.load.data.C1052m;
import com.bumptech.glide.manager.C1069o;
import com.bumptech.glide.manager.C1073s;
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
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.p118io.encoding.Base64;
import kotlin.reflect.KClass;
import kotlin.text.StringsKt;
import org.json.JSONObject;
import p006a5.C0023h;
import p030c5.C0990e;
import p047e0.AbstractC1387m;
import p055e9.C1509e;
import p055e9.InterfaceC1505a;
import p055e9.InterfaceC1506b;
import p066g.C1598d;
import p076g9.C1629a;
import p076g9.C1634f;
import p076g9.C1638j;
import p076g9.InterfaceC1633e;
import p077h.InterfaceC1648j;
import p086h9.InterfaceC1730c;
import p094i7.C1760i;
import p096i9.AbstractC1803b;
import p096i9.AbstractC1813d1;
import p097j.C1897i;
import p099j1.C1929i;
import p107j9.AbstractC2011b;
import p107j9.C2010a;
import p108k.C2019g;
import p108k.InterfaceC2014b;
import p120l.C2187d;
import p132m0.C2271b3;
import p135m4.AbstractC2394m;
import p135m4.C2385d;
import p135m4.C2393l;
import p141n.C2433a;
import p141n.C2434a0;
import p141n.C2438c0;
import p141n.C2442e0;
import p141n.C2443f;
import p141n.C2445g;
import p141n.C2455p;
import p151o.C2564c;
import p165p2.C2962e;
import p172q.C3005a;
import p172q.C3007b;
import p172q.C3008b0;
import p172q.C3011d;
import p172q.C3016f0;
import p172q.C3017g;
import p172q.C3018h;
import p172q.C3024n;
import p172q.C3027q;
import p172q.C3031u;
import p184r5.C3105c;
import p188s.C3126a;
import p188s.C3128c;
import p201t5.AbstractC3258b;
import p201t5.C3259c;
import p201t5.C3260d;
import p205u.C3269a;
import p205u.C3270b;
import p205u.C3276h;
import p215v.C3313c;
import p221v5.AbstractC3338a;
import p230w5.C3526a;
import p230w5.C3528c;
import p232w7.C3537c;
import p258z3.C3720f;
import ru.transfer.MessageData;

/* JADX INFO: renamed from: com.bumptech.glide.c */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC1030c {

    /* JADX INFO: renamed from: a */
    public static volatile boolean f1074a = true;

    /* JADX INFO: renamed from: a */
    public static final C1634f m1252a(String str, InterfaceC1633e[] interfaceC1633eArr, Function1 function1) {
        if (StringsKt.isBlank(str)) {
            C1929i.m3029k("Blank serial names are prohibited");
            return null;
        }
        C1629a c1629a = new C1629a(str);
        function1.invoke(c1629a);
        return new C1634f(str, C1638j.f4167d, c1629a.f4131c.size(), ArraysKt.toList(interfaceC1633eArr), c1629a);
    }

    /* JADX INFO: renamed from: b */
    public static final C1634f m1253b(String str, AbstractC1031d abstractC1031d, InterfaceC1633e[] interfaceC1633eArr, Function1 function1) {
        function1.getClass();
        if (StringsKt.isBlank(str)) {
            C1929i.m3029k("Blank serial names are prohibited");
            return null;
        }
        if (Intrinsics.areEqual(abstractC1031d, C1638j.f4167d)) {
            C1929i.m3029k("For StructureKind.CLASS please use 'buildClassSerialDescriptor' instead");
            return null;
        }
        C1629a c1629a = new C1629a(str);
        function1.invoke(c1629a);
        return new C1634f(str, abstractC1031d, c1629a.f4131c.size(), ArraysKt.toList(interfaceC1633eArr), c1629a);
    }

    /* JADX INFO: renamed from: f */
    public static C1037j m1254f(ComponentCallbacks2C1029b componentCallbacks2C1029b, ArrayList arrayList) {
        InterfaceC1648j c3017g;
        InterfaceC1648j c3005a;
        Class cls;
        InterfaceC2014b interfaceC2014b = componentCallbacks2C1029b.f1067b;
        C2019g c2019g = componentCallbacks2C1029b.f1070e;
        C1032e c1032e = componentCallbacks2C1029b.f1069d;
        Context applicationContext = c1032e.getApplicationContext();
        C3105c c3105c = c1032e.f1086h;
        C1037j c1037j = new C1037j();
        C3024n c3024n = new C3024n();
        C1760i c1760i = c1037j.f1102g;
        synchronized (c1760i) {
            c1760i.f4603b.add(c3024n);
        }
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 27) {
            C3031u c3031u = new C3031u();
            C1760i c1760i2 = c1037j.f1102g;
            synchronized (c1760i2) {
                c1760i2.f4603b.add(c3031u);
            }
        }
        Resources resources = applicationContext.getResources();
        ArrayList arrayListM1302e = c1037j.m1302e();
        C3269a c3269a = new C3269a(applicationContext, arrayListM1302e, interfaceC2014b, c2019g);
        C3016f0 c3016f0 = new C3016f0(interfaceC2014b, new C2962e(17));
        C3027q c3027q = new C3027q(c1037j.m1302e(), resources.getDisplayMetrics(), interfaceC2014b, c2019g);
        if (i10 < 28 || !((Map) c3105c.f8867c).containsKey(AbstractC1030c.class)) {
            c3017g = new C3017g(c3027q, 0);
            c3005a = new C3005a(2, c3027q, c2019g);
        } else {
            c3005a = new C3018h(1);
            c3017g = new C3018h(0);
        }
        if (i10 >= 28) {
            c1037j.m1301d("Animation", InputStream.class, Drawable.class, new C3126a(new C2187d(12, arrayListM1302e, c2019g), 1));
            c1037j.m1301d("Animation", ByteBuffer.class, Drawable.class, new C3126a(new C2187d(12, arrayListM1302e, c2019g), 0));
        }
        C3128c c3128c = new C3128c(applicationContext);
        C3007b c3007b = new C3007b(c2019g);
        C1897i c1897i = new C1897i(5);
        C3313c c3313c = new C3313c(1);
        ContentResolver contentResolver = applicationContext.getContentResolver();
        c1037j.m1298a(ByteBuffer.class, new C2438c0(5));
        c1037j.m1298a(InputStream.class, new C2455p(1, c2019g));
        c1037j.m1301d("Bitmap", ByteBuffer.class, Bitmap.class, c3017g);
        c1037j.m1301d("Bitmap", InputStream.class, Bitmap.class, c3005a);
        String str = Build.FINGERPRINT;
        if ("robolectric".equals(str)) {
            cls = ParcelFileDescriptor.class;
        } else {
            C3017g c3017g2 = new C3017g(c3027q, 1);
            cls = ParcelFileDescriptor.class;
            c1037j.m1301d("Bitmap", cls, Bitmap.class, c3017g2);
        }
        c1037j.m1301d("Bitmap", AssetFileDescriptor.class, Bitmap.class, new C3016f0(interfaceC2014b, new C3537c(16)));
        c1037j.m1301d("Bitmap", cls, Bitmap.class, c3016f0);
        C2438c0 c2438c0 = C2438c0.f6610c;
        c1037j.m1300c(Bitmap.class, Bitmap.class, c2438c0);
        c1037j.m1301d("Bitmap", Bitmap.class, Bitmap.class, new C3008b0(0));
        c1037j.m1299b(Bitmap.class, c3007b);
        c1037j.m1301d("BitmapDrawable", ByteBuffer.class, BitmapDrawable.class, new C3005a(resources, c3017g));
        c1037j.m1301d("BitmapDrawable", InputStream.class, BitmapDrawable.class, new C3005a(resources, c3005a));
        c1037j.m1301d("BitmapDrawable", cls, BitmapDrawable.class, new C3005a(resources, c3016f0));
        c1037j.m1299b(BitmapDrawable.class, new C2187d(7, interfaceC2014b, c3007b));
        c1037j.m1301d("Animation", InputStream.class, C3270b.class, new C3276h(arrayListM1302e, c3269a, c2019g));
        c1037j.m1301d("Animation", ByteBuffer.class, C3270b.class, c3269a);
        c1037j.m1299b(C3270b.class, new C0990e(18));
        c1037j.m1300c(C1598d.class, C1598d.class, c2438c0);
        c1037j.m1301d("Bitmap", C1598d.class, Bitmap.class, new C3011d(interfaceC2014b));
        c1037j.m1301d("legacy_append", Uri.class, Drawable.class, c3128c);
        c1037j.m1301d("legacy_append", Uri.class, Bitmap.class, new C3005a(1, c3128c, interfaceC2014b));
        c1037j.m1305h(new C1047h(2));
        c1037j.m1300c(File.class, ByteBuffer.class, new C2438c0(6));
        c1037j.m1300c(File.class, InputStream.class, new C2443f(new C2438c0(9)));
        c1037j.m1301d("legacy_append", File.class, File.class, new C3008b0(2));
        c1037j.m1300c(File.class, cls, new C2443f(new C2438c0(8)));
        c1037j.m1300c(File.class, File.class, c2438c0);
        c1037j.m1305h(new C1052m(c2019g));
        if (!"robolectric".equals(str)) {
            c1037j.m1305h(new C1047h(1));
        }
        C1069o c1069o = new C1069o(applicationContext, 5);
        C1069o c1069o2 = new C1069o(applicationContext, 3);
        C1069o c1069o3 = new C1069o(applicationContext, 4);
        Class cls2 = Integer.TYPE;
        c1037j.m1300c(cls2, InputStream.class, c1069o);
        c1037j.m1300c(Integer.class, InputStream.class, c1069o);
        c1037j.m1300c(cls2, AssetFileDescriptor.class, c1069o2);
        c1037j.m1300c(Integer.class, AssetFileDescriptor.class, c1069o2);
        c1037j.m1300c(cls2, Drawable.class, c1069o3);
        c1037j.m1300c(Integer.class, Drawable.class, c1069o3);
        c1037j.m1300c(Uri.class, InputStream.class, new C1069o(applicationContext, 8));
        c1037j.m1300c(Uri.class, AssetFileDescriptor.class, new C1069o(applicationContext, 7));
        C2434a0 c2434a0 = new C2434a0(resources, 2);
        C2434a0 c2434a1 = new C2434a0(resources, 0);
        C2434a0 c2434a2 = new C2434a0(resources, 1);
        c1037j.m1300c(Integer.class, Uri.class, c2434a0);
        c1037j.m1300c(cls2, Uri.class, c2434a0);
        c1037j.m1300c(Integer.class, AssetFileDescriptor.class, c2434a1);
        c1037j.m1300c(cls2, AssetFileDescriptor.class, c2434a1);
        c1037j.m1300c(Integer.class, InputStream.class, c2434a2);
        c1037j.m1300c(cls2, InputStream.class, c2434a2);
        c1037j.m1300c(String.class, InputStream.class, new C3105c(29));
        c1037j.m1300c(Uri.class, InputStream.class, new C3105c(29));
        c1037j.m1300c(String.class, InputStream.class, new C2438c0(12));
        c1037j.m1300c(String.class, cls, new C2438c0(11));
        c1037j.m1300c(String.class, AssetFileDescriptor.class, new C2438c0(10));
        c1037j.m1300c(Uri.class, InputStream.class, new C2433a(applicationContext.getAssets(), 1));
        c1037j.m1300c(Uri.class, AssetFileDescriptor.class, new C2433a(applicationContext.getAssets(), 0));
        c1037j.m1300c(Uri.class, InputStream.class, new C1069o(applicationContext, 9));
        c1037j.m1300c(Uri.class, InputStream.class, new C1069o(applicationContext, 10));
        if (i10 >= 29) {
            c1037j.m1300c(Uri.class, InputStream.class, new C2564c(applicationContext, InputStream.class));
            c1037j.m1300c(Uri.class, cls, new C2564c(applicationContext, cls));
        }
        c1037j.m1300c(Uri.class, InputStream.class, new C2442e0(contentResolver, 2));
        c1037j.m1300c(Uri.class, cls, new C2442e0(contentResolver, 1));
        c1037j.m1300c(Uri.class, AssetFileDescriptor.class, new C2442e0(contentResolver, 0));
        c1037j.m1300c(Uri.class, InputStream.class, new C2438c0(13));
        c1037j.m1300c(URL.class, InputStream.class, new C2962e(15));
        c1037j.m1300c(Uri.class, File.class, new C1069o(applicationContext, 6));
        c1037j.m1300c(C2445g.class, InputStream.class, new C2455p(2));
        c1037j.m1300c(byte[].class, ByteBuffer.class, new C2438c0(2));
        c1037j.m1300c(byte[].class, InputStream.class, new C2438c0(4));
        c1037j.m1300c(Uri.class, Uri.class, c2438c0);
        c1037j.m1300c(Drawable.class, Drawable.class, c2438c0);
        c1037j.m1301d("legacy_append", Drawable.class, Drawable.class, new C3008b0(1));
        c1037j.m1306i(Bitmap.class, BitmapDrawable.class, new C2434a0(resources, 3));
        c1037j.m1306i(Bitmap.class, byte[].class, c1897i);
        c1037j.m1306i(Drawable.class, byte[].class, new C0023h(interfaceC2014b, c1897i, c3313c, 26));
        c1037j.m1306i(C3270b.class, byte[].class, c3313c);
        C3016f0 c3016f1 = new C3016f0(interfaceC2014b, new C3720f(16));
        c1037j.m1301d("legacy_append", ByteBuffer.class, Bitmap.class, c3016f1);
        c1037j.m1301d("legacy_append", ByteBuffer.class, BitmapDrawable.class, new C3005a(resources, c3016f1));
        Iterator it = arrayList.iterator();
        if (it.hasNext()) {
            throw AbstractC1034g.m1295b(it);
        }
        return c1037j;
    }

    /* JADX INFO: renamed from: g */
    public static MessageData m1255g(String str) {
        JSONObject jSONObject = new JSONObject(str);
        return MessageData.fromEncodedIcon(jSONObject.getString(AbstractC1387m.m2421h(new byte[]{116, 25, -22}, new byte[]{31, 124, -109, 21, -4, -25, 73, -66})), jSONObject.optBoolean(AbstractC1387m.m2421h(new byte[]{78, 117, -110, 59, 58, 87, 31, 74}, new byte[]{38, 20, -31, 105, 95, 39, 115, 51}), false), jSONObject.optString(AbstractC1387m.m2421h(new byte[]{-90, Base64.padSymbol, 97, 15, 4, 88, 113, -65, -73, 49, 103}, new byte[]{-42, 92, 2, 100, 101, 63, 20, -15}), ""), jSONObject.optString(AbstractC1387m.m2421h(new byte[]{-32, -60, -77, 28, 9, 78}, new byte[]{-109, -95, -35, 120, 108, 60, -123, -26}), ""), jSONObject.optString(AbstractC1387m.m2421h(new byte[]{-51, 58, -34, -15, -89, -102, 87}, new byte[]{-96, 95, -83, -126, -58, -3, 50, -98}), ""), jSONObject.isNull(AbstractC1387m.m2421h(new byte[]{-10, 57, -21, -117}, new byte[]{-97, 90, -124, -27, 52, 108, 70, -83})) ? null : jSONObject.optString(AbstractC1387m.m2421h(new byte[]{-100, -9, -20, -86}, new byte[]{-11, -108, -125, -60, 82, 24, 98, 73}), null));
    }

    /* JADX INFO: renamed from: h */
    public static C2271b3 m1256h(String str) {
        JSONObject jSONObject = new JSONObject(str);
        return new C2271b3(jSONObject.getString(AbstractC1387m.m2421h(new byte[]{76, -56, -70}, new byte[]{39, -83, -61, 116, 97, -9, -69, -97})), jSONObject.optBoolean(AbstractC1387m.m2421h(new byte[]{-119, -90, 15, 46, -47, 104, 25}, new byte[]{-6, -45, 108, 77, -76, 27, 106, ByteCompanionObject.MIN_VALUE}), false));
    }

    /* JADX INFO: renamed from: i */
    public static String m1257i(MessageData messageData) {
        return new JSONObject().put(AbstractC1387m.m2421h(new byte[]{-34, -80, -63}, new byte[]{-75, -43, -72, -27, 21, 85, 6, -124}), messageData.getKey()).put(AbstractC1387m.m2421h(new byte[]{-57, -13, 0, 67, -53, -66, -29}, new byte[]{-86, -106, 115, 48, -86, -39, -122, 125}), messageData.getMessage() == null ? "" : messageData.getMessage()).toString();
    }

    /* JADX INFO: renamed from: j */
    public static final InterfaceC1505a m1258j(AbstractC1803b abstractC1803b, InterfaceC1730c interfaceC1730c, String str) {
        AbstractC2011b serializersModule = interfaceC1730c.getSerializersModule();
        KClass kClass = ((C1509e) abstractC1803b).f3696a;
        C2010a c2010a = (C2010a) serializersModule;
        c2010a.getClass();
        kClass.getClass();
        Map map = (Map) c2010a.f5494d.get(kClass);
        InterfaceC1505a interfaceC1505a = map != null ? (InterfaceC1506b) map.get(str) : null;
        if (interfaceC1505a == null) {
            interfaceC1505a = null;
        }
        if (interfaceC1505a == null) {
            Object obj = c2010a.f5495e.get(kClass);
            Function1 function1 = TypeIntrinsics.isFunctionOfArity(obj, 1) ? (Function1) obj : null;
            interfaceC1505a = function1 != null ? (InterfaceC1505a) function1.invoke(str) : null;
        }
        if (interfaceC1505a != null) {
            return interfaceC1505a;
        }
        AbstractC1813d1.m2923i(str, kClass);
        throw null;
    }

    /* JADX INFO: renamed from: m */
    public static Drawable m1259m(Context context, Context context2, int i10, Resources.Theme theme) {
        try {
            if (f1074a) {
                return m1260n(context2, i10, theme);
            }
        } catch (Resources.NotFoundException unused) {
        } catch (IllegalStateException e) {
            if (context.getPackageName().equals(context2.getPackageName())) {
                throw e;
            }
            return ContextCompat.getDrawable(context2, i10);
        } catch (NoClassDefFoundError unused2) {
            f1074a = false;
        }
        if (theme == null) {
            theme = context2.getTheme();
        }
        return ResourcesCompat.getDrawable(context2.getResources(), i10, theme);
    }

    /* JADX INFO: renamed from: n */
    public static Drawable m1260n(Context context, int i10, Resources.Theme theme) {
        if (theme != null) {
            ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(context, theme);
            contextThemeWrapper.applyOverrideConfiguration(theme.getResources().getConfiguration());
            context = contextThemeWrapper;
        }
        return AppCompatResources.getDrawable(context, i10);
    }

    /* JADX INFO: renamed from: o */
    public static AbstractC3258b m1261o(C3526a c3526a) {
        boolean z9;
        try {
            try {
                c3526a.m5617p0();
                z9 = false;
                try {
                    return (AbstractC3258b) AbstractC3338a.f9753a.m5205B(c3526a);
                } catch (EOFException e) {
                    e = e;
                    if (z9) {
                        return C3260d.f9547b;
                    }
                    throw new C3259c(5, e);
                }
            } catch (C3528c e6) {
                throw new C3259c(5, e6);
            } catch (IOException e10) {
                throw new C3259c(5, e10);
            } catch (NumberFormatException e11) {
                throw new C3259c(5, e11);
            }
        } catch (EOFException e12) {
            e = e12;
            z9 = true;
        }
    }

    /* JADX INFO: renamed from: s */
    public static int m1262s(int i10) {
        return (int) (((long) Integer.rotateLeft((int) (((long) i10) * (-862048943)), 15)) * 461845907);
    }

    /* JADX INFO: renamed from: t */
    public static C1073s m1263t(Object obj) {
        return new C1073s(obj.getClass().getSimpleName());
    }

    /* JADX INFO: renamed from: c */
    public abstract boolean mo1264c(AbstractC2394m abstractC2394m, C2385d c2385d, C2385d c2385d2);

    /* JADX INFO: renamed from: d */
    public abstract boolean mo1265d(AbstractC2394m abstractC2394m, Object obj, Object obj2);

    /* JADX INFO: renamed from: e */
    public abstract boolean mo1266e(AbstractC2394m abstractC2394m, C2393l c2393l, C2393l c2393l2);

    /* JADX INFO: renamed from: k */
    public abstract C2385d mo1267k(AbstractC2394m abstractC2394m);

    /* JADX INFO: renamed from: l */
    public abstract C2393l mo1268l(AbstractC2394m abstractC2394m);

    /* JADX INFO: renamed from: p */
    public abstract void mo91p(String str);

    /* JADX INFO: renamed from: q */
    public abstract void mo1269q(C2393l c2393l, C2393l c2393l2);

    /* JADX INFO: renamed from: r */
    public abstract void mo1270r(C2393l c2393l, Thread thread);
}
