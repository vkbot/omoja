package org.apache.commons.p161io.output;

import java.util.Objects;
import org.apache.commons.p161io.function.Uncheck;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
final class UncheckedAppendableImpl implements UncheckedAppendable {
    private final Appendable appendable;

    public UncheckedAppendableImpl(Appendable appendable) {
        Objects.requireNonNull(appendable, "appendable");
        this.appendable = appendable;
    }

    @Override // org.apache.commons.p161io.output.UncheckedAppendable, java.lang.Appendable
    public UncheckedAppendable append(CharSequence charSequence, int i10, int i11) {
        Appendable appendable = this.appendable;
        Objects.requireNonNull(appendable);
        Uncheck.apply(new C2911c(appendable, 1), charSequence, Integer.valueOf(i10), Integer.valueOf(i11));
        return this;
    }

    public String toString() {
        return this.appendable.toString();
    }

    @Override // org.apache.commons.p161io.output.UncheckedAppendable, java.lang.Appendable
    public UncheckedAppendable append(char c) {
        Appendable appendable = this.appendable;
        Objects.requireNonNull(appendable);
        Uncheck.apply(new C2911c(appendable, 0), Character.valueOf(c));
        return this;
    }

    @Override // org.apache.commons.p161io.output.UncheckedAppendable, java.lang.Appendable
    public UncheckedAppendable append(CharSequence charSequence) {
        Appendable appendable = this.appendable;
        Objects.requireNonNull(appendable);
        Uncheck.apply(new C2911c(appendable, 2), charSequence);
        return this;
    }
}
