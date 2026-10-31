package m0;

import android.content.DialogInterface$OnClickListener;
import android.text.TextUtils;
import android.view.View;
import android.view.View$OnClickListener;
import androidx.appcompat.app.AlertDialog$Builder;
import androidx.appcompat.app.AppCompatActivity;
import e0.p3;
import java.util.Locale;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class r implements View$OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f3577b;
    public final /* synthetic */ t c;
    public final /* synthetic */ u d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ r(t tVar, u uVar, int i9) {
        this.f3577b = i9;
        this.c = tVar;
        this.d = uVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View$OnClickListener
    public final void onClick(View view) {
        int i9 = this.f3577b;
        u uVar = this.d;
        t tVar = this.c;
        switch (i9) {
            case 0:
                v vVar = tVar.f3588a;
                String str = v.f3604h;
                if ((vVar.requireActivity() instanceof AppCompatActivity) && !TextUtils.isEmpty(uVar.c)) {
                    StringBuilder sb = new StringBuilder();
                    u0.a aVarO = h0.b.o();
                    byte[] bArr = e0.m.f1896j;
                    String[] strArr = p3.f1924a;
                    com.google.protobuf.q.s(bArr, aVarO, "", sb);
                    com.google.protobuf.q.r(new byte[]{108, 105, 99, 116, 95, 114, 105, 117, 101}, sb);
                    String strG = com.google.protobuf.q.g(sb, e0.x1.f1989q);
                    u0.a aVarO2 = h0.b.o();
                    byte[] bArr2 = e0.m.f1892f;
                    if ((com.google.protobuf.q.w(bArr2, aVarO2, "", strG) ? Boolean.valueOf(com.google.protobuf.q.d(Long.MAX_VALUE, h0.b.a().j()) < Long.parseLong(new String(com.google.protobuf.q.x(new byte[]{-7}, new byte[]{-55, -23, 84, 108, 22, -121, -121, -5}, h0.b.o(), com.google.protobuf.q.h(e0.m.f1893g, h0.b.o(), new String(bArr2)), 0)))) : Boolean.FALSE).booleanValue()) {
                        AppCompatActivity appCompatActivity = (AppCompatActivity) vVar.requireActivity();
                        String str2 = uVar.c;
                        String strH = uVar.f3594b;
                        if (TextUtils.isEmpty(strH)) {
                            strH = uVar.f3593a;
                        }
                        if (TextUtils.isEmpty(strH)) {
                            strH = e0.m.h(new byte[]{-119, 88, 64, -119, 116, 69, -106, 30, -118}, new byte[]{-6, 44, 47, -5, 17, 26, -9, 110});
                        }
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append(strH.toLowerCase(Locale.ROOT).replaceAll(e0.m.h(new byte[]{122, -48, -85, 42, 83, -107, 74, 20, 15, -47, -25, 90}, new byte[]{33, -114, -54, 7, 41, -91, 103, 45}), e0.m.h(new byte[]{32}, new byte[]{ByteCompanionObject.MAX_VALUE, 27, 9, 89, 34, -97, -9, 87})));
                        new e0.y2(appCompatActivity, str2, com.google.protobuf.q.i(new byte[]{33, 82, -98, -41}, new byte[]{15, 51, -18, -68, 4, 118, 119, -39}, sb2));
                    }
                }
                break;
            case 1:
                v.t(tVar.f3588a, uVar);
                break;
            case 2:
                v vVar2 = tVar.f3588a;
                String str3 = v.f3604h;
                if (uVar.f3595f && !TextUtils.isEmpty(uVar.f3594b)) {
                    new AlertDialog$Builder(vVar2.requireContext(), 2132017903).setTitle(vVar2.getString(2131951917)).setMessage(vVar2.getString(2131951918) + e0.m.h(new byte[]{49, -102}, new byte[]{17, -72, 4, -30, 20, 85, 23, -78}) + uVar.f3593a + e0.m.h(new byte[]{-39, 28, -36}, new byte[]{-5, 60, -29, 124, 119, -67, -45, -102})).setPositiveButton(vVar2.getString(2131952436), new e0.e0(2, vVar2, uVar)).setNegativeButton(vVar2.getString(2131951882), (DialogInterface$OnClickListener) null).show();
                    break;
                }
                break;
            default:
                if (uVar.f3595f) {
                    v.t(tVar.f3588a, uVar);
                }
                break;
        }
    }
}
