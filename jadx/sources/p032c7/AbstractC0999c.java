package p032c7;

import ai.onnxruntime.AbstractC0074a;
import android.hardware.Camera;
import android.util.Log;
import java.util.Arrays;
import java.util.List;
import java.util.regex.Pattern;

/* JADX INFO: renamed from: c7.c */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC0999c {

    /* JADX INFO: renamed from: a */
    public static final /* synthetic */ int f967a = 0;

    static {
        Pattern.compile(";");
    }

    /* JADX INFO: renamed from: a */
    public static String m1204a(String str, List list, String... strArr) {
        StringBuilder sbM173x = AbstractC0074a.m173x("Requesting ", str, " value from among: ");
        sbM173x.append(Arrays.toString(strArr));
        Log.i("CameraConfiguration", sbM173x.toString());
        Log.i("CameraConfiguration", "Supported " + str + " values: " + list);
        if (list != null) {
            for (String str2 : strArr) {
                if (list.contains(str2)) {
                    Log.i("CameraConfiguration", "Can set " + str + " to: " + str2);
                    return str2;
                }
            }
        }
        Log.i("CameraConfiguration", "No supported values match");
        return null;
    }

    /* JADX INFO: renamed from: b */
    public static void m1205b(Camera.Parameters parameters, boolean z9) {
        List<String> supportedFlashModes = parameters.getSupportedFlashModes();
        String strM1204a = z9 ? m1204a("flash mode", supportedFlashModes, "torch", "on") : m1204a("flash mode", supportedFlashModes, "off");
        if (strM1204a != null) {
            if (strM1204a.equals(parameters.getFlashMode())) {
                Log.i("CameraConfiguration", "Flash mode already set to ".concat(strM1204a));
            } else {
                Log.i("CameraConfiguration", "Setting flash mode to ".concat(strM1204a));
                parameters.setFlashMode(strM1204a);
            }
        }
    }
}
