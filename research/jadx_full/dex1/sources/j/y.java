package j;

import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class y implements Appendable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Appendable f2862b;
    public boolean c = true;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public y(Appendable appendable) {
        this.f2862b = appendable;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Appendable
    public final Appendable append(CharSequence charSequence, int i9, int i10) throws IOException {
        if (charSequence == null) {
            charSequence = "";
        }
        boolean z8 = this.c;
        Appendable appendable = this.f2862b;
        boolean z9 = false;
        if (z8) {
            this.c = false;
            appendable.append("  ");
        }
        if (charSequence.length() > 0 && charSequence.charAt(i10 - 1) == '\n') {
            z9 = true;
        }
        this.c = z9;
        appendable.append(charSequence, i9, i10);
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
        boolean z8 = this.c;
        Appendable appendable = this.f2862b;
        if (z8) {
            this.c = false;
            appendable.append("  ");
        }
        this.c = c == '\n';
        appendable.append(c);
        return this;
    }
}
