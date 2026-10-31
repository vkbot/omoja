package n;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.content.res.Resources$NotFoundException;
import android.content.res.Resources$Theme;
import android.graphics.drawable.Drawable;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class e implements com.bumptech.glide.load.data.e {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Resources$Theme f3739b;
    public final Resources c;
    public final com.bumptech.glide.manager.o d;
    public final int e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Object f3740f;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public e(Resources$Theme resources$Theme, Resources resources, com.bumptech.glide.manager.o oVar, int i9) {
        this.f3739b = resources$Theme;
        this.c = resources;
        this.d = oVar;
        this.e = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.bumptech.glide.load.data.e
    public final Class a() {
        switch (this.d.f607b) {
            case 3:
                return AssetFileDescriptor.class;
            case 4:
                return Drawable.class;
            default:
                return InputStream.class;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.bumptech.glide.load.data.e
    public final void b() {
        Object obj = this.f3740f;
        if (obj != null) {
            try {
                switch (this.d.f607b) {
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

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.bumptech.glide.load.data.e
    public final int c() {
        return 1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.bumptech.glide.load.data.e
    public final void e(com.bumptech.glide.h hVar, com.bumptech.glide.load.data.d dVar) {
        Object objOpenRawResourceFd;
        try {
            com.bumptech.glide.manager.o oVar = this.d;
            Resources$Theme resources$Theme = this.f3739b;
            Resources resources = this.c;
            int i9 = this.e;
            switch (oVar.f607b) {
                case 3:
                    objOpenRawResourceFd = resources.openRawResourceFd(i9);
                    break;
                case 4:
                    Context context = oVar.c;
                    objOpenRawResourceFd = com.bumptech.glide.c.m(context, context, i9, resources$Theme);
                    break;
                default:
                    objOpenRawResourceFd = resources.openRawResource(i9);
                    break;
            }
            this.f3740f = objOpenRawResourceFd;
            dVar.f(objOpenRawResourceFd);
        } catch (Resources$NotFoundException e) {
            dVar.d(e);
        }
    }

    @Override // com.bumptech.glide.load.data.e
    public final void cancel() {
    }
}
