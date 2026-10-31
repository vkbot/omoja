package p141n;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import com.bumptech.glide.EnumC1035h;
import com.bumptech.glide.load.data.InterfaceC1043d;
import com.bumptech.glide.load.data.InterfaceC1044e;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

/* JADX INFO: renamed from: n.l */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2451l implements InterfaceC1044e {

    /* JADX INFO: renamed from: e */
    public static final String[] f6639e = {"_data"};

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f6640b;

    /* JADX INFO: renamed from: c */
    public final Object f6641c;

    /* JADX INFO: renamed from: d */
    public Object f6642d;

    public /* synthetic */ C2451l(int i10, Object obj, Object obj2) {
        this.f6640b = i10;
        this.f6641c = obj;
        this.f6642d = obj2;
    }

    @Override // com.bumptech.glide.load.data.InterfaceC1044e
    /* JADX INFO: renamed from: a */
    public final Class mo1316a() {
        switch (this.f6640b) {
            case 0:
                return File.class;
            case 1:
                return ((C2438c0) this.f6642d).m3793b();
            default:
                return InputStream.class;
        }
    }

    @Override // com.bumptech.glide.load.data.InterfaceC1044e
    /* JADX INFO: renamed from: b */
    public final void mo1321b() {
        switch (this.f6640b) {
            case 0:
            case 1:
                break;
            default:
                try {
                    ((ByteArrayInputStream) this.f6642d).close();
                } catch (IOException unused) {
                    return;
                }
                break;
        }
    }

    @Override // com.bumptech.glide.load.data.InterfaceC1044e
    /* JADX INFO: renamed from: c */
    public final int mo1322c() {
        switch (this.f6640b) {
        }
        return 1;
    }

    @Override // com.bumptech.glide.load.data.InterfaceC1044e
    public final void cancel() {
        int i10 = this.f6640b;
    }

    @Override // com.bumptech.glide.load.data.InterfaceC1044e
    /* JADX INFO: renamed from: e */
    public final void mo1323e(EnumC1035h enumC1035h, InterfaceC1043d interfaceC1043d) {
        Object objWrap;
        switch (this.f6640b) {
            case 0:
                Cursor cursorQuery = ((Context) this.f6641c).getContentResolver().query((Uri) this.f6642d, f6639e, null, null, null);
                String string = null;
                if (cursorQuery != null) {
                    try {
                        string = cursorQuery.moveToFirst() ? cursorQuery.getString(cursorQuery.getColumnIndexOrThrow("_data")) : null;
                        cursorQuery.close();
                    } catch (Throwable th) {
                        cursorQuery.close();
                        throw th;
                    }
                    break;
                }
                if (!TextUtils.isEmpty(string)) {
                    interfaceC1043d.mo242f(new File(string));
                    return;
                }
                interfaceC1043d.mo240d(new FileNotFoundException("Failed to find file path for: " + ((Uri) this.f6642d)));
                return;
            case 1:
                C2438c0 c2438c0 = (C2438c0) this.f6642d;
                byte[] bArr = (byte[]) this.f6641c;
                switch (c2438c0.f6611b) {
                    case 1:
                        objWrap = ByteBuffer.wrap(bArr);
                        break;
                    default:
                        objWrap = new ByteArrayInputStream(bArr);
                        break;
                }
                interfaceC1043d.mo242f(objWrap);
                return;
            default:
                try {
                    ByteArrayInputStream byteArrayInputStreamM3792a = C2438c0.m3792a((String) this.f6641c);
                    this.f6642d = byteArrayInputStreamM3792a;
                    interfaceC1043d.mo242f(byteArrayInputStreamM3792a);
                    return;
                } catch (IllegalArgumentException e) {
                    interfaceC1043d.mo240d(e);
                    return;
                }
        }
    }

    public C2451l(String str, C2438c0 c2438c0) {
        this.f6640b = 2;
        this.f6641c = str;
    }

    /* JADX INFO: renamed from: d */
    private final void m3802d() {
    }

    /* JADX INFO: renamed from: f */
    private final void m3803f() {
    }

    /* JADX INFO: renamed from: g */
    private final void m3804g() {
    }

    /* JADX INFO: renamed from: h */
    private final void m3805h() {
    }

    /* JADX INFO: renamed from: i */
    private final void m3806i() {
    }
}
