package p250y5;

import ai.onnxruntime.AbstractC0074a;
import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.media.AudioManager;
import android.net.ConnectivityManager;
import android.net.DhcpInfo;
import android.net.LinkProperties;
import android.net.Network;
import android.net.RouteInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.view.View;
import android.widget.ImageView;
import androidx.core.graphics.drawable.DrawableCompat;
import com.bumptech.glide.AbstractC1030c;
import com.bumptech.glide.AbstractC1031d;
import com.bumptech.glide.manager.C1074t;
import com.example.navistart.MainActivity;
import com.example.navistart.R;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.textfield.TextInputLayout;
import com.google.protobuf.AbstractC1178q;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.Inet4Address;
import java.net.InetAddress;
import java.util.Arrays;
import java.util.Locale;
import java.util.concurrent.Callable;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.regex.Pattern;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.p118io.encoding.Base64;
import p009a8.C0029a;
import p016b1.RunnableC0873n;
import p023b8.InterfaceC0929c;
import p025c0.ExecutorC0937f;
import p045d8.AbstractC1314b;
import p047e0.AbstractC1387m;
import p047e0.RunnableC1375j2;
import p050e3.C1461d;
import p063f6.C1578b;
import p063f6.C1582f;
import p099j1.C1929i;
import p141n.C2455p;
import p148n7.C2551x0;
import p150n9.InterfaceC2560a;
import p157o7.C2599a;
import p158o8.C2756e;
import p158o8.EnumC2755d;
import p201t5.AbstractC3258b;
import p201t5.C3259c;
import p201t5.C3260d;
import p225w0.C3451d1;
import p230w5.C3526a;
import p230w5.C3528c;
import p242x7.InterfaceC3587d;
import p257z2.AbstractC3707c;
import p257z2.C3708d;
import p257z2.C3709e;
import p257z2.InterfaceC3705a;
import p257z2.InterfaceC3706b;
import p260z5.C3753i;

/* JADX INFO: renamed from: y5.k */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC3656k {

    /* JADX INFO: renamed from: a */
    public static volatile C2551x0 f10839a = null;

    /* JADX INFO: renamed from: b */
    public static int f10840b = -1;

    /* JADX INFO: renamed from: a */
    public static void m5855a(int i10, Context context) {
        try {
            AudioManager audioManager = (AudioManager) context.getSystemService(AbstractC1387m.m2421h(new byte[]{116, -36, 59, -13, -127}, new byte[]{21, -87, 95, -102, -18, 66, 117, -52}));
            if (audioManager == null) {
                return;
            }
            audioManager.adjustStreamVolume(3, i10, 0);
        } catch (Exception e) {
            Log.w(AbstractC1387m.m2421h(new byte[]{-67, -32, -18, -109, 1, 59, 14, -122}, new byte[]{-24, -108, -121, -1, 114, 122, 98, -22}), AbstractC1387m.m2421h(new byte[]{-55, 4, 123, -127, -123, -127, 31, -97, -13, 74, 121, -117, -120, -118, 88, -114, -68, 7, ByteCompanionObject.MAX_VALUE, -121, ByteCompanionObject.MIN_VALUE, -123, 31, -122, -23, 30, ByteCompanionObject.MAX_VALUE}, new byte[]{-100, 106, 26, -29, -23, -28, 63, -21}), e);
        }
    }

    /* JADX INFO: renamed from: b */
    public static void m5856b(TextInputLayout textInputLayout, CheckableImageButton checkableImageButton, ColorStateList colorStateList, PorterDuff.Mode mode) {
        Drawable drawable = checkableImageButton.getDrawable();
        if (drawable != null) {
            drawable = DrawableCompat.wrap(drawable).mutate();
            if (colorStateList == null || !colorStateList.isStateful()) {
                drawable.setTintList(colorStateList);
            } else {
                int[] drawableState = textInputLayout.getDrawableState();
                int[] drawableState2 = checkableImageButton.getDrawableState();
                int length = drawableState.length;
                int[] iArrCopyOf = Arrays.copyOf(drawableState, drawableState.length + drawableState2.length);
                System.arraycopy(drawableState2, 0, iArrCopyOf, length, drawableState2.length);
                drawable.setTintList(ColorStateList.valueOf(colorStateList.getColorForState(iArrCopyOf, colorStateList.getDefaultColor())));
            }
            if (mode != null) {
                drawable.setTintMode(mode);
            }
        }
        if (checkableImageButton.getDrawable() != drawable) {
            checkableImageButton.setImageDrawable(drawable);
        }
    }

    /* JADX INFO: renamed from: c */
    public static Object m5857c(C2599a c2599a) throws ExecutionException, InterruptedException {
        boolean z9;
        Exception exc;
        Exception exc2;
        String name;
        if (Looper.getMainLooper() == Looper.myLooper()) {
            C1929i.m3030l("Must not be called on the main application thread");
            return null;
        }
        Looper looperMyLooper = Looper.myLooper();
        if (looperMyLooper != null && ((name = looperMyLooper.getThread().getName()) == "GoogleApiHandler" || (name != null && name.equals("GoogleApiHandler")))) {
            C1929i.m3030l("Must not be called on GoogleApiHandler thread.");
            return null;
        }
        synchronized (c2599a.f7252b) {
            z9 = c2599a.f7251a;
        }
        if (z9) {
            if (c2599a.m4080e()) {
                return c2599a.m4079d();
            }
            synchronized (c2599a.f7252b) {
                exc2 = (Exception) c2599a.f7255e;
            }
            throw new ExecutionException(exc2);
        }
        C2455p c2455p = new C2455p(18);
        ExecutorC0937f executorC0937f = AbstractC3707c.f10990a;
        ((C1074t) c2599a.f7253c).m1367m(new C3709e((Executor) executorC0937f, (InterfaceC3706b) c2455p));
        c2599a.m4084i();
        ((C1074t) c2599a.f7253c).m1367m(new C3709e((Executor) executorC0937f, (InterfaceC3705a) c2455p));
        c2599a.m4084i();
        ((C1074t) c2599a.f7253c).m1367m(new C3708d(executorC0937f, c2455p));
        c2599a.m4084i();
        ((CountDownLatch) c2455p.f6648c).await();
        if (c2599a.m4080e()) {
            return c2599a.m4079d();
        }
        synchronized (c2599a.f7252b) {
            exc = (Exception) c2599a.f7255e;
        }
        throw new ExecutionException(exc);
    }

    /* JADX INFO: renamed from: d */
    public static ImageView.ScaleType m5858d(int i10) {
        if (i10 == 0) {
            return ImageView.ScaleType.FIT_XY;
        }
        if (i10 == 1) {
            return ImageView.ScaleType.FIT_START;
        }
        if (i10 == 2) {
            return ImageView.ScaleType.FIT_CENTER;
        }
        if (i10 == 3) {
            return ImageView.ScaleType.FIT_END;
        }
        if (i10 != 5) {
            return i10 != 6 ? ImageView.ScaleType.CENTER : ImageView.ScaleType.CENTER_INSIDE;
        }
        return ImageView.ScaleType.CENTER_CROP;
    }

    /* JADX INFO: renamed from: e */
    public static String m5859e(Context context) {
        String strM5860f;
        ConnectivityManager connectivityManagerM5862h = m5862h(context);
        if (connectivityManagerM5862h == null) {
            return null;
        }
        Network activeNetwork = connectivityManagerM5862h.getActiveNetwork();
        if (activeNetwork != null && (strM5860f = m5860f(connectivityManagerM5862h.getLinkProperties(activeNetwork))) != null) {
            return strM5860f;
        }
        Network[] allNetworks = connectivityManagerM5862h.getAllNetworks();
        if (allNetworks == null) {
            return null;
        }
        for (Network network : allNetworks) {
            String strM5860f2 = m5860f(connectivityManagerM5862h.getLinkProperties(network));
            if (strM5860f2 != null) {
                return strM5860f2;
            }
        }
        return null;
    }

    /* JADX INFO: renamed from: f */
    public static String m5860f(LinkProperties linkProperties) {
        String hostAddress;
        String str = null;
        if (linkProperties == null) {
            return null;
        }
        for (RouteInfo routeInfo : linkProperties.getRoutes()) {
            if (routeInfo != null) {
                InetAddress gateway = routeInfo.getGateway();
                if ((gateway instanceof Inet4Address) && !gateway.isAnyLocalAddress() && !gateway.isLoopbackAddress() && (hostAddress = gateway.getHostAddress()) != null && !hostAddress.trim().isEmpty()) {
                    if (routeInfo.isDefaultRoute()) {
                        return hostAddress;
                    }
                    if (str == null) {
                        str = hostAddress;
                    }
                }
            }
        }
        return str;
    }

    /* JADX INFO: renamed from: g */
    public static String m5861g(Context context) {
        WifiManager wifiManager;
        DhcpInfo dhcpInfo;
        if (context == null || (wifiManager = (WifiManager) context.getApplicationContext().getSystemService(AbstractC1387m.m2421h(new byte[]{68, -80, -12, 23}, new byte[]{51, -39, -110, 126, -49, 55, 121, -32}))) == null || (dhcpInfo = wifiManager.getDhcpInfo()) == null || dhcpInfo.gateway == 0) {
            return null;
        }
        return String.format(Locale.US, AbstractC1387m.m2421h(new byte[]{100, -66, -70, -95, -94, -89, 58, -29, 111, -1, -16}, new byte[]{65, -38, -108, -124, -58, -119, 31, -121}), Integer.valueOf(dhcpInfo.gateway & 255), Integer.valueOf((dhcpInfo.gateway >> 8) & 255), Integer.valueOf((dhcpInfo.gateway >> 16) & 255), Integer.valueOf((dhcpInfo.gateway >> 24) & 255));
    }

    /* JADX INFO: renamed from: h */
    public static ConnectivityManager m5862h(Context context) {
        if (context == null) {
            return null;
        }
        return (ConnectivityManager) context.getApplicationContext().getSystemService(AbstractC1387m.m2421h(new byte[]{-116, -70, 66, -15, -121, 4, -45, 95, -103, -68, 88, -26}, new byte[]{-17, -43, 44, -97, -30, 103, -89, 54}));
    }

    /* JADX INFO: renamed from: i */
    public static String m5863i() {
        String str = Build.FINGERPRINT;
        String strM5864j = m5864j(AbstractC1387m.m2421h(new byte[]{-107, -13, 104, -96, 30, 84, 71, -91, -106, -17, 105, -3, 1, 66, 91, -30, -122, -6, ByteCompanionObject.MAX_VALUE, -3, 1, 78, 93}, new byte[]{-27, -106, 26, -45, 119, 39, 51, -117}));
        if (strM5864j.isEmpty()) {
            strM5864j = m5864j(AbstractC1387m.m2421h(new byte[]{-59, 59, -61, 1, 101, -58, -66, 65, -43, 46, -43, 1, 123, -62, -92, 76, -63, 35, -62, 74, Base64.padSymbol, -43, -65, 70, -104, 33, -33, 75, 118}, new byte[]{-74, 66, -80, 47, 19, -93, -42, 40}));
        }
        if (strM5864j.isEmpty()) {
            strM5864j = m5864j(AbstractC1387m.m2421h(new byte[]{87, -86, 36, 68, 88, -116, -50, -124, 71, -65, 50, 68, 70, -120, -44, -119, 83, -78, 37, 15, 0, -102, -61, -97, 77, -78, 59, 68, 64, -100, -53, -113, 65, -95}, new byte[]{36, -45, 87, 106, 46, -23, -90, -19}));
        }
        if (strM5864j.isEmpty()) {
            try {
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(Runtime.getRuntime().exec(AbstractC1387m.m2421h(new byte[]{-57, -60, 70, 13, 118, -61, 3}, new byte[]{-96, -95, 50, 125, 4, -84, 115, 113})).getInputStream()));
                Pattern patternCompile = Pattern.compile(AbstractC1387m.m2421h(new byte[]{-122, ByteCompanionObject.MAX_VALUE, 99, -24, 60, 4, -10, 55, -120, 118, 15, -97, 68, 99, -30, 36, -93, 21, 21, -72, 80}, new byte[]{-40, 36, 34, -59, 116, 78, -37, 121}));
                while (true) {
                    String line = bufferedReader.readLine();
                    if (line == null) {
                        strM5864j = "";
                        break;
                    }
                    int iIndexOf = line.indexOf(AbstractC1387m.m2421h(new byte[]{-2, 29, -22, 55}, new byte[]{-93, 39, -54, 108, 118, -30, 41, 57}));
                    if (iIndexOf >= 0) {
                        String strTrim = line.substring(iIndexOf + 4, line.length() - 1).trim();
                        if (patternCompile.matcher(strTrim).matches()) {
                            strM5864j = strTrim;
                            break;
                        }
                    }
                }
            } catch (Exception unused) {
            }
        }
        return AbstractC1178q.m2078l(new byte[]{110, -88, -54, -106, 4, 22}, new byte[]{78, -2, -125, -40, 62, 54, 28, -71}, AbstractC0074a.m170u(str), strM5864j);
    }

    /* JADX INFO: renamed from: j */
    public static String m5864j(String str) {
        try {
            return (String) Class.forName(AbstractC1387m.m2421h(new byte[]{81, 122, -17, -107, -23, 46, -125, -53, 95, 103, -91, -76, -1, 52, -109, ByteCompanionObject.MIN_VALUE, 93, 68, -7, -120, -10, 34, -107, -111, 89, 113, -8}, new byte[]{48, 20, -117, -25, -122, 71, -25, -27})).getMethod(AbstractC1387m.m2421h(new byte[]{17, -124, -78}, new byte[]{118, -31, -58, -92, -29, ByteCompanionObject.MIN_VALUE, -78, -123}), String.class).invoke(null, str);
        } catch (Exception unused) {
            return "";
        }
    }

    /* JADX INFO: renamed from: k */
    public static int m5865k(Context context) {
        try {
            AudioManager audioManager = (AudioManager) context.getSystemService(AbstractC1387m.m2421h(new byte[]{21, 38, -12, -59, -76}, new byte[]{116, 83, -112, -84, -37, -115, -37, 83}));
            if (audioManager == null) {
                return -1;
            }
            int streamMaxVolume = audioManager.getStreamMaxVolume(3);
            if (streamMaxVolume <= 0) {
                return 0;
            }
            return Math.max(0, Math.min(Math.round((audioManager.getStreamVolume(3) * 100.0f) / streamMaxVolume), 100));
        } catch (Exception unused) {
            return -1;
        }
    }

    /* JADX INFO: renamed from: l */
    public static String m5866l(String str, String str2) {
        int length = str.length() - str2.length();
        if (length < 0 || length > 1) {
            C1929i.m3029k("Invalid input received");
            return null;
        }
        StringBuilder sb = new StringBuilder(str2.length() + str.length());
        for (int i10 = 0; i10 < str.length(); i10++) {
            sb.append(str.charAt(i10));
            if (str2.length() > i10) {
                sb.append(str2.charAt(i10));
            }
        }
        return sb.toString();
    }

    /* JADX INFO: renamed from: m */
    public static AbstractC3258b m5867m(InputStreamReader inputStreamReader) {
        try {
            C3526a c3526a = new C3526a(inputStreamReader);
            AbstractC3258b abstractC3258bM5868n = m5868n(c3526a);
            abstractC3258bM5868n.getClass();
            if (!(abstractC3258bM5868n instanceof C3260d) && c3526a.m5617p0() != 10) {
                throw new C3259c("Did not consume the entire document.", 5);
            }
            return abstractC3258bM5868n;
        } catch (IOException e) {
            throw new C3259c(5, e);
        } catch (NumberFormatException e6) {
            throw new C3259c(5, e6);
        } catch (C3528c e10) {
            throw new C3259c(5, e10);
        }
    }

    /* JADX INFO: renamed from: n */
    public static AbstractC3258b m5868n(C3526a c3526a) {
        boolean z9 = c3526a.f10458c;
        c3526a.f10458c = true;
        try {
            try {
                try {
                    AbstractC3258b abstractC3258bM1261o = AbstractC1030c.m1261o(c3526a);
                    c3526a.f10458c = z9;
                    return abstractC3258bM1261o;
                } catch (OutOfMemoryError e) {
                    throw new C0029a("Failed parsing JSON source: " + c3526a + " to Json", 5, e);
                }
            } catch (StackOverflowError e6) {
                throw new C0029a("Failed parsing JSON source: " + c3526a + " to Json", 5, e6);
            }
        } catch (Throwable th) {
            c3526a.f10458c = z9;
            throw th;
        }
    }

    /* JADX INFO: renamed from: o */
    public static void m5869o(TextInputLayout textInputLayout, CheckableImageButton checkableImageButton, ColorStateList colorStateList) {
        Drawable drawable = checkableImageButton.getDrawable();
        if (checkableImageButton.getDrawable() == null || colorStateList == null || !colorStateList.isStateful()) {
            return;
        }
        int[] drawableState = textInputLayout.getDrawableState();
        int[] drawableState2 = checkableImageButton.getDrawableState();
        int length = drawableState.length;
        int[] iArrCopyOf = Arrays.copyOf(drawableState, drawableState.length + drawableState2.length);
        System.arraycopy(drawableState2, 0, iArrCopyOf, length, drawableState2.length);
        int colorForState = colorStateList.getColorForState(iArrCopyOf, colorStateList.getDefaultColor());
        Drawable drawableMutate = DrawableCompat.wrap(drawable).mutate();
        drawableMutate.setTintList(ColorStateList.valueOf(colorForState));
        checkableImageButton.setImageDrawable(drawableMutate);
    }

    /* JADX INFO: renamed from: p */
    public static int m5870p(String str, String str2) {
        String strM5392a = C3451d1.m5392a(str2);
        if (str.equals(AbstractC1387m.m2421h(new byte[]{89, -99, -90, -6, 77, 66, 41, 17, 70, -120, -75, -4, 72}, new byte[]{42, -19, -61, -103, 36, 36, 80, 78}))) {
            return strM5392a.matches(AbstractC1387m.m2421h(new byte[]{-115, -2, 74, 44, -11, -52, -87, 111, 22, 4, -33, -62, 77, -52, -93, 111, 24, 5, -19, -62, 73, 96, 109, -38, -51, -96, 11, ByteCompanionObject.MAX_VALUE, -82, 104, 103, 111, 17, 4, -41, -61, 114, -51, -103, 111, 27, 4, -39, -62, 64, -51, -103, 111, 29, 5, -30, 111, -87, 125, 117, -61, 115, 106, -78, -94, 31, -88, -54, 60, 115, 102, 30, 114, -90, 110, 125, -45, -52, -93, 30, 114, -90, 110, 59, -39, -49, -69, 21, 58, -31, 54}, new byte[]{-93, -44, 98, 19, -49, 28, 27, -65})) ? R.string.voice_ask_vent_level : R.string.voice_ask_heat_level;
        }
        if (str.equals(AbstractC1387m.m2421h(new byte[]{32, -5, -52, -7, -125, 58, 36, 126, 36, -30, -57, -2, -123, 43, 2, 70, 33, -28, -36, -22}, new byte[]{83, -117, -87, -102, -22, 92, 93, 33}))) {
            return R.string.voice_ask_window_group;
        }
        if (str.equals(AbstractC1387m.m2421h(new byte[]{71, -98, -17, -35, -62, 102, -94, 108, 85, -84, -22, -58, -54, 102, -67}, new byte[]{38, -13, -115, -76, -91, 19, -51, 25}))) {
            return R.string.voice_ask_window_group_ambiguous;
        }
        if (str.equals(AbstractC1387m.m2421h(new byte[]{7, -101, 68, -73, -99, -120, 78, -71, 13, -102, 77, -114, -126, -124, 76, -71, 59, -103, 69, -75, -108, -110}, new byte[]{100, -12, 42, -47, -15, -31, 45, -51}))) {
            return R.string.voice_ask_seat_mode;
        }
        if (str.equals(AbstractC1387m.m2421h(new byte[]{-13, -35, -49, -47, 49, -43, -119, -121, -12, -56, -57, -62, Base64.padSymbol, -63, -111, -84, -11, -33, -49}, new byte[]{ByteCompanionObject.MIN_VALUE, -83, -86, -78, 88, -77, -16, -40}))) {
            return R.string.voice_ask_temperature;
        }
        if (str.equals(AbstractC1387m.m2421h(new byte[]{19, 19, 10, -23, 1, -44, 73, 93, 6, 2, 1, -43, 4, -41, 70, 103, 12}, new byte[]{96, 99, 111, -118, 104, -78, 48, 2}))) {
            return R.string.voice_ask_fan;
        }
        if (str.equals(AbstractC1387m.m2421h(new byte[]{5, 88, 32, -75, -81, -29, -76, 93, 40, 91, 45, -70, -124, -26, -89, 78, 18, 81, 19, -70, -76, -2, -99, 75, 2, 77, 60, -69, -87, -2, -89, 92}, new byte[]{119, Base64.padSymbol, 76, -44, -37, -118, -62, 56}))) {
            return R.string.voice_ask_fan_absolute;
        }
        if (str.equals(AbstractC1387m.m2421h(new byte[]{-84, -80, 49, 40, 9, 97, 101, 106, -66, -87, 38, 45, 12, 104, 107, 106, -69, -87, 38, 46, 3, 115, 117, 90, -79}, new byte[]{-33, -64, 84, 75, 96, 7, 28, 53})) || str.equals(AbstractC1387m.m2421h(new byte[]{44, -40, 91, 35, 9, 1, -37, 33, 62, -22, 88, 35, 28, 18, -40, 59, 58, -22, 93, 35, 28, 17, -41, 32, 36, -38, 87}, new byte[]{77, -75, 57, 74, 110, 116, -76, 84}))) {
            return R.string.voice_ask_airflow;
        }
        if (str.equals(AbstractC1387m.m2421h(new byte[]{-125, -34, -50, 1, 97, 121, -30, -3, -125, -53, -54, 22, 87, 119, -2, -61, -124, -57, -59, 5, 87, 112, -23, -3, -122, -53, -59, 22, 97, 115, -6, -42, -103, -63, -59}, new byte[]{-16, -82, -85, 98, 8, 31, -101, -94}))) {
            return R.string.voice_ask_seat_mode;
        }
        if (str.equals(AbstractC1387m.m2421h(new byte[]{-33, 98, 29, 2, 124, 78, -91, -63, -61, 112, 18, 4, 118, 92}, new byte[]{-84, 18, 120, 97, 21, 40, -36, -98}))) {
            return R.string.voice_ask_object;
        }
        if (str.equals(AbstractC1387m.m2421h(new byte[]{-23, 41, -2, 35, 79, -95, -24, 110, -18, 43, -6, 35, 77, -104, -11, 88, -24, 60, -8, 52, 79, -88, -1}, new byte[]{-102, 89, -101, 64, 38, -57, -111, 49}))) {
            return R.string.voice_ask_track;
        }
        if (str.equals(AbstractC1387m.m2421h(new byte[]{124, 123, -103, 71, 47, -120, 115, 8, 126, 98, -113, 70, 39, -110, 125, 56, ByteCompanionObject.MAX_VALUE}, new byte[]{17, 18, -22, 52, 70, -26, 20, 87}))) {
            if (strM5392a.matches(AbstractC1387m.m2421h(new byte[]{7, -79, 15, -26, -101, -100, 66, 4, -109, 75, -102, -91, 113, -14, 44, 110, -7, 37, -10, 81, -35, -100, 72, 4, -101, 75, -110, 8, 33, 48, 44, 101, -7, 43, -10, 89, 113, -8, 44, 100, -8, 28, 91, 9, 16, -100, 76, 4, -102, 75, -105, 9, 23, 48, -117, -67, 71, -1, 72, -82, -35, 40, -109, -69, 91, -25, 83, -85, -44, 34, -105, -88, 78, -9, 72, -81, -60, 46, -109, -84, 0, -75, 13}, new byte[]{41, -101, 39, -39, -95, 76, -4, -44}))) {
                return R.string.voice_ask_open_close;
            }
            if (strM5392a.matches(AbstractC1387m.m2421h(new byte[]{-24, 79, 118, -30, 83, -88, 34, 82, 115, -75, -30, 13, -42, -87, 21, 83, 70, -75, -18, 12, -21, -88, 35, 83, 70, 25, -114, 110, -72, -7, 112, 50, 22, -47, -113, 94, -72, -8, -36, -10, -93, 8, 46, -72, 27, 24, -44, -9, -76, 0, 34, -71, 12, 30, -46, -25, -93, 76, 112, -9}, new byte[]{-58, 101, 94, -35, 105, 121, -96, -126}))) {
                return R.string.voice_ask_temperature_action;
            }
            return strM5392a.matches(AbstractC1387m.m2421h(new byte[]{-11, -86, -72, -54, -95, -38, -78, 10, 101, 80, 36, 37, 37, -38, -66, 11, 91, 80, 37, 37, 41, 118, -35, 100, 11, 49, 64, 75, 75, -71, -36, 90, 11, 53, 64, 71, -25, -38, -65, 10, 110, 80, 45, 36, 25, -38, -75, 10, 96, 81, 31, 36, 29, 118, -35, 96, 11, 59, 64, 77, 75, -74, -35, 106, 10, 2, -20, 37, 33, -38, -77, 10, 102, 80, 36, 37, 35, -37, -117, 10, 99, 80, 46, 37, 38, -38, -72, 11, 91, -4, 65, 117, 74, -119, -35, 97, -89, -24, -11, -108, -17, 118, 123, -65, -75, -12, -7, -103, -6, 126, 113, -71, -73, -23, -3, -108, -17, 111, 36, -12, -15}, new byte[]{-37, ByteCompanionObject.MIN_VALUE, -112, -11, -101, 10, 13, -38})) ? R.string.voice_ask_on_off : R.string.voice_ask_operation;
        }
        if (str.equals(AbstractC1387m.m2421h(new byte[]{5, 68, -83, -117, -66, -3, -106, 29, 15, 69, -92, -78, -95, -3, -111, 12}, new byte[]{102, 43, -61, -19, -46, -108, -11, 105})) || str.equals(AbstractC1387m.m2421h(new byte[]{5, -114, 16, -60, 23, -31, -62, 108, 4, -123, 7, -18, 0, -29, -62, 107, 0}, new byte[]{112, -32, 99, -79, 103, -111, -83, 30}))) {
            return R.string.voice_ask_side;
        }
        if (str.contains(AbstractC1387m.m2421h(new byte[]{68, -127, 21, 52, 82}, new byte[]{50, -32, 121, 65, 55, 60, 75, 122})) || str.contains(AbstractC1387m.m2421h(new byte[]{75, 37, 38, -17}, new byte[]{62, 75, 79, -101, -17, 73, 83, -74})) || str.contains(AbstractC1387m.m2421h(new byte[]{57, 68, -40, 98, -67, 104}, new byte[]{88, 41, -73, 23, -45, 28, 38, -2}))) {
            return str.startsWith(AbstractC1387m.m2421h(new byte[]{-7, 11, 80, 69, 29, -101, 14, 95, -22, 55, 82, 77, 30, ByteCompanionObject.MIN_VALUE, 52, 111, -19, 6, 69, 90, 19, -100, Base64.padSymbol, 81, -6, 4, 65}, new byte[]{-104, 104, 36, 44, 114, -11, 81, 48})) ? R.string.voice_ask_unavailable : R.string.voice_ask_value;
        }
        if (str.equals(AbstractC1387m.m2421h(new byte[]{15, 106, 100, -13, -76, 44, 15, -67, Base64.padSymbol, 124, 103, -22, -80, Base64.padSymbol, 13, -68, 17}, new byte[]{98, 31, 8, -121, -35, 92, 99, -40})) || str.equals(AbstractC1387m.m2421h(new byte[]{-52, -106, -14, -56, -8, -84, 82, 41, -2, -116, -4, -42, -12, -65, 74, 63}, new byte[]{-95, -29, -98, -68, -111, -36, 62, 76}))) {
            return R.string.voice_ask_one_command;
        }
        if (str.equals(AbstractC1387m.m2421h(new byte[]{-8, 106, 47, -88, 4, -91, 35, -67, -55, 96, 58, -106, 19, -83, 34, -80, -13, 99}, new byte[]{-106, 15, 72, -55, 112, -52, 76, -45})) || str.startsWith(AbstractC1387m.m2421h(new byte[]{-20, -38, 8, 83, 98, -36, -38, 36, -4, -60, 20, 64, 112}, new byte[]{-103, -76, 123, 50, 4, -71, -123, 86})) || str.equals(AbstractC1387m.m2421h(new byte[]{ByteCompanionObject.MAX_VALUE, 123, 82, 48, 51, -89, -61, -71, 81, 97, 69, 28, 36, -95, -62, -77, 103, 122, 94, 44, 41}, new byte[]{14, 14, 55, 67, 71, -50, -84, -41})) || str.equals(AbstractC1387m.m2421h(new byte[]{-10, -31, 38, -124, 63, -73, 10, 76, -51, -21, 50, -66, 32, -80, 3, 92, -5, -12, 44, -124, 18, -90, 0, 69, -1, -27, 46, -123, 62}, new byte[]{-110, -124, 64, -31, 77, -59, 111, 40}))) {
            return R.string.voice_ask_new_command;
        }
        return str.equals(AbstractC1387m.m2421h(new byte[]{-6, 28, -101, 20, 105, 90, 1, 109, -8, 19, -109, 13, 97, 85, 42}, new byte[]{-105, 125, -11, 97, 8, 54, 94, 14})) ? R.string.voice_ask_manual_conflict : R.string.voice_ask_repeat;
    }

    /* JADX WARN: Code duplicated, block: B:29:0x009a  */
    /* JADX WARN: Code duplicated, block: B:31:0x009e A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:32:0x00a0  */
    /* JADX WARN: Code duplicated, block: B:51:0x00d4  */
    /* JADX WARN: Code duplicated, block: B:53:0x00d8 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:54:0x00da  */
    /* JADX WARN: Code duplicated, block: B:86:0x00a6 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:90:0x00e0 A[SYNTHETIC] */
    /* JADX INFO: renamed from: q */
    public static C1578b m5871q(C1578b c1578b, int i10, int i11, C1582f c1582f) throws C3753i {
        int i12 = i11;
        if (i10 <= 0 || i12 <= 0) {
            throw C3753i.f11192d;
        }
        C1578b c1578b2 = new C1578b(i10, i12);
        int i13 = i10 * 2;
        float[] fArr = new float[i13];
        int i14 = 0;
        while (i14 < i12) {
            float f8 = i14 + 0.5f;
            for (int i15 = 0; i15 < i13; i15 += 2) {
                fArr[i15] = (i15 / 2) + 0.5f;
                fArr[i15 + 1] = f8;
            }
            float f10 = c1582f.f3921a;
            float f11 = c1582f.f3922b;
            float f12 = c1582f.f3923c;
            float f13 = c1582f.f3924d;
            float f14 = c1582f.f3925e;
            float f15 = c1582f.f3926f;
            float f16 = c1582f.f3927g;
            float f17 = c1582f.f3928h;
            float f18 = c1582f.f3929i;
            int i16 = i13 - 1;
            for (int i17 = 0; i17 < i16; i17 += 2) {
                float f19 = fArr[i17];
                int i18 = i17 + 1;
                float f20 = fArr[i18];
                float f21 = (f15 * f20) + (f12 * f19) + f18;
                fArr[i17] = (((f13 * f20) + (f10 * f19)) + f16) / f21;
                fArr[i18] = (((f20 * f14) + (f19 * f11)) + f17) / f21;
            }
            int i19 = c1578b.f3900b;
            int i20 = c1578b.f3901c;
            boolean z9 = true;
            for (int i21 = 0; i21 < i16 && z9; i21 += 2) {
                int i22 = (int) fArr[i21];
                int i23 = i21 + 1;
                int i24 = (int) fArr[i23];
                if (i22 < -1 || i22 > i19 || i24 < -1 || i24 > i20) {
                    throw C3753i.f11192d;
                }
                if (i22 == -1) {
                    fArr[i21] = 0.0f;
                } else {
                    if (i22 == i19) {
                        fArr[i21] = i19 - 1;
                    } else {
                        z9 = false;
                    }
                    if (i24 == -1) {
                        fArr[i23] = 0.0f;
                    } else {
                        if (i24 == i20) {
                            fArr[i23] = i20 - 1;
                        }
                    }
                    z9 = true;
                }
                z9 = true;
                if (i24 == -1) {
                    fArr[i23] = 0.0f;
                } else {
                    if (i24 == i20) {
                        fArr[i23] = i20 - 1;
                    }
                }
                z9 = true;
            }
            boolean z10 = true;
            for (int i25 = i13 - 2; i25 >= 0 && z10; i25 -= 2) {
                int i26 = (int) fArr[i25];
                int i27 = i25 + 1;
                int i28 = (int) fArr[i27];
                if (i26 < -1 || i26 > i19 || i28 < -1 || i28 > i20) {
                    throw C3753i.f11192d;
                }
                if (i26 == -1) {
                    fArr[i25] = 0.0f;
                } else {
                    if (i26 == i19) {
                        fArr[i25] = i19 - 1;
                    } else {
                        z10 = false;
                    }
                    if (i28 == -1) {
                        fArr[i27] = 0.0f;
                    } else {
                        if (i28 == i20) {
                            fArr[i27] = i20 - 1;
                        }
                    }
                    z10 = true;
                }
                z10 = true;
                if (i28 == -1) {
                    fArr[i27] = 0.0f;
                } else {
                    if (i28 == i20) {
                        fArr[i27] = i20 - 1;
                    }
                }
                z10 = true;
            }
            for (int i29 = 0; i29 < i13; i29 += 2) {
                try {
                    if (c1578b.m2658b((int) fArr[i29], (int) fArr[i29 + 1])) {
                        c1578b2.m2662f(i29 / 2, i14);
                    }
                } catch (ArrayIndexOutOfBoundsException unused) {
                    throw C3753i.f11192d;
                }
            }
            i14++;
            i12 = i11;
        }
        return c1578b2;
    }

    /* JADX INFO: renamed from: r */
    public static void m5872r(Context context, Intent intent) {
        try {
            context.sendBroadcast(intent);
        } catch (Exception e) {
            Log.w(AbstractC1387m.m2421h(new byte[]{50, -123, -36, -34, 80, 27, -113, -40, 4, -92, -46, -39, 81}, new byte[]{112, -9, -77, -65, 52, 120, -18, -85}), AbstractC1387m.m2421h(new byte[]{-6, 122, 31, -36, 72, 24, 86, 12, -45, 59, 5, -43, 67, 24, 86, 26, -50, 116, 23, -44, 78, 29, 5, 12, -122, 59}, new byte[]{-68, 27, 118, -80, 45, 124, 118, 120}) + e.getMessage());
        }
    }

    /* JADX INFO: renamed from: s */
    public static void m5873s(CheckableImageButton checkableImageButton, View.OnLongClickListener onLongClickListener) {
        boolean zHasOnClickListeners = checkableImageButton.hasOnClickListeners();
        boolean z9 = onLongClickListener != null;
        boolean z10 = zHasOnClickListeners || z9;
        checkableImageButton.setFocusable(z10);
        checkableImageButton.setClickable(zHasOnClickListeners);
        checkableImageButton.setPressable(zHasOnClickListeners);
        checkableImageButton.setLongClickable(z9);
        checkableImageButton.setImportantForAccessibility(z10 ? 1 : 2);
    }

    /* JADX INFO: renamed from: t */
    public static void m5874t(int i10, Context context) {
        int streamMaxVolume;
        try {
            AudioManager audioManager = (AudioManager) context.getSystemService(AbstractC1387m.m2421h(new byte[]{-66, -30, -78, 119, 42}, new byte[]{-33, -105, -42, 30, 69, 11, -60, -77}));
            if (audioManager != null && (streamMaxVolume = audioManager.getStreamMaxVolume(3)) > 0) {
                int iMax = Math.max(0, Math.min(i10, 100));
                f10840b = iMax;
                audioManager.setStreamVolume(3, Math.round((iMax * streamMaxVolume) / 100.0f), 0);
            }
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: renamed from: u */
    public static void m5875u(Context context, Intent intent, Bundle bundle) {
        new Handler(Looper.getMainLooper()).post(new RunnableC0873n(bundle, context, intent, 7));
    }

    /* JADX INFO: renamed from: v */
    public static void m5876v(MainActivity mainActivity, Intent intent) {
        m5875u(mainActivity, intent, null);
    }

    /* JADX INFO: renamed from: w */
    public static void m5877w(int i10, Context context) {
        m5878x(context, context.getText(i10));
    }

    /* JADX INFO: renamed from: x */
    public static void m5878x(Context context, CharSequence charSequence) {
        try {
            new Handler(Looper.getMainLooper()).post(new RunnableC1375j2(12, context, charSequence));
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: renamed from: y */
    public static boolean m5879y(InterfaceC2560a interfaceC2560a, InterfaceC3587d interfaceC3587d, InterfaceC0929c interfaceC0929c) {
        if (!(interfaceC2560a instanceof Callable)) {
            return false;
        }
        try {
            Object objCall = ((Callable) interfaceC2560a).call();
            if (objCall == null) {
                EnumC2755d.m4274a(interfaceC3587d);
                return true;
            }
            try {
                Object objApply = interfaceC0929c.apply(objCall);
                AbstractC1314b.m2356a(objApply, "The mapper returned a null Publisher");
                InterfaceC2560a interfaceC2560a2 = (InterfaceC2560a) objApply;
                if (!(interfaceC2560a2 instanceof Callable)) {
                    interfaceC2560a2.mo2835a(interfaceC3587d);
                    return true;
                }
                try {
                    Object objCall2 = ((Callable) interfaceC2560a2).call();
                    if (objCall2 == null) {
                        EnumC2755d.m4274a(interfaceC3587d);
                        return true;
                    }
                    interfaceC3587d.mo2808f(new C2756e(objCall2, interfaceC3587d));
                    return true;
                } catch (Throwable th) {
                    AbstractC1031d.m1292v(th);
                    EnumC2755d.m4275b(th, interfaceC3587d);
                    return true;
                }
            } catch (Throwable th2) {
                AbstractC1031d.m1292v(th2);
                EnumC2755d.m4275b(th2, interfaceC3587d);
                return true;
            }
        } catch (Throwable th3) {
            AbstractC1031d.m1292v(th3);
            EnumC2755d.m4275b(th3, interfaceC3587d);
            return true;
        }
    }

    /* JADX INFO: renamed from: z */
    public static void m5880z(String str, boolean z9, Object obj) {
        if (!z9) {
            throw new C0029a(C1461d.m2512l(str, obj), 1);
        }
    }
}
