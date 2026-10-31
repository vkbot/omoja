package t5;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class e extends b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final u5.e f5411b = new u5.e();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean equals(Object obj) {
        if (obj != this) {
            return (obj instanceof e) && ((e) obj).f5411b.equals(this.f5411b);
        }
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void h(String str, b bVar) {
        if (bVar == null) {
            bVar = d.f5410b;
        }
        this.f5411b.put(str, bVar);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int hashCode() {
        return this.f5411b.hashCode();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void i(String str, Boolean bool) {
        h(str, bool == null ? d.f5410b : new f(bool));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void j(String str, Number number) {
        h(str, number == null ? d.f5410b : new f(number));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void k(String str, String str2) {
        h(str, new f(str2));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final b l(String str) {
        return (b) this.f5411b.get(str);
    }
}
