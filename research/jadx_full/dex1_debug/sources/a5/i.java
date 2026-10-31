package a5;

import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class i implements x4.g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f49a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f50b = false;
    public x4.c c;
    public final f d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public i(f fVar) {
        this.d = fVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x4.g
    public final x4.g b(String str) throws IOException {
        if (this.f49a) {
            throw new x4.b("Cannot encode a second value in the ValueEncoderContext");
        }
        this.f49a = true;
        this.d.e(this.c, str, this.f50b);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x4.g
    public final x4.g c(boolean z8) throws IOException {
        if (this.f49a) {
            throw new x4.b("Cannot encode a second value in the ValueEncoderContext");
        }
        this.f49a = true;
        this.d.b(this.c, z8 ? 1 : 0, this.f50b);
        return this;
    }
}
