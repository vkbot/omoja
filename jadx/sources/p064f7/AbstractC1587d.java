package p064f7;

import android.net.InetAddresses;
import android.os.Build;
import java.lang.reflect.Method;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.regex.Pattern;

/* JADX INFO: renamed from: f7.d */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC1587d {

    /* JADX INFO: renamed from: a */
    public static final Method f3938a;

    /* JADX INFO: renamed from: b */
    public static final Pattern f3939b = Pattern.compile("^(((([0-9A-Fa-f]{1,4}:){7}([0-9A-Fa-f]{1,4}|:))|(([0-9A-Fa-f]{1,4}:){6}(:[0-9A-Fa-f]{1,4}|((25[0-5]|2[0-4]\\d|1\\d\\d|[1-9]?\\d)(\\.(25[0-5]|2[0-4]\\d|1\\d\\d|[1-9]?\\d)){3})|:))|(([0-9A-Fa-f]{1,4}:){5}(((:[0-9A-Fa-f]{1,4}){1,2})|:((25[0-5]|2[0-4]\\d|1\\d\\d|[1-9]?\\d)(\\.(25[0-5]|2[0-4]\\d|1\\d\\d|[1-9]?\\d)){3})|:))|(([0-9A-Fa-f]{1,4}:){4}(((:[0-9A-Fa-f]{1,4}){1,3})|((:[0-9A-Fa-f]{1,4})?:((25[0-5]|2[0-4]\\d|1\\d\\d|[1-9]?\\d)(\\.(25[0-5]|2[0-4]\\d|1\\d\\d|[1-9]?\\d)){3}))|:))|(([0-9A-Fa-f]{1,4}:){3}(((:[0-9A-Fa-f]{1,4}){1,4})|((:[0-9A-Fa-f]{1,4}){0,2}:((25[0-5]|2[0-4]\\d|1\\d\\d|[1-9]?\\d)(\\.(25[0-5]|2[0-4]\\d|1\\d\\d|[1-9]?\\d)){3}))|:))|(([0-9A-Fa-f]{1,4}:){2}(((:[0-9A-Fa-f]{1,4}){1,5})|((:[0-9A-Fa-f]{1,4}){0,3}:((25[0-5]|2[0-4]\\d|1\\d\\d|[1-9]?\\d)(\\.(25[0-5]|2[0-4]\\d|1\\d\\d|[1-9]?\\d)){3}))|:))|(([0-9A-Fa-f]{1,4}:){1}(((:[0-9A-Fa-f]{1,4}){1,6})|((:[0-9A-Fa-f]{1,4}){0,4}:((25[0-5]|2[0-4]\\d|1\\d\\d|[1-9]?\\d)(\\.(25[0-5]|2[0-4]\\d|1\\d\\d|[1-9]?\\d)){3}))|:))|(:(((:[0-9A-Fa-f]{1,4}){1,7})|((:[0-9A-Fa-f]{1,4}){0,5}:((25[0-5]|2[0-4]\\d|1\\d\\d|[1-9]?\\d)(\\.(25[0-5]|2[0-4]\\d|1\\d\\d|[1-9]?\\d)){3}))|:)))(%.+)?)|((?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?))$");

    /* JADX INFO: renamed from: c */
    public static final Pattern f3940c = Pattern.compile("^(?=.{1,255}$)[0-9A-Za-z](?:(?:[0-9A-Za-z]|-){0,61}[0-9A-Za-z])?(?:\\.[0-9A-Za-z](?:(?:[0-9A-Za-z]|-){0,61}[0-9A-Za-z])?)*\\.?$");

    static {
        Method method = null;
        try {
            if (Build.VERSION.SDK_INT < 29) {
                method = InetAddress.class.getMethod("parseNumericAddress", String.class);
            }
        } catch (Exception unused) {
        }
        f3938a = method;
    }

    /* JADX INFO: renamed from: a */
    public static InetAddress m2671a(String str) throws C1592i {
        if (str.isEmpty()) {
            throw new C1592i(InetAddress.class, str, "Empty address", null);
        }
        try {
            if (Build.VERSION.SDK_INT >= 29) {
                return InetAddresses.parseNumericAddress(str);
            }
            Method method = f3938a;
            if (method != null) {
                return (InetAddress) method.invoke(null, str);
            }
            throw new NoSuchMethodException("parseNumericAddress");
        } catch (IllegalArgumentException e) {
            throw new C1592i(InetAddress.class, str, null, e);
        } catch (Exception e6) {
            Throwable cause = e6.getCause();
            if (cause instanceof IllegalArgumentException) {
                throw new C1592i(InetAddress.class, str, null, (Exception) cause);
            }
            try {
                if (f3939b.matcher(str).matches()) {
                    return InetAddress.getByName(str);
                }
                throw new C1592i(InetAddress.class, str, "Not an IP address", null);
            } catch (UnknownHostException e10) {
                throw new C1592i(InetAddress.class, str, null, e10);
            }
        }
    }
}
