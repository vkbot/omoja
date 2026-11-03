package org.extra.relinker;

import android.content.Context;
import java.io.File;

/* JADX INFO: loaded from: classes2.dex */
public abstract class c {

    public interface a {
        void a(Context context, String[] strArr, String str, File file, d dVar);
    }

    public interface b {
        void a(String str);

        String[] a();

        String b(String str);

        void c(String str);

        String d(String str);
    }

    /* JADX INFO: renamed from: org.extra.relinker.c$c, reason: collision with other inner class name */
    public interface InterfaceC0017c {
        void a(Throwable th);
    }

    public static void a(Context context, String str) {
        a(context, str, null, null);
    }

    public static void a(Context context, String str, String str2, InterfaceC0017c interfaceC0017c) {
        new d().a(context, str, str2, interfaceC0017c);
    }
}
