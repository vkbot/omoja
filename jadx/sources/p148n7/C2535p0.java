package p148n7;

import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import p170p7.C2984i;

/* JADX INFO: renamed from: n7.p0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2535p0 {

    /* JADX INFO: renamed from: c */
    public static final Logger f7007c = Logger.getLogger(C2535p0.class.getName());

    /* JADX INFO: renamed from: d */
    public static C2535p0 f7008d;

    /* JADX INFO: renamed from: a */
    public final LinkedHashSet f7009a = new LinkedHashSet();

    /* JADX INFO: renamed from: b */
    public List f7010b = Collections.EMPTY_LIST;

    /* JADX INFO: renamed from: a */
    public static List m3966a() {
        Logger logger = f7007c;
        ArrayList arrayList = new ArrayList();
        try {
            arrayList.add(C2984i.class);
        } catch (ClassNotFoundException e) {
            logger.log(Level.FINE, "Unable to find OkHttpChannelProvider", (Throwable) e);
        }
        try {
            arrayList.add(Class.forName("io.grpc.netty.NettyChannelProvider"));
        } catch (ClassNotFoundException e6) {
            logger.log(Level.FINE, "Unable to find NettyChannelProvider", (Throwable) e6);
        }
        try {
            arrayList.add(Class.forName("io.grpc.netty.UdsNettyChannelProvider"));
        } catch (ClassNotFoundException e10) {
            logger.log(Level.FINE, "Unable to find UdsNettyChannelProvider", (Throwable) e10);
        }
        return Collections.unmodifiableList(arrayList);
    }
}
