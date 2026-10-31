package e0;

import android.widget.RadioGroup;
import android.widget.RadioGroup$OnCheckedChangeListener;
import com.example.navistart.MainActivity;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class u0 implements RadioGroup$OnCheckedChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int[] f1958a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f1959b;
    public final /* synthetic */ int[] c;
    public final /* synthetic */ String d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ u0(int[] iArr, String str, int[] iArr2, String str2) {
        this.f1958a = iArr;
        this.f1959b = str;
        this.c = iArr2;
        this.d = str2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.RadioGroup$OnCheckedChangeListener
    public final void onCheckedChanged(RadioGroup radioGroup, int i9) {
        String str = MainActivity.f688e1;
        if (!x.b()) {
            return;
        }
        int i10 = 0;
        while (true) {
            int[] iArr = this.f1958a;
            if (i10 >= iArr.length) {
                return;
            }
            if (i9 == iArr[i10]) {
                u0.a aVarO = h0.b.o();
                int[] iArr2 = this.c;
                aVarO.saveInt(this.f1959b, iArr2[i10]);
                int i11 = iArr2[i10];
                if (x.b() && h0.b.o().loadInt(x.f1985a, 0) == 4) {
                    String str2 = this.d;
                    if (x.d(i11, str2)) {
                        x.c(i11, str2);
                        return;
                    }
                    return;
                }
                return;
            }
            i10++;
        }
    }
}
