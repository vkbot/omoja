package org.libpag;

import android.util.Log;
import com.bumptech.glide.load.resource.bitmap.RecyclableBufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;

/* JADX INFO: loaded from: classes2.dex */
abstract class b {
    /* JADX WARN: Multi-variable type inference failed */
    static byte[] a(String str) throws Throwable {
        HttpURLConnection httpURLConnection;
        InputStream inputStream;
        byte[] bArrReadFile = PAGDiskCache.ReadFile(str);
        if (bArrReadFile != null && bArrReadFile.length > 0) {
            return bArrReadFile;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        RecyclableBufferedInputStream recyclableBufferedInputStream = 0;
        recyclableBufferedInputStream = 0;
        try {
            try {
                httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
                try {
                    httpURLConnection.setRequestMethod("GET");
                    httpURLConnection.connect();
                    int responseCode = httpURLConnection.getResponseCode();
                    if (responseCode / 100 != 2) {
                        Log.e("NetworkFetcher", "Error: HTTP response code " + responseCode);
                        try {
                            byteArrayOutputStream.close();
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                        httpURLConnection.disconnect();
                        return null;
                    }
                    inputStream = httpURLConnection.getInputStream();
                    try {
                        byte[] bArr = new byte[1024];
                        while (true) {
                            int i = inputStream.read(bArr);
                            if (i == -1) {
                                break;
                            }
                            byteArrayOutputStream.write(bArr, 0, i);
                        }
                        byte[] byteArray = byteArrayOutputStream.toByteArray();
                        PAGDiskCache.WriteFile(str, byteArray);
                        try {
                            inputStream.close();
                        } catch (Exception e2) {
                            e2.printStackTrace();
                        }
                        try {
                            byteArrayOutputStream.close();
                        } catch (Exception e3) {
                            e3.printStackTrace();
                        }
                        httpURLConnection.disconnect();
                        return byteArray;
                    } catch (IOException e4) {
                        e = e4;
                        Log.e("NetworkFetcher", "Error: " + e.getMessage());
                        e.printStackTrace();
                        if (inputStream != null) {
                            try {
                                inputStream.close();
                            } catch (Exception e5) {
                                e5.printStackTrace();
                            }
                        }
                        try {
                            byteArrayOutputStream.close();
                        } catch (Exception e6) {
                            e6.printStackTrace();
                        }
                        if (httpURLConnection != null) {
                            httpURLConnection.disconnect();
                        }
                        return null;
                    }
                } catch (IOException e7) {
                    e = e7;
                    inputStream = null;
                } catch (Throwable th) {
                    th = th;
                    if (recyclableBufferedInputStream != 0) {
                        try {
                            recyclableBufferedInputStream.close();
                        } catch (Exception e8) {
                            e8.printStackTrace();
                        }
                    }
                    try {
                        byteArrayOutputStream.close();
                    } catch (Exception e9) {
                        e9.printStackTrace();
                    }
                    if (httpURLConnection == null) {
                        throw th;
                    }
                    httpURLConnection.disconnect();
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                recyclableBufferedInputStream = "Error: HTTP response code ";
            }
        } catch (IOException e10) {
            e = e10;
            inputStream = null;
            httpURLConnection = null;
        } catch (Throwable th3) {
            th = th3;
            httpURLConnection = null;
        }
    }
}
