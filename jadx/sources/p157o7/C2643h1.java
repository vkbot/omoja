package p157o7;

import java.net.SocketAddress;
import java.util.List;
import p099j1.C1929i;
import p148n7.C2538r;

/* JADX INFO: renamed from: o7.h1 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2643h1 {

    /* JADX INFO: renamed from: a */
    public List f7496a;

    /* JADX INFO: renamed from: b */
    public int f7497b;

    /* JADX INFO: renamed from: c */
    public int f7498c;

    /* JADX INFO: renamed from: a */
    public SocketAddress m4159a() {
        if (m4161c()) {
            return (SocketAddress) ((C2538r) this.f7496a.get(this.f7497b)).f7017a.get(this.f7498c);
        }
        C1929i.m3030l("Index is past the end of the address group list");
        return null;
    }

    /* JADX INFO: renamed from: b */
    public boolean m4160b() {
        if (m4161c()) {
            C2538r c2538r = (C2538r) this.f7496a.get(this.f7497b);
            int i10 = this.f7498c + 1;
            this.f7498c = i10;
            if (i10 >= c2538r.f7017a.size()) {
                int i11 = this.f7497b + 1;
                this.f7497b = i11;
                this.f7498c = 0;
                if (i11 < this.f7496a.size()) {
                }
            }
            return true;
        }
        return false;
    }

    /* JADX INFO: renamed from: c */
    public boolean m4161c() {
        return this.f7497b < this.f7496a.size();
    }

    /* JADX INFO: renamed from: d */
    public void m4162d() {
        this.f7497b = 0;
        this.f7498c = 0;
    }

    /* JADX INFO: renamed from: e */
    public boolean m4163e(SocketAddress socketAddress) {
        for (int i10 = 0; i10 < this.f7496a.size(); i10++) {
            int iIndexOf = ((C2538r) this.f7496a.get(i10)).f7017a.indexOf(socketAddress);
            if (iIndexOf != -1) {
                this.f7497b = i10;
                this.f7498c = iIndexOf;
                return true;
            }
        }
        return false;
    }
}
