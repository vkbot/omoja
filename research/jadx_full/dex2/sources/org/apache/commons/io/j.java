package org.apache.commons.io;

import java.io.File;
import java.io.FilenameFilter;
import java.util.ArrayList;
import java.util.List;
import java.util.function.Consumer;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final /* synthetic */ class j implements Consumer {
    public final /* synthetic */ boolean b;
    public final /* synthetic */ List c;
    public final /* synthetic */ FilenameFilter d;
    public final /* synthetic */ File e;
    public final /* synthetic */ List f;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ j(boolean z, ArrayList arrayList, FilenameFilter filenameFilter, File file, List list) {
        this.b = z;
        this.c = arrayList;
        this.d = filenameFilter;
        this.e = file;
        this.f = list;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        FileUtils.g(this.b, this.c, this.d, this.e, this.f, (File) obj);
    }
}
