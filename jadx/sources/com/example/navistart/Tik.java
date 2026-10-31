package com.example.navistart;

import android.app.IntentService;
import android.content.Intent;
import java.io.FileWriter;
import java.io.IOException;
import kotlin.jvm.internal.ByteCompanionObject;
import p047e0.AbstractC1387m;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class Tik extends IntentService {

    /* JADX INFO: renamed from: b */
    public static final String f1652b;

    static {
        AbstractC1387m.m2421h(new byte[]{112, -51, -44, -98, 117, 36, 88, -65, 116, -36, -58, -104, 104, 39, 88, -86, 105, -53, -46, -108, 115, 57, 66}, new byte[]{49, -114, ByteCompanionObject.MIN_VALUE, -41, 58, 106, 7, -17});
        f1652b = AbstractC1387m.m2421h(new byte[]{14, 35, 41, 4, -98, -98, 5, -81, 24, 46, 106, 67, -111, -106, 31, -93, 20, 98, 46, 69, -101, -124, 18, -81, 8, 40, 49, 70, -100, -123, 21, -94, 0, 35, 106, 75, -102, -125, 24, -88, 3, 98, 5, 105, -83, -66, 62, -119, 50, 27, 22, 99, -83, -78, 46, -126, 53, 9, 22, 105, -80, -92, 52}, new byte[]{109, 76, 68, 42, -7, -9, 113, -57});
    }

    public Tik() {
        super(AbstractC1387m.m2421h(new byte[]{45, 32, 102, -68, 14, -80, -20, 33, 33, 54, 119, -85, 3, -83, -52, 33, 26, 46, 106, -83, 8}, new byte[]{104, 88, 3, -50, 109, -39, -97, 68}));
    }

    @Override // android.app.IntentService
    public final void onHandleIntent(Intent intent) {
        if (intent != null) {
            if (f1652b.equals(intent.getAction())) {
                try {
                    FileWriter fileWriter = new FileWriter(getFilesDir().getPath() + AbstractC1387m.m2421h(new byte[]{85, 56, -66, -16, -88, 40, -67, 107, 30, 52, -93, -10}, new byte[]{48, 64, -37, -126, -53, 65, -50, 14}));
                    fileWriter.write(AbstractC1387m.m2421h(new byte[]{35, 72, -53, 75, 44, -56, -1, 103}, new byte[]{102, 48, -82, 57, 79, -95, -116, 2}));
                    fileWriter.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}
