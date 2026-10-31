package l9;

import java.util.RandomAccess;
import kotlin.collections.AbstractList;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class w extends AbstractList implements RandomAccess {
    public static final /* synthetic */ int d = 0;
    public final o[] b;
    public final int[] c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public w(o[] oVarArr, int[] iArr) {
        this.b = oVarArr;
        this.c = iArr;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof o) {
            return super/*kotlin.collections.AbstractCollection*/.contains((o) obj);
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Object get(int i) {
        return this.b[i];
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int getSize() {
        return this.b.length;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final /* bridge */ int indexOf(Object obj) {
        if (obj instanceof o) {
            return super.indexOf((o) obj);
        }
        return -1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final /* bridge */ int lastIndexOf(Object obj) {
        if (obj instanceof o) {
            return super.lastIndexOf((o) obj);
        }
        return -1;
    }
}
