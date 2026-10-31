package p141n;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import com.bumptech.glide.AbstractC1030c;
import com.bumptech.glide.EnumC1035h;
import com.bumptech.glide.load.data.InterfaceC1043d;
import com.bumptech.glide.load.data.InterfaceC1044e;
import com.bumptech.glide.manager.C1069o;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: renamed from: n.e */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2441e implements InterfaceC1044e {

    /* JADX INFO: renamed from: b */
    public final Resources.Theme f6616b;

    /* JADX INFO: renamed from: c */
    public final Resources f6617c;

    /* JADX INFO: renamed from: d */
    public final C1069o f6618d;

    /* JADX INFO: renamed from: e */
    public final int f6619e;

    /* JADX INFO: renamed from: f */
    public Object f6620f;

    public C2441e(Resources.Theme theme, Resources resources, C1069o c1069o, int i10) {
        this.f6616b = theme;
        this.f6617c = resources;
        this.f6618d = c1069o;
        this.f6619e = i10;
    }

    @Override // com.bumptech.glide.load.data.InterfaceC1044e
    /* JADX INFO: renamed from: a */
    public final Class mo1316a() {
        switch (this.f6618d.f1168b) {
            case 3:
                return AssetFileDescriptor.class;
            case 4:
                return Drawable.class;
            default:
                return InputStream.class;
        }
    }

    @Override // com.bumptech.glide.load.data.InterfaceC1044e
    /* JADX INFO: renamed from: b */
    public final void mo1321b() {
        Object obj = this.f6620f;
        if (obj != null) {
            try {
                switch (this.f6618d.f1168b) {
                    case 3:
                        ((AssetFileDescriptor) obj).close();
                        break;
                    case 4:
                        break;
                    default:
                        ((InputStream) obj).close();
                        break;
                }
            } catch (IOException unused) {
            }
        }
    }

    @Override // com.bumptech.glide.load.data.InterfaceC1044e
    /* JADX INFO: renamed from: c */
    public final int mo1322c() {
        return 1;
    }

    @Override // com.bumptech.glide.load.data.InterfaceC1044e
    /* JADX INFO: renamed from: e */
    public final void mo1323e(EnumC1035h enumC1035h, InterfaceC1043d interfaceC1043d) {
        Object objOpenRawResourceFd;
        try {
            C1069o c1069o = this.f6618d;
            Resources.Theme theme = this.f6616b;
            Resources resources = this.f6617c;
            int i10 = this.f6619e;
            switch (c1069o.f1168b) {
                case 3:
                    objOpenRawResourceFd = resources.openRawResourceFd(i10);
                    break;
                case 4:
                    Context context = c1069o.f1169c;
                    objOpenRawResourceFd = AbstractC1030c.m1259m(context, context, i10, theme);
                    break;
                default:
                    objOpenRawResourceFd = resources.openRawResource(i10);
                    break;
            }
            this.f6620f = objOpenRawResourceFd;
            interfaceC1043d.mo242f(objOpenRawResourceFd);
        } catch (Resources.NotFoundException e) {
            interfaceC1043d.mo240d(e);
        }
    }

    @Override // com.bumptech.glide.load.data.InterfaceC1044e
    public final void cancel() {
    }
}
