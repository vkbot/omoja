package org.apache.commons.io.output;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public interface UncheckedAppendable extends Appendable {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static UncheckedAppendable on(Appendable appendable) {
        return new UncheckedAppendableImpl(appendable);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Appendable
    /* bridge */ /* synthetic */ default Appendable append(char c) {
        return append(c);
    }

    @Override // java.lang.Appendable
    UncheckedAppendable append(char c);

    @Override // java.lang.Appendable
    UncheckedAppendable append(CharSequence charSequence);

    @Override // java.lang.Appendable
    UncheckedAppendable append(CharSequence charSequence, int i, int i2);

    @Override // java.lang.Appendable
    /* bridge */ /* synthetic */ default Appendable append(CharSequence charSequence) {
        return append(charSequence);
    }

    @Override // java.lang.Appendable
    /* bridge */ /* synthetic */ default Appendable append(CharSequence charSequence, int i, int i2) {
        return append(charSequence, i, i2);
    }
}
