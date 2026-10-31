package androidx.emoji2.text.flatbuffer;

import java.util.Comparator;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class FlexBuffersBuilder$1 implements Comparator<FlexBuffersBuilder$Value> {
    final /* synthetic */ FlexBuffersBuilder this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public FlexBuffersBuilder$1(FlexBuffersBuilder flexBuffersBuilder) {
        this.this$0 = flexBuffersBuilder;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: compare, reason: avoid collision after fix types in other method */
    public int compare2(FlexBuffersBuilder$Value flexBuffersBuilder$Value, FlexBuffersBuilder$Value flexBuffersBuilder$Value2) {
        byte b9;
        byte b10;
        int i9 = flexBuffersBuilder$Value.key;
        int i10 = flexBuffersBuilder$Value2.key;
        do {
            b9 = FlexBuffersBuilder.access$000(this.this$0).get(i9);
            b10 = FlexBuffersBuilder.access$000(this.this$0).get(i10);
            if (b9 == 0) {
                return b9 - b10;
            }
            i9++;
            i10++;
        } while (b9 == b10);
        return b9 - b10;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, java.lang.Object] */
    @Override // java.util.Comparator
    public /* bridge */ /* synthetic */ int compare(FlexBuffersBuilder$Value flexBuffersBuilder$Value, FlexBuffersBuilder$Value flexBuffersBuilder$Value2) {
        return compare2(flexBuffersBuilder$Value, flexBuffersBuilder$Value2);
    }
}
