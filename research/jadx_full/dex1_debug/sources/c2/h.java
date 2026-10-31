package c2;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class h extends a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Integer f443a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f444b;
    public final String c;
    public final String d;
    public final String e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f445f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final String f446g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f447h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f448i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f449j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f450k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final String f451l;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public h(Integer num, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11) {
        this.f443a = num;
        this.f444b = str;
        this.c = str2;
        this.d = str3;
        this.e = str4;
        this.f445f = str5;
        this.f446g = str6;
        this.f447h = str7;
        this.f448i = str8;
        this.f449j = str9;
        this.f450k = str10;
        this.f451l = str11;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        if (!this.f443a.equals(((h) aVar).f443a)) {
            return false;
        }
        if (!this.f444b.equals(((h) aVar).f444b)) {
            return false;
        }
        if (!this.c.equals(((h) aVar).c)) {
            return false;
        }
        if (!this.d.equals(((h) aVar).d)) {
            return false;
        }
        if (!this.e.equals(((h) aVar).e)) {
            return false;
        }
        if (!this.f445f.equals(((h) aVar).f445f)) {
            return false;
        }
        if (!this.f446g.equals(((h) aVar).f446g)) {
            return false;
        }
        if (!this.f447h.equals(((h) aVar).f447h)) {
            return false;
        }
        if (!this.f448i.equals(((h) aVar).f448i)) {
            return false;
        }
        if (!this.f449j.equals(((h) aVar).f449j)) {
            return false;
        }
        if (this.f450k.equals(((h) aVar).f450k)) {
            return this.f451l.equals(((h) aVar).f451l);
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int hashCode() {
        return ((((((((((((((((((((((this.f443a.hashCode() ^ 1000003) * 1000003) ^ this.f444b.hashCode()) * 1000003) ^ this.c.hashCode()) * 1000003) ^ this.d.hashCode()) * 1000003) ^ this.e.hashCode()) * 1000003) ^ this.f445f.hashCode()) * 1000003) ^ this.f446g.hashCode()) * 1000003) ^ this.f447h.hashCode()) * 1000003) ^ this.f448i.hashCode()) * 1000003) ^ this.f449j.hashCode()) * 1000003) ^ this.f450k.hashCode()) * 1000003) ^ this.f451l.hashCode();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        StringBuilder sb = new StringBuilder("AndroidClientInfo{sdkVersion=");
        sb.append(this.f443a);
        sb.append(", model=");
        sb.append(this.f444b);
        sb.append(", hardware=");
        sb.append(this.c);
        sb.append(", device=");
        sb.append(this.d);
        sb.append(", product=");
        sb.append(this.e);
        sb.append(", osBuild=");
        sb.append(this.f445f);
        sb.append(", manufacturer=");
        sb.append(this.f446g);
        sb.append(", fingerprint=");
        sb.append(this.f447h);
        sb.append(", locale=");
        sb.append(this.f448i);
        sb.append(", country=");
        sb.append(this.f449j);
        sb.append(", mccMnc=");
        sb.append(this.f450k);
        sb.append(", applicationBuild=");
        return ai.onnxruntime.a.p(sb, this.f451l, "}");
    }
}
