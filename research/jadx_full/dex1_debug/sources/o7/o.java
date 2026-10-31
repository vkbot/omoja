package o7;

import java.util.logging.Level;
import java.util.logging.LogRecord;
import java.util.logging.Logger;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class o {
    public static final Logger c = Logger.getLogger(n7.e.class.getName());

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f4356a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final n7.a0 f4357b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public o(n7.a0 a0Var, long j9, String str) {
        this.f4357b = a0Var;
        b(new n7.w(str.concat(" created"), n7.v.f3976b, j9, null));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void a(n7.a0 a0Var, Level level, String str) {
        Logger logger = c;
        if (logger.isLoggable(level)) {
            LogRecord logRecord = new LogRecord(level, "[" + a0Var + "] " + str);
            logRecord.setLoggerName(logger.getName());
            logRecord.setSourceClassName(logger.getName());
            logRecord.setSourceMethodName("log");
            logger.log(logRecord);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void b(n7.w wVar) {
        Level level;
        int iOrdinal = wVar.f3980b.ordinal();
        if (iOrdinal != 2) {
            level = iOrdinal != 3 ? Level.FINEST : Level.FINE;
        } else {
            level = Level.FINER;
        }
        synchronized (this.f4356a) {
        }
        a(this.f4357b, level, wVar.f3979a);
    }
}
