package org.apache.commons.io.output;

import java.util.Objects;
import org.apache.commons.io.function.Uncheck;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
final class UncheckedAppendableImpl implements UncheckedAppendable {
    private final Appendable appendable;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public UncheckedAppendableImpl(Appendable appendable) {
        Objects.requireNonNull(appendable, "appendable");
        this.appendable = appendable;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.output.UncheckedAppendable, java.lang.Appendable
    public UncheckedAppendable append(CharSequence charSequence, int i, int i2) {
        Appendable appendable = this.appendable;
        Objects.requireNonNull(appendable);
        Uncheck.apply(new c(appendable, 1), charSequence, Integer.valueOf(i), Integer.valueOf(i2));
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toString() {
        return this.appendable.toString();
    }

    @Override // org.apache.commons.io.output.UncheckedAppendable, java.lang.Appendable
    public /* bridge */ /* synthetic */ Appendable append(CharSequence charSequence) {
        return append(charSequence);
    }

    @Override // org.apache.commons.io.output.UncheckedAppendable, java.lang.Appendable
    public /* bridge */ /* synthetic */ Appendable append(CharSequence charSequence, int i, int i2) {
        return append(charSequence, i, i2);
    }

    @Override // org.apache.commons.io.output.UncheckedAppendable, java.lang.Appendable
    public UncheckedAppendable append(char c) {
        Appendable appendable = this.appendable;
        Objects.requireNonNull(appendable);
        Uncheck.apply(new c(appendable, 0), Character.valueOf(c));
        return this;
    }

    @Override // org.apache.commons.io.output.UncheckedAppendable, java.lang.Appendable
    public UncheckedAppendable append(CharSequence charSequence) {
        Appendable appendable = this.appendable;
        Objects.requireNonNull(appendable);
        Uncheck.apply(new c(appendable, 2), charSequence);
        return this;
    }

    @Override // org.apache.commons.io.output.UncheckedAppendable, java.lang.Appendable
    public /* bridge */ /* synthetic */ Appendable append(char c) {
        return append(c);
    }
}
