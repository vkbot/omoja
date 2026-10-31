package androidx.recyclerview.widget;

import java.util.Comparator;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class DiffUtil$1 implements Comparator<DiffUtil$Diagonal> {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, java.lang.Object] */
    @Override // java.util.Comparator
    public /* bridge */ /* synthetic */ int compare(DiffUtil$Diagonal diffUtil$Diagonal, DiffUtil$Diagonal diffUtil$Diagonal2) {
        return compare2(diffUtil$Diagonal, diffUtil$Diagonal2);
    }

    /* JADX INFO: renamed from: compare, reason: avoid collision after fix types in other method */
    public int compare2(DiffUtil$Diagonal diffUtil$Diagonal, DiffUtil$Diagonal diffUtil$Diagonal2) {
        return diffUtil$Diagonal.f214x - diffUtil$Diagonal2.f214x;
    }
}
