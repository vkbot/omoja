package p109k0;

import android.text.InputFilter;
import android.text.Spanned;

/* JADX INFO: renamed from: k0.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2026b implements InputFilter {
    @Override // android.text.InputFilter
    public final CharSequence filter(CharSequence charSequence, int i10, int i11, Spanned spanned, int i12, int i13) {
        try {
            String str = spanned.toString().substring(0, i12) + charSequence.toString().substring(i10, i11) + spanned.toString().substring(i13);
            if (str.isEmpty()) {
                return null;
            }
            int i14 = Integer.parseInt(str);
            if (i14 < 0 || i14 > 11) {
                return "";
            }
            return null;
        } catch (Exception unused) {
            return "";
        }
    }
}
