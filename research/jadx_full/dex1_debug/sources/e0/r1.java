package e0;

import android.view.KeyEvent$Callback;
import com.example.navistart.ModernMainActivity;
import com.example.navistart.mainview.YMovLay;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class r1 implements t1.p {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ KeyEvent$Callback f1941b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;
    public final /* synthetic */ KeyEvent$Callback e;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ r1(KeyEvent$Callback keyEvent$Callback, Object obj, Object obj2, KeyEvent$Callback keyEvent$Callback2) {
        this.f1941b = keyEvent$Callback;
        this.c = obj;
        this.d = obj2;
        this.e = keyEvent$Callback2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // t1.p
    public void a(int i9, boolean z8) {
        ModernMainActivity modernMainActivity = (ModernMainActivity) this.f1941b;
        String str = (String) this.c;
        String str2 = (String) this.d;
        YMovLay yMovLay = (YMovLay) this.e;
        String str3 = ModernMainActivity.B1;
        u0.a aVarO = h0.b.o();
        if (!z8) {
            str = str2;
        }
        aVarO.saveString(str, String.valueOf(i9));
        if (z8) {
            yMovLay.setYLayMovX(String.valueOf(i9));
        } else {
            yMovLay.setYLayMovY(String.valueOf(i9));
        }
        n3.a(modernMainActivity);
    }
}
