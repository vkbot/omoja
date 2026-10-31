package p157o7;

import java.util.logging.Level;
import java.util.logging.LogRecord;
import java.util.logging.Logger;
import p148n7.AbstractC2503e;
import p148n7.C2492a0;
import p148n7.C2548w;
import p148n7.EnumC2546v;

/* JADX INFO: renamed from: o7.o */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2683o {

    /* JADX INFO: renamed from: c */
    public static final Logger f7646c = Logger.getLogger(AbstractC2503e.class.getName());

    /* JADX INFO: renamed from: a */
    public final Object f7647a = new Object();

    /* JADX INFO: renamed from: b */
    public final C2492a0 f7648b;

    public C2683o(C2492a0 c2492a0, long j10, String str) {
        this.f7648b = c2492a0;
        m4192b(new C2548w(str.concat(" created"), EnumC2546v.f7033b, j10, null));
    }

    /* JADX INFO: renamed from: a */
    public static void m4191a(C2492a0 c2492a0, Level level, String str) {
        Logger logger = f7646c;
        if (logger.isLoggable(level)) {
            LogRecord logRecord = new LogRecord(level, "[" + c2492a0 + "] " + str);
            logRecord.setLoggerName(logger.getName());
            logRecord.setSourceClassName(logger.getName());
            logRecord.setSourceMethodName("log");
            logger.log(logRecord);
        }
    }

    /* JADX INFO: renamed from: b */
    public final void m4192b(C2548w c2548w) {
        Level level;
        int iOrdinal = c2548w.f7043b.ordinal();
        if (iOrdinal != 2) {
            level = iOrdinal != 3 ? Level.FINEST : Level.FINE;
        } else {
            level = Level.FINER;
        }
        synchronized (this.f7647a) {
        }
        m4191a(this.f7648b, level, c2548w.f7042a);
    }
}
