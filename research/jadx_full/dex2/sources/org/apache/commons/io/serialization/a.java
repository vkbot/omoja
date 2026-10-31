package org.apache.commons.io.serialization;

import java.util.List;
import java.util.function.Consumer;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final /* synthetic */ class a implements Consumer {
    public final /* synthetic */ int b;
    public final /* synthetic */ List c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ a(List list, int i) {
        this.b = i;
        this.c = list;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        List list;
        Object obj2;
        switch (this.b) {
            case 0:
                list = this.c;
                obj2 = (FullClassNameMatcher) obj;
                break;
            default:
                list = this.c;
                obj2 = (WildcardClassNameMatcher) obj;
                break;
        }
        list.add(obj2);
    }
}
