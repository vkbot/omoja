package p218v2;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.ProviderInfo;
import android.database.Cursor;
import android.net.Uri;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import android.os.SystemClock;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import p034c9.C1023i;
import p120l.C2191h;
import p165p2.C2958a;
import p165p2.C2962e;
import p208u2.BinderC3284b;
import p208u2.InterfaceC3283a;
import p232w7.C3537c;

/* JADX INFO: renamed from: v2.c */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3329c {

    /* JADX INFO: renamed from: c */
    public static Boolean f9738c = null;

    /* JADX INFO: renamed from: d */
    public static String f9739d = null;

    /* JADX INFO: renamed from: e */
    public static boolean f9740e = false;

    /* JADX INFO: renamed from: f */
    public static int f9741f = -1;

    /* JADX INFO: renamed from: g */
    public static Boolean f9742g;

    /* JADX INFO: renamed from: k */
    public static C3333g f9746k;

    /* JADX INFO: renamed from: l */
    public static C3334h f9747l;

    /* JADX INFO: renamed from: a */
    public final Context f9748a;

    /* JADX INFO: renamed from: h */
    public static final ThreadLocal f9743h = new ThreadLocal();

    /* JADX INFO: renamed from: i */
    public static final C3331e f9744i = new C3331e();

    /* JADX INFO: renamed from: j */
    public static final C2962e f9745j = new C2962e(18);

    /* JADX INFO: renamed from: b */
    public static final C3537c f9737b = new C3537c(18);

    public C3329c(Context context) {
        this.f9748a = context;
    }

    /* JADX WARN: Code duplicated, block: B:116:0x0240  */
    /* JADX WARN: Code duplicated, block: B:117:0x0246  */
    /* JADX WARN: Code duplicated, block: B:120:0x024f  */
    /* JADX WARN: Code duplicated, block: B:125:0x0260 A[Catch: all -> 0x0073, TryCatch #3 {all -> 0x0073, blocks: (B:7:0x004b, B:11:0x006d, B:18:0x0079, B:21:0x007f, B:24:0x0095, B:102:0x01ec, B:103:0x01f3, B:106:0x01f6, B:107:0x01f7, B:108:0x01fe, B:125:0x0260, B:126:0x0271, B:109:0x01ff, B:111:0x021d, B:113:0x022a, B:123:0x0258, B:124:0x025f, B:127:0x0272, B:128:0x0296), top: B:144:0x004b, inners: #1 }] */
    /* JADX WARN: Code duplicated, block: B:142:0x009a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:143:0x0095 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:149:0x00c0 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:21:0x007f A[Catch: all -> 0x0073, TRY_LEAVE, TryCatch #3 {all -> 0x0073, blocks: (B:7:0x004b, B:11:0x006d, B:18:0x0079, B:21:0x007f, B:24:0x0095, B:102:0x01ec, B:103:0x01f3, B:106:0x01f6, B:107:0x01f7, B:108:0x01fe, B:125:0x0260, B:126:0x0271, B:109:0x01ff, B:111:0x021d, B:113:0x022a, B:123:0x0258, B:124:0x025f, B:127:0x0272, B:128:0x0296), top: B:144:0x004b, inners: #1 }] */
    /* JADX WARN: Code duplicated, block: B:23:0x0093 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:29:0x00a0 A[Catch: all -> 0x01e0, TryCatch #0 {, blocks: (B:27:0x009a, B:29:0x00a0, B:30:0x00a2, B:98:0x01e2, B:99:0x01e9), top: B:142:0x009a, outer: #8 }] */
    /* JADX WARN: Code duplicated, block: B:32:0x00a5 A[Catch: all -> 0x00ff, a -> 0x0102, RemoteException -> 0x0105, TRY_ENTER, TryCatch #8 {RemoteException -> 0x0105, a -> 0x0102, all -> 0x00ff, blocks: (B:26:0x0099, B:32:0x00a5, B:34:0x00ac, B:35:0x00bf, B:39:0x00c5, B:41:0x00cd, B:43:0x00d1, B:44:0x00df, B:51:0x00e9, B:59:0x011d, B:61:0x0125, B:63:0x012d, B:64:0x0134, B:58:0x0108, B:67:0x0137, B:68:0x0138, B:69:0x013f, B:70:0x0140, B:71:0x0147, B:74:0x014a, B:75:0x014b, B:77:0x0162, B:79:0x0175, B:81:0x017d, B:87:0x01b9, B:89:0x01bf, B:90:0x01c8, B:91:0x01cf, B:82:0x018e, B:83:0x0195, B:85:0x0198, B:86:0x01a9, B:92:0x01d0, B:93:0x01d7, B:94:0x01d8, B:95:0x01df, B:101:0x01eb, B:27:0x009a, B:29:0x00a0, B:30:0x00a2, B:98:0x01e2, B:99:0x01e9, B:45:0x00e0, B:49:0x00e6, B:36:0x00c0, B:37:0x00c2), top: B:151:0x0099, inners: #0, #4, #6 }] */
    /* JADX WARN: Code duplicated, block: B:34:0x00ac A[Catch: all -> 0x00ff, a -> 0x0102, RemoteException -> 0x0105, TryCatch #8 {RemoteException -> 0x0105, a -> 0x0102, all -> 0x00ff, blocks: (B:26:0x0099, B:32:0x00a5, B:34:0x00ac, B:35:0x00bf, B:39:0x00c5, B:41:0x00cd, B:43:0x00d1, B:44:0x00df, B:51:0x00e9, B:59:0x011d, B:61:0x0125, B:63:0x012d, B:64:0x0134, B:58:0x0108, B:67:0x0137, B:68:0x0138, B:69:0x013f, B:70:0x0140, B:71:0x0147, B:74:0x014a, B:75:0x014b, B:77:0x0162, B:79:0x0175, B:81:0x017d, B:87:0x01b9, B:89:0x01bf, B:90:0x01c8, B:91:0x01cf, B:82:0x018e, B:83:0x0195, B:85:0x0198, B:86:0x01a9, B:92:0x01d0, B:93:0x01d7, B:94:0x01d8, B:95:0x01df, B:101:0x01eb, B:27:0x009a, B:29:0x00a0, B:30:0x00a2, B:98:0x01e2, B:99:0x01e9, B:45:0x00e0, B:49:0x00e6, B:36:0x00c0, B:37:0x00c2), top: B:151:0x0099, inners: #0, #4, #6 }] */
    /* JADX WARN: Code duplicated, block: B:39:0x00c5 A[Catch: all -> 0x00ff, a -> 0x0102, RemoteException -> 0x0105, TRY_ENTER, TryCatch #8 {RemoteException -> 0x0105, a -> 0x0102, all -> 0x00ff, blocks: (B:26:0x0099, B:32:0x00a5, B:34:0x00ac, B:35:0x00bf, B:39:0x00c5, B:41:0x00cd, B:43:0x00d1, B:44:0x00df, B:51:0x00e9, B:59:0x011d, B:61:0x0125, B:63:0x012d, B:64:0x0134, B:58:0x0108, B:67:0x0137, B:68:0x0138, B:69:0x013f, B:70:0x0140, B:71:0x0147, B:74:0x014a, B:75:0x014b, B:77:0x0162, B:79:0x0175, B:81:0x017d, B:87:0x01b9, B:89:0x01bf, B:90:0x01c8, B:91:0x01cf, B:82:0x018e, B:83:0x0195, B:85:0x0198, B:86:0x01a9, B:92:0x01d0, B:93:0x01d7, B:94:0x01d8, B:95:0x01df, B:101:0x01eb, B:27:0x009a, B:29:0x00a0, B:30:0x00a2, B:98:0x01e2, B:99:0x01e9, B:45:0x00e0, B:49:0x00e6, B:36:0x00c0, B:37:0x00c2), top: B:151:0x0099, inners: #0, #4, #6 }] */
    /* JADX WARN: Code duplicated, block: B:70:0x0140 A[Catch: all -> 0x00ff, a -> 0x0102, RemoteException -> 0x0105, TryCatch #8 {RemoteException -> 0x0105, a -> 0x0102, all -> 0x00ff, blocks: (B:26:0x0099, B:32:0x00a5, B:34:0x00ac, B:35:0x00bf, B:39:0x00c5, B:41:0x00cd, B:43:0x00d1, B:44:0x00df, B:51:0x00e9, B:59:0x011d, B:61:0x0125, B:63:0x012d, B:64:0x0134, B:58:0x0108, B:67:0x0137, B:68:0x0138, B:69:0x013f, B:70:0x0140, B:71:0x0147, B:74:0x014a, B:75:0x014b, B:77:0x0162, B:79:0x0175, B:81:0x017d, B:87:0x01b9, B:89:0x01bf, B:90:0x01c8, B:91:0x01cf, B:82:0x018e, B:83:0x0195, B:85:0x0198, B:86:0x01a9, B:92:0x01d0, B:93:0x01d7, B:94:0x01d8, B:95:0x01df, B:101:0x01eb, B:27:0x009a, B:29:0x00a0, B:30:0x00a2, B:98:0x01e2, B:99:0x01e9, B:45:0x00e0, B:49:0x00e6, B:36:0x00c0, B:37:0x00c2), top: B:151:0x0099, inners: #0, #4, #6 }] */
    /* JADX WARN: Code duplicated, block: B:75:0x014b A[Catch: all -> 0x00ff, a -> 0x0102, RemoteException -> 0x0105, TryCatch #8 {RemoteException -> 0x0105, a -> 0x0102, all -> 0x00ff, blocks: (B:26:0x0099, B:32:0x00a5, B:34:0x00ac, B:35:0x00bf, B:39:0x00c5, B:41:0x00cd, B:43:0x00d1, B:44:0x00df, B:51:0x00e9, B:59:0x011d, B:61:0x0125, B:63:0x012d, B:64:0x0134, B:58:0x0108, B:67:0x0137, B:68:0x0138, B:69:0x013f, B:70:0x0140, B:71:0x0147, B:74:0x014a, B:75:0x014b, B:77:0x0162, B:79:0x0175, B:81:0x017d, B:87:0x01b9, B:89:0x01bf, B:90:0x01c8, B:91:0x01cf, B:82:0x018e, B:83:0x0195, B:85:0x0198, B:86:0x01a9, B:92:0x01d0, B:93:0x01d7, B:94:0x01d8, B:95:0x01df, B:101:0x01eb, B:27:0x009a, B:29:0x00a0, B:30:0x00a2, B:98:0x01e2, B:99:0x01e9, B:45:0x00e0, B:49:0x00e6, B:36:0x00c0, B:37:0x00c2), top: B:151:0x0099, inners: #0, #4, #6 }] */
    /* JADX WARN: Code duplicated, block: B:77:0x0162 A[Catch: all -> 0x00ff, a -> 0x0102, RemoteException -> 0x0105, TryCatch #8 {RemoteException -> 0x0105, a -> 0x0102, all -> 0x00ff, blocks: (B:26:0x0099, B:32:0x00a5, B:34:0x00ac, B:35:0x00bf, B:39:0x00c5, B:41:0x00cd, B:43:0x00d1, B:44:0x00df, B:51:0x00e9, B:59:0x011d, B:61:0x0125, B:63:0x012d, B:64:0x0134, B:58:0x0108, B:67:0x0137, B:68:0x0138, B:69:0x013f, B:70:0x0140, B:71:0x0147, B:74:0x014a, B:75:0x014b, B:77:0x0162, B:79:0x0175, B:81:0x017d, B:87:0x01b9, B:89:0x01bf, B:90:0x01c8, B:91:0x01cf, B:82:0x018e, B:83:0x0195, B:85:0x0198, B:86:0x01a9, B:92:0x01d0, B:93:0x01d7, B:94:0x01d8, B:95:0x01df, B:101:0x01eb, B:27:0x009a, B:29:0x00a0, B:30:0x00a2, B:98:0x01e2, B:99:0x01e9, B:45:0x00e0, B:49:0x00e6, B:36:0x00c0, B:37:0x00c2), top: B:151:0x0099, inners: #0, #4, #6 }] */
    /* JADX WARN: Code duplicated, block: B:79:0x0175 A[Catch: all -> 0x00ff, a -> 0x0102, RemoteException -> 0x0105, TryCatch #8 {RemoteException -> 0x0105, a -> 0x0102, all -> 0x00ff, blocks: (B:26:0x0099, B:32:0x00a5, B:34:0x00ac, B:35:0x00bf, B:39:0x00c5, B:41:0x00cd, B:43:0x00d1, B:44:0x00df, B:51:0x00e9, B:59:0x011d, B:61:0x0125, B:63:0x012d, B:64:0x0134, B:58:0x0108, B:67:0x0137, B:68:0x0138, B:69:0x013f, B:70:0x0140, B:71:0x0147, B:74:0x014a, B:75:0x014b, B:77:0x0162, B:79:0x0175, B:81:0x017d, B:87:0x01b9, B:89:0x01bf, B:90:0x01c8, B:91:0x01cf, B:82:0x018e, B:83:0x0195, B:85:0x0198, B:86:0x01a9, B:92:0x01d0, B:93:0x01d7, B:94:0x01d8, B:95:0x01df, B:101:0x01eb, B:27:0x009a, B:29:0x00a0, B:30:0x00a2, B:98:0x01e2, B:99:0x01e9, B:45:0x00e0, B:49:0x00e6, B:36:0x00c0, B:37:0x00c2), top: B:151:0x0099, inners: #0, #4, #6 }] */
    /* JADX WARN: Code duplicated, block: B:81:0x017d A[Catch: all -> 0x00ff, a -> 0x0102, RemoteException -> 0x0105, TryCatch #8 {RemoteException -> 0x0105, a -> 0x0102, all -> 0x00ff, blocks: (B:26:0x0099, B:32:0x00a5, B:34:0x00ac, B:35:0x00bf, B:39:0x00c5, B:41:0x00cd, B:43:0x00d1, B:44:0x00df, B:51:0x00e9, B:59:0x011d, B:61:0x0125, B:63:0x012d, B:64:0x0134, B:58:0x0108, B:67:0x0137, B:68:0x0138, B:69:0x013f, B:70:0x0140, B:71:0x0147, B:74:0x014a, B:75:0x014b, B:77:0x0162, B:79:0x0175, B:81:0x017d, B:87:0x01b9, B:89:0x01bf, B:90:0x01c8, B:91:0x01cf, B:82:0x018e, B:83:0x0195, B:85:0x0198, B:86:0x01a9, B:92:0x01d0, B:93:0x01d7, B:94:0x01d8, B:95:0x01df, B:101:0x01eb, B:27:0x009a, B:29:0x00a0, B:30:0x00a2, B:98:0x01e2, B:99:0x01e9, B:45:0x00e0, B:49:0x00e6, B:36:0x00c0, B:37:0x00c2), top: B:151:0x0099, inners: #0, #4, #6 }] */
    /* JADX WARN: Code duplicated, block: B:82:0x018e A[Catch: all -> 0x00ff, a -> 0x0102, RemoteException -> 0x0105, TryCatch #8 {RemoteException -> 0x0105, a -> 0x0102, all -> 0x00ff, blocks: (B:26:0x0099, B:32:0x00a5, B:34:0x00ac, B:35:0x00bf, B:39:0x00c5, B:41:0x00cd, B:43:0x00d1, B:44:0x00df, B:51:0x00e9, B:59:0x011d, B:61:0x0125, B:63:0x012d, B:64:0x0134, B:58:0x0108, B:67:0x0137, B:68:0x0138, B:69:0x013f, B:70:0x0140, B:71:0x0147, B:74:0x014a, B:75:0x014b, B:77:0x0162, B:79:0x0175, B:81:0x017d, B:87:0x01b9, B:89:0x01bf, B:90:0x01c8, B:91:0x01cf, B:82:0x018e, B:83:0x0195, B:85:0x0198, B:86:0x01a9, B:92:0x01d0, B:93:0x01d7, B:94:0x01d8, B:95:0x01df, B:101:0x01eb, B:27:0x009a, B:29:0x00a0, B:30:0x00a2, B:98:0x01e2, B:99:0x01e9, B:45:0x00e0, B:49:0x00e6, B:36:0x00c0, B:37:0x00c2), top: B:151:0x0099, inners: #0, #4, #6 }] */
    /* JADX WARN: Code duplicated, block: B:84:0x0196 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:85:0x0198 A[Catch: all -> 0x00ff, a -> 0x0102, RemoteException -> 0x0105, TryCatch #8 {RemoteException -> 0x0105, a -> 0x0102, all -> 0x00ff, blocks: (B:26:0x0099, B:32:0x00a5, B:34:0x00ac, B:35:0x00bf, B:39:0x00c5, B:41:0x00cd, B:43:0x00d1, B:44:0x00df, B:51:0x00e9, B:59:0x011d, B:61:0x0125, B:63:0x012d, B:64:0x0134, B:58:0x0108, B:67:0x0137, B:68:0x0138, B:69:0x013f, B:70:0x0140, B:71:0x0147, B:74:0x014a, B:75:0x014b, B:77:0x0162, B:79:0x0175, B:81:0x017d, B:87:0x01b9, B:89:0x01bf, B:90:0x01c8, B:91:0x01cf, B:82:0x018e, B:83:0x0195, B:85:0x0198, B:86:0x01a9, B:92:0x01d0, B:93:0x01d7, B:94:0x01d8, B:95:0x01df, B:101:0x01eb, B:27:0x009a, B:29:0x00a0, B:30:0x00a2, B:98:0x01e2, B:99:0x01e9, B:45:0x00e0, B:49:0x00e6, B:36:0x00c0, B:37:0x00c2), top: B:151:0x0099, inners: #0, #4, #6 }] */
    /* JADX WARN: Code duplicated, block: B:86:0x01a9 A[Catch: all -> 0x00ff, a -> 0x0102, RemoteException -> 0x0105, TryCatch #8 {RemoteException -> 0x0105, a -> 0x0102, all -> 0x00ff, blocks: (B:26:0x0099, B:32:0x00a5, B:34:0x00ac, B:35:0x00bf, B:39:0x00c5, B:41:0x00cd, B:43:0x00d1, B:44:0x00df, B:51:0x00e9, B:59:0x011d, B:61:0x0125, B:63:0x012d, B:64:0x0134, B:58:0x0108, B:67:0x0137, B:68:0x0138, B:69:0x013f, B:70:0x0140, B:71:0x0147, B:74:0x014a, B:75:0x014b, B:77:0x0162, B:79:0x0175, B:81:0x017d, B:87:0x01b9, B:89:0x01bf, B:90:0x01c8, B:91:0x01cf, B:82:0x018e, B:83:0x0195, B:85:0x0198, B:86:0x01a9, B:92:0x01d0, B:93:0x01d7, B:94:0x01d8, B:95:0x01df, B:101:0x01eb, B:27:0x009a, B:29:0x00a0, B:30:0x00a2, B:98:0x01e2, B:99:0x01e9, B:45:0x00e0, B:49:0x00e6, B:36:0x00c0, B:37:0x00c2), top: B:151:0x0099, inners: #0, #4, #6 }] */
    /* JADX WARN: Code duplicated, block: B:89:0x01bf A[Catch: all -> 0x00ff, a -> 0x0102, RemoteException -> 0x0105, TryCatch #8 {RemoteException -> 0x0105, a -> 0x0102, all -> 0x00ff, blocks: (B:26:0x0099, B:32:0x00a5, B:34:0x00ac, B:35:0x00bf, B:39:0x00c5, B:41:0x00cd, B:43:0x00d1, B:44:0x00df, B:51:0x00e9, B:59:0x011d, B:61:0x0125, B:63:0x012d, B:64:0x0134, B:58:0x0108, B:67:0x0137, B:68:0x0138, B:69:0x013f, B:70:0x0140, B:71:0x0147, B:74:0x014a, B:75:0x014b, B:77:0x0162, B:79:0x0175, B:81:0x017d, B:87:0x01b9, B:89:0x01bf, B:90:0x01c8, B:91:0x01cf, B:82:0x018e, B:83:0x0195, B:85:0x0198, B:86:0x01a9, B:92:0x01d0, B:93:0x01d7, B:94:0x01d8, B:95:0x01df, B:101:0x01eb, B:27:0x009a, B:29:0x00a0, B:30:0x00a2, B:98:0x01e2, B:99:0x01e9, B:45:0x00e0, B:49:0x00e6, B:36:0x00c0, B:37:0x00c2), top: B:151:0x0099, inners: #0, #4, #6 }] */
    /* JADX WARN: Code duplicated, block: B:90:0x01c8 A[Catch: all -> 0x00ff, a -> 0x0102, RemoteException -> 0x0105, TryCatch #8 {RemoteException -> 0x0105, a -> 0x0102, all -> 0x00ff, blocks: (B:26:0x0099, B:32:0x00a5, B:34:0x00ac, B:35:0x00bf, B:39:0x00c5, B:41:0x00cd, B:43:0x00d1, B:44:0x00df, B:51:0x00e9, B:59:0x011d, B:61:0x0125, B:63:0x012d, B:64:0x0134, B:58:0x0108, B:67:0x0137, B:68:0x0138, B:69:0x013f, B:70:0x0140, B:71:0x0147, B:74:0x014a, B:75:0x014b, B:77:0x0162, B:79:0x0175, B:81:0x017d, B:87:0x01b9, B:89:0x01bf, B:90:0x01c8, B:91:0x01cf, B:82:0x018e, B:83:0x0195, B:85:0x0198, B:86:0x01a9, B:92:0x01d0, B:93:0x01d7, B:94:0x01d8, B:95:0x01df, B:101:0x01eb, B:27:0x009a, B:29:0x00a0, B:30:0x00a2, B:98:0x01e2, B:99:0x01e9, B:45:0x00e0, B:49:0x00e6, B:36:0x00c0, B:37:0x00c2), top: B:151:0x0099, inners: #0, #4, #6 }] */
    /* JADX WARN: Code duplicated, block: B:92:0x01d0 A[Catch: all -> 0x00ff, a -> 0x0102, RemoteException -> 0x0105, TryCatch #8 {RemoteException -> 0x0105, a -> 0x0102, all -> 0x00ff, blocks: (B:26:0x0099, B:32:0x00a5, B:34:0x00ac, B:35:0x00bf, B:39:0x00c5, B:41:0x00cd, B:43:0x00d1, B:44:0x00df, B:51:0x00e9, B:59:0x011d, B:61:0x0125, B:63:0x012d, B:64:0x0134, B:58:0x0108, B:67:0x0137, B:68:0x0138, B:69:0x013f, B:70:0x0140, B:71:0x0147, B:74:0x014a, B:75:0x014b, B:77:0x0162, B:79:0x0175, B:81:0x017d, B:87:0x01b9, B:89:0x01bf, B:90:0x01c8, B:91:0x01cf, B:82:0x018e, B:83:0x0195, B:85:0x0198, B:86:0x01a9, B:92:0x01d0, B:93:0x01d7, B:94:0x01d8, B:95:0x01df, B:101:0x01eb, B:27:0x009a, B:29:0x00a0, B:30:0x00a2, B:98:0x01e2, B:99:0x01e9, B:45:0x00e0, B:49:0x00e6, B:36:0x00c0, B:37:0x00c2), top: B:151:0x0099, inners: #0, #4, #6 }] */
    /* JADX WARN: Code duplicated, block: B:94:0x01d8 A[Catch: all -> 0x00ff, a -> 0x0102, RemoteException -> 0x0105, TryCatch #8 {RemoteException -> 0x0105, a -> 0x0102, all -> 0x00ff, blocks: (B:26:0x0099, B:32:0x00a5, B:34:0x00ac, B:35:0x00bf, B:39:0x00c5, B:41:0x00cd, B:43:0x00d1, B:44:0x00df, B:51:0x00e9, B:59:0x011d, B:61:0x0125, B:63:0x012d, B:64:0x0134, B:58:0x0108, B:67:0x0137, B:68:0x0138, B:69:0x013f, B:70:0x0140, B:71:0x0147, B:74:0x014a, B:75:0x014b, B:77:0x0162, B:79:0x0175, B:81:0x017d, B:87:0x01b9, B:89:0x01bf, B:90:0x01c8, B:91:0x01cf, B:82:0x018e, B:83:0x0195, B:85:0x0198, B:86:0x01a9, B:92:0x01d0, B:93:0x01d7, B:94:0x01d8, B:95:0x01df, B:101:0x01eb, B:27:0x009a, B:29:0x00a0, B:30:0x00a2, B:98:0x01e2, B:99:0x01e9, B:45:0x00e0, B:49:0x00e6, B:36:0x00c0, B:37:0x00c2), top: B:151:0x0099, inners: #0, #4, #6 }] */
    /* JADX WARN: Code duplicated, block: B:98:0x01e2 A[Catch: all -> 0x01e0, TRY_ENTER, TryCatch #0 {, blocks: (B:27:0x009a, B:29:0x00a0, B:30:0x00a2, B:98:0x01e2, B:99:0x01e9), top: B:142:0x009a, outer: #8 }] */
    /* JADX WARN: Instruction removed from duplicated block: B:125:0x0260, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:34:0x00ac, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:75:0x014b, please report this as an issue */
    /* JADX INFO: renamed from: a */
    public static C3329c m5246a(Context context, C3537c c3537c) throws Throwable {
        long j10;
        C3329c c3329c;
        int i10;
        Boolean bool;
        C3333g c3333gM5250e;
        int i11;
        InterfaceC3283a interfaceC3283aM5251d;
        Object objM5218d;
        C3329c c3329c2;
        C3332f c3332f;
        C3334h c3334h;
        C3332f c3332f2;
        InterfaceC3283a interfaceC3283aM5255d;
        Cursor cursor;
        Context applicationContext = context.getApplicationContext();
        if (applicationContext == null) {
            throw new C3327a("null application Context");
        }
        ThreadLocal threadLocal = f9743h;
        C3332f c3332f3 = (C3332f) threadLocal.get();
        C3332f c3332f4 = new C3332f();
        threadLocal.set(c3332f4);
        C3331e c3331e = f9744i;
        Long l10 = (Long) c3331e.get();
        long jLongValue = l10.longValue();
        try {
            c3331e.set(Long.valueOf(SystemClock.elapsedRealtime()));
            C2191h c2191hM5651n = c3537c.m5651n(context, f9745j);
            j10 = jLongValue;
            try {
                Log.i("DynamiteModule", "Considering local module com.google.android.gms.providerinstaller.dynamite:" + c2191hM5651n.f5718a + " and remote module com.google.android.gms.providerinstaller.dynamite:" + c2191hM5651n.f5719b);
                int i12 = c2191hM5651n.f5720c;
                if (i12 != 0) {
                    if (i12 != -1) {
                        boolean z9 = true;
                        if (i12 == 1 || c2191hM5651n.f5719b != 0) {
                            if (i12 == -1) {
                                Log.i("DynamiteModule", "Selected local version of ".concat("com.google.android.gms.providerinstaller.dynamite"));
                                c3329c = new C3329c(applicationContext);
                            } else {
                                if (i12 == 1) {
                                    throw new C3327a("VersionPolicy returned invalid code:" + i12);
                                }
                                try {
                                    i10 = c2191hM5651n.f5719b;
                                    try {
                                        synchronized (C3329c.class) {
                                            if (m5249d(context)) {
                                                throw new C3327a("Remote loading disabled");
                                            }
                                            bool = f9738c;
                                        }
                                        if (bool != null) {
                                            throw new C3327a("Failed to determine which loading route to use.");
                                        }
                                        if (bool.booleanValue()) {
                                            Log.i("DynamiteModule", "Selected remote version of com.google.android.gms.providerinstaller.dynamite, version >= " + i10);
                                            synchronized (C3329c.class) {
                                                c3334h = f9747l;
                                            }
                                            if (c3334h != null) {
                                                throw new C3327a("DynamiteLoaderV2 was not cached.");
                                            }
                                            c3332f2 = (C3332f) threadLocal.get();
                                            if (c3332f2 != null || c3332f2.f9749a == null) {
                                                throw new C3327a("No result cursor");
                                            }
                                            Context applicationContext2 = context.getApplicationContext();
                                            Cursor cursor2 = c3332f2.f9749a;
                                            new BinderC3284b(null);
                                            synchronized (C3329c.class) {
                                                if (f9741f < 2) {
                                                    z9 = false;
                                                }
                                            }
                                            if (z9) {
                                                Log.v("DynamiteModule", "Dynamite loader version >= 2, using loadModule2NoCrashUtils");
                                                interfaceC3283aM5255d = c3334h.m5256e(new BinderC3284b(applicationContext2), i10, new BinderC3284b(cursor2));
                                            } else {
                                                Log.w("DynamiteModule", "Dynamite loader version < 2, falling back to loadModule2");
                                                interfaceC3283aM5255d = c3334h.m5255d(new BinderC3284b(applicationContext2), i10, new BinderC3284b(cursor2));
                                            }
                                            Context context2 = (Context) BinderC3284b.m5218d(interfaceC3283aM5255d);
                                            if (context2 == null) {
                                                throw new C3327a("Failed to get module context");
                                            }
                                            c3329c2 = new C3329c(context2);
                                        } else {
                                            Log.i("DynamiteModule", "Selected remote version of com.google.android.gms.providerinstaller.dynamite, version >= " + i10);
                                            c3333gM5250e = m5250e(context);
                                            if (c3333gM5250e != null) {
                                                throw new C3327a("Failed to create IDynamiteLoader.");
                                            }
                                            Parcel parcelM5581b = c3333gM5250e.m5581b(c3333gM5250e.m5582c(), 6);
                                            i11 = parcelM5581b.readInt();
                                            parcelM5581b.recycle();
                                            if (i11 >= 3) {
                                                c3332f = (C3332f) threadLocal.get();
                                                if (c3332f != null) {
                                                    throw new C3327a("No cached result cursor holder");
                                                }
                                                interfaceC3283aM5251d = c3333gM5250e.m5252e(new BinderC3284b(context), i10, new BinderC3284b(c3332f.f9749a));
                                            } else if (i11 == 2) {
                                                Log.w("DynamiteModule", "IDynamite loader version = 2");
                                                interfaceC3283aM5251d = c3333gM5250e.m5253f(new BinderC3284b(context), i10);
                                            } else {
                                                Log.w("DynamiteModule", "Dynamite loader version < 2, falling back to createModuleContext");
                                                interfaceC3283aM5251d = c3333gM5250e.m5251d(new BinderC3284b(context), i10);
                                            }
                                            objM5218d = BinderC3284b.m5218d(interfaceC3283aM5251d);
                                            if (objM5218d != null) {
                                                throw new C3327a("Failed to load remote module.");
                                            }
                                            c3329c2 = new C3329c((Context) objM5218d);
                                        }
                                        c3329c = c3329c2;
                                    } catch (RemoteException e) {
                                        throw new C3327a("Failed to load remote module.", e);
                                    } catch (C3327a e6) {
                                        throw e6;
                                    } catch (Throwable th) {
                                        throw new C3327a("Failed to load remote module.", th);
                                    }
                                } catch (C3327a e10) {
                                    Log.w("DynamiteModule", "Failed to load remote module: " + e10.getMessage());
                                    int i13 = c2191hM5651n.f5718a;
                                    if (i13 == 0 || c3537c.m5651n(context, new C1023i(i13)).f5720c != -1) {
                                        throw new C3327a("Remote load failed. No local fallback found.", e10);
                                    }
                                    Log.i("DynamiteModule", "Selected local version of ".concat("com.google.android.gms.providerinstaller.dynamite"));
                                    c3329c = new C3329c(applicationContext);
                                }
                            }
                            if (j10 == 0) {
                                f9744i.remove();
                            } else {
                                f9744i.set(l10);
                            }
                            cursor = c3332f4.f9749a;
                            if (cursor != null) {
                                cursor.close();
                            }
                            f9743h.set(c3332f3);
                            return c3329c;
                        }
                    } else if (c2191hM5651n.f5718a != 0) {
                        i12 = -1;
                        boolean z10 = true;
                        if (i12 == 1) {
                        }
                        if (i12 == -1) {
                            Log.i("DynamiteModule", "Selected local version of ".concat("com.google.android.gms.providerinstaller.dynamite"));
                            c3329c = new C3329c(applicationContext);
                        } else {
                            if (i12 == 1) {
                                throw new C3327a("VersionPolicy returned invalid code:" + i12);
                            }
                            i10 = c2191hM5651n.f5719b;
                            synchronized (C3329c.class) {
                                if (m5249d(context)) {
                                    throw new C3327a("Remote loading disabled");
                                }
                                bool = f9738c;
                                if (bool != null) {
                                    throw new C3327a("Failed to determine which loading route to use.");
                                }
                                if (bool.booleanValue()) {
                                    Log.i("DynamiteModule", "Selected remote version of com.google.android.gms.providerinstaller.dynamite, version >= " + i10);
                                    synchronized (C3329c.class) {
                                        c3334h = f9747l;
                                        if (c3334h != null) {
                                            throw new C3327a("DynamiteLoaderV2 was not cached.");
                                        }
                                        c3332f2 = (C3332f) threadLocal.get();
                                        if (c3332f2 != null) {
                                        }
                                        throw new C3327a("No result cursor");
                                    }
                                }
                                Log.i("DynamiteModule", "Selected remote version of com.google.android.gms.providerinstaller.dynamite, version >= " + i10);
                                c3333gM5250e = m5250e(context);
                                if (c3333gM5250e != null) {
                                    throw new C3327a("Failed to create IDynamiteLoader.");
                                }
                                Parcel parcelM5581b2 = c3333gM5250e.m5581b(c3333gM5250e.m5582c(), 6);
                                i11 = parcelM5581b2.readInt();
                                parcelM5581b2.recycle();
                                if (i11 >= 3) {
                                    c3332f = (C3332f) threadLocal.get();
                                    if (c3332f != null) {
                                        throw new C3327a("No cached result cursor holder");
                                    }
                                    interfaceC3283aM5251d = c3333gM5250e.m5252e(new BinderC3284b(context), i10, new BinderC3284b(c3332f.f9749a));
                                } else if (i11 == 2) {
                                    Log.w("DynamiteModule", "IDynamite loader version = 2");
                                    interfaceC3283aM5251d = c3333gM5250e.m5253f(new BinderC3284b(context), i10);
                                } else {
                                    Log.w("DynamiteModule", "Dynamite loader version < 2, falling back to createModuleContext");
                                    interfaceC3283aM5251d = c3333gM5250e.m5251d(new BinderC3284b(context), i10);
                                }
                                objM5218d = BinderC3284b.m5218d(interfaceC3283aM5251d);
                                if (objM5218d != null) {
                                    throw new C3327a("Failed to load remote module.");
                                }
                                c3329c2 = new C3329c((Context) objM5218d);
                                c3329c = c3329c2;
                            }
                        }
                        if (j10 == 0) {
                            f9744i.remove();
                        } else {
                            f9744i.set(l10);
                        }
                        cursor = c3332f4.f9749a;
                        if (cursor != null) {
                            cursor.close();
                        }
                        f9743h.set(c3332f3);
                        return c3329c;
                    }
                }
                throw new C3327a("No acceptable module com.google.android.gms.providerinstaller.dynamite found. Local version is " + c2191hM5651n.f5718a + " and remote version is " + c2191hM5651n.f5719b + ".");
            } catch (Throwable th2) {
                th = th2;
                if (j10 == 0) {
                    f9744i.remove();
                } else {
                    f9744i.set(l10);
                }
                Cursor cursor3 = c3332f4.f9749a;
                if (cursor3 != null) {
                    cursor3.close();
                }
                f9743h.set(c3332f3);
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            j10 = jLongValue;
        }
    }

    /* JADX INFO: renamed from: b */
    public static int m5247b(Context context, boolean z9, boolean z10) throws Throwable {
        Throwable th;
        Exception exc;
        boolean z11;
        Cursor cursor = null;
        try {
            try {
                boolean z12 = true;
                Cursor cursorQuery = context.getContentResolver().query(new Uri.Builder().scheme("content").authority("com.google.android.gms.chimera").path(true != z9 ? "api" : "api_force_staging").appendPath("com.google.android.gms.providerinstaller.dynamite").appendQueryParameter("requestStartTime", String.valueOf(((Long) f9744i.get()).longValue())).build(), null, null, null, null);
                if (cursorQuery != null) {
                    try {
                        if (cursorQuery.moveToFirst()) {
                            boolean z13 = false;
                            int i10 = cursorQuery.getInt(0);
                            if (i10 > 0) {
                                synchronized (C3329c.class) {
                                    try {
                                        f9739d = cursorQuery.getString(2);
                                        int columnIndex = cursorQuery.getColumnIndex("loaderVersion");
                                        if (columnIndex >= 0) {
                                            f9741f = cursorQuery.getInt(columnIndex);
                                        }
                                        int columnIndex2 = cursorQuery.getColumnIndex("disableStandaloneDynamiteLoader2");
                                        if (columnIndex2 >= 0) {
                                            z11 = cursorQuery.getInt(columnIndex2) != 0;
                                            f9740e = z11;
                                        } else {
                                            z11 = false;
                                        }
                                    } catch (Throwable th2) {
                                        throw th2;
                                    }
                                }
                                C3332f c3332f = (C3332f) f9743h.get();
                                if (c3332f == null || c3332f.f9749a != null) {
                                    z12 = false;
                                } else {
                                    c3332f.f9749a = cursorQuery;
                                }
                                cursor = z12 ? null : cursorQuery;
                                z13 = z11;
                            } else {
                                cursor = cursorQuery;
                            }
                            if (z10 && z13) {
                                throw new C3327a("forcing fallback to container DynamiteLoader impl");
                            }
                            if (cursor != null) {
                                cursor.close();
                            }
                            return i10;
                            if (exc instanceof C3327a) {
                                throw exc;
                            }
                            throw new C3327a("V2 version check failed: " + exc.getMessage(), exc);
                        }
                    } catch (Exception e) {
                        exc = e;
                    } catch (Throwable th3) {
                        cursor = cursorQuery;
                        th = th3;
                        if (cursor == null) {
                            throw th;
                        }
                        cursor.close();
                        throw th;
                    }
                }
                Log.w("DynamiteModule", "Failed to retrieve remote module version.");
                throw new C3327a("Failed to connect to dynamite module ContentResolver.");
            } catch (Throwable th4) {
                th = th4;
            }
        } catch (Exception e6) {
            exc = e6;
        }
    }

    /* JADX INFO: renamed from: c */
    public static void m5248c(ClassLoader classLoader) throws C3327a {
        try {
            C3334h c3334h = null;
            IBinder iBinder = (IBinder) classLoader.loadClass("com.google.android.gms.dynamiteloader.DynamiteLoaderV2").getConstructor(null).newInstance(null);
            if (iBinder != null) {
                IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamite.IDynamiteLoaderV2");
                c3334h = iInterfaceQueryLocalInterface instanceof C3334h ? (C3334h) iInterfaceQueryLocalInterface : new C3334h(iBinder, "com.google.android.gms.dynamite.IDynamiteLoaderV2");
            }
            f9747l = c3334h;
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException | NoSuchMethodException | InvocationTargetException e) {
            throw new C3327a("Failed to instantiate dynamite loader", e);
        }
    }

    /* JADX INFO: renamed from: d */
    public static boolean m5249d(Context context) {
        ApplicationInfo applicationInfo;
        Boolean bool = Boolean.TRUE;
        if (bool.equals(null) || bool.equals(f9742g)) {
            return true;
        }
        boolean z9 = false;
        if (f9742g == null) {
            ProviderInfo providerInfoResolveContentProvider = context.getPackageManager().resolveContentProvider("com.google.android.gms.chimera", 0);
            C2958a.f8239b.getClass();
            if (C2958a.m4747a(10000000, context) == 0 && providerInfoResolveContentProvider != null && "com.google.android.gms".equals(providerInfoResolveContentProvider.packageName)) {
                z9 = true;
            }
            f9742g = Boolean.valueOf(z9);
            if (z9 && (applicationInfo = providerInfoResolveContentProvider.applicationInfo) != null && (applicationInfo.flags & 129) == 0) {
                Log.i("DynamiteModule", "Non-system-image GmsCore APK, forcing V1");
                f9740e = true;
            }
        }
        if (!z9) {
            Log.e("DynamiteModule", "Invalid GmsCore APK, remote loading disabled.");
        }
        return z9;
    }

    /* JADX INFO: renamed from: e */
    public static C3333g m5250e(Context context) {
        C3333g c3333g;
        synchronized (C3329c.class) {
            C3333g c3333g2 = f9746k;
            if (c3333g2 != null) {
                return c3333g2;
            }
            try {
                IBinder iBinder = (IBinder) context.createPackageContext("com.google.android.gms", 3).getClassLoader().loadClass("com.google.android.gms.chimera.container.DynamiteLoaderImpl").newInstance();
                if (iBinder == null) {
                    c3333g = null;
                } else {
                    IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamite.IDynamiteLoader");
                    c3333g = iInterfaceQueryLocalInterface instanceof C3333g ? (C3333g) iInterfaceQueryLocalInterface : new C3333g(iBinder, "com.google.android.gms.dynamite.IDynamiteLoader");
                }
                if (c3333g != null) {
                    f9746k = c3333g;
                    return c3333g;
                }
            } catch (Exception e) {
                Log.e("DynamiteModule", "Failed to load IDynamiteLoader from GmsCore: " + e.getMessage());
            }
            return null;
        }
    }
}
