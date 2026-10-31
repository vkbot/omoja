package e4;

import com.google.android.material.internal.CheckableImageButton;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class e extends q {
    public final /* synthetic */ int e;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ e(p pVar, int i9) {
        super(pVar);
        this.e = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // e4.q
    public void q() {
        switch (this.e) {
            case 0:
                p pVar = this.f2091b;
                pVar.f2085p = null;
                CheckableImageButton checkableImageButton = pVar.f2077h;
                checkableImageButton.setOnLongClickListener(null);
                y5.k.s(checkableImageButton, null);
                break;
        }
    }
}
