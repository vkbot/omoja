package q0;

import android.content.Context;
import android.util.Log;
import com.example.navistart.MockGPS.MockGpsService;
import kotlin.io.encoding.Base64;
import kotlin.jvm.internal.ByteCompanionObject;
import m0.b3;
import org.json.JSONException;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class o implements y0.e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4809a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ p f4810b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ o(p pVar, int i9) {
        this.f4809a = i9;
        this.f4810b = pVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // y0.e
    public final void a(String str) {
        switch (this.f4809a) {
            case 0:
                p pVar = this.f4810b;
                if (pVar.d.get()) {
                    try {
                        q qVarB = q.b(str);
                        if (qVarB != null) {
                            pVar.f4817h = System.currentTimeMillis();
                            pVar.f4818i = false;
                            MockGpsService mockGpsService = pVar.f4814b;
                            String string = pVar.f4813a.getString(2131952215);
                            String strA = pVar.a();
                            mockGpsService.getClass();
                            MockGpsService.j(string, strA, true);
                            pVar.f4814b.i(qVarB);
                        }
                    } catch (JSONException e) {
                        Log.w(p.f4812p, com.google.protobuf.q.l(new byte[]{-62, -12, 48, 68, -123, 27, -101, 98, -13, -27, 59, 22, -123, 73, -67, 92, -45, -75, 36, 5, -110, 2, -97, 120, -70, -75}, new byte[]{ByteCompanionObject.MIN_VALUE, -107, 84, 100, -15, 105, -6, 12}, new StringBuilder(), str), e);
                        return;
                    }
                    break;
                }
                break;
            default:
                p pVar2 = this.f4810b;
                if (pVar2.d.get()) {
                    try {
                        b3 b3VarC = com.bumptech.glide.d.c(str);
                        if (e0.m.h(new byte[]{90, -55, -21}, new byte[]{Base64.padSymbol, -71, -104, ByteCompanionObject.MIN_VALUE, 23, -112, 112, -5}).equals(b3VarC.f3342b)) {
                            pVar2.f4816g = b3VarC.f3341a;
                            if (b3VarC.f3341a) {
                                pVar2.d(true);
                                pVar2.e();
                            }
                            boolean z8 = pVar2.f4815f && pVar2.f4816g;
                            MockGpsService mockGpsService2 = pVar2.f4814b;
                            Context context = pVar2.f4813a;
                            if (!z8) {
                                String string2 = context.getString(2131952217);
                                String strA2 = pVar2.a();
                                mockGpsService2.getClass();
                                MockGpsService.j(string2, strA2, false);
                                pVar2.f4814b.h();
                            } else {
                                String string3 = context.getString(2131952217);
                                String strA3 = pVar2.a();
                                mockGpsService2.getClass();
                                MockGpsService.j(string3, strA3, true);
                            }
                        }
                    } catch (RuntimeException e6) {
                        e = e6;
                        Log.w(p.f4812p, e0.m.h(new byte[]{33, 39, 63, -126, 93, -12, 43, 25, 19, 52, 62, -47, ByteCompanionObject.MAX_VALUE, -54, 27, 92, 67, 54, 58, -63, 113, -63, 12}, new byte[]{99, 70, 91, -94, 26, -92, 120, 57}), e);
                    } catch (JSONException e9) {
                        e = e9;
                        Log.w(p.f4812p, e0.m.h(new byte[]{33, 39, 63, -126, 93, -12, 43, 25, 19, 52, 62, -47, ByteCompanionObject.MAX_VALUE, -54, 27, 92, 67, 54, 58, -63, 113, -63, 12}, new byte[]{99, 70, 91, -94, 26, -92, 120, 57}), e);
                    }
                    break;
                }
                break;
        }
    }
}
