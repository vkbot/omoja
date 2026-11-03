package org.extra.relinker;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import java.io.Closeable;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

/* JADX INFO: loaded from: classes2.dex */
public class a implements c.a {

    /* JADX INFO: renamed from: org.extra.relinker.a$a, reason: collision with other inner class name */
    private static class C0016a {
        public ZipFile a;
        public ZipEntry b;

        public C0016a(ZipFile zipFile, ZipEntry zipEntry) {
            this.a = zipFile;
            this.b = zipEntry;
        }
    }

    private String[] a(Context context) {
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        String[] strArr = applicationInfo.splitSourceDirs;
        if (strArr == null || strArr.length == 0) {
            return new String[]{applicationInfo.sourceDir};
        }
        String[] strArr2 = new String[strArr.length + 1];
        strArr2[0] = applicationInfo.sourceDir;
        System.arraycopy(strArr, 0, strArr2, 1, strArr.length);
        return strArr2;
    }

    private C0016a a(Context context, String[] strArr, String str, d dVar) {
        ZipFile zipFile = null;
        for (String str2 : a(context)) {
            int i = 0;
            while (true) {
                int i2 = i + 1;
                if (i >= 5) {
                    break;
                }
                try {
                    zipFile = new ZipFile(new File(str2), 1);
                    break;
                } catch (IOException unused) {
                    i = i2;
                }
            }
            if (zipFile != null) {
                int i3 = 0;
                while (true) {
                    int i4 = i3 + 1;
                    if (i3 >= 5) {
                        try {
                            zipFile.close();
                            break;
                        } catch (IOException unused2) {
                            break;
                        }
                    }
                    for (String str3 : strArr) {
                        String str4 = "lib" + File.separatorChar + str3 + File.separatorChar + str;
                        dVar.a("Looking for %s in APK %s...", str4, str2);
                        ZipEntry entry = zipFile.getEntry(str4);
                        if (entry != null) {
                            return new C0016a(zipFile, entry);
                        }
                    }
                    i3 = i4;
                }
            }
        }
        return null;
    }

    @Override // org.extra.relinker.c.a
    public void a(Context context, String[] strArr, String str, File file, d dVar) throws Throwable {
        InputStream inputStream;
        FileOutputStream fileOutputStream;
        C0016a c0016a = null;
        closeable = null;
        Closeable closeable = null;
        try {
            C0016a c0016aA = a(context, strArr, str, dVar);
            try {
                if (c0016aA == null) {
                    throw new b(str);
                }
                int i = 0;
                while (true) {
                    int i2 = i + 1;
                    if (i < 5) {
                        dVar.a("Found %s! Extracting...", str);
                        try {
                            if (file.exists() || file.createNewFile()) {
                                try {
                                    inputStream = c0016aA.a.getInputStream(c0016aA.b);
                                    try {
                                        fileOutputStream = new FileOutputStream(file);
                                        try {
                                            long jA = a(inputStream, fileOutputStream);
                                            fileOutputStream.getFD().sync();
                                            if (jA != file.length()) {
                                                a(inputStream);
                                                a(fileOutputStream);
                                            } else {
                                                a(inputStream);
                                                a(fileOutputStream);
                                                file.setReadable(true, false);
                                                file.setExecutable(true, false);
                                                file.setWritable(true);
                                                try {
                                                    ZipFile zipFile = c0016aA.a;
                                                    if (zipFile != null) {
                                                        zipFile.close();
                                                        return;
                                                    }
                                                    return;
                                                } catch (IOException unused) {
                                                    return;
                                                }
                                            }
                                        } catch (FileNotFoundException unused2) {
                                            a(inputStream);
                                            a(fileOutputStream);
                                        } catch (IOException unused3) {
                                            a(inputStream);
                                            a(fileOutputStream);
                                        } catch (Throwable th) {
                                            th = th;
                                            closeable = fileOutputStream;
                                            a(inputStream);
                                            a(closeable);
                                            throw th;
                                        }
                                    } catch (FileNotFoundException unused4) {
                                        fileOutputStream = null;
                                        a(inputStream);
                                        a(fileOutputStream);
                                        i = i2;
                                    } catch (IOException unused5) {
                                        fileOutputStream = null;
                                        a(inputStream);
                                        a(fileOutputStream);
                                        i = i2;
                                    } catch (Throwable th2) {
                                        th = th2;
                                    }
                                } catch (FileNotFoundException unused6) {
                                    inputStream = null;
                                } catch (IOException unused7) {
                                    inputStream = null;
                                } catch (Throwable th3) {
                                    th = th3;
                                    inputStream = null;
                                }
                            }
                        } catch (IOException unused8) {
                        }
                        i = i2;
                    } else {
                        dVar.a("FATAL! Couldn't extract the library from the APK!");
                        try {
                            ZipFile zipFile2 = c0016aA.a;
                            if (zipFile2 != null) {
                                zipFile2.close();
                                return;
                            }
                            return;
                        } catch (IOException unused9) {
                            return;
                        }
                    }
                }
            } catch (Throwable th4) {
                th = th4;
                c0016a = c0016aA;
                if (c0016a != null) {
                    try {
                        ZipFile zipFile3 = c0016a.a;
                        if (zipFile3 != null) {
                            zipFile3.close();
                        }
                    } catch (IOException unused10) {
                    }
                }
                throw th;
            }
        } catch (Throwable th5) {
            th = th5;
        }
    }

    private long a(InputStream inputStream, OutputStream outputStream) throws IOException {
        byte[] bArr = new byte[4096];
        long j = 0;
        while (true) {
            int i = inputStream.read(bArr);
            if (i == -1) {
                outputStream.flush();
                return j;
            }
            outputStream.write(bArr, 0, i);
            j += (long) i;
        }
    }

    private void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
            }
        }
    }
}
