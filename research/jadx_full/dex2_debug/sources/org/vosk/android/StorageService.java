package org.vosk.android;

import android.content.Context;
import android.content.res.AssetManager;
import android.os.Environment;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.concurrent.Executors;
import org.vosk.Model;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class StorageService {
    protected static final String TAG = "StorageService";

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void a(Context context, String str, String str2, Handler handler, StorageService$Callback storageService$Callback, StorageService$Callback storageService$Callback2) {
        lambda$unpack$2(context, str, str2, handler, storageService$Callback, storageService$Callback2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void b(StorageService$Callback storageService$Callback, Model model) {
        lambda$unpack$0(storageService$Callback, model);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void c(StorageService$Callback storageService$Callback, IOException iOException) {
        lambda$unpack$1(storageService$Callback, iOException);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static void copyAssets(AssetManager assetManager, String str, File file) throws IOException {
        String[] list = assetManager.list(str);
        if (list == null) {
            return;
        }
        if (list.length == 0) {
            if (str.endsWith("uuid")) {
                return;
            }
            copyFile(assetManager, str, file);
            return;
        }
        File file2 = new File(file, str);
        if (!file2.exists()) {
            String str2 = TAG;
            Log.v(str2, "Making directory " + file2.getAbsolutePath());
            if (!file2.mkdirs()) {
                Log.v(str2, "Failed to create directory " + file2.getAbsolutePath());
            }
        }
        for (String str3 : list) {
            copyAssets(assetManager, ai.onnxruntime.a.D(str, "/", str3), file);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static void copyFile(AssetManager assetManager, String str, File file) throws IOException {
        Log.v(TAG, "Copy " + str + " to " + file);
        InputStream inputStreamOpen = assetManager.open(str);
        FileOutputStream fileOutputStream = new FileOutputStream(file + "/" + str);
        byte[] bArr = new byte[4000];
        while (true) {
            int i = inputStreamOpen.read(bArr);
            if (i == -1) {
                inputStreamOpen.close();
                fileOutputStream.close();
                return;
            }
            fileOutputStream.write(bArr, 0, i);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static boolean deleteContents(File file) {
        File[] fileArrListFiles = file.listFiles();
        boolean zDeleteContents = true;
        if (fileArrListFiles != null) {
            for (File file2 : fileArrListFiles) {
                if (file2.isDirectory()) {
                    zDeleteContents &= deleteContents(file2);
                }
                if (!file2.delete()) {
                    zDeleteContents = false;
                }
            }
        }
        return zDeleteContents;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ void lambda$unpack$0(StorageService$Callback storageService$Callback, Model model) {
        storageService$Callback.onComplete(model);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ void lambda$unpack$1(StorageService$Callback storageService$Callback, IOException iOException) {
        storageService$Callback.onComplete(iOException);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ void lambda$unpack$2(Context context, String str, String str2, Handler handler, StorageService$Callback storageService$Callback, StorageService$Callback storageService$Callback2) {
        try {
            handler.post(new a(2, storageService$Callback, new Model(sync(context, str, str2))));
        } catch (IOException e) {
            handler.post(new a(3, storageService$Callback2, e));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static String readLine(InputStream inputStream) {
        return new BufferedReader(new InputStreamReader(inputStream)).readLine();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String sync(Context context, String str, String str2) throws IOException {
        AssetManager assets = context.getAssets();
        File externalFilesDir = context.getExternalFilesDir(null);
        if (externalFilesDir == null) {
            ai.onnxruntime.b.w(Environment.getExternalStorageState(), "cannot get external files dir, external storage state is ");
            return null;
        }
        File file = new File(externalFilesDir, str2);
        String absolutePath = new File(file, str).getAbsolutePath();
        try {
            if (readLine(new FileInputStream(new File(file, str + "/uuid"))).equals(readLine(assets.open(str + "/uuid")))) {
                return absolutePath;
            }
        } catch (FileNotFoundException unused) {
        }
        deleteContents(file);
        copyAssets(assets, str, file);
        copyFile(assets, ai.onnxruntime.a.C(str, "/uuid"), file);
        return absolutePath;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void unpack(Context context, String str, String str2, StorageService$Callback<Model> storageService$Callback, StorageService$Callback<IOException> storageService$Callback2) {
        Executors.newSingleThreadExecutor().execute(new e(context, str, str2, new Handler(Looper.getMainLooper()), storageService$Callback, storageService$Callback2));
    }
}
