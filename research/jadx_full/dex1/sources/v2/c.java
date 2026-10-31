package v2;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.ProviderInfo;
import android.database.Cursor;
import android.net.Uri$Builder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import android.os.SystemClock;
import android.util.Log;
import c9.i;
import java.lang.reflect.InvocationTargetException;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class c {
    public static Boolean c = null;
    public static String d = null;
    public static boolean e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static int f5518f = -1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static Boolean f5519g;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static g f5523k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static h f5524l;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f5525a;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final ThreadLocal f5520h = new ThreadLocal();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final e f5521i = new e();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final p2.e f5522j = new p2.e(18);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final w7.c f5517b = new w7.c(18);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public c(Context context) {
        this.f5525a = context;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
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
    public static c a(Context context, w7.c cVar) throws Throwable {
        long j9;
        c cVar2;
        int i9;
        Boolean bool;
        g gVarE;
        int i10;
        u2.a aVarD;
        Object objD;
        c cVar3;
        f fVar;
        h hVar;
        f fVar2;
        u2.a aVarD2;
        Cursor cursor;
        Context applicationContext = context.getApplicationContext();
        if (applicationContext == null) {
            throw new a("null application Context");
        }
        ThreadLocal threadLocal = f5520h;
        f fVar3 = (f) threadLocal.get();
        f fVar4 = new f();
        threadLocal.set(fVar4);
        e eVar = f5521i;
        Long l9 = (Long) eVar.get();
        long jLongValue = l9.longValue();
        try {
            eVar.set(Long.valueOf(SystemClock.elapsedRealtime()));
            l.h hVarN = cVar.n(context, f5522j);
            j9 = jLongValue;
            try {
                Log.i("DynamiteModule", "Considering local module com.google.android.gms.providerinstaller.dynamite:" + hVarN.f3250a + " and remote module com.google.android.gms.providerinstaller.dynamite:" + hVarN.f3251b);
                int i11 = hVarN.c;
                if (i11 != 0) {
                    if (i11 != -1) {
                        boolean z8 = true;
                        if (i11 == 1 || hVarN.f3251b != 0) {
                            if (i11 == -1) {
                                Log.i("DynamiteModule", "Selected local version of ".concat("com.google.android.gms.providerinstaller.dynamite"));
                                cVar2 = new c(applicationContext);
                            } else {
                                if (i11 == 1) {
                                    throw new a("VersionPolicy returned invalid code:" + i11);
                                }
                                try {
                                    i9 = hVarN.f3251b;
                                    try {
                                        synchronized (c.class) {
                                            if (d(context)) {
                                                throw new a("Remote loading disabled");
                                            }
                                            bool = c;
                                        }
                                        if (bool != null) {
                                            throw new a("Failed to determine which loading route to use.");
                                        }
                                        if (bool.booleanValue()) {
                                            Log.i("DynamiteModule", "Selected remote version of com.google.android.gms.providerinstaller.dynamite, version >= " + i9);
                                            synchronized (c.class) {
                                                hVar = f5524l;
                                            }
                                            if (hVar != null) {
                                                throw new a("DynamiteLoaderV2 was not cached.");
                                            }
                                            fVar2 = (f) threadLocal.get();
                                            if (fVar2 != null || fVar2.f5526a == null) {
                                                throw new a("No result cursor");
                                            }
                                            Context applicationContext2 = context.getApplicationContext();
                                            Cursor cursor2 = fVar2.f5526a;
                                            new u2.b(null);
                                            synchronized (c.class) {
                                                if (f5518f < 2) {
                                                    z8 = false;
                                                }
                                            }
                                            if (z8) {
                                                Log.v("DynamiteModule", "Dynamite loader version >= 2, using loadModule2NoCrashUtils");
                                                aVarD2 = hVar.e(new u2.b(applicationContext2), i9, new u2.b(cursor2));
                                            } else {
                                                Log.w("DynamiteModule", "Dynamite loader version < 2, falling back to loadModule2");
                                                aVarD2 = hVar.d(new u2.b(applicationContext2), i9, new u2.b(cursor2));
                                            }
                                            Context context2 = (Context) u2.b.d(aVarD2);
                                            if (context2 == null) {
                                                throw new a("Failed to get module context");
                                            }
                                            cVar3 = new c(context2);
                                        } else {
                                            Log.i("DynamiteModule", "Selected remote version of com.google.android.gms.providerinstaller.dynamite, version >= " + i9);
                                            gVarE = e(context);
                                            if (gVarE != null) {
                                                throw new a("Failed to create IDynamiteLoader.");
                                            }
                                            Parcel parcelB = gVarE.b(gVarE.c(), 6);
                                            i10 = parcelB.readInt();
                                            parcelB.recycle();
                                            if (i10 >= 3) {
                                                fVar = (f) threadLocal.get();
                                                if (fVar != null) {
                                                    throw new a("No cached result cursor holder");
                                                }
                                                aVarD = gVarE.e(new u2.b(context), i9, new u2.b(fVar.f5526a));
                                            } else if (i10 == 2) {
                                                Log.w("DynamiteModule", "IDynamite loader version = 2");
                                                aVarD = gVarE.f(new u2.b(context), i9);
                                            } else {
                                                Log.w("DynamiteModule", "Dynamite loader version < 2, falling back to createModuleContext");
                                                aVarD = gVarE.d(new u2.b(context), i9);
                                            }
                                            objD = u2.b.d(aVarD);
                                            if (objD != null) {
                                                throw new a("Failed to load remote module.");
                                            }
                                            cVar3 = new c((Context) objD);
                                        }
                                        cVar2 = cVar3;
                                    } catch (RemoteException e6) {
                                        throw new a("Failed to load remote module.", e6);
                                    } catch (a e9) {
                                        throw e9;
                                    } catch (Throwable th) {
                                        throw new a("Failed to load remote module.", th);
                                    }
                                } catch (a e10) {
                                    Log.w("DynamiteModule", "Failed to load remote module: " + e10.getMessage());
                                    int i12 = hVarN.f3250a;
                                    if (i12 == 0 || cVar.n(context, new i(i12)).c != -1) {
                                        throw new a("Remote load failed. No local fallback found.", e10);
                                    }
                                    Log.i("DynamiteModule", "Selected local version of ".concat("com.google.android.gms.providerinstaller.dynamite"));
                                    cVar2 = new c(applicationContext);
                                }
                            }
                            if (j9 == 0) {
                                f5521i.remove();
                            } else {
                                f5521i.set(l9);
                            }
                            cursor = fVar4.f5526a;
                            if (cursor != null) {
                                cursor.close();
                            }
                            f5520h.set(fVar3);
                            return cVar2;
                        }
                    } else if (hVarN.f3250a != 0) {
                        i11 = -1;
                        boolean z9 = true;
                        if (i11 == 1) {
                        }
                        if (i11 == -1) {
                            Log.i("DynamiteModule", "Selected local version of ".concat("com.google.android.gms.providerinstaller.dynamite"));
                            cVar2 = new c(applicationContext);
                        } else {
                            if (i11 == 1) {
                                throw new a("VersionPolicy returned invalid code:" + i11);
                            }
                            i9 = hVarN.f3251b;
                            synchronized (c.class) {
                                if (d(context)) {
                                    throw new a("Remote loading disabled");
                                }
                                bool = c;
                                if (bool != null) {
                                    throw new a("Failed to determine which loading route to use.");
                                }
                                if (bool.booleanValue()) {
                                    Log.i("DynamiteModule", "Selected remote version of com.google.android.gms.providerinstaller.dynamite, version >= " + i9);
                                    synchronized (c.class) {
                                        hVar = f5524l;
                                        if (hVar != null) {
                                            throw new a("DynamiteLoaderV2 was not cached.");
                                        }
                                        fVar2 = (f) threadLocal.get();
                                        if (fVar2 != null) {
                                        }
                                        throw new a("No result cursor");
                                    }
                                }
                                Log.i("DynamiteModule", "Selected remote version of com.google.android.gms.providerinstaller.dynamite, version >= " + i9);
                                gVarE = e(context);
                                if (gVarE != null) {
                                    throw new a("Failed to create IDynamiteLoader.");
                                }
                                Parcel parcelB2 = gVarE.b(gVarE.c(), 6);
                                i10 = parcelB2.readInt();
                                parcelB2.recycle();
                                if (i10 >= 3) {
                                    fVar = (f) threadLocal.get();
                                    if (fVar != null) {
                                        throw new a("No cached result cursor holder");
                                    }
                                    aVarD = gVarE.e(new u2.b(context), i9, new u2.b(fVar.f5526a));
                                } else if (i10 == 2) {
                                    Log.w("DynamiteModule", "IDynamite loader version = 2");
                                    aVarD = gVarE.f(new u2.b(context), i9);
                                } else {
                                    Log.w("DynamiteModule", "Dynamite loader version < 2, falling back to createModuleContext");
                                    aVarD = gVarE.d(new u2.b(context), i9);
                                }
                                objD = u2.b.d(aVarD);
                                if (objD != null) {
                                    throw new a("Failed to load remote module.");
                                }
                                cVar3 = new c((Context) objD);
                                cVar2 = cVar3;
                            }
                        }
                        if (j9 == 0) {
                            f5521i.remove();
                        } else {
                            f5521i.set(l9);
                        }
                        cursor = fVar4.f5526a;
                        if (cursor != null) {
                            cursor.close();
                        }
                        f5520h.set(fVar3);
                        return cVar2;
                    }
                }
                throw new a("No acceptable module com.google.android.gms.providerinstaller.dynamite found. Local version is " + hVarN.f3250a + " and remote version is " + hVarN.f3251b + ".");
            } catch (Throwable th2) {
                th = th2;
                if (j9 == 0) {
                    f5521i.remove();
                } else {
                    f5521i.set(l9);
                }
                Cursor cursor3 = fVar4.f5526a;
                if (cursor3 != null) {
                    cursor3.close();
                }
                f5520h.set(fVar3);
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            j9 = jLongValue;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int b(Context context, boolean z8, boolean z9) throws Throwable {
        Throwable th;
        Exception exc;
        boolean z10;
        Cursor cursor = null;
        try {
            try {
                boolean z11 = true;
                Cursor cursorQuery = context.getContentResolver().query(new Uri$Builder().scheme("content").authority("com.google.android.gms.chimera").path(true != z8 ? "api" : "api_force_staging").appendPath("com.google.android.gms.providerinstaller.dynamite").appendQueryParameter("requestStartTime", String.valueOf(((Long) f5521i.get()).longValue())).build(), null, null, null, null);
                if (cursorQuery != null) {
                    try {
                        if (cursorQuery.moveToFirst()) {
                            boolean z12 = false;
                            int i9 = cursorQuery.getInt(0);
                            if (i9 > 0) {
                                synchronized (c.class) {
                                    try {
                                        d = cursorQuery.getString(2);
                                        int columnIndex = cursorQuery.getColumnIndex("loaderVersion");
                                        if (columnIndex >= 0) {
                                            f5518f = cursorQuery.getInt(columnIndex);
                                        }
                                        int columnIndex2 = cursorQuery.getColumnIndex("disableStandaloneDynamiteLoader2");
                                        if (columnIndex2 >= 0) {
                                            z10 = cursorQuery.getInt(columnIndex2) != 0;
                                            e = z10;
                                        } else {
                                            z10 = false;
                                        }
                                    } catch (Throwable th2) {
                                        throw th2;
                                    }
                                }
                                f fVar = (f) f5520h.get();
                                if (fVar == null || fVar.f5526a != null) {
                                    z11 = false;
                                } else {
                                    fVar.f5526a = cursorQuery;
                                }
                                cursor = z11 ? null : cursorQuery;
                                z12 = z10;
                            } else {
                                cursor = cursorQuery;
                            }
                            if (z9 && z12) {
                                throw new a("forcing fallback to container DynamiteLoader impl");
                            }
                            if (cursor != null) {
                                cursor.close();
                            }
                            return i9;
                            if (exc instanceof a) {
                                throw exc;
                            }
                            throw new a("V2 version check failed: " + exc.getMessage(), exc);
                        }
                    } catch (Exception e6) {
                        exc = e6;
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
                throw new a("Failed to connect to dynamite module ContentResolver.");
            } catch (Exception e9) {
                exc = e9;
            }
        } catch (Throwable th4) {
            th = th4;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void c(ClassLoader classLoader) throws a {
        try {
            h hVar = null;
            IBinder iBinder = (IBinder) classLoader.loadClass("com.google.android.gms.dynamiteloader.DynamiteLoaderV2").getConstructor(null).newInstance(null);
            if (iBinder != null) {
                IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamite.IDynamiteLoaderV2");
                hVar = iInterfaceQueryLocalInterface instanceof h ? (h) iInterfaceQueryLocalInterface : new h(iBinder, "com.google.android.gms.dynamite.IDynamiteLoaderV2");
            }
            f5524l = hVar;
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException | NoSuchMethodException | InvocationTargetException e6) {
            throw new a("Failed to instantiate dynamite loader", e6);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean d(Context context) {
        ApplicationInfo applicationInfo;
        Boolean bool = Boolean.TRUE;
        if (bool.equals(null) || bool.equals(f5519g)) {
            return true;
        }
        boolean z8 = false;
        if (f5519g == null) {
            ProviderInfo providerInfoResolveContentProvider = context.getPackageManager().resolveContentProvider("com.google.android.gms.chimera", 0);
            p2.a.f4575b.getClass();
            if (p2.a.a(10000000, context) == 0 && providerInfoResolveContentProvider != null && "com.google.android.gms".equals(providerInfoResolveContentProvider.packageName)) {
                z8 = true;
            }
            f5519g = Boolean.valueOf(z8);
            if (z8 && (applicationInfo = providerInfoResolveContentProvider.applicationInfo) != null && (applicationInfo.flags & 129) == 0) {
                Log.i("DynamiteModule", "Non-system-image GmsCore APK, forcing V1");
                e = true;
            }
        }
        if (!z8) {
            Log.e("DynamiteModule", "Invalid GmsCore APK, remote loading disabled.");
        }
        return z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static g e(Context context) {
        g gVar;
        synchronized (c.class) {
            g gVar2 = f5523k;
            if (gVar2 != null) {
                return gVar2;
            }
            try {
                IBinder iBinder = (IBinder) context.createPackageContext("com.google.android.gms", 3).getClassLoader().loadClass("com.google.android.gms.chimera.container.DynamiteLoaderImpl").newInstance();
                if (iBinder == null) {
                    gVar = null;
                } else {
                    IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamite.IDynamiteLoader");
                    gVar = iInterfaceQueryLocalInterface instanceof g ? (g) iInterfaceQueryLocalInterface : new g(iBinder, "com.google.android.gms.dynamite.IDynamiteLoader");
                }
                if (gVar != null) {
                    f5523k = gVar;
                    return gVar;
                }
            } catch (Exception e6) {
                Log.e("DynamiteModule", "Failed to load IDynamiteLoader from GmsCore: " + e6.getMessage());
            }
            return null;
        }
    }
}
