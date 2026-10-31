package a9;

import kotlin.text.Typography;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class w implements b8.d {
    public final /* synthetic */ int b;
    public final String c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public w(String str) {
        this.b = 2;
        str.getClass();
        this.c = str;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean test(Object obj) {
        String str = this.c;
        if (obj != str) {
            return obj != null && obj.equals(str);
        }
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toString() {
        switch (this.b) {
            case 0:
                return "<" + this.c + Typography.greater;
            case 3:
                return this.c;
            default:
                return super.toString();
        }
    }

    public /* synthetic */ w(String str, int i) {
        this.b = i;
        this.c = str;
    }
}
