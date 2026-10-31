package n;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences$Editor;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import com.example.navistart.cores.BTProxy;
import com.example.navistart.home.WebLauncherActivity;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.Map$Entry;
import java.util.concurrent.CountDownLatch;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.ByteCompanionObject;
import m0.k2;
import m0.w1;
import n7.v0;
import o7.f2;
import o7.m2;
import org.json.JSONObject;
import s1.x0;
import w0.g1;
import w0.h0;
import w0.m0;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class p implements h.b, s, m2, y8.f, z2.b, z2.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f3759b;
    public Object c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public p(int i9) {
        this.f3759b = i9;
        switch (i9) {
            case 2:
                this.c = new p(0);
                break;
            case 11:
                this.c = t6.a.e;
                break;
            case 17:
                this.c = new o7.a();
                break;
            case 18:
                this.c = new CountDownLatch(1);
                break;
            case 19:
                break;
            default:
                this.c = new n(500L);
                break;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // z2.a
    public void a(Exception exc) {
        ((CountDownLatch) this.c).countDown();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // z2.b
    public void c(Object obj) {
        ((CountDownLatch) this.c).countDown();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:9:0x0018  */
    public Object collect(y8.g gVar, Continuation continuation) throws Throwable {
        y8.a aVar;
        Throwable th;
        z8.i iVar;
        switch (this.f3759b) {
            case 15:
                return y8.q.h((y8.q) this.c, gVar, continuation);
            default:
                if (continuation instanceof y8.a) {
                    aVar = (y8.a) continuation;
                    int i9 = aVar.e;
                    if ((i9 & Integer.MIN_VALUE) != 0) {
                        aVar.e = i9 - Integer.MIN_VALUE;
                    } else {
                        aVar = new y8.a(this, continuation);
                    }
                } else {
                    aVar = new y8.a(this, continuation);
                }
                Object obj = aVar.c;
                Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i10 = aVar.e;
                if (i10 != 0) {
                    if (i10 != 1) {
                        j1.i.l("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    iVar = aVar.b;
                    try {
                        ResultKt.throwOnFailure(obj);
                        iVar.releaseIntercepted();
                        return Unit.INSTANCE;
                    } catch (Throwable th2) {
                        th = th2;
                        iVar.releaseIntercepted();
                        throw th;
                    }
                }
                ResultKt.throwOnFailure(obj);
                z8.i iVar2 = new z8.i(gVar, aVar.get$context());
                try {
                    aVar.b = iVar2;
                    aVar.e = 1;
                    Object objInvoke = ((Function2) this.c).invoke(iVar2, aVar);
                    if (objInvoke != IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                        objInvoke = Unit.INSTANCE;
                        break;
                    }
                    if (objInvoke == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    iVar = iVar2;
                    iVar.releaseIntercepted();
                    return Unit.INSTANCE;
                } catch (Throwable th3) {
                    th = th3;
                    iVar = iVar2;
                    iVar.releaseIntercepted();
                    throw th;
                }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void d(BTProxy bTProxy, String str, h0 h0Var) {
        boolean zCall;
        long jI = ((w0.x) this.c).r().i();
        synchronized (((w0.x) this.c).O) {
            if (((w0.x) this.c).T && !((w0.x) this.c).f5818o && h0Var.getAsBoolean()) {
                ((w0.x) this.c).c0(e0.m.h(new byte[]{91, 104, 115, 28, 10}, new byte[]{43, 0, 28, 114, 111, -78, -100, -9}), e0.m.h(new byte[]{51, 13, -36, 66}, new byte[]{80, 108, -80, 46, -83, -127, -107, -29}), "", e0.m.h(new byte[]{-73, 42, 126, 14, 30, 62, 106, -15, -80, 26, 115, 7, 25, 56, 102, -9, -96}, new byte[]{-44, 69, 16, 104, 119, 76, 7, -108}));
                ((w0.x) this.c).C(e0.m.h(new byte[]{16, 95, 113, -118, 39, 13, -24, -60, 12, 91}, new byte[]{96, 55, 30, -28, 66, 82, -117, -91}));
                try {
                    zCall = bTProxy.call(str);
                } catch (Exception unused) {
                    zCall = false;
                }
                ((w0.x) this.c).r().e(e0.m.h(new byte[]{3, 2, -97, 57, -20, 30, -119, -27, 0, 31, -100, 35}, new byte[]{115, 106, -16, 87, -119, 65, -5, ByteCompanionObject.MIN_VALUE}), e0.m.h(new byte[]{28, -2, 104, 22, -21, -19, -15, 50, 28, -30, 116, 11, -26}, new byte[]{111, -111, 29, 100, -120, -120, -94, 87}), Long.valueOf(jI), e0.m.h(new byte[]{80, -83, -68, 35}, new byte[]{35, -56, -46, 87, -15, -1, 121, 88}), Boolean.valueOf(zCall));
                if (zCall) {
                    return;
                }
                new Handler(Looper.getMainLooper()).post(new f5.j(21, this));
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void f(b1.m mVar) {
        String string;
        w0.x xVar = (w0.x) this.c;
        g1 g1VarR = xVar.r();
        String strH = e0.m.h(new byte[]{100, 119, -101, 12, -97, -63, -54, -45, 117, 107, -111}, new byte[]{20, 31, -12, 98, -6, -98, -71, -89});
        String strH2 = e0.m.h(new byte[]{-126, -105, 118, -50, 54}, new byte[]{-15, -29, 23, -70, 83, -43, 17, 116});
        m0 m0Var = (m0) mVar.c;
        g1VarR.e(strH, strH2, m0Var.name());
        Context context = xVar.f5816m;
        String str = (String) mVar.d;
        List list = (List) mVar.f270f;
        switch (m0Var.ordinal()) {
            case 2:
            case 3:
                string = context.getString(2131952796);
                break;
            case 4:
                string = context.getString(2131952799);
                break;
            case 5:
                string = context.getString(2131952797);
                break;
            case 6:
            case 8:
                StringBuilder sb = new StringBuilder(context.getString(m0Var == m0.f5715h ? 2131952792 : 2131952793));
                int i9 = 0;
                while (i9 < list.size()) {
                    sb.append('\n');
                    int i10 = i9 + 1;
                    sb.append(i10);
                    sb.append(e0.m.h(new byte[]{-49, 69}, new byte[]{-31, 101, 75, 106, -97, -14, 114, -9}));
                    sb.append((String) list.get(i9));
                    i9 = i10;
                }
                string = sb.toString();
                break;
            case 7:
                string = context.getString(2131952801);
                break;
            case 9:
                string = context.getString(2131952798, str);
                break;
            case 10:
                string = context.getString(2131952794, str, (String) mVar.e);
                break;
            default:
                string = context.getString(2131952791);
                break;
        }
        w0.x.f(xVar, string);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean g(long j9, String str, String str2) {
        SharedPreferences sharedPreferences = (SharedPreferences) this.c;
        SharedPreferences$Editor sharedPreferences$EditorEdit = sharedPreferences.edit();
        int i9 = 0;
        for (Map$Entry<String, ?> map$Entry : sharedPreferences.getAll().entrySet()) {
            try {
                if (new JSONObject(String.valueOf(map$Entry.getValue())).getLong(e0.m.h(new byte[]{-120, -124, -99, 58, -114}, new byte[]{-3, -22, -23, 83, -30, -51, 44, 15})) <= j9) {
                    sharedPreferences$EditorEdit.remove(map$Entry.getKey());
                } else {
                    i9++;
                }
            } catch (Exception unused) {
                sharedPreferences$EditorEdit.remove(map$Entry.getKey());
            }
        }
        return i9 < 100 && sharedPreferences$EditorEdit.putString(str, str2).commit();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // h.b
    public boolean h(Object obj, File file, h.h hVar) throws Throwable {
        InputStream inputStream = (InputStream) obj;
        k.g gVar = (k.g) this.c;
        byte[] bArr = (byte[]) gVar.c(65536, byte[].class);
        FileOutputStream fileOutputStream = null;
        try {
            try {
                FileOutputStream fileOutputStream2 = new FileOutputStream(file);
                while (true) {
                    try {
                        int i9 = inputStream.read(bArr);
                        if (i9 == -1) {
                            break;
                        }
                        fileOutputStream2.write(bArr, 0, i9);
                    } catch (IOException e) {
                        e = e;
                        fileOutputStream = fileOutputStream2;
                        if (Log.isLoggable("StreamEncoder", 3)) {
                            Log.d("StreamEncoder", "Failed to encode data onto the OutputStream", e);
                        }
                        if (fileOutputStream != null) {
                            try {
                                fileOutputStream.close();
                            } catch (IOException unused) {
                            }
                        }
                        gVar.g(bArr);
                        return false;
                    } catch (Throwable th) {
                        th = th;
                        fileOutputStream = fileOutputStream2;
                        if (fileOutputStream != null) {
                            try {
                                fileOutputStream.close();
                            } catch (IOException unused2) {
                            }
                        }
                        gVar.g(bArr);
                        throw th;
                    }
                }
                fileOutputStream2.close();
                try {
                    fileOutputStream2.close();
                } catch (IOException unused3) {
                }
                gVar.g(bArr);
                return true;
            } catch (IOException e6) {
                e = e6;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void i(j0.e eVar) {
        WebLauncherActivity webLauncherActivity = (WebLauncherActivity) this.c;
        String str = WebLauncherActivity.f910l;
        if (eVar.f2872a == j0.d.f2870b && eVar.f2873b != null) {
            h0.b.a();
            int guDisplayID = h0.b.n().getGuDisplayID();
            Bundle bundle = new Bundle();
            bundle.putInt(e0.m.h(new byte[]{16, 35, -31}, new byte[]{116, 74, -110, -95, 31, -2, 74, -38}), guDisplayID);
            n0.d dVar = eVar.f2873b;
            if (dVar == n0.d.f3816l) {
                webLauncherActivity.G(m0.o.class, bundle);
                return;
            } else if (dVar == n0.d.f3809h0) {
                webLauncherActivity.G(k2.class, bundle);
                return;
            } else if (dVar == n0.d.A0) {
                bundle.putBoolean(e0.m.h(new byte[]{22, 68, 72, -78, 79, 92, 101, 59, 43, 70, 64, -84, 65, 91, 84, 55, 29, 65, 74, -82}, new byte[]{116, 37, 47, -64, 46, 41, 11, 95}), true);
                webLauncherActivity.G(w1.class, bundle);
                return;
            }
        }
        new Thread(new x0(0, webLauncherActivity, eVar), e0.m.h(new byte[]{-1, 113, 79, 53, 30, 85, 37, 100, -60, 126, 88, 52, 13, 66, 40, 102, -59, 121, 84, 50}, new byte[]{-79, 16, 59, 92, 104, 48, 105, 5})).start();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n.s
    public r j(z zVar) {
        return new o.a((p) this.c);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void k(boolean z8) {
        f2 f2Var = (f2) this.c;
        f2Var.Y.d(f2Var.E, z8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void l(v0 v0Var, byte[] bArr) {
        w7.b.c();
        try {
            String str = "/" + ((p7.k) this.c).f4650i.f3985b;
            if (bArr != null) {
                ((p7.k) this.c).f4657p = true;
                str = str + "?" + k4.e.d.c(bArr);
            }
            synchronized (((p7.k) this.c).f4654m.w) {
                p7.j.j(((p7.k) this.c).f4654m, v0Var, str);
            }
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
    public String toString() {
        switch (this.f3759b) {
            case 7:
                StringBuilder sb = new StringBuilder();
                String[] strArr = (String[]) this.c;
                int length = strArr.length / 2;
                for (int i9 = 0; i9 < length; i9++) {
                    int i10 = i9 * 2;
                    String str = null;
                    sb.append((i10 < 0 || i10 >= strArr.length) ? null : strArr[i10]);
                    sb.append(": ");
                    int i11 = i10 + 1;
                    if (i11 >= 0 && i11 < strArr.length) {
                        str = strArr[i11];
                    }
                    sb.append(str);
                    sb.append("\n");
                }
                return sb.toString();
            default:
                return super.toString();
        }
    }

    public /* synthetic */ p(int i9, Object obj) {
        this.f3759b = i9;
        this.c = obj;
    }

    public p(i7.i iVar) {
        this.f3759b = 7;
        ArrayList arrayList = iVar.f2690b;
        this.c = (String[]) arrayList.toArray(new String[arrayList.size()]);
    }
}
