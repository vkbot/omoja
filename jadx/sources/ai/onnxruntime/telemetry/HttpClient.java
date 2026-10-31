package ai.onnxruntime.telemetry;

import ai.onnxruntime.AbstractC0074a;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.os.Build;
import android.provider.Settings;
import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import java.net.URL;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Locale;
import java.util.TimeZone;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.FutureTask;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class HttpClient {
    private static final String ANDROID_DEVICE_CLASS_PC = "Android.PC";
    private static final String ANDROID_DEVICE_CLASS_PHONE = "Android.Phone";
    private static final int MAX_HTTP_THREADS = 2;
    private ConnectivityCallback m_callback;
    private ConnectivityManager m_connectivityManager;
    private final Context m_context;
    private final ExecutorService m_executor;
    private PowerInfoReceiver m_power_receiver;
    private final HttpClientRequest.Factory m_requestFactory;

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public interface Configuration {

        /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
        public static class Default implements Configuration {
            @Override // ai.onnxruntime.telemetry.HttpClient.Configuration
            public boolean isInitializeDeviceInfo() {
                return true;
            }
        }

        boolean isInitializeDeviceInfo();
    }

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public static class FutureShim extends FutureTask<Boolean> {
        public FutureShim(HttpClientRequest httpClientRequest) {
            super(httpClientRequest, Boolean.TRUE);
        }

        @Override // java.util.concurrent.FutureTask, java.util.concurrent.Future
        @Keep
        public boolean cancel(boolean z9) {
            return super.cancel(z9);
        }
    }

    public HttpClient(Context context, @NonNull HttpClientRequest.Factory factory, @NonNull Configuration configuration) {
        this.m_context = context;
        this.m_requestFactory = factory;
        setCacheFilePath(System.getProperty("java.io.tmpdir"));
        if (configuration.isInitializeDeviceInfo()) {
            setDeviceInfo(calculateID(context), Build.MANUFACTURER, Build.MODEL);
        }
        calculateAndSetSystemInfo(context);
        this.m_executor = createExecutor();
        createClientInstance();
        if (hasConnectivityManager() && context.checkSelfPermission("android.permission.ACCESS_NETWORK_STATE") == 0) {
            try {
                ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
                this.m_connectivityManager = connectivityManager;
                if (connectivityManager != null) {
                    boolean zIsActiveNetworkMetered = connectivityManager.isActiveNetworkMetered();
                    this.m_callback = new ConnectivityCallback(this, zIsActiveNetworkMetered);
                    onCostChange(zIsActiveNetworkMetered);
                    this.m_connectivityManager.registerDefaultNetworkCallback(this.m_callback);
                }
            } catch (SecurityException | RuntimeException | Exception unused) {
            }
        }
        this.m_power_receiver = new PowerInfoReceiver(this);
        Intent intentRegisterReceiver = context.registerReceiver(this.m_power_receiver, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        if (intentRegisterReceiver != null) {
            this.m_power_receiver.onReceive(context, intentRegisterReceiver);
        }
    }

    private void calculateAndSetSystemInfo(Context context) {
        PackageInfo packageInfo;
        String str;
        String packageName = context.getPackageName();
        try {
            packageInfo = context.getPackageManager().getPackageInfo(packageName, 0);
        } catch (PackageManager.NameNotFoundException unused) {
            packageInfo = null;
        }
        if (packageInfo == null || (str = packageInfo.versionName) == null) {
            str = "";
        }
        String str2 = str;
        String languageTag = getLanguageTag(context.getResources().getConfiguration().locale);
        String timeZone = getTimeZone();
        String deviceClass = getDeviceClass(context);
        String str3 = Build.VERSION.RELEASE;
        if (str3 == null) {
            str3 = "GECOS III";
        }
        String str4 = str3;
        setSystemInfo(AbstractC0074a.m161l("A:", packageName), str2, languageTag, str4, AbstractC0074a.m149D(str4, " ", Build.VERSION.INCREMENTAL), timeZone, deviceClass);
    }

    private String calculateID(Context context) {
        String string;
        try {
            string = Settings.Secure.getString(context.getContentResolver(), "android_id");
        } catch (Exception e) {
            string = e.toString();
        }
        return string == null ? "" : "a:".concat(string);
    }

    private String getDeviceClass(Context context) {
        return context.getResources().getConfiguration().isLayoutSizeAtLeast(3) ? ANDROID_DEVICE_CLASS_PC : ANDROID_DEVICE_CLASS_PHONE;
    }

    private static String getLanguageTag(Locale locale) {
        return locale.toLanguageTag();
    }

    private static String getTimeZone() {
        String str = new SimpleDateFormat("Z", Locale.getDefault()).format(Calendar.getInstance(TimeZone.getTimeZone("GMT"), Locale.getDefault()).getTime());
        int length = str.length();
        StringBuilder sb = new StringBuilder();
        int i10 = length - 2;
        sb.append(str.substring(0, i10));
        sb.append(':');
        sb.append(str.substring(i10));
        return sb.toString();
    }

    public native void createClientInstance();

    public ExecutorService createExecutor() {
        return Executors.newFixedThreadPool(2);
    }

    @Keep
    public FutureTask<Boolean> createTask(String str, String str2, byte[] bArr, String str3, int[] iArr, byte[] bArr2) {
        try {
            return new FutureShim(this.m_requestFactory.create(this, str, str2, bArr, str3, new HttpClientRequest.Headers(iArr, bArr2)));
        } catch (Exception unused) {
            return null;
        }
    }

    public native void deleteClientInstance();

    public native void dispatchCallback(String str, int i10, Object[] objArr, byte[] bArr);

    @Keep
    public void executeTask(FutureTask<Boolean> futureTask) {
        this.m_executor.execute(futureTask);
    }

    @RequiresApi(api = 21)
    public void finalize() {
        ConnectivityCallback connectivityCallback = this.m_callback;
        if (connectivityCallback != null) {
            this.m_connectivityManager.unregisterNetworkCallback(connectivityCallback);
            this.m_callback = null;
        }
        this.m_context.unregisterReceiver(this.m_power_receiver);
        this.m_power_receiver = null;
        deleteClientInstance();
        this.m_executor.shutdown();
    }

    public boolean hasConnectivityManager() {
        return true;
    }

    public URL newUrl(String str) {
        return new URL(str);
    }

    public native void onCostChange(boolean z9);

    public native void onPowerChange(boolean z9, boolean z10);

    public native void setCacheFilePath(String str);

    public native void setDeviceInfo(String str, String str2, String str3);

    public native void setSystemInfo(String str, String str2, String str3, String str4, String str5, String str6, String str7);

    public HttpClient(Context context, HttpClientRequest.Factory factory) {
        this(context, factory, new Configuration.Default());
    }

    public HttpClient(Context context) {
        this(context, new HttpClientRequest.Factory.AndroidUrlConnection(), new Configuration.Default());
    }
}
