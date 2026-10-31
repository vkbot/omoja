package p087i;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.text.TextUtils;
import android.util.Log;
import com.bumptech.glide.ComponentCallbacks2C1029b;
import com.bumptech.glide.EnumC1035h;
import com.bumptech.glide.load.data.C1049j;
import com.bumptech.glide.load.data.InterfaceC1043d;
import com.bumptech.glide.load.data.InterfaceC1044e;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import p141n.C2438c0;
import p155o4.AbstractC2587b;

/* JADX INFO: renamed from: i.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1735b implements InterfaceC1044e {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f4516b;

    /* JADX INFO: renamed from: c */
    public final Comparable f4517c;

    /* JADX INFO: renamed from: d */
    public final Object f4518d;

    /* JADX INFO: renamed from: e */
    public Object f4519e;

    public /* synthetic */ C1735b(int i10, Comparable comparable, Object obj) {
        this.f4516b = i10;
        this.f4517c = comparable;
        this.f4518d = obj;
    }

    /* JADX INFO: renamed from: d */
    public static C1735b m2854d(Context context, Uri uri, C1734a c1734a) {
        return new C1735b(0, uri, new C1736c(ComponentCallbacks2C1029b.m1249a(context).f1069d.m1293a().m1302e(), c1734a, ComponentCallbacks2C1029b.m1249a(context).f1070e, context.getContentResolver()));
    }

    @Override // com.bumptech.glide.load.data.InterfaceC1044e
    /* JADX INFO: renamed from: a */
    public final Class mo1316a() {
        switch (this.f4516b) {
            case 0:
                return InputStream.class;
            default:
                return ((C2438c0) this.f4518d).m3793b();
        }
    }

    @Override // com.bumptech.glide.load.data.InterfaceC1044e
    /* JADX INFO: renamed from: b */
    public final void mo1321b() {
        switch (this.f4516b) {
            case 0:
                InputStream inputStream = (InputStream) this.f4519e;
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException unused) {
                        return;
                    }
                }
                break;
            default:
                Object obj = this.f4519e;
                if (obj != null) {
                    try {
                        switch (((C2438c0) this.f4518d).f6611b) {
                            case 8:
                                ((ParcelFileDescriptor) obj).close();
                                break;
                            default:
                                ((InputStream) obj).close();
                                break;
                        }
                    } catch (IOException unused2) {
                        return;
                    }
                }
                break;
        }
    }

    @Override // com.bumptech.glide.load.data.InterfaceC1044e
    /* JADX INFO: renamed from: c */
    public final int mo1322c() {
        switch (this.f4516b) {
        }
        return 1;
    }

    @Override // com.bumptech.glide.load.data.InterfaceC1044e
    public final void cancel() {
        int i10 = this.f4516b;
    }

    @Override // com.bumptech.glide.load.data.InterfaceC1044e
    /* JADX INFO: renamed from: e */
    public final void mo1323e(EnumC1035h enumC1035h, InterfaceC1043d interfaceC1043d) throws Throwable {
        Object objOpen;
        switch (this.f4516b) {
            case 0:
                try {
                    InputStream inputStreamM2857h = m2857h();
                    this.f4519e = inputStreamM2857h;
                    interfaceC1043d.mo242f(inputStreamM2857h);
                } catch (FileNotFoundException e) {
                    if (Log.isLoggable("MediaStoreThumbFetcher", 3)) {
                        Log.d("MediaStoreThumbFetcher", "Failed to find thumbnail file", e);
                    }
                    interfaceC1043d.mo240d(e);
                }
                break;
            default:
                try {
                    C2438c0 c2438c0 = (C2438c0) this.f4518d;
                    File file = (File) this.f4517c;
                    switch (c2438c0.f6611b) {
                        case 8:
                            objOpen = ParcelFileDescriptor.open(file, 268435456);
                            break;
                        default:
                            objOpen = new FileInputStream(file);
                            break;
                    }
                    this.f4519e = objOpen;
                    interfaceC1043d.mo242f(objOpen);
                } catch (FileNotFoundException e6) {
                    if (Log.isLoggable("FileLoader", 3)) {
                        Log.d("FileLoader", "Failed to open file", e6);
                    }
                    interfaceC1043d.mo240d(e6);
                    return;
                }
                break;
        }
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0057  */
    /* JADX WARN: Code duplicated, block: B:28:0x0059  */
    /* JADX WARN: Code duplicated, block: B:30:0x0064  */
    /* JADX WARN: Code duplicated, block: B:40:0x009d  */
    /* JADX WARN: Code duplicated, block: B:59:0x00d7  */
    /* JADX WARN: Code duplicated, block: B:61:0x00da  */
    /* JADX WARN: Code duplicated, block: B:64:0x00e3  */
    /* JADX WARN: Code duplicated, block: B:72:0x00ad A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:83:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Not initialized variable reg: 7, insn: 0x0028: MOVE (r6 I:??[OBJECT, ARRAY]) = (r7 I:??[OBJECT, ARRAY]) (LINE:41), block:B:10:0x0028 */
    /* JADX WARN: Type inference failed for: r0v10, types: [java.io.IOException, java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r6v0, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r6v1, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX INFO: renamed from: h */
    public InputStream m2857h() throws Throwable {
        Cursor cursorM2853a;
        ?? r9;
        String string;
        File file;
        InputStream inputStreamOpenInputStream;
        int iM4053t;
        C1736c c1736c = (C1736c) this.f4518d;
        ContentResolver contentResolver = c1736c.f4522c;
        Uri uri = (Uri) this.f4517c;
        ?? r10 = 0;
        InputStream inputStreamOpenInputStream2 = null;
        try {
            try {
                cursorM2853a = c1736c.f4520a.m2853a(uri);
                if (cursorM2853a != null) {
                    try {
                        if (cursorM2853a.moveToFirst()) {
                            string = cursorM2853a.getString(0);
                            cursorM2853a.close();
                        }
                    } catch (SecurityException e) {
                        e = e;
                        if (Log.isLoggable("ThumbStreamOpener", 3)) {
                            Log.d("ThumbStreamOpener", "Failed to query for thumbnail for Uri: " + uri, e);
                        }
                        if (cursorM2853a != null) {
                        }
                        string = null;
                        if (TextUtils.isEmpty(string)) {
                            inputStreamOpenInputStream = null;
                        } else {
                            file = new File(string);
                            if (file.exists()) {
                                inputStreamOpenInputStream = null;
                            } else {
                                inputStreamOpenInputStream = null;
                            }
                        }
                        if (inputStreamOpenInputStream != null) {
                            try {
                                try {
                                    inputStreamOpenInputStream2 = contentResolver.openInputStream(uri);
                                    iM4053t = AbstractC2587b.m4053t(c1736c.f4523d, inputStreamOpenInputStream2, c1736c.f4521b);
                                    if (inputStreamOpenInputStream2 != null) {
                                        try {
                                            inputStreamOpenInputStream2.close();
                                        } catch (IOException unused) {
                                        }
                                    }
                                } catch (IOException | NullPointerException e6) {
                                    if (Log.isLoggable("ThumbStreamOpener", 3)) {
                                        Log.d("ThumbStreamOpener", "Failed to open uri: " + uri, e6);
                                    }
                                    if (inputStreamOpenInputStream2 != null) {
                                        try {
                                            inputStreamOpenInputStream2.close();
                                        } catch (IOException unused2) {
                                        }
                                    }
                                    iM4053t = -1;
                                }
                            } catch (Throwable th) {
                                if (0 != 0) {
                                    try {
                                        r10.close();
                                    } catch (IOException unused3) {
                                    }
                                }
                                throw th;
                            }
                        } else {
                            iM4053t = -1;
                        }
                        if (iM4053t != -1) {
                            return new C1049j(inputStreamOpenInputStream, iM4053t);
                        }
                        return inputStreamOpenInputStream;
                    }
                    if (TextUtils.isEmpty(string)) {
                        inputStreamOpenInputStream = null;
                    } else {
                        file = new File(string);
                        if (file.exists() || 0 >= file.length()) {
                            inputStreamOpenInputStream = null;
                        } else {
                            Uri uriFromFile = Uri.fromFile(file);
                            try {
                                inputStreamOpenInputStream = contentResolver.openInputStream(uriFromFile);
                            } catch (NullPointerException e10) {
                                throw ((FileNotFoundException) new FileNotFoundException("NPE opening uri: " + uri + " -> " + uriFromFile).initCause(e10));
                            }
                        }
                    }
                    if (inputStreamOpenInputStream != null) {
                        inputStreamOpenInputStream2 = contentResolver.openInputStream(uri);
                        iM4053t = AbstractC2587b.m4053t(c1736c.f4523d, inputStreamOpenInputStream2, c1736c.f4521b);
                        if (inputStreamOpenInputStream2 != null) {
                            inputStreamOpenInputStream2.close();
                        }
                    } else {
                        iM4053t = -1;
                    }
                    if (iM4053t != -1) {
                        return new C1049j(inputStreamOpenInputStream, iM4053t);
                    }
                    return inputStreamOpenInputStream;
                }
                if (cursorM2853a != null) {
                    cursorM2853a.close();
                }
            } catch (SecurityException e11) {
                e = e11;
                cursorM2853a = null;
            } catch (Throwable th2) {
                th = th2;
                if (r10 != 0) {
                    r10.close();
                }
                throw th;
            }
            string = null;
            if (TextUtils.isEmpty(string)) {
                inputStreamOpenInputStream = null;
            } else {
                file = new File(string);
                if (file.exists()) {
                    inputStreamOpenInputStream = null;
                } else {
                    inputStreamOpenInputStream = null;
                }
            }
            if (inputStreamOpenInputStream != null) {
                inputStreamOpenInputStream2 = contentResolver.openInputStream(uri);
                iM4053t = AbstractC2587b.m4053t(c1736c.f4523d, inputStreamOpenInputStream2, c1736c.f4521b);
                if (inputStreamOpenInputStream2 != null) {
                    inputStreamOpenInputStream2.close();
                }
            } else {
                iM4053t = -1;
            }
            if (iM4053t != -1) {
                return new C1049j(inputStreamOpenInputStream, iM4053t);
            }
            return inputStreamOpenInputStream;
        } catch (Throwable th3) {
            th = th3;
            r10 = r9;
            if (r10 != 0) {
                r10.close();
            }
            throw th;
        }
    }

    /* JADX INFO: renamed from: f */
    private final void m2855f() {
    }

    /* JADX INFO: renamed from: g */
    private final void m2856g() {
    }
}
