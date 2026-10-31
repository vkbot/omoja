package p047e0;

import android.text.Editable;
import android.text.TextWatcher;
import com.example.navistart.MainActivity;
import java.util.Locale;
import p078h0.C1652b;
import p132m0.C2331n3;
import p132m0.C2360v;
import p225w0.C3481o0;

/* JADX INFO: renamed from: e0.a1 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1329a1 implements TextWatcher {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f3176b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ Object f3177c;

    public /* synthetic */ C1329a1(int i10, Object obj) {
        this.f3176b = i10;
        this.f3177c = obj;
    }

    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
        switch (this.f3176b) {
            case 0:
                MainActivity mainActivity = (MainActivity) this.f3177c;
                C1652b.m2745o().saveInt(AbstractC1387m.m2421h(new byte[]{80, 107, -71, 63, 14, 35, 108, 109, 101, 111, -81, 2, 32, 33, 74, 120}, new byte[]{0, 10, -53, 84, 65, 77, 63, 29}), !"".equals(mainActivity.f1329Q0.getEditText().getText().toString()) ? Integer.parseInt(mainActivity.f1329Q0.getEditText().getText().toString()) : 0);
                break;
        }
    }

    @Override // android.text.TextWatcher
    public final void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        int i13 = this.f3176b;
    }

    @Override // android.text.TextWatcher
    public final void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        int i13 = this.f3176b;
        Object obj = this.f3177c;
        switch (i13) {
            case 0:
                break;
            case 1:
                C2360v c2360v = (C2360v) obj;
                String string = charSequence == null ? "" : charSequence.toString();
                String str = C2360v.f6378h;
                c2360v.m3735v(string);
                break;
            case 2:
                C2331n3 c2331n3 = (C2331n3) obj;
                c2331n3.f6263l = charSequence.toString().trim().toLowerCase(Locale.ROOT);
                c2331n3.m3712u();
                break;
            case 3:
                ((C3481o0) obj).f10178a = charSequence.toString();
                break;
            default:
                ((Runnable) obj).run();
                break;
        }
    }

    /* JADX INFO: renamed from: a */
    private final void m2372a(Editable editable) {
    }

    /* JADX INFO: renamed from: b */
    private final void m2373b(Editable editable) {
    }

    /* JADX INFO: renamed from: c */
    private final void m2374c(Editable editable) {
    }

    /* JADX INFO: renamed from: d */
    private final void m2375d(Editable editable) {
    }

    /* JADX INFO: renamed from: e */
    private final void m2376e(CharSequence charSequence, int i10, int i11, int i12) {
    }

    /* JADX INFO: renamed from: f */
    private final void m2377f(CharSequence charSequence, int i10, int i11, int i12) {
    }

    /* JADX INFO: renamed from: g */
    private final void m2378g(CharSequence charSequence, int i10, int i11, int i12) {
    }

    /* JADX INFO: renamed from: h */
    private final void m2379h(CharSequence charSequence, int i10, int i11, int i12) {
    }

    /* JADX INFO: renamed from: i */
    private final void m2380i(CharSequence charSequence, int i10, int i11, int i12) {
    }

    /* JADX INFO: renamed from: j */
    private final void m2381j(CharSequence charSequence, int i10, int i11, int i12) {
    }
}
