package s1;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.View$OnClickListener;
import com.example.navistart.W;
import com.woha.appmanag.FilePickerActivity;
import kotlin.io.encoding.Base64;
import kotlin.jvm.internal.ByteCompanionObject;
import m0.i1;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class u implements View$OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f5203b;
    public final /* synthetic */ v c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ u(v vVar, int i9) {
        this.f5203b = i9;
        this.c = vVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View$OnClickListener
    public final void onClick(View view) {
        int i9 = this.f5203b;
        v vVar = this.c;
        switch (i9) {
            case 0:
                String str = v.f5219f;
                Intent intent = new Intent(vVar.requireContext(), (Class<?>) W.class);
                intent.putExtra(e0.m.h(new byte[]{69, 105, -59, -93, -95, 15, 17, 113, 124, 73, -15, -118, -109, 62, 38, 85, 102}, new byte[]{35, 27, -92, -60, -52, 106, ByteCompanionObject.MAX_VALUE, 5}), e0.m.h(new byte[]{-61, 38, -103, -110, 122, -65, -34, -15, -34, 52, -120, -104, 112, -65}, new byte[]{-111, 115, -41, -51, 62, -10, -97, -67}));
                intent.putExtra(e0.m.h(new byte[]{-124, 112, -116, -116, 117, 123, 60, 90, -67, 97, -127, -118, 107, 109}, new byte[]{-30, 2, -19, -21, 24, 30, 82, 46}), i1.class.getName());
                String strH = e0.m.h(new byte[]{42, -55, 46, -39, -125, -33, 119, 48, 19, -38, Base64.padSymbol, -39, -99}, new byte[]{76, -69, 79, -66, -18, -70, 25, 68});
                Bundle bundleX = i1.x(i1.f3468l);
                bundleX.putString(i1.f3467k, i1.f3471o);
                intent.putExtra(strH, bundleX);
                intent.addFlags(134217728);
                vVar.startActivity(intent);
                break;
            default:
                String str2 = v.f5219f;
                Intent intent2 = new Intent(vVar.requireContext(), (Class<?>) FilePickerActivity.class);
                intent2.putExtra(e0.m.h(new byte[]{89, -12, -84, 34, -116, -17, -111, -72, 90, -13, -77, 46, -68, -28}, new byte[]{63, -99, -64, 71, -45, -118, -23, -52}), e0.m.h(new byte[]{30, 113, 15, 125}, new byte[]{48, 11, 102, 13, 112, -115, -107, -39}));
                intent2.putExtra(e0.m.h(new byte[]{46, -73, 56, 111, 90, -125, -75, 8, 45, -80, 39, 99, 106, -120, -110, 17, 39, -70, 49, 85, 118, -125, -93, 24}, new byte[]{72, -34, 84, 10, 5, -26, -51, 124}), 1);
                vVar.startActivityForResult(intent2, 101845);
                break;
        }
    }
}
