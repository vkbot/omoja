package u1;

import android.app.ActivityOptions;
import android.content.Intent;
import android.hardware.display.DisplayManager;
import android.view.Display;
import android.view.View;
import android.view.View$OnClickListener;
import android.widget.EditText;
import c5.h;
import com.example.navistart.BlackActivity;
import e0.m;
import kotlin.io.encoding.Base64;
import kotlin.jvm.internal.ByteCompanionObject;
import y5.k;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class b implements View$OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f5456b;
    public final /* synthetic */ d c;
    public final /* synthetic */ EditText d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ b(d dVar, EditText editText, int i9) {
        this.f5456b = i9;
        this.c = dVar;
        this.d = editText;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View$OnClickListener
    public final void onClick(View view) {
        int i9 = this.f5456b;
        EditText editText = this.d;
        d dVar = this.c;
        switch (i9) {
            case 0:
                Intent intent = new Intent(m.h(new byte[]{56, -43, -23, 116, 7, -48, -32, -3, 38, -45, -23, 122, 7, -43, -9, -26, Base64.padSymbol, -33, -1, 105, 6, -48, -14, -9, 56, -45, -23, 100, 26, -44, -8, -16}, new byte[]{121, ByteCompanionObject.MIN_VALUE, -67, 59, 73, -111, -74, -76}));
                intent.putExtra(m.h(new byte[]{-47, -106, -56, -21, -21, 49, -5, 36}, new byte[]{-102, -45, -111, -76, -65, 104, -85, 97}), 10019);
                intent.putExtra(m.h(new byte[]{103, -107, 99, 54, Base64.padSymbol, -8, -44, -43, 99, -103, 114}, new byte[]{34, -51, 55, 100, 124, -89, -121, -127}), Integer.parseInt(editText.getText().toString()));
                k.r(dVar.requireContext(), intent);
                h0.b.a();
                h0.b.n().DisplayAreaOpen(Integer.parseInt(editText.getText().toString()));
                break;
            default:
                int i10 = Integer.parseInt(editText.getText().toString());
                Display[] displays = ((DisplayManager) dVar.requireContext().getSystemService(m.h(new byte[]{36, 16, 26, -120, 43, 126, 7}, new byte[]{64, 121, 105, -8, 71, 31, 126, 48}))).getDisplays();
                if (i10 >= displays.length) {
                    k.x(dVar.requireContext(), m.h(new byte[]{-66, 56, -48, 11, Base64.padSymbol, -119, 75, -27, -111, 46}, new byte[]{-16, 87, -16, 79, 84, -6, 59, -119}));
                } else {
                    k.u(dVar.requireContext(), new Intent(dVar.requireContext(), (Class<?>) BlackActivity.class).addFlags(268435456), h.b(ActivityOptions.makeBasic(), displays[i10].getDisplayId()).toBundle());
                }
                break;
        }
    }
}
