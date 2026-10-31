package p232w7;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.media.MediaExtractor;
import android.media.MediaMetadataRetriever;
import android.support.v4.media.C0090h;
import android.text.TextUtils;
import com.bumptech.glide.manager.InterfaceC1068n;
import com.google.firebase.components.ComponentRegistrar;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import kotlin.collections.ArraysKt;
import kotlin.text.Charsets;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.Response;
import p000a.AbstractC0000a;
import p006a5.C0023h;
import p023b8.InterfaceC0927a;
import p037d0.InterfaceC1238f;
import p042d5.C1293n;
import p042d5.C1295p;
import p042d5.C1300u;
import p052e5.InterfaceC1495b;
import p062f5.C1548f;
import p077h.InterfaceC1643e;
import p092i5.C1750a;
import p099j1.C1929i;
import p103j5.C1979a;
import p103j5.C1980b;
import p103j5.C1982d;
import p103j5.C1990l;
import p120l.C2191h;
import p120l.InterfaceC2184a;
import p130l9.AbstractC2221a;
import p130l9.AbstractC2223b;
import p130l9.C2237i;
import p130l9.C2245o;
import p140m9.AbstractC2431b;
import p172q.InterfaceC3014e0;
import p187r8.AbstractC3125f;
import p200t4.C3240a;
import p204t8.InterfaceC3268a;
import p218v2.InterfaceC3328b;
import p242x7.AbstractC3594k;

/* JADX INFO: renamed from: w7.c */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3537c implements InterfaceC1068n, InterfaceC1238f, InterfaceC0927a, Callback, InterfaceC3268a, InterfaceC1495b, InterfaceC2184a, InterfaceC3014e0 {

    /* JADX INFO: renamed from: c */
    public static C3537c f10508c;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f10509b;

    public /* synthetic */ C3537c(int i10) {
        this.f10509b = i10;
    }

    /* JADX INFO: renamed from: d */
    public static C0090h m5643d(C1293n c1293n) {
        C0090h c0090h = new C0090h(23, false);
        if (!TextUtils.isEmpty(c1293n.m2300n())) {
            String strM2300n = c1293n.m2300n();
            if (!TextUtils.isEmpty(strM2300n)) {
                c0090h.f191c = strM2300n;
            }
        }
        return c0090h;
    }

    /* JADX INFO: renamed from: f */
    public static C1979a m5644f(C1293n c1293n, C1295p c1295p) {
        C0090h c0090hM5643d = m5643d(c1293n);
        if (!c1295p.equals(C1295p.m2310o())) {
            C1990l c1990l = null;
            String strM2311n = !TextUtils.isEmpty(c1295p.m2311n()) ? c1295p.m2311n() : null;
            if (c1295p.m2313q()) {
                C1300u c1300uM2312p = c1295p.m2312p();
                String strM2352p = !TextUtils.isEmpty(c1300uM2312p.m2352p()) ? c1300uM2312p.m2352p() : null;
                String strM2351o = TextUtils.isEmpty(c1300uM2312p.m2351o()) ? null : c1300uM2312p.m2351o();
                if (TextUtils.isEmpty(strM2351o)) {
                    C1929i.m3029k("Text model must have a color");
                    return null;
                }
                c1990l = new C1990l(strM2352p, strM2351o);
            }
            if (TextUtils.isEmpty(strM2311n)) {
                C1929i.m3029k("Button model must have a color");
                return null;
            }
            if (c1990l == null) {
                C1929i.m3029k("Button model must have text");
                return null;
            }
            c0090hM5643d.f192d = new C1982d(c1990l, strM2311n);
        }
        return new C1979a((String) c0090hM5643d.f191c, (C1982d) c0090hM5643d.f192d);
    }

    /* JADX INFO: renamed from: g */
    public static C1990l m5645g(C1300u c1300u) {
        String strM2351o = !TextUtils.isEmpty(c1300u.m2351o()) ? c1300u.m2351o() : null;
        String strM2352p = TextUtils.isEmpty(c1300u.m2352p()) ? null : c1300u.m2352p();
        if (!TextUtils.isEmpty(strM2351o)) {
            return new C1990l(strM2352p, strM2351o);
        }
        C1929i.m3029k("Text model must have a color");
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:66:0x00d0  */
    /* JADX WARN: Code duplicated, block: B:68:0x00d6 A[RETURN] */
    /* JADX INFO: renamed from: i */
    public static C2245o m5646i(String str) {
        int i10;
        char cCharAt;
        str.getClass();
        byte[] bArr = AbstractC2221a.f5844a;
        int length = str.length();
        while (length > 0 && ((cCharAt = str.charAt(length - 1)) == '=' || cCharAt == '\n' || cCharAt == '\r' || cCharAt == ' ' || cCharAt == '\t')) {
            length--;
        }
        int i11 = (int) ((((long) length) * 6) / 8);
        byte[] bArrCopyOf = new byte[i11];
        int i12 = 0;
        int i13 = 0;
        int i14 = 0;
        int i15 = 0;
        while (true) {
            if (i12 >= length) {
                int i16 = i13 % 4;
                if (i16 != 1) {
                    if (i16 == 2) {
                        bArrCopyOf[i15] = (byte) ((i14 << 12) >> 16);
                        i15++;
                    } else if (i16 == 3) {
                        int i17 = i14 << 6;
                        int i18 = i15 + 1;
                        bArrCopyOf[i15] = (byte) (i17 >> 16);
                        i15 += 2;
                        bArrCopyOf[i18] = (byte) (i17 >> 8);
                    }
                    if (i15 != i11) {
                        bArrCopyOf = Arrays.copyOf(bArrCopyOf, i15);
                    }
                }
                if (bArrCopyOf != null) {
                    return new C2245o(bArrCopyOf);
                }
                return null;
            }
            char cCharAt2 = str.charAt(i12);
            if ('A' <= cCharAt2 && cCharAt2 < '[') {
                i10 = cCharAt2 - 'A';
            } else if ('a' <= cCharAt2 && cCharAt2 < '{') {
                i10 = cCharAt2 - 'G';
            } else if ('0' <= cCharAt2 && cCharAt2 < ':') {
                i10 = cCharAt2 + 4;
            } else if (cCharAt2 == '+' || cCharAt2 == '-') {
                i10 = 62;
            } else {
                if (cCharAt2 != '/' && cCharAt2 != '_') {
                    if (cCharAt2 != '\n' && cCharAt2 != '\r' && cCharAt2 != ' ' && cCharAt2 != '\t') {
                        break;
                    }
                } else {
                    i10 = 63;
                }
                i12++;
            }
            i14 = (i14 << 6) | i10;
            i13++;
            if (i13 % 4 == 0) {
                bArrCopyOf[i15] = (byte) (i14 >> 16);
                int i19 = i15 + 2;
                bArrCopyOf[i15 + 1] = (byte) (i14 >> 8);
                i15 += 3;
                bArrCopyOf[i19] = (byte) i14;
            }
            i12++;
        }
        bArrCopyOf = null;
        if (bArrCopyOf != null) {
            return new C2245o(bArrCopyOf);
        }
        return null;
    }

    /* JADX INFO: renamed from: j */
    public static C2245o m5647j(String str) {
        if (str.length() % 2 != 0) {
            C2237i.m3597d("Unexpected hex string: ".concat(str));
            return null;
        }
        int length = str.length() / 2;
        byte[] bArr = new byte[length];
        for (int i10 = 0; i10 < length; i10++) {
            int i11 = i10 * 2;
            bArr[i10] = (byte) (AbstractC2431b.m3788a(str.charAt(i11 + 1)) + (AbstractC2431b.m3788a(str.charAt(i11)) << 4));
        }
        return new C2245o(bArr);
    }

    /* JADX INFO: renamed from: k */
    public static C2245o m5648k(String str) {
        str.getClass();
        byte[] bytes = str.getBytes(Charsets.UTF_8);
        bytes.getClass();
        C2245o c2245o = new C2245o(bytes);
        c2245o.f5882d = str;
        return c2245o;
    }

    /* JADX INFO: renamed from: l */
    public static C2245o m5649l(byte[] bArr) {
        C2245o c2245o = C2245o.f5879e;
        bArr.getClass();
        int length = bArr.length;
        AbstractC2223b.m3571d(bArr.length, 0, length);
        return new C2245o(ArraysKt.copyOfRange(bArr, 0, length));
    }

    @Override // p120l.InterfaceC2184a
    /* JADX INFO: renamed from: c */
    public File mo3455c(InterfaceC1643e interfaceC1643e) {
        return null;
    }

    @Override // p172q.InterfaceC3014e0
    /* JADX INFO: renamed from: e */
    public void mo4751e(MediaExtractor mediaExtractor, Object obj) throws IOException {
        AssetFileDescriptor assetFileDescriptor = (AssetFileDescriptor) obj;
        mediaExtractor.setDataSource(assetFileDescriptor.getFileDescriptor(), assetFileDescriptor.getStartOffset(), assetFileDescriptor.getLength());
    }

    @Override // p204t8.InterfaceC3268a
    public Object get() {
        switch (this.f10509b) {
            case 6:
                return new C1980b(1L, 86400000L);
            case 7:
            default:
                return new C1750a();
            case 8:
                return "firebaseinappmessaging.googleapis.com";
            case 9:
                AbstractC3594k abstractC3594k = AbstractC3125f.f8939a;
                AbstractC0000a.m5e(abstractC3594k);
                return abstractC3594k;
        }
    }

    @Override // p172q.InterfaceC3014e0
    /* JADX INFO: renamed from: h */
    public void mo4752h(MediaMetadataRetriever mediaMetadataRetriever, Object obj) {
        AssetFileDescriptor assetFileDescriptor = (AssetFileDescriptor) obj;
        mediaMetadataRetriever.setDataSource(assetFileDescriptor.getFileDescriptor(), assetFileDescriptor.getStartOffset(), assetFileDescriptor.getLength());
    }

    /* JADX INFO: renamed from: m */
    public List m5650m(ComponentRegistrar componentRegistrar) {
        ArrayList arrayList = new ArrayList();
        for (C3240a c3240a : componentRegistrar.getComponents()) {
            String str = c3240a.f9508a;
            if (str != null) {
                c3240a = new C3240a(str, c3240a.f9509b, c3240a.f9510c, c3240a.f9511d, c3240a.f9512e, new C1548f(25, str, c3240a), c3240a.f9514g);
            }
            arrayList.add(c3240a);
        }
        return arrayList;
    }

    /* JADX INFO: renamed from: n */
    public C2191h m5651n(Context context, InterfaceC3328b interfaceC3328b) {
        int iMo1242c;
        C2191h c2191h = new C2191h();
        c2191h.f5718a = 0;
        c2191h.f5719b = 0;
        c2191h.f5720c = 0;
        int iMo1241a = interfaceC3328b.mo1241a(context);
        c2191h.f5718a = iMo1241a;
        int i10 = 1;
        int i11 = 0;
        if (iMo1241a != 0) {
            iMo1242c = interfaceC3328b.mo1242c(context, false);
            c2191h.f5719b = iMo1242c;
        } else {
            iMo1242c = interfaceC3328b.mo1242c(context, true);
            c2191h.f5719b = iMo1242c;
        }
        int i12 = c2191h.f5718a;
        if (i12 == 0) {
            if (iMo1242c == 0) {
                i10 = 0;
            }
            c2191h.f5720c = i10;
            return c2191h;
        }
        i11 = i12;
        if (i11 >= iMo1242c) {
            i10 = -1;
        }
        c2191h.f5720c = i10;
        return c2191h;
    }

    @Override // okhttp3.Callback
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

    public String toString() {
        switch (this.f10509b) {
            case 4:
                return "EmptyAction";
            default:
                return super.toString();
        }
    }

    public /* synthetic */ C3537c(int i10, Object obj) {
        this.f10509b = i10;
    }

    @Override // p023b8.InterfaceC0927a
    public void run() {
    }

    @Override // p037d0.InterfaceC1238f
    /* JADX INFO: renamed from: a */
    public void mo2221a(Object obj) {
    }

    @Override // p120l.InterfaceC2184a
    /* JADX INFO: renamed from: b */
    public void mo3454b(InterfaceC1643e interfaceC1643e, C0023h c0023h) {
    }

    @Override // okhttp3.Callback
    public void onFailure(Call call, IOException iOException) {
    }
}
