package p192s3;

import android.view.View;
import java.util.Comparator;

/* JADX INFO: renamed from: s3.m */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3199m implements Comparator {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f9371b;

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        switch (this.f9371b) {
            case 0:
                return ((View) obj).getTop() - ((View) obj2).getTop();
            default:
                return ((Comparable) obj).compareTo((Comparable) obj2);
        }
    }
}
