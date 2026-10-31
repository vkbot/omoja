package b4;

import android.graphics.Rect;
import android.os.Bundle;
import android.os.Handler;
import android.os.Handler$Callback;
import android.os.Message;
import android.util.Log;
import b7.n;
import b7.s;
import b7.v;
import java.util.ArrayList;
import z5.m;
import z5.o;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class k implements Handler$Callback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f326a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f327b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ k(int i9, Object obj) {
        this.f326a = i9;
        this.f327b = obj;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.os.Handler$Callback
    public final boolean handleMessage(Message message) {
        z5.j jVar;
        m mVarB;
        switch (this.f326a) {
            case 0:
                if (message.what != 0) {
                    return false;
                }
                android.support.v4.media.h hVar = (android.support.v4.media.h) this.f327b;
                l lVar = (l) message.obj;
                synchronized (hVar.c) {
                    try {
                        hVar.getClass();
                        lVar.getClass();
                        throw null;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            case 1:
                n nVar = (n) this.f327b;
                r5.c cVar = nVar.f382j;
                c7.g gVar = nVar.f376a;
                int i9 = message.what;
                if (i9 != 2131297791) {
                    if (i9 != 2131297795) {
                        return true;
                    }
                    gVar.f520h.post(new c7.d(gVar, cVar, 0));
                    return true;
                }
                v vVar = (v) message.obj;
                Handler handler = nVar.e;
                long jCurrentTimeMillis = System.currentTimeMillis();
                Rect rect = nVar.f378f;
                vVar.d = rect;
                s sVar = vVar.f390a;
                int i10 = sVar.f386a;
                if (rect == null) {
                    jVar = null;
                } else {
                    int i11 = vVar.c;
                    byte[] bArr = sVar.c;
                    int i12 = sVar.f387b;
                    if (i11 == 90) {
                        byte[] bArr2 = new byte[i10 * i12];
                        int i13 = 0;
                        for (int i14 = 0; i14 < i10; i14++) {
                            for (int i15 = i12 - 1; i15 >= 0; i15--) {
                                bArr2[i13] = bArr[(i15 * i10) + i14];
                                i13++;
                            }
                        }
                        sVar = new s(bArr2, i12, i10);
                    } else if (i11 == 180) {
                        int i16 = i10 * i12;
                        byte[] bArr3 = new byte[i16];
                        int i17 = i16 - 1;
                        for (int i18 = 0; i18 < i16; i18++) {
                            bArr3[i17] = bArr[i18];
                            i17--;
                        }
                        sVar = new s(bArr3, i10, i12);
                    } else if (i11 == 270) {
                        int i19 = i10 * i12;
                        byte[] bArr4 = new byte[i19];
                        int i20 = i19 - 1;
                        for (int i21 = 0; i21 < i10; i21++) {
                            for (int i22 = i12 - 1; i22 >= 0; i22--) {
                                bArr4[i20] = bArr[(i22 * i10) + i21];
                                i20--;
                            }
                        }
                        sVar = new s(bArr4, i12, i10);
                    }
                    Rect rect2 = vVar.d;
                    byte[] bArr5 = sVar.c;
                    int iWidth = rect2.width();
                    int iHeight = rect2.height();
                    int i23 = rect2.top;
                    byte[] bArr6 = new byte[iWidth * iHeight];
                    int i24 = sVar.f386a;
                    int i25 = (i23 * i24) + rect2.left;
                    int i26 = 0;
                    while (i26 < iHeight) {
                        int i27 = i26;
                        System.arraycopy(bArr5, i25, bArr6, i27 * iWidth, iWidth);
                        i25 += i24;
                        i26 = i27 + 1;
                    }
                    jVar = new z5.j(iWidth, iHeight, iWidth, iHeight, bArr6);
                }
                if (jVar != null) {
                    b7.k kVar = nVar.d;
                    z5.b bVarB = kVar.b(jVar);
                    z5.h hVar2 = kVar.f373a;
                    kVar.f374b.clear();
                    try {
                        if (hVar2 != null) {
                            if (hVar2.f6327b == null) {
                                hVar2.c(null);
                            }
                            mVarB = hVar2.b(bVarB);
                        } else {
                            hVar2.c(null);
                            mVarB = hVar2.b(bVarB);
                        }
                        hVar2.reset();
                    } catch (Exception unused) {
                        hVar2.reset();
                        mVarB = null;
                    } catch (Throwable th2) {
                        hVar2.reset();
                        throw th2;
                    }
                } else {
                    mVarB = null;
                }
                if (mVarB != null) {
                    Log.d("n", "Found barcode in " + (System.currentTimeMillis() - jCurrentTimeMillis) + " ms");
                    if (handler != null) {
                        b7.a aVar = new b7.a();
                        aVar.f332a = mVarB;
                        aVar.f333b = vVar;
                        Message messageObtain = Message.obtain(handler, 2131297793, aVar);
                        messageObtain.setData(new Bundle());
                        messageObtain.sendToTarget();
                    }
                } else if (handler != null) {
                    Message.obtain(handler, 2131297792).sendToTarget();
                }
                if (handler != null) {
                    b7.k kVar2 = nVar.d;
                    kVar2.getClass();
                    ArrayList arrayList = new ArrayList(kVar2.f374b);
                    ArrayList arrayList2 = new ArrayList(arrayList.size());
                    int size = arrayList.size();
                    int i28 = 0;
                    while (i28 < size) {
                        Object obj = arrayList.get(i28);
                        i28++;
                        o oVar = (o) obj;
                        float f8 = 1;
                        float f9 = oVar.f6339a * f8;
                        Rect rect3 = vVar.d;
                        float f10 = f9 + rect3.left;
                        float f11 = (oVar.f6340b * f8) + rect3.top;
                        if (vVar.e) {
                            f10 = i10 - f10;
                        }
                        arrayList2.add(new o(f10, f11));
                    }
                    Message.obtain(handler, 2131297794, arrayList2).sendToTarget();
                }
                gVar.f520h.post(new c7.d(gVar, cVar, 0));
                return true;
            case 2:
                int i29 = message.what;
                c7.b bVar = (c7.b) this.f327b;
                if (i29 != 1) {
                    return false;
                }
                bVar.b();
                return true;
            default:
                u.f fVar = (u.f) this.f327b;
                int i30 = message.what;
                if (i30 == 1) {
                    fVar.b((u.d) message.obj);
                    return true;
                }
                if (i30 == 2) {
                    fVar.d.k((u.d) message.obj);
                }
                return false;
        }
    }
}
