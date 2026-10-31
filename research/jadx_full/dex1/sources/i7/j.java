package i7;

import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabase$CursorFactory;
import android.database.sqlite.SQLiteOpenHelper;
import android.location.Location;
import android.util.Log;
import com.example.navistart.LocServ;
import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;
import kotlin.io.encoding.Base64;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class j extends SQLiteOpenHelper {
    public static final String e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static Boolean f2691f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static Location f2692g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final ArrayList f2693h;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LocServ f2694b;
    public final int c;
    public final int d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        e0.m.h(new byte[]{58, -4, 91, -3, 43, -36, -97, -126, 42, -17, 78, -6, 99, -47, -98}, new byte[]{78, -114, 58, -101, 77, -75, -4, -35});
        e = e0.m.h(new byte[]{-6, 58, -4, 118, 39, -112, -50, -20, -37, 40, -5, 120, 5}, new byte[]{-66, 91, -120, 23, 119, -30, -95, -113});
        f2691f = Boolean.TRUE;
        f2693h = new ArrayList();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public j(LocServ locServ) {
        super(locServ, e0.m.h(new byte[]{-56, -26, 3, 81, 74, -96, 68, 112, -40, -11, 22, 86, 2, -83, 69}, new byte[]{-68, -108, 98, 55, 44, -55, 39, 47}), (SQLiteDatabase$CursorFactory) null, 1);
        this.c = 6000;
        this.d = 2000;
        this.f2694b = locServ;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void b(j jVar, String str) {
        String str2 = e;
        SQLiteDatabase writableDatabase = jVar.getWritableDatabase();
        try {
            try {
                BufferedReader bufferedReader = new BufferedReader(new FileReader(str));
                try {
                    bufferedReader.readLine();
                    writableDatabase.beginTransaction();
                    writableDatabase.execSQL(e0.m.h(new byte[]{97, -10, -47, 41, -86, 94, 84, -105, 119, -4, -48, 76, -86, 105, 21, -73, 67, -38, -2, 40, -97, 111, 21}, new byte[]{37, -77, -99, 108, -2, 27, 116, -47}));
                    String strH = e0.m.h(new byte[]{102, -113, 108, -25, -125, -13, 99, -112, 125, -31, 109, -25, -127, -21, 2, -100, 106, -31, 118, -20, -123, -24, 99, -117, 93, -96, 89, -60, -72, -60, 7, -66, 91, -96, 31, -118, -104, -29, 27, -13, 15, -103, 19, -126, -120, -117, 99, -117, 118, -111, 122, -114, -15, -12, 19, -102, 106, -123, 19, -126, -107, -18, 17, -117, 118, -111, 122, -114, -15, -29, 10, -115, 106, -126, 107, -21, -98, -23, 111, -1, 107, -120, 108, -10, -112, -23, 0, -102, 3, -31, 126, -20, -106, -21, 6, -10, 15, -105, 126, -18, -124, -30, 16, -1, 7, -2, 19, -126, -18, -117, 99, -32, 3, -31, 0, -114, -15, -104, 111, -1, 16, -19, 31, -99, -3, -121, 124, -13, 15, -2, 22, -103}, new byte[]{47, -63, 63, -94, -47, -89, 67, -33});
                    while (true) {
                        String line = bufferedReader.readLine();
                        if (line == null) {
                            writableDatabase.setTransactionSuccessful();
                            Log.d(str2, e0.m.h(new byte[]{115, -68, 84, 0, 120, -113, 37, -65, 114, -93, 84, 5, -120, -29, 118, -45, 34, -8, 59, 96, 29, -29, 125, -46, 30, -8, 58, -112, 121, -77, 37, -68, 114, -83, 85, 48, 120, -126, 37, -65, 115, -99, 84, 13, 121, -71, -43, -46, 17, 8, 84, 1, 120, -126, 37, -75, 114, -85, -92, 96, 28, -30, 69, -46, 30, -8, 57, 97, 35, -29, 112, 44}, new byte[]{-93, 40, -124, -80, -88, 50, -11, 2}));
                            h0.b.o().saveLong(e0.m.h(new byte[]{126, -119, -102, -23, -102, -88, -125, 68, 78, -115, -81, -6, -82, -68, -122, 87, 126, -86}, new byte[]{58, -24, -18, -120, -49, -40, -25, 37}), new Date().getTime());
                            bufferedReader.close();
                            writableDatabase.endTransaction();
                            return;
                        }
                        String[] strArrSplit = line.split(e0.m.h(new byte[]{-61, -33}, new byte[]{-20, -16, 6, 74, -51, -28, -97, -81}))[0].replaceAll(e0.m.h(new byte[]{79, -41}, new byte[]{19, -92, 11, -68, 6, -5, 60, 105}), "").split(e0.m.h(new byte[]{16}, new byte[]{60, -28, 113, -32, -63, -65, -51, -17}));
                        if (strArrSplit.length == 9) {
                            writableDatabase.execSQL(strH, new Object[]{Integer.valueOf(Integer.parseInt(strArrSplit[0])), Double.valueOf(Double.parseDouble(strArrSplit[1])), Double.valueOf(Double.parseDouble(strArrSplit[2])), Integer.valueOf(Integer.parseInt(strArrSplit[3])), Integer.valueOf(Integer.parseInt(strArrSplit[4])), Integer.valueOf(Integer.parseInt(strArrSplit[5])), Integer.valueOf(Integer.parseInt(strArrSplit[6])), Integer.valueOf(Integer.parseInt(strArrSplit[7])), Integer.valueOf(Integer.parseInt(strArrSplit[8]))});
                        }
                    }
                } catch (Throwable th) {
                    try {
                        bufferedReader.close();
                        throw th;
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                        throw th;
                    }
                }
            } catch (Exception e6) {
                Log.e(str2, e0.m.h(new byte[]{97, 91, 92, 26, 115, 104, 51, -99, 97, ByteCompanionObject.MAX_VALUE, 93, 34, -125, 0, 84, -4, 1, 21, 50, 66, 27, 1, 98, -4, 9, -27, 93, 32, -125, 0, 82, -4, 1, 21, 58, 67, 32, -22, -61}, new byte[]{-79, -59, -115, -110, -93, -48, -29, 44}) + e6.getMessage());
                writableDatabase.endTransaction();
            }
        } catch (Throwable th3) {
            writableDatabase.endTransaction();
            throw th3;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void c(j jVar, String str, String str2) throws IOException {
        jVar.getClass();
        ZipInputStream zipInputStream = new ZipInputStream(new FileInputStream(str));
        while (true) {
            try {
                ZipEntry nextEntry = zipInputStream.getNextEntry();
                if (nextEntry == null) {
                    zipInputStream.close();
                    return;
                }
                if (!nextEntry.isDirectory()) {
                    FileOutputStream fileOutputStream = new FileOutputStream(str2);
                    try {
                        byte[] bArr = new byte[1024];
                        while (true) {
                            int i9 = zipInputStream.read(bArr);
                            if (i9 <= 0) {
                                break;
                            } else {
                                fileOutputStream.write(bArr, 0, i9);
                            }
                            try {
                                zipInputStream.close();
                            } catch (Throwable th) {
                                th.addSuppressed(th);
                            }
                            throw th;
                        }
                        fileOutputStream.close();
                        Log.d(e, e0.m.h(new byte[]{0, -16, -17, -105, 122, 1, -73, 101, -16, -124, -121, -9, 29, 104, -43, 14, 107, -124, -118, -10, 45, 104, -46, 14, 109, 110, 31}, new byte[]{-48, 84, 63, 39, -86, -72, 103, -34}) + str2);
                    } catch (Throwable th2) {
                        try {
                            fileOutputStream.close();
                        } catch (Throwable th3) {
                            th2.addSuppressed(th3);
                        }
                        throw th2;
                    }
                }
            } catch (Throwable th4) {
                zipInputStream.close();
                throw th4;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL(e0.m.h(new byte[]{-126, 70, 55, 13, -65, -12, -97, 11, ByteCompanionObject.MIN_VALUE, 86, 62, 9, -53, -8, -7, ByteCompanionObject.MAX_VALUE, -113, 91, 38, 108, -82, -23, -10, 12, -107, 71, 82, 24, -103, -48, -39, 57, -88, 119, 54, 45, -97, -48, -97, 119, -120, 80, 42, 108, -94, -1, -21, 26, -122, 81, 32, 108, -69, -29, -10, 18, ByteCompanionObject.MIN_VALUE, 70, 43, 108, -96, -12, -26, 115, -31, 76, 82, 30, -82, -16, -13, 115, -31, 77, 82, 30, -82, -16, -13, 115, -31, 64, 43, 28, -82, -111, -10, 17, -107, 81, 53, 9, -71, -99, -97, 12, -111, 81, 55, 8, -53, -8, -15, 11, -124, 83, 55, 30, -57, -111, -5, 22, -109, 64, 43, 28, -82, -111, -10, 17, -107, 81, 53, 9, -71, -99, -97, 27, -120, 70, 55, 15, -65, -8, -16, 17, -31, 93, 60, 24, -82, -10, -6, 13, -19, 52, 54, 5, -72, -27, -2, 17, -126, 81, 82, 5, -91, -27, -6, 24, -124, 70, 94, 108, -86, -1, -8, 19, -124, 52, 59, 2, -65, -12, -8, 26, -109, Base64.padSymbol}, new byte[]{-63, 20, 114, 76, -21, -79, -65, 95}));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i9, int i10) {
        sQLiteDatabase.execSQL(e0.m.h(new byte[]{97, -38, -92, -61, -82, -62, 99, -124, 105, -51, -53, -38, -56, -74, 103, -98, 108, -37, -65, -64, -82, -62, 80, -89, 67, -18, -126, -16, -54, -9, 86, -89}, new byte[]{37, -120, -21, -109, -114, -106, 34, -58}));
        onCreate(sQLiteDatabase);
    }
}
