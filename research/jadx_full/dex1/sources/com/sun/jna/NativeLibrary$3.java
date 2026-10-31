package com.sun.jna;

import java.io.File;
import java.io.FilenameFilter;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class NativeLibrary$3 implements FilenameFilter {
    final /* synthetic */ String val$libName;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public NativeLibrary$3(String str) {
        this.val$libName = str;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.FilenameFilter
    public boolean accept(File file, String str) {
        if (!str.startsWith("lib" + this.val$libName + ".so")) {
            if (!str.startsWith(this.val$libName + ".so") || !this.val$libName.startsWith("lib")) {
                return false;
            }
        }
        return NativeLibrary.access$000(str);
    }
}
