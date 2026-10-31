package p027c2;

import ai.onnxruntime.AbstractC0074a;

/* JADX INFO: renamed from: c2.h */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C0958h extends AbstractC0951a {

    /* JADX INFO: renamed from: a */
    public final Integer f857a;

    /* JADX INFO: renamed from: b */
    public final String f858b;

    /* JADX INFO: renamed from: c */
    public final String f859c;

    /* JADX INFO: renamed from: d */
    public final String f860d;

    /* JADX INFO: renamed from: e */
    public final String f861e;

    /* JADX INFO: renamed from: f */
    public final String f862f;

    /* JADX INFO: renamed from: g */
    public final String f863g;

    /* JADX INFO: renamed from: h */
    public final String f864h;

    /* JADX INFO: renamed from: i */
    public final String f865i;

    /* JADX INFO: renamed from: j */
    public final String f866j;

    /* JADX INFO: renamed from: k */
    public final String f867k;

    /* JADX INFO: renamed from: l */
    public final String f868l;

    public C0958h(Integer num, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11) {
        this.f857a = num;
        this.f858b = str;
        this.f859c = str2;
        this.f860d = str3;
        this.f861e = str4;
        this.f862f = str5;
        this.f863g = str6;
        this.f864h = str7;
        this.f865i = str8;
        this.f866j = str9;
        this.f867k = str10;
        this.f868l = str11;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC0951a)) {
            return false;
        }
        AbstractC0951a abstractC0951a = (AbstractC0951a) obj;
        if (!this.f857a.equals(((C0958h) abstractC0951a).f857a)) {
            return false;
        }
        if (!this.f858b.equals(((C0958h) abstractC0951a).f858b)) {
            return false;
        }
        if (!this.f859c.equals(((C0958h) abstractC0951a).f859c)) {
            return false;
        }
        if (!this.f860d.equals(((C0958h) abstractC0951a).f860d)) {
            return false;
        }
        if (!this.f861e.equals(((C0958h) abstractC0951a).f861e)) {
            return false;
        }
        if (!this.f862f.equals(((C0958h) abstractC0951a).f862f)) {
            return false;
        }
        if (!this.f863g.equals(((C0958h) abstractC0951a).f863g)) {
            return false;
        }
        if (!this.f864h.equals(((C0958h) abstractC0951a).f864h)) {
            return false;
        }
        if (!this.f865i.equals(((C0958h) abstractC0951a).f865i)) {
            return false;
        }
        if (!this.f866j.equals(((C0958h) abstractC0951a).f866j)) {
            return false;
        }
        if (this.f867k.equals(((C0958h) abstractC0951a).f867k)) {
            return this.f868l.equals(((C0958h) abstractC0951a).f868l);
        }
        return false;
    }

    public final int hashCode() {
        return ((((((((((((((((((((((this.f857a.hashCode() ^ 1000003) * 1000003) ^ this.f858b.hashCode()) * 1000003) ^ this.f859c.hashCode()) * 1000003) ^ this.f860d.hashCode()) * 1000003) ^ this.f861e.hashCode()) * 1000003) ^ this.f862f.hashCode()) * 1000003) ^ this.f863g.hashCode()) * 1000003) ^ this.f864h.hashCode()) * 1000003) ^ this.f865i.hashCode()) * 1000003) ^ this.f866j.hashCode()) * 1000003) ^ this.f867k.hashCode()) * 1000003) ^ this.f868l.hashCode();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("AndroidClientInfo{sdkVersion=");
        sb.append(this.f857a);
        sb.append(", model=");
        sb.append(this.f858b);
        sb.append(", hardware=");
        sb.append(this.f859c);
        sb.append(", device=");
        sb.append(this.f860d);
        sb.append(", product=");
        sb.append(this.f861e);
        sb.append(", osBuild=");
        sb.append(this.f862f);
        sb.append(", manufacturer=");
        sb.append(this.f863g);
        sb.append(", fingerprint=");
        sb.append(this.f864h);
        sb.append(", locale=");
        sb.append(this.f865i);
        sb.append(", country=");
        sb.append(this.f866j);
        sb.append(", mccMnc=");
        sb.append(this.f867k);
        sb.append(", applicationBuild=");
        return AbstractC0074a.m165p(sb, this.f868l, "}");
    }
}
