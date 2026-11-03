package mega.log;

import android.os.Build;
import android.util.Log;
import com.android.launcher3.icons.cache.BaseIconCache;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public class MLog {
    private static final int CURRENT_STACK_LEVEL = 5;
    protected static final int LINE_LEN_LIMIT = 3000;
    protected static final int LOG_WTF = 10;
    private static final String SUFFIX = ".java";
    protected static final boolean ENABLE_FULL_LOG = !"user".equals(Build.TYPE);
    private static String sDefaultTag = null;
    private static boolean sEnableTrackTrace = true;
    private static int sLogLevel = 2;
    private static final Set<String> LOG_CLASS_BLACKLIST = new HashSet();
    private static final Map<String, Integer> TAG_DETAIL_LEVEL_MAP = new HashMap();

    public static void init(int i, boolean z, String str) {
        sLogLevel = i;
        sEnableTrackTrace = z;
        sDefaultTag = str;
    }

    public static synchronized void addToBlacklist(Class<?> cls) {
        LOG_CLASS_BLACKLIST.add(cls.getName());
    }

    public static synchronized void setTagDetailLevel(String str, int i) {
        TAG_DETAIL_LEVEL_MAP.put(str, Integer.valueOf(i));
    }

    public static void v(String str) {
        print(2, sDefaultTag, str, null);
    }

    public static void v(String str, String str2) {
        print(2, str, str2, null);
    }

    public static void v(String str, String str2, Throwable th) {
        print(2, str, str2, th);
    }

    public static void d(String str) {
        print(3, sDefaultTag, str, null);
    }

    public static void d(String str, String str2) {
        print(3, str, str2, null);
    }

    public static void d(String str, String str2, Throwable th) {
        print(3, str, str2, th);
    }

    public static void i(String str) {
        print(4, sDefaultTag, str, null);
    }

    public static void i(String str, String str2) {
        print(4, str, str2, null);
    }

    public static void i(String str, String str2, Throwable th) {
        print(4, str, str2, th);
    }

    public static void w(String str) {
        print(5, sDefaultTag, str, null);
    }

    public static void w(String str, String str2) {
        print(5, str, str2, null);
    }

    public static void w(String str, String str2, Throwable th) {
        print(5, str, str2, th);
    }

    public static void e(String str) {
        print(6, sDefaultTag, str, null);
    }

    public static void e(String str, String str2) {
        print(6, str, str2, null);
    }

    public static void e(String str, String str2, Throwable th) {
        print(6, str, str2, th);
    }

    public static void wtf(String str) {
        print(10, sDefaultTag, str, null);
    }

    public static void wtf(String str, Throwable th) {
        print(10, str, th.getMessage(), th);
    }

    public static void wtf(String str, String str2) {
        print(10, str, str2, null);
    }

    public static void wtf(String str, String str2, Throwable th) {
        print(10, str, str2, th);
    }

    public static void simpleV(String str, String str2) {
        Log.v(str, str2, null);
    }

    public static void simpleD(String str, String str2) {
        Log.d(str, str2, null);
    }

    public static void simpleI(String str, String str2) {
        Log.i(str, str2, null);
    }

    public static void simpleW(String str, String str2) {
        Log.w(str, str2, null);
    }

    public static void simpleE(String str, String str2) {
        Log.e(str, str2, null);
    }

    private static void print(int i, String str, String str2, Throwable th) {
        if (sLogLevel > i) {
            return;
        }
        if (!sEnableTrackTrace) {
            if (str == null) {
                str = "MLog";
            }
            if (isLoggable(str, i)) {
                LogImpl.print(i, str, str2, th);
                return;
            }
            return;
        }
        if (str == null || isLoggable(str, i)) {
            StackTraceElement currentStackTrace = getCurrentStackTrace();
            if (str == null) {
                str = currentStackTrace != null ? generateSimpleName(currentStackTrace.getClassName()) : "MLog";
                if (!isLoggable(str, i)) {
                    return;
                }
            }
            LogImpl.print(i, str, genLogMsg(str2, currentStackTrace), th);
        }
    }

    private static boolean isLoggable(String str, int i) {
        Integer num = TAG_DETAIL_LEVEL_MAP.get(str);
        return num == null || num.intValue() <= i;
    }

    private static StackTraceElement getCurrentStackTrace() {
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        if (stackTrace == null || 5 >= stackTrace.length) {
            Log.e(sDefaultTag, "genLogMsg error, please check STACK_TRACE_INDEX");
            return null;
        }
        StackTraceElement stackTraceElement = stackTrace[5];
        for (int i = 6; LOG_CLASS_BLACKLIST.contains(stackTraceElement.getClassName()) && i < stackTrace.length; i++) {
            stackTraceElement = stackTrace[i];
        }
        return stackTraceElement;
    }

    private static String genLogMsg(String str, StackTraceElement stackTraceElement) {
        StringBuilder sb = new StringBuilder();
        appendStackTrace(sb, stackTraceElement);
        sb.append(str);
        return sb.toString();
    }

    private static void appendStackTrace(StringBuilder sb, StackTraceElement stackTraceElement) {
        sb.append("[ (");
        String fileName = stackTraceElement.getFileName();
        if (fileName == null) {
            String className = stackTraceElement.getClassName();
            int iLastIndexOf = className.lastIndexOf(BaseIconCache.EMPTY_CLASS_NAME) + 1;
            int iLastIndexOf2 = className.lastIndexOf("$");
            if (iLastIndexOf2 > 0) {
                sb.append((CharSequence) className, iLastIndexOf, iLastIndexOf2);
            } else {
                sb.append(className.substring(iLastIndexOf));
            }
            sb.append(SUFFIX);
        } else {
            sb.append(fileName);
        }
        int lineNumber = stackTraceElement.getLineNumber();
        String methodName = stackTraceElement.getMethodName();
        if (lineNumber >= 0) {
            sb.append(":").append(lineNumber).append(")");
        } else {
            sb.append(")");
        }
        sb.append("#").append(methodName).append(" ]");
    }

    private static String generateSimpleName(String str) {
        int iLastIndexOf = str.lastIndexOf(BaseIconCache.EMPTY_CLASS_NAME) + 1;
        int iLastIndexOf2 = str.lastIndexOf("$");
        if (iLastIndexOf2 > 0) {
            return str.substring(iLastIndexOf, iLastIndexOf2);
        }
        return str.substring(iLastIndexOf);
    }
}
