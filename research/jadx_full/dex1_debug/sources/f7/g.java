package f7;

import java.util.function.Consumer;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class g implements Consumer {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f2288b;
    public final /* synthetic */ StringBuilder c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ g(StringBuilder sb, int i9) {
        this.f2288b = i9;
        this.c = sb;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.f2288b) {
            case 0:
                StringBuilder sb = this.c;
                sb.append(" @");
                sb.append((Integer) obj);
                break;
            case 1:
                StringBuilder sb2 = this.c;
                sb2.append("listen_port=");
                sb2.append((Integer) obj);
                sb2.append('\n');
                break;
            case 2:
                StringBuilder sb3 = this.c;
                sb3.append(" @");
                sb3.append((e) obj);
                break;
            case 3:
                StringBuilder sb4 = this.c;
                sb4.append("endpoint=");
                sb4.append((e) obj);
                sb4.append('\n');
                break;
            case 4:
                StringBuilder sb5 = this.c;
                sb5.append("persistent_keepalive_interval=");
                sb5.append((Integer) obj);
                sb5.append('\n');
                break;
            default:
                StringBuilder sb6 = this.c;
                sb6.append("preshared_key=");
                sb6.append(((g7.b) obj).e());
                sb6.append('\n');
                break;
        }
    }
}
