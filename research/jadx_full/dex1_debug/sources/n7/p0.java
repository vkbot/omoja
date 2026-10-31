package n7;

import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class p0 {
    public static final Logger c = Logger.getLogger(p0.class.getName());
    public static p0 d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LinkedHashSet f3964a = new LinkedHashSet();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public List f3965b = Collections.EMPTY_LIST;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static List a() {
        Logger logger = c;
        ArrayList arrayList = new ArrayList();
        try {
            arrayList.add(p7.i.class);
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
        } catch (ClassNotFoundException e9) {
            logger.log(Level.FINE, "Unable to find UdsNettyChannelProvider", (Throwable) e9);
        }
        return Collections.unmodifiableList(arrayList);
    }
}
