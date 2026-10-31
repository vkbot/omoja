package p019b4;

import android.graphics.Rect;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.support.v4.media.C0090h;
import android.util.Log;
import com.example.navistart.R;
import java.util.ArrayList;
import p022b7.C0905a;
import p022b7.C0915k;
import p022b7.C0918n;
import p022b7.C0923s;
import p022b7.C0926v;
import p032c7.C0998b;
import p032c7.C1003g;
import p032c7.RunnableC1000d;
import p184r5.C3105c;
import p205u.C3272d;
import p205u.C3274f;
import p260z5.C3746b;
import p260z5.C3752h;
import p260z5.C3754j;
import p260z5.C3757m;
import p260z5.C3759o;

/* JADX INFO: renamed from: b4.k */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C0900k implements Handler.Callback {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f691a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ Object f692b;

    public /* synthetic */ C0900k(int i10, Object obj) {
        this.f691a = i10;
        this.f692b = obj;
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        C3754j c3754j;
        C3757m c3757mM5985b;
        switch (this.f691a) {
            case 0:
                if (message.what != 0) {
                    return false;
                }
                C0090h c0090h = (C0090h) this.f692b;
                AbstractC0901l abstractC0901l = (AbstractC0901l) message.obj;
                synchronized (c0090h.f191c) {
                    try {
                        c0090h.getClass();
                        abstractC0901l.getClass();
                        throw null;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            case 1:
                C0918n c0918n = (C0918n) this.f692b;
                C3105c c3105c = c0918n.f765j;
                C1003g c1003g = c0918n.f756a;
                int i10 = message.what;
                if (i10 != R.id.zxing_decode) {
                    int i11 = 0;
                    if (i10 != R.id.zxing_preview_failed) {
                        return true;
                    }
                    c1003g.f984h.post(new RunnableC1000d(c1003g, c3105c, i11));
                    return true;
                }
                C0926v c0926v = (C0926v) message.obj;
                Handler handler = c0918n.f760e;
                long jCurrentTimeMillis = System.currentTimeMillis();
                Rect rect = c0918n.f761f;
                c0926v.f782d = rect;
                C0923s c0923s = c0926v.f779a;
                int i12 = c0923s.f773a;
                if (rect == null) {
                    c3754j = null;
                } else {
                    int i13 = c0926v.f781c;
                    byte[] bArr = c0923s.f775c;
                    int i14 = c0923s.f774b;
                    if (i13 == 90) {
                        byte[] bArr2 = new byte[i12 * i14];
                        int i15 = 0;
                        for (int i16 = 0; i16 < i12; i16++) {
                            for (int i17 = i14 - 1; i17 >= 0; i17--) {
                                bArr2[i15] = bArr[(i17 * i12) + i16];
                                i15++;
                            }
                        }
                        c0923s = new C0923s(bArr2, i14, i12);
                    } else if (i13 == 180) {
                        int i18 = i12 * i14;
                        byte[] bArr3 = new byte[i18];
                        int i19 = i18 - 1;
                        for (int i20 = 0; i20 < i18; i20++) {
                            bArr3[i19] = bArr[i20];
                            i19--;
                        }
                        c0923s = new C0923s(bArr3, i12, i14);
                    } else if (i13 == 270) {
                        int i21 = i12 * i14;
                        byte[] bArr4 = new byte[i21];
                        int i22 = i21 - 1;
                        for (int i23 = 0; i23 < i12; i23++) {
                            for (int i24 = i14 - 1; i24 >= 0; i24--) {
                                bArr4[i22] = bArr[(i24 * i12) + i23];
                                i22--;
                            }
                        }
                        c0923s = new C0923s(bArr4, i14, i12);
                    }
                    Rect rect2 = c0926v.f782d;
                    byte[] bArr5 = c0923s.f775c;
                    int iWidth = rect2.width();
                    int iHeight = rect2.height();
                    int i25 = rect2.top;
                    byte[] bArr6 = new byte[iWidth * iHeight];
                    int i26 = c0923s.f773a;
                    int i27 = (i25 * i26) + rect2.left;
                    int i28 = 0;
                    while (i28 < iHeight) {
                        int i29 = i28;
                        System.arraycopy(bArr5, i27, bArr6, i29 * iWidth, iWidth);
                        i27 += i26;
                        i28 = i29 + 1;
                    }
                    c3754j = new C3754j(iWidth, iHeight, iWidth, iHeight, bArr6);
                }
                if (c3754j != null) {
                    C0915k c0915k = c0918n.f759d;
                    C3746b c3746bMo1053b = c0915k.mo1053b(c3754j);
                    C3752h c3752h = c0915k.f753a;
                    c0915k.f754b.clear();
                    try {
                        if (c3752h != null) {
                            if (c3752h.f11191b == null) {
                                c3752h.m5986c(null);
                            }
                            c3757mM5985b = c3752h.m5985b(c3746bMo1053b);
                        } else {
                            c3752h.m5986c(null);
                            c3757mM5985b = c3752h.m5985b(c3746bMo1053b);
                        }
                        c3752h.reset();
                    } catch (Exception unused) {
                        c3752h.reset();
                        c3757mM5985b = null;
                    } catch (Throwable th2) {
                        c3752h.reset();
                        throw th2;
                    }
                } else {
                    c3757mM5985b = null;
                }
                if (c3757mM5985b != null) {
                    Log.d("n", "Found barcode in " + (System.currentTimeMillis() - jCurrentTimeMillis) + " ms");
                    if (handler != null) {
                        C0905a c0905a = new C0905a();
                        c0905a.f700a = c3757mM5985b;
                        c0905a.f701b = c0926v;
                        Message messageObtain = Message.obtain(handler, R.id.zxing_decode_succeeded, c0905a);
                        messageObtain.setData(new Bundle());
                        messageObtain.sendToTarget();
                    }
                } else if (handler != null) {
                    Message.obtain(handler, R.id.zxing_decode_failed).sendToTarget();
                }
                if (handler != null) {
                    C0915k c0915k2 = c0918n.f759d;
                    c0915k2.getClass();
                    ArrayList arrayList = new ArrayList(c0915k2.f754b);
                    ArrayList arrayList2 = new ArrayList(arrayList.size());
                    int size = arrayList.size();
                    int i30 = 0;
                    while (i30 < size) {
                        Object obj = arrayList.get(i30);
                        i30++;
                        C3759o c3759o = (C3759o) obj;
                        float f8 = 1;
                        float f10 = c3759o.f11214a * f8;
                        Rect rect3 = c0926v.f782d;
                        float f11 = f10 + rect3.left;
                        float f12 = (c3759o.f11215b * f8) + rect3.top;
                        if (c0926v.f783e) {
                            f11 = i12 - f11;
                        }
                        arrayList2.add(new C3759o(f11, f12));
                    }
                    Message.obtain(handler, R.id.zxing_possible_result_points, arrayList2).sendToTarget();
                }
                c1003g.f984h.post(new RunnableC1000d(c1003g, c3105c, 0));
                return true;
            case 2:
                int i31 = message.what;
                C0998b c0998b = (C0998b) this.f692b;
                if (i31 != 1) {
                    return false;
                }
                c0998b.m1202b();
                return true;
            default:
                C3274f c3274f = (C3274f) this.f692b;
                int i32 = message.what;
                if (i32 == 1) {
                    c3274f.m5213b((C3272d) message.obj);
                    return true;
                }
                if (i32 == 2) {
                    c3274f.f9592d.m1377k((C3272d) message.obj);
                }
                return false;
        }
    }
}
