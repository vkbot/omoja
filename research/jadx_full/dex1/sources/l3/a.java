package l3;

import android.graphics.Typeface;
import com.google.android.material.chip.Chip;
import s3.i;
import s3.j;
import w3.g;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class a extends g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3256a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f3257b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ a(int i9, Object obj) {
        this.f3256a = i9;
        this.f3257b = obj;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // w3.g
    public final void a(int i9) {
        switch (this.f3256a) {
            case 0:
                break;
            default:
                j jVar = (j) this.f3257b;
                jVar.e = true;
                i iVar = (i) jVar.f5292f.get();
                if (iVar != null) {
                    iVar.a();
                }
                break;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // w3.g
    public final void b(Typeface typeface, boolean z8) {
        switch (this.f3256a) {
            case 0:
                Chip chip = (Chip) this.f3257b;
                e eVar = chip.f1217b;
                chip.setText(eVar.N0 ? eVar.P : chip.getText());
                chip.requestLayout();
                chip.invalidate();
                break;
            default:
                if (!z8) {
                    j jVar = (j) this.f3257b;
                    jVar.e = true;
                    i iVar = (i) jVar.f5292f.get();
                    if (iVar != null) {
                        iVar.a();
                    }
                    break;
                }
                break;
        }
    }

    private final void c(int i9) {
    }
}
