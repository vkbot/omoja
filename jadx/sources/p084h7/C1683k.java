package p084h7;

import ai.onnxruntime.AbstractC0074a;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbInterface;
import android.hardware.usb.UsbManager;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.storage.StorageManager;
import android.os.storage.StorageVolume;
import android.util.Log;
import androidx.constraintlayout.core.utils.C0279a;
import com.google.protobuf.AbstractC1178q;
import java.io.File;
import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.p118io.encoding.Base64;
import p016b1.RunnableC0873n;
import p047e0.AbstractC1387m;
import p078h0.C1652b;

/* JADX INFO: renamed from: h7.k */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1683k {

    /* JADX INFO: renamed from: k */
    public static final String f4313k = AbstractC1387m.m2421h(new byte[]{-6, 38, 44, -12, -96, -31, -28, -99, -61, 38, 43, -5, -77, -31, -51, -95, -39, 32, 45, -11, -90}, new byte[]{-73, 73, 89, -102, -44, -124, ByteCompanionObject.MIN_VALUE, -50});

    /* JADX INFO: renamed from: l */
    public static final String f4314l = AbstractC1387m.m2421h(new byte[]{-59, -122, -92, 92, -118, -13, 109, -106, -38, -122, -66, 70, -115}, new byte[]{-88, -23, -47, 50, -2, -106, 9, -55});

    /* JADX INFO: renamed from: m */
    public static final String f4315m = AbstractC1387m.m2421h(new byte[]{73, -119, -48, -24, -116, 119, -112, 44, 81, -107, -57, -39, -100, 119, -126, 26, 71, -125, -42}, new byte[]{36, -26, -91, -122, -8, 18, -12, 115});

    /* JADX INFO: renamed from: n */
    public static final long[] f4316n = {1000, 3000, 6000, 12000, 18000};

    /* JADX INFO: renamed from: o */
    public static final C1683k f4317o = new C1683k();

    /* JADX INFO: renamed from: a */
    public final Object f4318a = new Object();

    /* JADX INFO: renamed from: b */
    public final Handler f4319b = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: c */
    public final ArrayList f4320c = new ArrayList();

    /* JADX INFO: renamed from: d */
    public final ArrayList f4321d = new ArrayList();

    /* JADX INFO: renamed from: e */
    public final C1680h f4322e = new C1680h(this, 0);

    /* JADX INFO: renamed from: f */
    public final C1680h f4323f = new C1680h(this, 1);

    /* JADX INFO: renamed from: g */
    public Context f4324g;

    /* JADX INFO: renamed from: h */
    public boolean f4325h;

    /* JADX INFO: renamed from: i */
    public boolean f4326i;

    /* JADX INFO: renamed from: j */
    public int f4327j;

    /* JADX INFO: renamed from: a */
    public static void m2780a(ArrayList arrayList, HashSet hashSet) {
        File[] fileArrListFiles;
        String[] strArr = {AbstractC1387m.m2421h(new byte[]{80, -17, 20, -13, 94, -80, 32, 36}, new byte[]{ByteCompanionObject.MAX_VALUE, -100, 96, -100, 44, -47, 71, 65}), AbstractC1387m.m2421h(new byte[]{47, 0, 66, -22, -13, 110, 33, 4, 105, 12, 115, -20, -85}, new byte[]{0, 109, 44, -98, -36, 3, 68, 96}), AbstractC1387m.m2421h(new byte[]{59, 36, -82, 19, 53, 118, -85, 79, 75, 58, -76, 8, 104, 98, -65, 72}, new byte[]{20, 73, -64, 103, 26, 3, -40, 45}), AbstractC1387m.m2421h(new byte[]{23, -74, 107, 31, 70, 56, -92, 7, 23, -80, 108, 18, 107, 42, -73, 13, 74, -92, 120, 21}, new byte[]{56, -59, 31, 112, 52, 89, -61, 98}), AbstractC1387m.m2421h(new byte[]{-78, -34, -29, -81, -43, -100, 6, 121}, new byte[]{-99, -77, -115, -37, -6, -23, 117, 27}), AbstractC1387m.m2421h(new byte[]{83, 39, 118, 78, -109, 34, 119, -114, 83, 33, 113, 67}, new byte[]{124, 84, 2, 33, -31, 67, 16, -21}), AbstractC1387m.m2421h(new byte[]{-24, -94, -36, -43, -72, 102, -121, -95, -76, -92}, new byte[]{-57, -49, -78, -95, -105, 19, -29, -56}), AbstractC1387m.m2421h(new byte[]{20, -70, 74, -16, -39, 5, 44, 69, 20, -68, 90, -10, -40, 15}, new byte[]{59, -55, 62, -97, -85, 100, 75, 32}), AbstractC1387m.m2421h(new byte[]{-18, 71, -4, -122, 4, -54, -81, -53, -75, 67, -1, -105, 4, -36, -65, -61, -96, 95, -2, -122}, new byte[]{-63, 42, -110, -14, 43, -72, -38, -91}), AbstractC1387m.m2421h(new byte[]{89, 88, -93, -15, 91, 37, 83, -61, 2, 92, -96, -32, 91, 37, 67, -52, 18}, new byte[]{118, 53, -51, -123, 116, 87, 38, -83}), AbstractC1387m.m2421h(new byte[]{-67, -49, -75, 59, 14, 102, -14, -70, -26, -53, -74, 42, 14, 99, -11, -67, -26, -57}, new byte[]{-110, -94, -37, 79, 33, 20, -121, -44}), AbstractC1387m.m2421h(new byte[]{-12, -19, 52, -53, -94, -84, -93, -125, -12, -5, 56, -48, -125, -87, -121, -121, -87, -6}, new byte[]{-37, -98, 64, -92, -48, -51, -60, -26}), AbstractC1387m.m2421h(new byte[]{-3, 57, -53, -3, -44, 62, -57, 33, -3, 57, -37, -15, -57, 45, -60, 117}, new byte[]{-46, 74, -65, -110, -90, 95, -96, 68}), AbstractC1387m.m2421h(new byte[]{93, -62, -88, 95, 13, -117, 115, -22, 1, -53}, new byte[]{114, -81, -58, 43, 34, -18, 11, -98}), AbstractC1387m.m2421h(new byte[]{-53, -20, -38, -101, 10, 85, 78, -91, -127, -13, -38, -114, 73, 111, 69, -75}, new byte[]{-28, -127, -76, -17, 37, 48, 54, -47})};
        for (int i10 = 0; i10 < 15; i10++) {
            try {
                fileArrListFiles = new File(strArr[i10]).listFiles();
            } catch (Exception unused) {
                fileArrListFiles = null;
            }
            if (fileArrListFiles != null) {
                for (File file : fileArrListFiles) {
                    file.getName();
                    m2781b(arrayList, hashSet, file, AbstractC1387m.m2421h(new byte[]{117, -118, -24, -53, 1, -75, -109}, new byte[]{24, -27, -99, -91, 117, -48, -9, 35}), AbstractC1387m.m2421h(new byte[]{63, 46, -90, 3, 95, -110, 40, 7, 51, 47}, new byte[]{82, 65, -45, 109, 43, -65, 91, 100}));
                }
            }
        }
    }

    /* JADX INFO: renamed from: b */
    public static void m2781b(ArrayList arrayList, HashSet hashSet, File file, String str, String str2) {
        if (file == null) {
            return;
        }
        try {
            String absolutePath = file.getAbsolutePath();
            String name = file.getName();
            if (!file.isDirectory() || absolutePath.contains(AbstractC1387m.m2421h(new byte[]{-97, 4, 26, 59, -72, -43, 124, -59, -44}, new byte[]{-80, 97, 119, 78, -44, -76, 8, -96})) || absolutePath.endsWith(AbstractC1387m.m2421h(new byte[]{-119, -67, 43, -19, -54, 50, -90, -8, -62}, new byte[]{-90, -40, 70, -104, -90, 83, -46, -99})) || absolutePath.contains(AbstractC1387m.m2421h(new byte[]{101, 122, -102, -23, 85}, new byte[]{74, 9, -1, -123, 51, 46, -99, 64})) || absolutePath.endsWith(AbstractC1387m.m2421h(new byte[]{14, -64, 123, 9, -23}, new byte[]{33, -77, 30, 101, -113, -113, 47, 67})) || name == null || name.length() == 0 || file.listFiles() == null) {
                return;
            }
            String absolutePath2 = file.getAbsolutePath();
            if (hashSet.add(absolutePath2)) {
                arrayList.add(new C1681i(file));
                StringBuilder sb = new StringBuilder();
                AbstractC1178q.m2087u(new byte[]{-17, -46, 47, -91, 19, 79, 47, 31, -15, -55, 53, -71, 6, 77, 46, 5, -94}, new byte[]{-126, -67, 90, -53, 103, 42, 75, 63}, sb, absolutePath2);
                AbstractC1178q.m2087u(new byte[]{121, -101, 107, 93, -122, -45, 10, -87}, new byte[]{89, -24, 4, 40, -12, -80, 111, -108}, sb, str2);
                sb.append(AbstractC1387m.m2421h(new byte[]{73, 4, -4, -40, -6, -76, 19}, new byte[]{105, 119, -120, -71, -114, -47, 46, -113}));
                sb.append(str);
                Log.d(f4313k, sb.toString());
            }
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: renamed from: c */
    public static void m2782c(ArrayList arrayList, HashSet hashSet, File file, String str, String str2, String str3) {
        m2781b(arrayList, hashSet, file, str2, str3);
        if (str == null || str.length() <= 0) {
            return;
        }
        m2781b(arrayList, hashSet, new File(AbstractC1387m.m2421h(new byte[]{123, -91, 34, -6, -126, -68, 107, -67}, new byte[]{84, -42, 86, -107, -16, -35, 12, -40}), str), str2, str3.concat(AbstractC1387m.m2421h(new byte[]{-84, -111, -27, 79, -48, -64, 28, -65, -13}, new byte[]{-106, -66, -106, 59, -65, -78, 125, -40})));
        m2781b(arrayList, hashSet, new File(AbstractC1387m.m2421h(new byte[]{-112, 107, -99, -77, -91, 12, 123, 125, -42, 103, -84, -75, -3}, new byte[]{-65, 6, -13, -57, -118, 97, 30, 25}), str), str2, str3.concat(AbstractC1387m.m2421h(new byte[]{105, -111, -91, -81, 76, -54, 66, 115, 55, -41, -87, -98, 74, -110}, new byte[]{83, -66, -56, -63, 56, -27, 47, 22})));
    }

    /* JADX INFO: renamed from: d */
    public static String m2783d(String... strArr) {
        for (String str : strArr) {
            if (str != null && str.trim().length() > 0) {
                return str;
            }
        }
        return null;
    }

    /* JADX INFO: renamed from: g */
    public static Object m2784g(Object obj, String str) {
        Method method;
        if (str != null) {
            try {
                Class<?> cls = obj.getClass();
                for (Class<?> superclass = cls; superclass != null; superclass = superclass.getSuperclass()) {
                    try {
                        method = superclass.getDeclaredMethod(str, null);
                        method.setAccessible(true);
                        return method.invoke(obj, null);
                    } catch (NoSuchMethodException unused) {
                    }
                }
                method = cls.getMethod(str, null);
                method.setAccessible(true);
                return method.invoke(obj, null);
            } catch (Exception unused2) {
            }
        }
        return null;
    }

    /* JADX INFO: renamed from: h */
    public static boolean m2785h(String str) {
        return AbstractC1387m.m2421h(new byte[]{117, -72, 112, -10, 87, -89, 120}, new byte[]{24, -41, 5, -104, 35, -62, 28, 124}).equals(str) || AbstractC1387m.m2421h(new byte[]{-119, 54, -79, 1, 86, -87, 94, 106, -106, 54}, new byte[]{-28, 89, -60, 111, 34, -52, 58, 53}).equals(str);
    }

    /* JADX INFO: renamed from: i */
    public static boolean m2786i(String str) {
        return AbstractC1387m.m2421h(new byte[]{-119, -108, -76, 70, -114, -19, -49, 18, ByteCompanionObject.MIN_VALUE, -101, -94, 80, -106, -27, -39, 89, -58, -113, -93, 86, -49, -27, -56, 72, -127, -107, -66, 26, -76, -41, -23, 99, -84, -65, -122, 125, -94, -63, -12, 125, -68, -82, -111, 119, -87, -63, -17}, new byte[]{-24, -6, -48, 52, -31, -124, -85, 60}).equals(str) || AbstractC1387m.m2421h(new byte[]{-15, -64, -44, -48, -22, 120, -79, -59, -8, -49, -62, -58, -14, 112, -89, -114, -66, -37, -61, -64, -85, 112, -74, -97, -7, -63, -34, -116, -48, 66, -105, -76, -44, -21, -26, -21, -58, 84, -118, -81, -43, -6, -15, -31, -51, 84, -111}, new byte[]{-112, -82, -80, -94, -123, 17, -43, -21}).equals(str) || AbstractC1387m.m2421h(new byte[]{125, -22, -110, -77, 4, 66, -106, -107, 116, -27, -124, -91, 28, 74, ByteCompanionObject.MIN_VALUE, -34, 50, -15, -123, -93, 69, 74, -111, -49, 117, -21, -104, -17, 62, 120, -80, -28, 93, -57, -75, -124, 56, 120, -67, -23, 69, -37, -73, -107, 63, 106, -79, -13, 89, -64}, new byte[]{28, -124, -10, -63, 107, 43, -14, -69}).equals(str) || AbstractC1387m.m2421h(new byte[]{57, 14, -63, 10, 105, 1, 28, 53, 48, 1, -41, 28, 113, 9, 10, 126, 118, 21, -42, 26, 40, 9, 27, 111, 49, 15, -53, 86, 83, 59, 58, 68, 25, 35, -26, Base64.padSymbol, 85, 59, 55, 73, 1, 63, -31, Base64.padSymbol, 82, 41, 59, 83, 29, 36}, new byte[]{88, 96, -91, 120, 6, 104, 120, 27}).equals(str);
    }

    /* JADX INFO: renamed from: j */
    public static List m2787j(Context context) {
        if (context == null) {
            return Collections.EMPTY_LIST;
        }
        String strLoadString = C1652b.m2745o().loadString(f4314l, "");
        if (strLoadString == null || strLoadString.length() == 0) {
            return Collections.EMPTY_LIST;
        }
        ArrayList arrayList = new ArrayList();
        for (String str : strLoadString.split(AbstractC1387m.m2421h(new byte[]{-70, -124}, new byte[]{-26, -22, 69, 6, 49, -72, 56, 94}))) {
            if (str != null && str.trim().length() > 0) {
                arrayList.add(new File(str.trim()));
            }
        }
        return arrayList;
    }

    /* JADX INFO: renamed from: k */
    public static Object m2788k(Object obj, String str) {
        try {
            for (Class<?> superclass = obj.getClass(); superclass != null; superclass = superclass.getSuperclass()) {
                try {
                    Field declaredField = superclass.getDeclaredField(str);
                    declaredField.setAccessible(true);
                    return declaredField.get(obj);
                } catch (NoSuchFieldException unused) {
                }
            }
            throw new NoSuchFieldException(str);
        } catch (Exception unused2) {
            return null;
        }
    }

    /* JADX INFO: renamed from: l */
    public static int m2789l(Object obj, String str, String str2) {
        Object objM2784g = m2784g(obj, str);
        if (objM2784g instanceof Number) {
            return ((Number) objM2784g).intValue();
        }
        Object objM2788k = m2788k(obj, str2);
        if (objM2788k instanceof Number) {
            return ((Number) objM2788k).intValue();
        }
        return -1;
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0023  */
    /* JADX INFO: renamed from: m */
    public static File m2790m(Object obj, String str, String str2) {
        File file;
        Object objM2784g = str != null ? m2784g(obj, str) : null;
        if (objM2784g instanceof File) {
            file = (File) objM2784g;
        } else if (objM2784g instanceof String) {
            String str3 = (String) objM2784g;
            if (str3.length() > 0) {
                file = new File(str3);
            } else {
                file = null;
            }
        } else {
            file = null;
        }
        if (file != null) {
            return file;
        }
        Object objM2788k = m2788k(obj, str2);
        if (objM2788k instanceof File) {
            return (File) objM2788k;
        }
        if (objM2788k instanceof String) {
            String str4 = (String) objM2788k;
            if (str4.length() > 0) {
                return new File(str4);
            }
        }
        return null;
    }

    /* JADX INFO: renamed from: n */
    public static String m2791n(Object obj, String str) {
        Method method;
        try {
            Class<?> cls = obj.getClass();
            Class<?> superclass = cls;
            while (true) {
                if (superclass == null) {
                    method = cls.getMethod(str, null);
                    break;
                }
                try {
                    method = superclass.getDeclaredMethod(str, null);
                    break;
                } catch (NoSuchMethodException unused) {
                    superclass = superclass.getSuperclass();
                }
            }
            method.setAccessible(true);
            Object objInvoke = method.invoke(obj, null);
            if (objInvoke instanceof String) {
                return (String) objInvoke;
            }
        } catch (Exception unused2) {
        }
        return null;
    }

    /* JADX INFO: renamed from: s */
    public static File m2792s(Object obj) {
        File file;
        Method method;
        if ((obj instanceof StorageVolume) && Build.VERSION.SDK_INT >= 30) {
            try {
                File directory = ((StorageVolume) obj).getDirectory();
                if (directory != null) {
                    return directory;
                }
            } catch (Exception unused) {
            }
        }
        String strM2421h = AbstractC1387m.m2421h(new byte[]{Base64.padSymbol, ByteCompanionObject.MAX_VALUE, 87, -55, -118, 105, -71, 67, 51, 118, 70}, new byte[]{90, 26, 35, -103, -21, 29, -47, 5});
        try {
            Class<?> cls = obj.getClass();
            Class<?> superclass = cls;
            while (true) {
                if (superclass == null) {
                    method = cls.getMethod(strM2421h, null);
                    break;
                }
                try {
                    method = superclass.getDeclaredMethod(strM2421h, null);
                    break;
                } catch (NoSuchMethodException unused2) {
                    superclass = superclass.getSuperclass();
                }
            }
            method.setAccessible(true);
            Object objInvoke = method.invoke(obj, null);
            file = objInvoke instanceof File ? (File) objInvoke : null;
        } catch (Exception unused3) {
        }
        if (file != null) {
            return file;
        }
        String strM2791n = m2791n(obj, AbstractC1387m.m2421h(new byte[]{-81, 123, -9, -114, -18, 33, 19}, new byte[]{-56, 30, -125, -34, -113, 85, 123, -33}));
        if (strM2791n == null || strM2791n.length() <= 0) {
            return null;
        }
        return new File(strM2791n);
    }

    /* JADX WARN: Code duplicated, block: B:74:0x0244  */
    /* JADX WARN: Code duplicated, block: B:76:0x0274  */
    /* JADX WARN: Code duplicated, block: B:78:0x027b  */
    /* JADX WARN: Code duplicated, block: B:79:0x027d A[Catch: Exception -> 0x027b, TryCatch #0 {Exception -> 0x027b, blocks: (B:77:0x0276, B:79:0x027d, B:81:0x02aa), top: B:151:0x0276 }] */
    /* JADX WARN: Code duplicated, block: B:81:0x02aa A[Catch: Exception -> 0x027b, TRY_LEAVE, TryCatch #0 {Exception -> 0x027b, blocks: (B:77:0x0276, B:79:0x027d, B:81:0x02aa), top: B:151:0x0276 }] */
    /* JADX WARN: Code duplicated, block: B:83:0x02ae  */
    /* JADX WARN: Code duplicated, block: B:84:0x02b3  */
    /* JADX INFO: renamed from: t */
    public static ArrayList m2793t(Context context) {
        String state;
        int iM2789l;
        int iM2789l2;
        File file;
        File file2;
        Object objM2784g;
        Object objInvoke;
        String description;
        String name;
        ArrayList arrayList = new ArrayList();
        HashSet hashSet = new HashSet();
        StorageManager storageManager = (StorageManager) context.getSystemService(AbstractC1387m.m2421h(new byte[]{47, -13, -98, -8, 22, -89, -5}, new byte[]{92, -121, -15, -118, 119, -64, -98, -83}));
        if (storageManager != null) {
            try {
                for (StorageVolume storageVolume : storageManager.getStorageVolumes()) {
                    if (storageVolume != null && storageVolume.isRemovable()) {
                        try {
                            state = storageVolume.getState();
                        } catch (Exception unused) {
                            state = null;
                        }
                        if (m2785h(state)) {
                            String uuid = storageVolume.getUuid();
                            try {
                                storageVolume.getDescription(context);
                            } catch (Exception unused2) {
                            }
                            File fileM2792s = m2792s(storageVolume);
                            if (uuid != null) {
                                m2781b(arrayList, hashSet, new File(AbstractC1387m.m2421h(new byte[]{56, -75, -108, 121, 119, -120, 68, -50}, new byte[]{23, -58, -32, 22, 5, -23, 35, -85}), uuid), state, AbstractC1387m.m2421h(new byte[]{124, -2, 81, 46, -62, 21, 112, -89, 78, -28, 95, 59, -58, 0, 47, -59, 92, -2, 81, 46, -62, 21, 112}, new byte[]{47, -118, 62, 92, -93, 114, 21, -22}));
                            }
                            m2781b(arrayList, hashSet, fileM2792s, state, AbstractC1387m.m2421h(new byte[]{52, 5, -66, Base64.padSymbol, -122, -9, -114, 113, 6, 31, -80, 40, -126, -30}, new byte[]{103, 113, -47, 79, -25, -112, -21, 60}));
                            if (uuid != null) {
                                m2781b(arrayList, hashSet, new File(AbstractC1387m.m2421h(new byte[]{8, -118, -80, 123, -68, 39, -61, -3, 78, -122, -127, 125, -28}, new byte[]{39, -25, -34, 15, -109, 74, -90, -103}), uuid), state, AbstractC1387m.m2421h(new byte[]{24, -37, 81, -118, -113, 126, -54, -83, 42, -63, 95, -97, -117, 107, -107, -49, 38, -63, 74, -41, -125, 124, -53, -119, 42, -16, 76, -113}, new byte[]{75, -81, 62, -8, -18, 25, -81, -32}));
                            }
                        }
                    }
                }
            } catch (Exception e) {
                Log.w(f4313k, AbstractC1387m.m2421h(new byte[]{-87, -81, -42, 116, -70, -84, 109, -61, -87, -81, -12, 72, -94, -74, 114, -57, -67, -22, -60, 70, -89, -81, 122, -58}, new byte[]{-50, -54, -94, 39, -50, -61, 31, -94}), e);
            }
        }
        StorageManager storageManager2 = (StorageManager) context.getSystemService(AbstractC1387m.m2421h(new byte[]{77, -96, -85, 54, -67, 96, -50}, new byte[]{62, -44, -60, 68, -36, 7, -85, -13}));
        int i10 = 5;
        if (storageManager2 != null && (objM2784g = m2784g(storageManager2, AbstractC1387m.m2421h(new byte[]{83, 46, -50, 7, 38, 4, 24, 39, 81, 7, -45, 34, Base64.padSymbol}, new byte[]{52, 75, -70, 81, 73, 104, 109, 74}))) != null && objM2784g.getClass().isArray()) {
            int length = Array.getLength(objM2784g);
            int i11 = 0;
            while (i11 < length) {
                Object obj = Array.get(objM2784g, i11);
                if (obj != null) {
                    String strM2791n = m2791n(obj, AbstractC1387m.m2421h(new byte[]{86, -18, -62, -75, 81, -70, 104, -114}, new byte[]{49, -117, -74, -26, 37, -37, 28, -21}));
                    if (m2785h(strM2791n)) {
                        Object objM2784g2 = m2784g(obj, AbstractC1387m.m2421h(new byte[]{-90, -50, -34, 80, -17, -24, 39, 100, -83, -47, -23}, new byte[]{-49, -67, -116, 53, -126, -121, 81, 5}));
                        boolean zBooleanValue = objM2784g2 instanceof Boolean ? ((Boolean) objM2784g2).booleanValue() : true;
                        File fileM2792s2 = m2792s(obj);
                        if (zBooleanValue) {
                            byte[] bArr = new byte[i10];
                            // fill-array-data instruction
                            bArr[0] = 119;
                            bArr[1] = 66;
                            bArr[2] = 45;
                            bArr[3] = -11;
                            bArr[4] = -11;
                            String strM2783d = m2783d(m2791n(obj, AbstractC1387m.m2421h(new byte[]{41, 29, 103, -98, 21, -15, -39}, new byte[]{78, 120, 19, -53, 96, -104, -67, 13})), m2791n(obj, AbstractC1387m.m2421h(bArr, new byte[]{16, 39, 89, -68, -111, 37, 83, -2})));
                            if (obj instanceof StorageVolume) {
                                try {
                                    description = ((StorageVolume) obj).getDescription(context);
                                } catch (Exception unused3) {
                                    description = null;
                                }
                            } else {
                                Method method = obj.getClass().getMethod(AbstractC1387m.m2421h(new byte[]{-116, -109, 5, -8, -85, -90, -14, 86, -126, -122, 5, -43, -95, -69}, new byte[]{-21, -10, 113, -68, -50, -43, -111, 36}), Context.class);
                                method.setAccessible(true);
                                objInvoke = method.invoke(obj, context);
                                if (objInvoke instanceof String) {
                                    description = (String) objInvoke;
                                } else {
                                    description = null;
                                }
                            }
                            if (fileM2792s2 != null) {
                                name = fileM2792s2.getName();
                            } else {
                                name = null;
                            }
                            m2783d(description, strM2783d, name);
                            m2782c(arrayList, hashSet, fileM2792s2, strM2783d, strM2791n, AbstractC1387m.m2421h(new byte[]{-84, 11, -122, 1, 63, -70, -50, 6, -98, 17, -120, 20, 59, -81, -111, 44, -102, 11, -65, 28, 50, -88, -58, 46, -77, 22, -102, 7}, new byte[]{-1, ByteCompanionObject.MAX_VALUE, -23, 115, 94, -35, -85, 75}));
                        } else if (fileM2792s2 != null) {
                            String absolutePath = fileM2792s2.getAbsolutePath();
                            if (absolutePath.startsWith(AbstractC1387m.m2421h(new byte[]{-36, -99, 72, 85, 67, -75, -30, -52, -36}, new byte[]{-13, -18, 60, 58, 49, -44, -123, -87})) || absolutePath.startsWith(AbstractC1387m.m2421h(new byte[]{121, -46, -73, -98, 126, 96, -6, -24, 63, -34, -122, -104, 38, 34}, new byte[]{86, -65, -39, -22, 81, 13, -97, -116})) || absolutePath.startsWith(AbstractC1387m.m2421h(new byte[]{78, -99, 81, -80, 103, 43, 5, 85, 21, -103, 82, -95, 103}, new byte[]{97, -16, 63, -60, 72, 89, 112, 59})) || absolutePath.startsWith(AbstractC1387m.m2421h(new byte[]{60, -109, -32, -83, -91, 119, -13, -117}, new byte[]{19, -2, -114, -39, -118, 2, ByteCompanionObject.MIN_VALUE, -23})) || absolutePath.startsWith(AbstractC1387m.m2421h(new byte[]{5, 113, -115, -95, -96, -109, -109, 73, 5, 119, -118, -84}, new byte[]{42, 2, -7, -50, -46, -14, -12, 44})) || absolutePath.startsWith(AbstractC1387m.m2421h(new byte[]{19, 40, -19, -114, -34, -115, -20, 38, 79, 46}, new byte[]{60, 69, -125, -6, -15, -8, -120, 79})) || absolutePath.startsWith(AbstractC1387m.m2421h(new byte[]{-89, -71, -59, -83, -108, -53, -41, -19, -89, -65, -43, -85, -107, -63}, new byte[]{-120, -54, -79, -62, -26, -86, -80, -120})) || absolutePath.startsWith(AbstractC1387m.m2421h(new byte[]{121, 63, -95, -2, 112, 40, 5, 110, 121, 41, -83, -27}, new byte[]{86, 76, -43, -111, 2, 73, 98, 11})) || absolutePath.startsWith(AbstractC1387m.m2421h(new byte[]{46, -33, -21, -36, 108, -95, -78, -95}, new byte[]{1, -78, -123, -88, 67, -60, -54, -43})) || absolutePath.startsWith(AbstractC1387m.m2421h(new byte[]{-96, 5, 91, -31, 111, 17, -5, -41, -96, 5, 75, -19, 124, 2, -8}, new byte[]{-113, 118, 47, -114, 29, 112, -100, -78}))) {
                                byte[] bArr2 = new byte[i10];
                                // fill-array-data instruction
                                bArr2[0] = 119;
                                bArr2[1] = 66;
                                bArr2[2] = 45;
                                bArr2[3] = -11;
                                bArr2[4] = -11;
                                String strM2783d2 = m2783d(m2791n(obj, AbstractC1387m.m2421h(new byte[]{41, 29, 103, -98, 21, -15, -39}, new byte[]{78, 120, 19, -53, 96, -104, -67, 13})), m2791n(obj, AbstractC1387m.m2421h(bArr2, new byte[]{16, 39, 89, -68, -111, 37, 83, -2})));
                                if (obj instanceof StorageVolume) {
                                    description = ((StorageVolume) obj).getDescription(context);
                                } else {
                                    Method method2 = obj.getClass().getMethod(AbstractC1387m.m2421h(new byte[]{-116, -109, 5, -8, -85, -90, -14, 86, -126, -122, 5, -43, -95, -69}, new byte[]{-21, -10, 113, -68, -50, -43, -111, 36}), Context.class);
                                    method2.setAccessible(true);
                                    objInvoke = method2.invoke(obj, context);
                                    if (objInvoke instanceof String) {
                                        description = (String) objInvoke;
                                    } else {
                                        description = null;
                                    }
                                }
                                if (fileM2792s2 != null) {
                                    name = fileM2792s2.getName();
                                } else {
                                    name = null;
                                }
                                m2783d(description, strM2783d2, name);
                                m2782c(arrayList, hashSet, fileM2792s2, strM2783d2, strM2791n, AbstractC1387m.m2421h(new byte[]{-84, 11, -122, 1, 63, -70, -50, 6, -98, 17, -120, 20, 59, -81, -111, 44, -102, 11, -65, 28, 50, -88, -58, 46, -77, 22, -102, 7}, new byte[]{-1, ByteCompanionObject.MAX_VALUE, -23, 115, 94, -35, -85, 75}));
                            }
                        }
                    }
                }
                i11++;
                i10 = 5;
            }
        }
        StorageManager storageManager3 = (StorageManager) context.getSystemService(AbstractC1387m.m2421h(new byte[]{6, -1, -13, 91, 4, -26, -70}, new byte[]{117, -117, -100, 41, 101, -127, -33, -97}));
        if (storageManager3 != null) {
            Object objM2784g3 = m2784g(storageManager3, AbstractC1387m.m2421h(new byte[]{83, 30, -41, -93, 55, -69, 60, -90, 81, 8}, new byte[]{52, 123, -93, -11, 88, -41, 73, -53}));
            if (objM2784g3 instanceof List) {
                for (Object obj2 : (List) objM2784g3) {
                    if (obj2 != null && ((iM2789l = m2789l(obj2, AbstractC1387m.m2421h(new byte[]{49, 66, -15, -15, 82, 7, 84}, new byte[]{86, 39, -123, -91, 43, 119, 49, 83}), AbstractC1387m.m2421h(new byte[]{-29, 88, -33, -73}, new byte[]{-105, 33, -81, -46, -76, -94, -40, -80}))) == -1 || iM2789l == 0)) {
                        Object objM2784g4 = m2784g(obj2, AbstractC1387m.m2421h(new byte[]{-114, 97, 53, -28, 2, -3, 113, 40, -125, 64, 29, -22, 19, -14, 103, 33, -126}, new byte[]{-25, 18, 120, -117, 119, -109, 5, 77}));
                        if (((objM2784g4 instanceof Boolean) && ((Boolean) objM2784g4).booleanValue()) || (iM2789l2 = m2789l(obj2, AbstractC1387m.m2421h(new byte[]{-37, -4, -81, 3, 17, -22, 88, 39}, new byte[]{-68, -103, -37, 80, 101, -117, 44, 66}), AbstractC1387m.m2421h(new byte[]{-87, -25, 70, 45, -43}, new byte[]{-38, -109, 39, 89, -80, -34, 97, 2}))) == 2 || iM2789l2 == 3) {
                            File[] fileArr = {m2790m(obj2, AbstractC1387m.m2421h(new byte[]{-75, -40, -40, -44, 75, -49, -87}, new byte[]{-46, -67, -84, -124, 42, -69, -63, 87}), AbstractC1387m.m2421h(new byte[]{-72, -110, 3, 53}, new byte[]{-56, -13, 119, 93, -61, -124, 90, 53})), m2790m(obj2, null, AbstractC1387m.m2421h(new byte[]{-5, -11, -90, -37}, new byte[]{-117, -108, -46, -77, -9, Base64.padSymbol, -55, 34}))};
                            int i12 = 0;
                            while (true) {
                                if (i12 >= 2) {
                                    file = null;
                                    break;
                                }
                                file = fileArr[i12];
                                if (file != null) {
                                    break;
                                }
                                i12++;
                            }
                            File[] fileArr2 = {m2790m(obj2, AbstractC1387m.m2421h(new byte[]{-68, 90, -113, 84, 120, -110, -77, 121, -75, 94, -105, 77, 119, -110, -66}, new byte[]{-37, 63, -5, 29, 22, -26, -42, 11}), AbstractC1387m.m2421h(new byte[]{1, -8, 80, -53, 67, -104, -12, 91, 56, -9, 80, -58}, new byte[]{104, -106, 36, -82, 49, -10, -107, 55})), m2790m(obj2, null, AbstractC1387m.m2421h(new byte[]{57, 85, -117, 62, -76, -78, 83, -64, 0, 90, -117, 51}, new byte[]{80, 59, -1, 91, -58, -36, 50, -84}))};
                            int i13 = 0;
                            while (true) {
                                if (i13 >= 2) {
                                    file2 = null;
                                    break;
                                }
                                file2 = fileArr2[i13];
                                if (file2 != null) {
                                    break;
                                }
                                i13++;
                            }
                            String strM2791n2 = m2791n(obj2, AbstractC1387m.m2421h(new byte[]{-112, -45, -97, -111, 55, -75, -18, 60, -109}, new byte[]{-9, -74, -21, -41, 68, -32, -101, 85}));
                            Object objM2788k = m2788k(obj2, AbstractC1387m.m2421h(new byte[]{-74, 110, -11, -115, 44, -88}, new byte[]{-48, 29, -96, -8, 69, -52, 113, 76}));
                            String str = objM2788k instanceof String ? (String) objM2788k : null;
                            String strM2791n3 = m2791n(obj2, AbstractC1387m.m2421h(new byte[]{73, 62, 58, -95, -12}, new byte[]{46, 91, 78, -24, -112, 44, -99, -123}));
                            Object objM2788k2 = m2788k(obj2, AbstractC1387m.m2421h(new byte[]{78, -126}, new byte[]{39, -26, 35, -63, -1, 32, -125, -4}));
                            String strM2783d3 = m2783d(strM2791n2, str, strM2791n3, objM2788k2 instanceof String ? (String) objM2788k2 : null);
                            String strM2791n4 = m2791n(obj2, AbstractC1387m.m2421h(new byte[]{-47, -120, 7, -78, -46, 64, 46, -84, -45, -127}, new byte[]{-74, -19, 115, -12, -95, 12, 79, -50}));
                            Object objM2788k3 = m2788k(obj2, AbstractC1387m.m2421h(new byte[]{-112, -79, -122, 70, 118, -6, -24}, new byte[]{-10, -62, -54, 39, 20, -97, -124, 100}));
                            m2783d(strM2791n4, objM2788k3 instanceof String ? (String) objM2788k3 : null, strM2783d3, file != null ? file.getName() : null);
                            String strM2421h = m2789l(obj2, AbstractC1387m.m2421h(new byte[]{ByteCompanionObject.MAX_VALUE, 0, -50, -29, -4, 28, 121, 59}, new byte[]{24, 101, -70, -80, -120, 125, 13, 94}), AbstractC1387m.m2421h(new byte[]{-68, -27, 84, 76, -93}, new byte[]{-49, -111, 53, 56, -58, -31, 74, -75})) == 3 ? AbstractC1387m.m2421h(new byte[]{-84, 18, -120, 2, -121, -37, 98, 104, -77, 18}, new byte[]{-63, 125, -3, 108, -13, -66, 6, 55}) : AbstractC1387m.m2421h(new byte[]{-67, -116, -123, -5, 97, -34, -120}, new byte[]{-48, -29, -16, -107, 21, -69, -20, -71});
                            ArrayList arrayList2 = arrayList;
                            HashSet hashSet2 = hashSet;
                            m2782c(arrayList2, hashSet2, file, strM2783d3, strM2421h, AbstractC1387m.m2421h(new byte[]{105, -92, 49, 102, Base64.padSymbol, -90, -23, -50, 91, -66, 63, 115, 57, -77, -74, -28, 95, -92, 8, 123, 48, -76, -31, -26, 73, -22, 46, 117, 40, -87}, new byte[]{58, -48, 94, 20, 92, -63, -116, -125}));
                            m2782c(arrayList2, hashSet2, file2, strM2783d3, strM2421h, AbstractC1387m.m2421h(new byte[]{-22, 14, 68, 2, -68, 110, 22, 19, -40, 20, 74, 23, -72, 123, 73, 57, -36, 14, 125, 31, -79, 124, 30, 59, -54, 64, 66, 30, -87, 108, 1, 48, -40, 22, 123, 17, -87, 97}, new byte[]{-71, 122, 43, 112, -35, 9, 115, 94}));
                            hashSet = hashSet2;
                            arrayList = arrayList2;
                        }
                    }
                }
            }
        }
        ArrayList arrayList3 = arrayList;
        m2780a(arrayList3, hashSet);
        Collections.sort(arrayList3, new C0279a(6));
        return arrayList3;
    }

    /* JADX INFO: renamed from: u */
    public static ArrayList m2794u(Context context) {
        UsbManager usbManager;
        boolean zHasPermission;
        String manufacturerName;
        String str = f4313k;
        ArrayList arrayList = new ArrayList();
        if (context != null && (usbManager = (UsbManager) context.getSystemService(AbstractC1387m.m2421h(new byte[]{-87, -115, -15}, new byte[]{-36, -2, -109, -19, -51, 5, 108, -26}))) != null) {
            try {
                HashMap<String, UsbDevice> deviceList = usbManager.getDeviceList();
                if (deviceList != null && !deviceList.isEmpty()) {
                    for (UsbDevice usbDevice : deviceList.values()) {
                        if (usbDevice != null) {
                            try {
                                int interfaceCount = usbDevice.getInterfaceCount();
                                for (int i10 = 0; i10 < interfaceCount; i10++) {
                                    try {
                                        UsbInterface usbInterface = usbDevice.getInterface(i10);
                                        if (usbInterface != null && usbInterface.getInterfaceClass() == 8 && usbInterface.getInterfaceSubclass() == 6 && usbInterface.getInterfaceProtocol() == 80) {
                                            try {
                                                zHasPermission = usbManager.hasPermission(usbDevice);
                                            } catch (Exception unused) {
                                                zHasPermission = false;
                                            }
                                            int deviceId = usbDevice.getDeviceId();
                                            String deviceName = usbDevice.getDeviceName();
                                            try {
                                                manufacturerName = usbDevice.getProductName();
                                                if (manufacturerName == null || manufacturerName.trim().length() <= 0) {
                                                    try {
                                                        manufacturerName = usbDevice.getManufacturerName();
                                                        if (manufacturerName == null || manufacturerName.trim().length() <= 0) {
                                                            manufacturerName = AbstractC1387m.m2421h(new byte[]{-15, -54, 106}, new byte[]{-92, -103, 40, -18, -81, -34, 107, -98}) + usbDevice.getDeviceId();
                                                        }
                                                    } catch (Exception unused2) {
                                                    }
                                                }
                                            } catch (Exception unused3) {
                                            }
                                            String str2 = manufacturerName;
                                            StringBuilder sb = new StringBuilder();
                                            sb.append(AbstractC1387m.m2421h(new byte[]{35, -91, 28, -1, 53, 101}, new byte[]{86, -42, 126, -59, 26, 74, 24, -111}));
                                            sb.append(usbDevice.getDeviceId());
                                            String strM2075i = AbstractC1178q.m2075i(new byte[]{-48}, new byte[]{-1, -24, 31, 122, -56, 25, -126, -10}, sb);
                                            String strM2078l = strM2075i;
                                            boolean z9 = zHasPermission;
                                            arrayList.add(new C1682j(deviceId, deviceName, str2, strM2075i, zHasPermission));
                                            StringBuilder sb2 = new StringBuilder();
                                            sb2.append(AbstractC1387m.m2421h(new byte[]{-64, 91, 50, 53, -103, 117, -81, 102, -107, 91, 36, 122, -122, 117, -69, 112, -113, 8}, new byte[]{-75, 40, 80, 21, -12, 20, -36, 21}));
                                            if (str2.trim().length() > 0) {
                                                strM2078l = AbstractC1178q.m2078l(new byte[]{124, 120, -98}, new byte[]{92, 85, -66, -93, -74, -40, -70, -82}, AbstractC0074a.m170u(str2), strM2078l);
                                            }
                                            sb2.append(strM2078l);
                                            sb2.append(AbstractC1387m.m2421h(new byte[]{-93, 59, 86, -69, 112, -95, -105, -94, -22, 36, 93, -12}, new byte[]{-125, 75, 51, -55, 29, -56, -28, -47}));
                                            sb2.append(z9);
                                            Log.d(str, sb2.toString());
                                            break;
                                        }
                                    } catch (Exception unused4) {
                                    }
                                }
                            } catch (Exception unused5) {
                            }
                        }
                    }
                }
            } catch (Exception e) {
                Log.w(str, AbstractC1387m.m2421h(new byte[]{85, 6, -35, 95, 36, -1, -53, -5, 87, 47, -64, 104, 53, -87, -60, -7, 91, 15, -52, ByteCompanionObject.MAX_VALUE}, new byte[]{50, 99, -87, 27, 65, -119, -94, -104}), e);
                return arrayList;
            }
        }
        return arrayList;
    }

    /* JADX INFO: renamed from: e */
    public final ArrayList m2795e() {
        ArrayList arrayList = new ArrayList();
        HashSet hashSet = new HashSet();
        synchronized (this.f4318a) {
            try {
                ArrayList arrayList2 = this.f4320c;
                int size = arrayList2.size();
                int i10 = 0;
                while (i10 < size) {
                    Object obj = arrayList2.get(i10);
                    i10++;
                    File file = ((C1681i) obj).f4307a;
                    if (file != null && hashSet.add(file.getAbsolutePath())) {
                        arrayList.add(file);
                    }
                }
                Context context = this.f4324g;
                if (context != null) {
                    for (File file2 : m2787j(context)) {
                        if (file2 != null && hashSet.add(file2.getAbsolutePath())) {
                            arrayList.add(file2);
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return arrayList;
    }

    /* JADX INFO: renamed from: f */
    public final void m2796f(Context context, Intent intent) {
        File file;
        File file2;
        String path;
        if (context != null) {
            Context applicationContext = context.getApplicationContext();
            String action = intent.getAction();
            Uri data = intent.getData();
            File file3 = null;
            if (data != null && AbstractC1387m.m2421h(new byte[]{8, -110, -126, 120}, new byte[]{110, -5, -18, 29, -28, -97, 95, 107}).equals(data.getScheme()) && (path = data.getPath()) != null && path.length() != 0) {
                file3 = new File(path);
            }
            if (m2786i(action) || AbstractC1387m.m2421h(new byte[]{108, 10, -99, 94, 100, -4, 51, -103, 100, 10, -115, 73, 101, -31, 121, -42, 110, 16, -112, 67, 101, -69, 21, -8, 66, 48, -90, 111, 68, -40, 7, -5, 72, 48, -68, 104}, new byte[]{13, 100, -7, 44, 11, -107, 87, -73}).equals(action)) {
                m2800r(applicationContext, m2794u(applicationContext));
            }
            ArrayList arrayListM2793t = m2793t(applicationContext);
            HashSet hashSet = new HashSet();
            int size = arrayListM2793t.size();
            int i10 = 0;
            while (i10 < size) {
                Object obj = arrayListM2793t.get(i10);
                i10++;
                C1681i c1681i = (C1681i) obj;
                if (c1681i != null && (file2 = c1681i.f4307a) != null) {
                    hashSet.add(file2.getAbsolutePath());
                }
            }
            if (AbstractC1387m.m2421h(new byte[]{-52, 94, -52, 27, 73, -111, -39, -61, -60, 94, -36, 12, 72, -116, -109, -116, -50, 68, -63, 6, 72, -42, -16, -88, -23, 121, -23, 54, 107, -73, -24, -93, -7, 117, -20}, new byte[]{-83, 48, -88, 105, 38, -8, -67, -19}).equals(action) && file3 != null) {
                file3.getName();
                m2781b(arrayListM2793t, hashSet, file3, AbstractC1387m.m2421h(new byte[]{-4, -110, -92, 75, 81, 103, -87}, new byte[]{-111, -3, -47, 37, 37, 2, -51, -31}), AbstractC1178q.m2078l(new byte[]{-30, 104, -86, 70, -89, 74, 20, -80, -12, 32}, new byte[]{ByteCompanionObject.MIN_VALUE, 26, -59, 39, -61, 41, 117, -61}, new StringBuilder(), action));
            } else if ((AbstractC1387m.m2421h(new byte[]{-8, -12, 53, -44, 5, -120, 31, 19, -16, -12, 37, -61, 4, -107, 85, 92, -6, -18, 56, -55, 4, -49, 54, 120, -35, -45, 16, -7, 63, -81, 54, 114, -52, -44, 5, -29, 46}, new byte[]{-103, -102, 81, -90, 106, -31, 123, Base64.padSymbol}).equals(action) || AbstractC1387m.m2421h(new byte[]{-76, -10, 49, 110, -60, 88, -125, 94, -68, -10, 33, 121, -59, 69, -55, 17, -74, -20, 60, 115, -59, 31, -86, 53, -111, -47, 20, 67, -18, 123, -94, 51, -127}, new byte[]{-43, -104, 85, 28, -85, 49, -25, 112}).equals(action) || AbstractC1387m.m2421h(new byte[]{-122, -60, -56, -61, -113, 91, -107, -65, -114, -60, -40, -44, -114, 70, -33, -16, -124, -34, -59, -34, -114, 28, -68, -44, -93, -29, -19, -18, -78, 119, -68, -34, -79, -17, -24}, new byte[]{-25, -86, -84, -79, -32, 50, -15, -111}).equals(action) || AbstractC1387m.m2421h(new byte[]{80, 104, 71, -88, -38, -20, -62, -32, 88, 104, 87, -65, -37, -15, -120, -81, 82, 114, 74, -75, -37, -85, -21, -117, 117, 79, 98, -123, -9, -60, -30, -111, 99, 67, 110, -107, -29, -60, -22}, new byte[]{49, 6, 35, -38, -75, -123, -90, -50}).equals(action)) && file3 != null) {
                String absolutePath = file3.getAbsolutePath();
                String name = file3.getName();
                for (int size2 = arrayListM2793t.size() - 1; size2 >= 0; size2--) {
                    C1681i c1681i2 = (C1681i) arrayListM2793t.get(size2);
                    if (c1681i2 != null && (file = c1681i2.f4307a) != null && (file.getAbsolutePath().equals(absolutePath) || (name != null && name.length() > 0 && name.equals(file.getName())))) {
                        arrayListM2793t.remove(size2);
                    }
                }
            }
            Collections.sort(arrayListM2793t, new C0279a(5));
            m2799q(applicationContext, arrayListM2793t);
            if (m2786i(action) || AbstractC1387m.m2421h(new byte[]{-98, -78, 32, -18, -107, 84, -59, -34, -106, -78, 48, -7, -108, 73, -113, -111, -100, -88, 45, -13, -108, 19, -29, -65, -80, -120, 27, -33, -75, 112, -15, -68, -70, -120, 1, -40}, new byte[]{-1, -36, 68, -100, -6, Base64.padSymbol, -95, -16}).equals(action) || AbstractC1387m.m2421h(new byte[]{-101, -116, -116, -85, 115, -121, -62, 18, -109, -116, -100, -68, 114, -102, -120, 93, -103, -106, -127, -74, 114, -64, -21, 121, -66, -85, -87, -122, 95, -90, -29, ByteCompanionObject.MAX_VALUE, -79, -85, -90, -98}, new byte[]{-6, -30, -24, -39, 28, -18, -90, 60}).equals(action) || AbstractC1387m.m2421h(new byte[]{114, -75, -54, -61, -73, -23, -19, 5, 122, -75, -38, -44, -74, -12, -89, 74, 112, -81, -57, -34, -74, -82, -60, 110, 87, -110, -17, -18, -107, -49, -36, 101, 71, -98, -22}, new byte[]{19, -37, -82, -79, -40, ByteCompanionObject.MIN_VALUE, -119, 43}).equals(action)) {
                Context applicationContext2 = applicationContext.getApplicationContext();
                for (long j10 : f4316n) {
                    this.f4319b.postDelayed(new RunnableC0873n(this, action, applicationContext2, 6), j10);
                }
            }
        }
    }

    /* JADX INFO: renamed from: o */
    public final void m2797o(Context context) {
        if (context == null) {
            return;
        }
        Context applicationContext = context.getApplicationContext();
        m2800r(applicationContext, m2794u(applicationContext));
        m2799q(applicationContext, m2793t(applicationContext));
    }

    /* JADX INFO: renamed from: p */
    public final void m2798p(Context context) {
        if (!this.f4325h) {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction(AbstractC1387m.m2421h(new byte[]{20, -27, -90, -1, -34, -40, 21, 91, 28, -27, -74, -24, -33, -59, 95, 20, 22, -1, -85, -30, -33, -97, 60, 48, 49, -62, -125, -46, -14, -7, 52, 54, 62, -62, -116, -54}, new byte[]{117, -117, -62, -115, -79, -79, 113, 117}));
            intentFilter.addAction(AbstractC1387m.m2421h(new byte[]{-78, 19, 124, 49, 24, 118, 60, -16, -70, 19, 108, 38, 25, 107, 118, -65, -80, 9, 113, 44, 25, 49, 21, -101, -105, 52, 89, 28, 58, 80, 13, -112, -121, 56, 92}, new byte[]{-45, 125, 24, 67, 119, 31, 88, -34}));
            intentFilter.addAction(AbstractC1387m.m2421h(new byte[]{102, -57, 15, 41, -62, 44, -64, 46, 110, -57, 31, 62, -61, 49, -118, 97, 100, -35, 2, 52, -61, 107, -23, 69, 67, -32, 42, 4, -8, 11, -23, 79, 82, -25, 63, 30, -23}, new byte[]{7, -87, 107, 91, -83, 69, -92, 0}));
            intentFilter.addAction(AbstractC1387m.m2421h(new byte[]{-48, -9, -108, 72, -28, 122, 51, -106, -40, -9, -124, 95, -27, 103, 121, -39, -46, -19, -103, 85, -27, Base64.padSymbol, 26, -3, -11, -48, -79, 101, -50, 89, 18, -5, -27}, new byte[]{-79, -103, -16, 58, -117, 19, 87, -72}));
            intentFilter.addAction(AbstractC1387m.m2421h(new byte[]{-32, -20, -87, -112, 84, 20, 58, -12, -24, -20, -71, -121, 85, 9, 112, -69, -30, -10, -92, -115, 85, 83, 19, -97, -59, -53, -116, -67, 105, 56, 19, -107, -41, -57, -119}, new byte[]{-127, -126, -51, -30, 59, 125, 94, -38}));
            intentFilter.addAction(AbstractC1387m.m2421h(new byte[]{-55, 74, -72, -13, 71, 99, -114, 123, -63, 74, -88, -28, 70, 126, -60, 52, -53, 80, -75, -18, 70, 36, -89, 16, -20, 109, -99, -34, 106, 75, -82, 10, -6, 97, -111, -50, 126, 75, -90}, new byte[]{-88, 36, -36, -127, 40, 10, -22, 85}));
            intentFilter.addDataScheme(AbstractC1387m.m2421h(new byte[]{-78, 76, 18, -72}, new byte[]{-44, 37, 126, -35, -122, 22, -94, -34}));
            int i10 = Build.VERSION.SDK_INT;
            C1680h c1680h = this.f4322e;
            if (i10 >= 33) {
                context.registerReceiver(c1680h, intentFilter, 2);
            } else {
                context.registerReceiver(c1680h, intentFilter);
            }
            this.f4325h = true;
        }
        if (this.f4326i) {
            return;
        }
        IntentFilter intentFilter2 = new IntentFilter();
        intentFilter2.addAction(AbstractC1387m.m2421h(new byte[]{110, 26, 39, 17, 122, -70, 38, 28, 103, 21, 49, 7, 98, -78, 48, 87, 33, 1, 48, 1, 59, -78, 33, 70, 102, 27, 45, 77, 64, ByteCompanionObject.MIN_VALUE, 0, 109, 75, 49, 21, 42, 86, -106, 29, 115, 91, 32, 2, 32, 93, -106, 6}, new byte[]{15, 116, 67, 99, 21, -45, 66, 50}));
        intentFilter2.addAction(AbstractC1387m.m2421h(new byte[]{-77, 50, -27, 82, 125, 106, -29, -59, -70, Base64.padSymbol, -13, 68, 101, 98, -11, -114, -4, 41, -14, 66, 60, 98, -28, -97, -69, 51, -17, 14, 71, 80, -59, -76, -106, 25, -41, 105, 81, 70, -40, -81, -105, 8, -64, 99, 90, 70, -61}, new byte[]{-46, 92, -127, 32, 18, 3, -121, -21}));
        intentFilter2.addAction(AbstractC1387m.m2421h(new byte[]{7, -1, 71, 77, 64, 5, -68, -74, 14, -16, 81, 91, 88, 13, -86, -3, 72, -28, 80, 93, 1, 13, -69, -20, 15, -2, 77, 17, 122, 63, -102, -57, 39, -46, 96, 122, 124, 63, -105, -54, 63, -50, 98, 107, 123, 45, -101, -48, 35, -43}, new byte[]{102, -111, 35, 63, 47, 108, -40, -104}));
        intentFilter2.addAction(AbstractC1387m.m2421h(new byte[]{52, 48, 9, -99, -98, 86, -9, 84, Base64.padSymbol, 63, 31, -117, -122, 94, -31, 31, 123, 43, 30, -115, -33, 94, -16, 14, 60, 49, 3, -63, -92, 108, -47, 37, 20, 29, 46, -86, -94, 108, -36, 40, 12, 1, 41, -86, -91, 126, -48, 50, 16, 26}, new byte[]{85, 94, 109, -17, -15, 63, -109, 122}));
        int i11 = Build.VERSION.SDK_INT;
        C1680h c1680h2 = this.f4323f;
        if (i11 >= 33) {
            context.registerReceiver(c1680h2, intentFilter2, 2);
        } else {
            context.registerReceiver(c1680h2, intentFilter2);
        }
        this.f4326i = true;
    }

    /* JADX INFO: renamed from: q */
    public final void m2799q(Context context, ArrayList arrayList) {
        File file;
        synchronized (this.f4318a) {
            this.f4324g = context;
            this.f4320c.clear();
            this.f4320c.addAll(arrayList);
        }
        StringBuilder sb = new StringBuilder();
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            C1681i c1681i = (C1681i) obj;
            if (c1681i != null && (file = c1681i.f4307a) != null) {
                if (sb.length() > 0) {
                    sb.append('\n');
                }
                sb.append(file.getAbsolutePath());
            }
        }
        C1652b.m2745o().saveString(f4314l, sb.toString());
    }

    /* JADX INFO: renamed from: r */
    public final void m2800r(Context context, ArrayList arrayList) {
        synchronized (this.f4318a) {
            this.f4324g = context;
            this.f4321d.clear();
            this.f4321d.addAll(arrayList);
        }
        if (context != null) {
            StringBuilder sb = new StringBuilder();
            int size = arrayList.size();
            int i10 = 0;
            while (i10 < size) {
                Object obj = arrayList.get(i10);
                i10++;
                C1682j c1682j = (C1682j) obj;
                if (c1682j != null) {
                    if (sb.length() > 0) {
                        sb.append('\n');
                    }
                    sb.append(c1682j.f4308a);
                    sb.append('|');
                    String str = c1682j.f4309b;
                    if (str == null) {
                        str = "";
                    }
                    sb.append(str);
                    sb.append('|');
                    sb.append(c1682j.f4310c);
                    sb.append('|');
                    sb.append(c1682j.f4311d);
                    sb.append('|');
                    sb.append(c1682j.f4312e);
                }
            }
            C1652b.m2745o().saveString(f4315m, sb.toString());
        }
    }

    /* JADX INFO: renamed from: v */
    public final void m2801v(Context context) {
        if (context == null) {
            return;
        }
        Context applicationContext = context.getApplicationContext();
        synchronized (this.f4318a) {
            try {
                this.f4324g = applicationContext;
                this.f4327j++;
                if (!this.f4325h || !this.f4326i) {
                    m2798p(applicationContext);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        m2797o(applicationContext);
    }

    /* JADX INFO: renamed from: w */
    public final void m2802w() {
        Context context;
        synchronized (this.f4318a) {
            try {
                int i10 = this.f4327j;
                if (i10 > 0) {
                    this.f4327j = i10 - 1;
                }
                if (this.f4327j == 0 && (context = this.f4324g) != null) {
                    if (this.f4325h) {
                        try {
                            context.unregisterReceiver(this.f4322e);
                        } catch (IllegalArgumentException unused) {
                        }
                        this.f4325h = false;
                    }
                    if (this.f4326i) {
                        try {
                            this.f4324g.unregisterReceiver(this.f4323f);
                        } catch (IllegalArgumentException unused2) {
                        }
                        this.f4326i = false;
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
