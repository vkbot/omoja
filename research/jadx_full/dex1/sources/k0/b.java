package k0;

import android.text.InputFilter;
import android.text.Spanned;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class b implements InputFilter {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.text.InputFilter
    public final CharSequence filter(CharSequence charSequence, int i9, int i10, Spanned spanned, int i11, int i12) {
        try {
            String str = spanned.toString().substring(0, i11) + charSequence.toString().substring(i9, i10) + spanned.toString().substring(i12);
            if (str.isEmpty()) {
                return null;
            }
            int i13 = Integer.parseInt(str);
            if (i13 < 0 || i13 > 11) {
                return "";
            }
            return null;
        } catch (Exception unused) {
            return "";
        }
    }
}
