package p064f7;

import java.util.function.Consumer;
import p074g7.C1623b;

/* JADX INFO: renamed from: f7.g */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C1590g implements Consumer {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f3951b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ StringBuilder f3952c;

    public /* synthetic */ C1590g(StringBuilder sb, int i10) {
        this.f3951b = i10;
        this.f3952c = sb;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.f3951b) {
            case 0:
                StringBuilder sb = this.f3952c;
                sb.append(" @");
                sb.append((Integer) obj);
                break;
            case 1:
                StringBuilder sb2 = this.f3952c;
                sb2.append("listen_port=");
                sb2.append((Integer) obj);
                sb2.append('\n');
                break;
            case 2:
                StringBuilder sb3 = this.f3952c;
                sb3.append(" @");
                sb3.append((C1588e) obj);
                break;
            case 3:
                StringBuilder sb4 = this.f3952c;
                sb4.append("endpoint=");
                sb4.append((C1588e) obj);
                sb4.append('\n');
                break;
            case 4:
                StringBuilder sb5 = this.f3952c;
                sb5.append("persistent_keepalive_interval=");
                sb5.append((Integer) obj);
                sb5.append('\n');
                break;
            default:
                StringBuilder sb6 = this.f3952c;
                sb6.append("preshared_key=");
                sb6.append(((C1623b) obj).m2714e());
                sb6.append('\n');
                break;
        }
    }
}
