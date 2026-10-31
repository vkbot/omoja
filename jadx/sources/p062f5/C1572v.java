package p062f5;

import java.util.HashMap;
import java.util.concurrent.Executor;
import p042d5.EnumC1286g;
import p042d5.EnumC1290k;
import p042d5.EnumC1291l;
import p042d5.EnumC1301v;

/* JADX INFO: renamed from: f5.v */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1572v {

    /* JADX INFO: renamed from: a */
    public final Executor f3891a;

    static {
        HashMap map = new HashMap();
        HashMap map2 = new HashMap();
        map.put(EnumC1291l.f3097b, EnumC1301v.UNSPECIFIED_RENDER_ERROR);
        map.put(EnumC1291l.f3098c, EnumC1301v.IMAGE_FETCH_ERROR);
        map.put(EnumC1291l.f3099d, EnumC1301v.IMAGE_DISPLAY_ERROR);
        map.put(EnumC1291l.f3100e, EnumC1301v.IMAGE_UNSUPPORTED_FORMAT);
        map2.put(EnumC1290k.f3093c, EnumC1286g.AUTO);
        map2.put(EnumC1290k.f3094d, EnumC1286g.CLICK);
        map2.put(EnumC1290k.f3095e, EnumC1286g.SWIPE);
        map2.put(EnumC1290k.f3092b, EnumC1286g.UNKNOWN_DISMISS_TYPE);
    }

    public C1572v(Executor executor) {
        this.f3891a = executor;
    }
}
