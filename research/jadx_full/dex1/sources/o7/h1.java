package o7;

import java.net.SocketAddress;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class h1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public List f4267a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f4268b;
    public int c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public SocketAddress a() {
        if (c()) {
            return (SocketAddress) ((n7.r) this.f4267a.get(this.f4268b)).f3968a.get(this.c);
        }
        j1.i.l("Index is past the end of the address group list");
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean b() {
        if (c()) {
            n7.r rVar = (n7.r) this.f4267a.get(this.f4268b);
            int i9 = this.c + 1;
            this.c = i9;
            if (i9 >= rVar.f3968a.size()) {
                int i10 = this.f4268b + 1;
                this.f4268b = i10;
                this.c = 0;
                if (i10 < this.f4267a.size()) {
                }
            }
            return true;
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean c() {
        return this.f4268b < this.f4267a.size();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void d() {
        this.f4268b = 0;
        this.c = 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean e(SocketAddress socketAddress) {
        for (int i9 = 0; i9 < this.f4267a.size(); i9++) {
            int iIndexOf = ((n7.r) this.f4267a.get(i9)).f3968a.indexOf(socketAddress);
            if (iIndexOf != -1) {
                this.f4268b = i9;
                this.c = iIndexOf;
                return true;
            }
        }
        return false;
    }
}
