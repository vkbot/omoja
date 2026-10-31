package androidx.core.app;

import android.app.Activity;
import android.content.pm.PackageManager;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ActivityCompat$1 implements Runnable {
    final /* synthetic */ Activity val$activity;
    final /* synthetic */ String[] val$permissionsArray;
    final /* synthetic */ int val$requestCode;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Incorrect args count in method signature: ()V */
    public ActivityCompat$1(String[] strArr, Activity activity, int i9) {
        this.val$permissionsArray = strArr;
        this.val$activity = activity;
        this.val$requestCode = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public void run() {
        int[] iArr = new int[this.val$permissionsArray.length];
        PackageManager packageManager = this.val$activity.getPackageManager();
        String packageName = this.val$activity.getPackageName();
        int length = this.val$permissionsArray.length;
        for (int i9 = 0; i9 < length; i9++) {
            iArr[i9] = packageManager.checkPermission(this.val$permissionsArray[i9], packageName);
        }
        ((ActivityCompat$OnRequestPermissionsResultCallback) this.val$activity).onRequestPermissionsResult(this.val$requestCode, this.val$permissionsArray, iArr);
    }
}
