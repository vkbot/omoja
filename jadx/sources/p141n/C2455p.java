package p141n;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import com.example.navistart.R;
import com.example.navistart.cores.BTProxy;
import com.example.navistart.home.WebLauncherActivity;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.ByteCompanionObject;
import org.json.JSONObject;
import p016b1.C0872m;
import p047e0.AbstractC1387m;
import p062f5.RunnableC1556j;
import p077h.C1646h;
import p077h.InterfaceC1640b;
import p078h0.C1652b;
import p094i7.C1760i;
import p098j0.C1919e;
import p098j0.EnumC1918d;
import p099j1.C1929i;
import p108k.C2019g;
import p113k4.C2046e;
import p132m0.C2315k2;
import p132m0.C2332o;
import p132m0.C2366w1;
import p142n0.EnumC2469d;
import p148n7.C2547v0;
import p151o.C2562a;
import p157o7.C2599a;
import p157o7.C2632f2;
import p157o7.InterfaceC2674m2;
import p170p7.C2985j;
import p170p7.C2986k;
import p190s1.RunnableC3180x0;
import p202t6.C3264a;
import p225w0.C3460g1;
import p225w0.C3462h0;
import p225w0.C3498x;
import p225w0.EnumC3477m0;
import p232w7.AbstractC3536b;
import p253y8.C3664a;
import p253y8.C3680q;
import p253y8.InterfaceC3669f;
import p253y8.InterfaceC3670g;
import p257z2.InterfaceC3705a;
import p257z2.InterfaceC3706b;
import p263z8.C3771i;

/* JADX INFO: renamed from: n.p */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2455p implements InterfaceC1640b, InterfaceC2458s, InterfaceC2674m2, InterfaceC3669f, InterfaceC3706b, InterfaceC3705a {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f6647b;

    /* JADX INFO: renamed from: c */
    public Object f6648c;

    public C2455p(int i10) {
        this.f6647b = i10;
        switch (i10) {
            case 2:
                this.f6648c = new C2455p(0);
                break;
            case 11:
                this.f6648c = C3264a.f9550e;
                break;
            case 17:
                this.f6648c = new C2599a();
                break;
            case 18:
                this.f6648c = new CountDownLatch(1);
                break;
            case 19:
                break;
            default:
                this.f6648c = new C2453n(500L);
                break;
        }
    }

    @Override // p257z2.InterfaceC3705a
    /* JADX INFO: renamed from: a */
    public void mo2646a(Exception exc) {
        ((CountDownLatch) this.f6648c).countDown();
    }

    @Override // p257z2.InterfaceC3706b
    /* JADX INFO: renamed from: c */
    public void mo860c(Object obj) {
        ((CountDownLatch) this.f6648c).countDown();
    }

    /* JADX WARN: Code duplicated, block: B:9:0x0018  */
    @Override // p253y8.InterfaceC3669f
    public Object collect(InterfaceC3670g interfaceC3670g, Continuation continuation) throws Throwable {
        C3664a c3664a;
        Throwable th;
        C3771i c3771i;
        switch (this.f6647b) {
            case 15:
                return C3680q.m5889h((C3680q) this.f6648c, interfaceC3670g, continuation);
            default:
                if (continuation instanceof C3664a) {
                    c3664a = (C3664a) continuation;
                    int i10 = c3664a.f10858e;
                    if ((i10 & Integer.MIN_VALUE) != 0) {
                        c3664a.f10858e = i10 - Integer.MIN_VALUE;
                    } else {
                        c3664a = new C3664a(this, continuation);
                    }
                } else {
                    c3664a = new C3664a(this, continuation);
                }
                Object obj = c3664a.f10856c;
                Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i11 = c3664a.f10858e;
                if (i11 != 0) {
                    if (i11 != 1) {
                        C1929i.m3030l("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    c3771i = c3664a.f10855b;
                    try {
                        ResultKt.throwOnFailure(obj);
                        c3771i.releaseIntercepted();
                        return Unit.INSTANCE;
                    } catch (Throwable th2) {
                        th = th2;
                        c3771i.releaseIntercepted();
                        throw th;
                    }
                }
                ResultKt.throwOnFailure(obj);
                C3771i c3771i2 = new C3771i(interfaceC3670g, c3664a.get$context());
                try {
                    c3664a.f10855b = c3771i2;
                    c3664a.f10858e = 1;
                    Object objInvoke = ((Function2) this.f6648c).invoke(c3771i2, c3664a);
                    if (objInvoke != IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                        objInvoke = Unit.INSTANCE;
                        break;
                    }
                    if (objInvoke == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    c3771i = c3771i2;
                    c3771i.releaseIntercepted();
                    return Unit.INSTANCE;
                } catch (Throwable th3) {
                    th = th3;
                    c3771i = c3771i2;
                    c3771i.releaseIntercepted();
                    throw th;
                }
        }
    }

    /* JADX INFO: renamed from: d */
    public void m3808d(BTProxy bTProxy, String str, C3462h0 c3462h0) {
        boolean zCall;
        long jM5423i = ((C3498x) this.f6648c).m5551r().m5423i();
        synchronized (((C3498x) this.f6648c).f10269O) {
            if (((C3498x) this.f6648c).f10274T && !((C3498x) this.f6648c).f10306o && c3462h0.getAsBoolean()) {
                ((C3498x) this.f6648c).m5540c0(AbstractC1387m.m2421h(new byte[]{91, 104, 115, 28, 10}, new byte[]{43, 0, 28, 114, 111, -78, -100, -9}), AbstractC1387m.m2421h(new byte[]{51, 13, -36, 66}, new byte[]{80, 108, -80, 46, -83, -127, -107, -29}), "", AbstractC1387m.m2421h(new byte[]{-73, 42, 126, 14, 30, 62, 106, -15, -80, 26, 115, 7, 25, 56, 102, -9, -96}, new byte[]{-44, 69, 16, 104, 119, 76, 7, -108}));
                ((C3498x) this.f6648c).m5521C(AbstractC1387m.m2421h(new byte[]{16, 95, 113, -118, 39, 13, -24, -60, 12, 91}, new byte[]{96, 55, 30, -28, 66, 82, -117, -91}));
                try {
                    zCall = bTProxy.call(str);
                } catch (Exception unused) {
                    zCall = false;
                }
                ((C3498x) this.f6648c).m5551r().m5422e(AbstractC1387m.m2421h(new byte[]{3, 2, -97, 57, -20, 30, -119, -27, 0, 31, -100, 35}, new byte[]{115, 106, -16, 87, -119, 65, -5, ByteCompanionObject.MIN_VALUE}), AbstractC1387m.m2421h(new byte[]{28, -2, 104, 22, -21, -19, -15, 50, 28, -30, 116, 11, -26}, new byte[]{111, -111, 29, 100, -120, -120, -94, 87}), Long.valueOf(jM5423i), AbstractC1387m.m2421h(new byte[]{80, -83, -68, 35}, new byte[]{35, -56, -46, 87, -15, -1, 121, 88}), Boolean.valueOf(zCall));
                if (zCall) {
                    return;
                }
                new Handler(Looper.getMainLooper()).post(new RunnableC1556j(21, this));
            }
        }
    }

    /* JADX INFO: renamed from: f */
    public void m3809f(C0872m c0872m) {
        String string;
        C3498x c3498x = (C3498x) this.f6648c;
        C3460g1 c3460g1M5551r = c3498x.m5551r();
        String strM2421h = AbstractC1387m.m2421h(new byte[]{100, 119, -101, 12, -97, -63, -54, -45, 117, 107, -111}, new byte[]{20, 31, -12, 98, -6, -98, -71, -89});
        String strM2421h2 = AbstractC1387m.m2421h(new byte[]{-126, -105, 118, -50, 54}, new byte[]{-15, -29, 23, -70, 83, -43, 17, 116});
        EnumC3477m0 enumC3477m0 = (EnumC3477m0) c0872m.f601c;
        c3460g1M5551r.m5422e(strM2421h, strM2421h2, enumC3477m0.name());
        Context context = c3498x.f10304m;
        String str = (String) c0872m.f602d;
        List list = (List) c0872m.f604f;
        switch (enumC3477m0.ordinal()) {
            case 2:
            case 3:
                string = context.getString(R.string.voice_call_loading);
                break;
            case 4:
                string = context.getString(R.string.voice_call_not_found);
                break;
            case 5:
                string = context.getString(R.string.voice_call_no_contacts);
                break;
            case 6:
            case 8:
                StringBuilder sb = new StringBuilder(context.getString(enumC3477m0 == EnumC3477m0.f10111h ? R.string.voice_call_choose_contact : R.string.voice_call_choose_number));
                int i10 = 0;
                while (i10 < list.size()) {
                    sb.append('\n');
                    int i11 = i10 + 1;
                    sb.append(i11);
                    sb.append(AbstractC1387m.m2421h(new byte[]{-49, 69}, new byte[]{-31, 101, 75, 106, -97, -14, 114, -9}));
                    sb.append((String) list.get(i10));
                    i10 = i11;
                }
                string = sb.toString();
                break;
            case 7:
                string = context.getString(R.string.voice_call_too_many);
                break;
            case 9:
                string = context.getString(R.string.voice_call_no_number, str);
                break;
            case 10:
                string = context.getString(R.string.voice_call_confirm, str, (String) c0872m.f603e);
                break;
            default:
                string = context.getString(R.string.voice_call_ask_name);
                break;
        }
        C3498x.m5512f(c3498x, string);
    }

    /* JADX INFO: renamed from: g */
    public boolean m3810g(long j10, String str, String str2) {
        SharedPreferences sharedPreferences = (SharedPreferences) this.f6648c;
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        int i10 = 0;
        for (Map.Entry<String, ?> entry : sharedPreferences.getAll().entrySet()) {
            try {
                if (new JSONObject(String.valueOf(entry.getValue())).getLong(AbstractC1387m.m2421h(new byte[]{-120, -124, -99, 58, -114}, new byte[]{-3, -22, -23, 83, -30, -51, 44, 15})) <= j10) {
                    editorEdit.remove(entry.getKey());
                } else {
                    i10++;
                }
            } catch (Exception unused) {
                editorEdit.remove(entry.getKey());
            }
        }
        return i10 < 100 && editorEdit.putString(str, str2).commit();
    }

    @Override // p077h.InterfaceC1640b
    /* JADX INFO: renamed from: h */
    public boolean mo1146h(Object obj, File file, C1646h c1646h) throws Throwable {
        InputStream inputStream = (InputStream) obj;
        C2019g c2019g = (C2019g) this.f6648c;
        byte[] bArr = (byte[]) c2019g.m3106c(65536, byte[].class);
        FileOutputStream fileOutputStream = null;
        try {
            try {
                FileOutputStream fileOutputStream2 = new FileOutputStream(file);
                while (true) {
                    try {
                        int i10 = inputStream.read(bArr);
                        if (i10 == -1) {
                            break;
                        }
                        fileOutputStream2.write(bArr, 0, i10);
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
                        c2019g.m3110g(bArr);
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
                        c2019g.m3110g(bArr);
                        throw th;
                    }
                }
                fileOutputStream2.close();
                try {
                    fileOutputStream2.close();
                } catch (IOException unused3) {
                }
                c2019g.m3110g(bArr);
                return true;
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (IOException e6) {
            e = e6;
        }
    }

    /* JADX INFO: renamed from: i */
    public void m3811i(C1919e c1919e) {
        WebLauncherActivity webLauncherActivity = (WebLauncherActivity) this.f6648c;
        String str = WebLauncherActivity.f1739l;
        if (c1919e.f5058a == EnumC1918d.f5053b && c1919e.f5059b != null) {
            C1652b.m2734a();
            int guDisplayID = C1652b.m2744n().getGuDisplayID();
            Bundle bundle = new Bundle();
            bundle.putInt(AbstractC1387m.m2421h(new byte[]{16, 35, -31}, new byte[]{116, 74, -110, -95, 31, -2, 74, -38}), guDisplayID);
            EnumC2469d enumC2469d = c1919e.f5059b;
            if (enumC2469d == EnumC2469d.f6770l) {
                webLauncherActivity.m1649G(C2332o.class, bundle);
                return;
            } else if (enumC2469d == EnumC2469d.f6763h0) {
                webLauncherActivity.m1649G(C2315k2.class, bundle);
                return;
            } else if (enumC2469d == EnumC2469d.f6713A0) {
                bundle.putBoolean(AbstractC1387m.m2421h(new byte[]{22, 68, 72, -78, 79, 92, 101, 59, 43, 70, 64, -84, 65, 91, 84, 55, 29, 65, 74, -82}, new byte[]{116, 37, 47, -64, 46, 41, 11, 95}), true);
                webLauncherActivity.m1649G(C2366w1.class, bundle);
                return;
            }
        }
        new Thread(new RunnableC3180x0(0, webLauncherActivity, c1919e), AbstractC1387m.m2421h(new byte[]{-1, 113, 79, 53, 30, 85, 37, 100, -60, 126, 88, 52, 13, 66, 40, 102, -59, 121, 84, 50}, new byte[]{-79, 16, 59, 92, 104, 48, 105, 5})).start();
    }

    @Override // p141n.InterfaceC2458s
    /* JADX INFO: renamed from: j */
    public InterfaceC2457r mo1344j(C2465z c2465z) {
        return new C2562a((C2455p) this.f6648c);
    }

    /* JADX INFO: renamed from: k */
    public void m3812k(boolean z9) {
        C2632f2 c2632f2 = (C2632f2) this.f6648c;
        c2632f2.f7421Y.m3098d(c2632f2.f7401E, z9);
    }

    /* JADX INFO: renamed from: l */
    public void m3813l(C2547v0 c2547v0, byte[] bArr) {
        AbstractC3536b.m5642c();
        try {
            String str = "/" + ((C2986k) this.f6648c).f8358i.f7055b;
            if (bArr != null) {
                ((C2986k) this.f6648c).f8365p = true;
                str = str + "?" + C2046e.f5600d.m3145c(bArr);
            }
            synchronized (((C2986k) this.f6648c).f8362m.f8353w) {
                C2985j.m4779j(((C2986k) this.f6648c).f8362m, c2547v0, str);
            }
            AbstractC3536b.f10507a.getClass();
        } catch (Throwable th) {
            try {
                AbstractC3536b.f10507a.getClass();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public String toString() {
        switch (this.f6647b) {
            case 7:
                StringBuilder sb = new StringBuilder();
                String[] strArr = (String[]) this.f6648c;
                int length = strArr.length / 2;
                for (int i10 = 0; i10 < length; i10++) {
                    int i11 = i10 * 2;
                    String str = null;
                    sb.append((i11 < 0 || i11 >= strArr.length) ? null : strArr[i11]);
                    sb.append(": ");
                    int i12 = i11 + 1;
                    if (i12 >= 0 && i12 < strArr.length) {
                        str = strArr[i12];
                    }
                    sb.append(str);
                    sb.append("\n");
                }
                return sb.toString();
            default:
                return super.toString();
        }
    }

    public /* synthetic */ C2455p(int i10, Object obj) {
        this.f6647b = i10;
        this.f6648c = obj;
    }

    public C2455p(C1760i c1760i) {
        this.f6647b = 7;
        ArrayList arrayList = c1760i.f4603b;
        this.f6648c = (String[]) arrayList.toArray(new String[arrayList.size()]);
    }
}
