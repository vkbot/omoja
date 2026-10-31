package w7;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.media.MediaExtractor;
import android.media.MediaMetadataRetriever;
import android.support.v4.media.h;
import android.text.TextUtils;
import com.bumptech.glide.manager.n;
import com.google.firebase.components.ComponentRegistrar;
import d0.f;
import d5.p;
import d5.u;
import h.e;
import j1.i;
import j5.d;
import j5.l;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import kotlin.collections.ArraysKt;
import kotlin.text.Charsets;
import l9.o;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.Response;
import q.e0;
import x7.k;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class c implements n, f, b8.a, Callback, t8.a, e5.b, l.a, e0 {
    public static c c;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f5948b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ c(int i9) {
        this.f5948b = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static h d(d5.n nVar) {
        h hVar = new h(23, false);
        if (!TextUtils.isEmpty(nVar.n())) {
            String strN = nVar.n();
            if (!TextUtils.isEmpty(strN)) {
                hVar.c = strN;
            }
        }
        return hVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static j5.a f(d5.n nVar, p pVar) {
        h hVarD = d(nVar);
        if (!pVar.equals(p.o())) {
            l lVar = null;
            String strN = !TextUtils.isEmpty(pVar.n()) ? pVar.n() : null;
            if (pVar.q()) {
                u uVarP = pVar.p();
                String strP = !TextUtils.isEmpty(uVarP.p()) ? uVarP.p() : null;
                String strO = TextUtils.isEmpty(uVarP.o()) ? null : uVarP.o();
                if (TextUtils.isEmpty(strO)) {
                    i.k("Text model must have a color");
                    return null;
                }
                lVar = new l(strP, strO);
            }
            if (TextUtils.isEmpty(strN)) {
                i.k("Button model must have a color");
                return null;
            }
            if (lVar == null) {
                i.k("Button model must have text");
                return null;
            }
            hVarD.d = new d(lVar, strN);
        }
        return new j5.a((String) hVarD.c, (d) hVarD.d);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static l g(u uVar) {
        String strO = !TextUtils.isEmpty(uVar.o()) ? uVar.o() : null;
        String strP = TextUtils.isEmpty(uVar.p()) ? null : uVar.p();
        if (!TextUtils.isEmpty(strO)) {
            return new l(strP, strO);
        }
        i.k("Text model must have a color");
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:66:0x00d0  */
    /* JADX WARN: Code duplicated, block: B:68:0x00d6 A[RETURN] */
    public static o i(String str) {
        int i9;
        char cCharAt;
        str.getClass();
        byte[] bArr = l9.a.a;
        int length = str.length();
        while (length > 0 && ((cCharAt = str.charAt(length - 1)) == '=' || cCharAt == '\n' || cCharAt == '\r' || cCharAt == ' ' || cCharAt == '\t')) {
            length--;
        }
        int i10 = (int) ((((long) length) * 6) / 8);
        byte[] bArrCopyOf = new byte[i10];
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        int i14 = 0;
        while (true) {
            if (i11 >= length) {
                int i15 = i12 % 4;
                if (i15 != 1) {
                    if (i15 == 2) {
                        bArrCopyOf[i14] = (byte) ((i13 << 12) >> 16);
                        i14++;
                    } else if (i15 == 3) {
                        int i16 = i13 << 6;
                        int i17 = i14 + 1;
                        bArrCopyOf[i14] = (byte) (i16 >> 16);
                        i14 += 2;
                        bArrCopyOf[i17] = (byte) (i16 >> 8);
                    }
                    if (i14 != i10) {
                        bArrCopyOf = Arrays.copyOf(bArrCopyOf, i14);
                    }
                }
                if (bArrCopyOf != null) {
                    return new o(bArrCopyOf);
                }
                return null;
            }
            char cCharAt2 = str.charAt(i11);
            if ('A' <= cCharAt2 && cCharAt2 < '[') {
                i9 = cCharAt2 - 'A';
            } else if ('a' <= cCharAt2 && cCharAt2 < '{') {
                i9 = cCharAt2 - 'G';
            } else if ('0' <= cCharAt2 && cCharAt2 < ':') {
                i9 = cCharAt2 + 4;
            } else if (cCharAt2 == '+' || cCharAt2 == '-') {
                i9 = 62;
            } else {
                if (cCharAt2 != '/' && cCharAt2 != '_') {
                    if (cCharAt2 != '\n' && cCharAt2 != '\r' && cCharAt2 != ' ' && cCharAt2 != '\t') {
                        break;
                    }
                } else {
                    i9 = 63;
                }
                i11++;
            }
            i13 = (i13 << 6) | i9;
            i12++;
            if (i12 % 4 == 0) {
                bArrCopyOf[i14] = (byte) (i13 >> 16);
                int i18 = i14 + 2;
                bArrCopyOf[i14 + 1] = (byte) (i13 >> 8);
                i14 += 3;
                bArrCopyOf[i18] = (byte) i13;
            }
            i11++;
        }
        bArrCopyOf = null;
        if (bArrCopyOf != null) {
            return new o(bArrCopyOf);
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static o j(String str) {
        if (str.length() % 2 != 0) {
            l9.i.d("Unexpected hex string: ".concat(str));
            return null;
        }
        int length = str.length() / 2;
        byte[] bArr = new byte[length];
        for (int i9 = 0; i9 < length; i9++) {
            int i10 = i9 * 2;
            bArr[i9] = (byte) (m9.b.a(str.charAt(i10 + 1)) + (m9.b.a(str.charAt(i10)) << 4));
        }
        return new o(bArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static o k(String str) {
        str.getClass();
        byte[] bytes = str.getBytes(Charsets.UTF_8);
        bytes.getClass();
        o oVar = new o(bytes);
        oVar.d = str;
        return oVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static o l(byte[] bArr) {
        o oVar = o.e;
        bArr.getClass();
        int length = bArr.length;
        l9.b.d(bArr.length, 0, length);
        return new o(ArraysKt.copyOfRange(bArr, 0, length));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l.a
    public File c(e eVar) {
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // q.e0
    public void e(MediaExtractor mediaExtractor, Object obj) throws IOException {
        AssetFileDescriptor assetFileDescriptor = (AssetFileDescriptor) obj;
        mediaExtractor.setDataSource(assetFileDescriptor.getFileDescriptor(), assetFileDescriptor.getStartOffset(), assetFileDescriptor.getLength());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // t8.a
    public Object get() {
        switch (this.f5948b) {
            case 6:
                return new j5.b(1L, 86400000L);
            case 7:
            default:
                return new i5.a();
            case 8:
                return "firebaseinappmessaging.googleapis.com";
            case 9:
                k kVar = r8.f.f5034a;
                a.a.e(kVar);
                return kVar;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // q.e0
    public void h(MediaMetadataRetriever mediaMetadataRetriever, Object obj) {
        AssetFileDescriptor assetFileDescriptor = (AssetFileDescriptor) obj;
        mediaMetadataRetriever.setDataSource(assetFileDescriptor.getFileDescriptor(), assetFileDescriptor.getStartOffset(), assetFileDescriptor.getLength());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public List m(ComponentRegistrar componentRegistrar) {
        ArrayList arrayList = new ArrayList();
        for (t4.a aVar : componentRegistrar.getComponents()) {
            String str = aVar.f5383a;
            if (str != null) {
                aVar = new t4.a(str, aVar.f5384b, aVar.c, aVar.d, aVar.e, new f5.f(25, str, aVar), aVar.f5386g);
            }
            arrayList.add(aVar);
        }
        return arrayList;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public l.h n(Context context, v2.b bVar) {
        int iC;
        l.h hVar = new l.h();
        hVar.f3250a = 0;
        hVar.f3251b = 0;
        hVar.c = 0;
        int iA = bVar.a(context);
        hVar.f3250a = iA;
        int i9 = 1;
        int i10 = 0;
        if (iA != 0) {
            iC = bVar.c(context, false);
            hVar.f3251b = iC;
        } else {
            iC = bVar.c(context, true);
            hVar.f3251b = iC;
        }
        int i11 = hVar.f3250a;
        if (i11 == 0) {
            if (iC == 0) {
                i9 = 0;
            }
            hVar.c = i9;
            return hVar;
        }
        i10 = i11;
        if (i10 >= iC) {
            i9 = -1;
        }
        hVar.c = i9;
        return hVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void onResponse(Call call, Response response) {
        try {
            try {
                response.body();
                response.close();
            } catch (Throwable th) {
                if (response != null) {
                    try {
                        response.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        } catch (Exception unused) {
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toString() {
        switch (this.f5948b) {
            case 4:
                return "EmptyAction";
            default:
                return super.toString();
        }
    }

    public /* synthetic */ c(int i9, Object obj) {
        this.f5948b = i9;
    }

    @Override // b8.a
    public void run() {
    }

    @Override // d0.f
    public void a(Object obj) {
    }

    @Override // l.a
    public void b(e eVar, a5.h hVar) {
    }

    public void onFailure(Call call, IOException iOException) {
    }
}
