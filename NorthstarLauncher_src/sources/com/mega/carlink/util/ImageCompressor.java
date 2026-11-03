package com.mega.carlink.util;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import java.io.ByteArrayOutputStream;
import mega.log.MLog;

/* JADX INFO: loaded from: classes2.dex */
public class ImageCompressor {
    private static final String TAG = "ImageCompressor";

    private static byte[] compressImage(byte[] bArr, Bitmap.CompressFormat compressFormat, int i, int i2) {
        Bitmap bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length);
        if (bitmapDecodeByteArray == null) {
            MLog.e(TAG, "compressImage bitmap is null");
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        bitmapDecodeByteArray.compress(compressFormat, i, byteArrayOutputStream);
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        int length = byteArray.length / 1024;
        while (length > i2 && i > 0) {
            byteArrayOutputStream.reset();
            i -= 10;
            if (i < 0) {
                i = 0;
            }
            bitmapDecodeByteArray.compress(compressFormat, i, byteArrayOutputStream);
            byteArray = byteArrayOutputStream.toByteArray();
            length = byteArray.length / 1024;
        }
        bitmapDecodeByteArray.recycle();
        return byteArray;
    }

    public static byte[] compressImage(byte[] bArr) {
        return compressImage(bArr, Bitmap.CompressFormat.JPEG, 80, 50);
    }
}
