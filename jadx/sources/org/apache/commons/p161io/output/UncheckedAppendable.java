package org.apache.commons.p161io.output;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public interface UncheckedAppendable extends Appendable {
    /* JADX INFO: renamed from: on */
    static UncheckedAppendable m4633on(Appendable appendable) {
        return new UncheckedAppendableImpl(appendable);
    }

    @Override // java.lang.Appendable
    UncheckedAppendable append(char c);

    @Override // java.lang.Appendable
    UncheckedAppendable append(CharSequence charSequence);

    @Override // java.lang.Appendable
    UncheckedAppendable append(CharSequence charSequence, int i10, int i11);
}
