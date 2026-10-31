package p097j;

import java.io.IOException;

/* JADX INFO: renamed from: j.y */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1913y implements Appendable {

    /* JADX INFO: renamed from: b */
    public final Appendable f5038b;

    /* JADX INFO: renamed from: c */
    public boolean f5039c = true;

    public C1913y(Appendable appendable) {
        this.f5038b = appendable;
    }

    @Override // java.lang.Appendable
    public final Appendable append(CharSequence charSequence, int i10, int i11) throws IOException {
        if (charSequence == null) {
            charSequence = "";
        }
        boolean z9 = this.f5039c;
        Appendable appendable = this.f5038b;
        boolean z10 = false;
        if (z9) {
            this.f5039c = false;
            appendable.append("  ");
        }
        if (charSequence.length() > 0 && charSequence.charAt(i11 - 1) == '\n') {
            z10 = true;
        }
        this.f5039c = z10;
        appendable.append(charSequence, i10, i11);
        return this;
    }

    @Override // java.lang.Appendable
    public final Appendable append(CharSequence charSequence) throws IOException {
        if (charSequence == null) {
            charSequence = "";
        }
        append(charSequence, 0, charSequence.length());
        return this;
    }

    @Override // java.lang.Appendable
    public final Appendable append(char c) throws IOException {
        boolean z9 = this.f5039c;
        Appendable appendable = this.f5038b;
        if (z9) {
            this.f5039c = false;
            appendable.append("  ");
        }
        this.f5039c = c == '\n';
        appendable.append(c);
        return this;
    }
}
