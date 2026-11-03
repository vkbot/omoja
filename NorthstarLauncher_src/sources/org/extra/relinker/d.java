package org.extra.relinker;

import android.content.Context;
import android.util.Log;
import com.android.launcher3.icons.cache.BaseIconCache;
import java.io.File;
import java.io.FilenameFilter;
import java.io.IOException;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import org.extra.relinker.elf.i;

/* JADX INFO: loaded from: classes2.dex */
public class d {
    protected final Set a;
    protected final c.b b;
    protected final c.a c;
    protected boolean d;
    protected boolean e;

    class a implements Runnable {
        final /* synthetic */ Context a;
        final /* synthetic */ String b;
        final /* synthetic */ String c;

        a(Context context, String str, String str2, c.InterfaceC0017c interfaceC0017c) {
            this.a = context;
            this.b = str;
            this.c = str2;
        }

        /* JADX WARN: Code restructure failed: missing block: B:10:?, code lost:
        
            throw null;
         */
        /* JADX WARN: Code restructure failed: missing block: B:9:?, code lost:
        
            throw null;
         */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void run() throws java.lang.Throwable {
            /*
                r4 = this;
                r0 = 0
                org.extra.relinker.d r1 = org.extra.relinker.d.this     // Catch: org.extra.relinker.b -> Ld java.lang.UnsatisfiedLinkError -> Le
                android.content.Context r2 = r4.a     // Catch: org.extra.relinker.b -> Ld java.lang.UnsatisfiedLinkError -> Le
                java.lang.String r3 = r4.b     // Catch: org.extra.relinker.b -> Ld java.lang.UnsatisfiedLinkError -> Le
                java.lang.String r4 = r4.c     // Catch: org.extra.relinker.b -> Ld java.lang.UnsatisfiedLinkError -> Le
                org.extra.relinker.d.a(r1, r2, r3, r4)     // Catch: org.extra.relinker.b -> Ld java.lang.UnsatisfiedLinkError -> Le
                throw r0
            Ld:
                throw r0
            Le:
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: org.extra.relinker.d.a.run():void");
        }
    }

    class b implements FilenameFilter {
        final /* synthetic */ String a;

        b(String str) {
            this.a = str;
        }

        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            return str.startsWith(this.a);
        }
    }

    protected d() {
        this(new e(), new org.extra.relinker.a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(Context context, String str, String str2) throws Throwable {
        i iVar;
        if (this.a.contains(str) && !this.d) {
            a("%s already loaded previously!", str);
            return;
        }
        try {
            this.b.a(str);
            this.a.add(str);
            a("%s (%s) was loaded normally!", str, str2);
        } catch (UnsatisfiedLinkError e) {
            a("Loading the library normally failed: %s", Log.getStackTraceString(e));
            a("%s (%s) was not loaded normally, re-linking...", str, str2);
            File fileB = b(context, str, str2);
            if (!fileB.exists() || this.d) {
                if (this.d) {
                    a("Forcing a re-link of %s (%s)...", str, str2);
                }
                a(context, str, str2);
                this.c.a(context, this.b.a(), this.b.d(str), fileB, this);
            }
            try {
                if (this.e) {
                    try {
                        iVar = new i(fileB);
                        try {
                            List listB = iVar.b();
                            iVar.close();
                            Iterator it = listB.iterator();
                            while (it.hasNext()) {
                                a(context, this.b.b((String) it.next()));
                            }
                        } catch (Throwable th) {
                            th = th;
                            iVar.close();
                            throw th;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        iVar = null;
                    }
                }
            } catch (IOException unused) {
            }
            this.b.c(fileB.getAbsolutePath());
            this.a.add(str);
            a("%s (%s) was re-linked!", str, str2);
        }
    }

    public void a(String str) {
    }

    protected File b(Context context, String str, String str2) {
        String strD = this.b.d(str);
        return f.a(str2) ? new File(a(context), strD) : new File(a(context), strD + BaseIconCache.EMPTY_CLASS_NAME + str2);
    }

    protected d(c.b bVar, c.a aVar) {
        this.a = new HashSet();
        if (bVar == null) {
            throw new IllegalArgumentException("Cannot pass null library loader");
        }
        if (aVar == null) {
            throw new IllegalArgumentException("Cannot pass null library installer");
        }
        this.b = bVar;
        this.c = aVar;
    }

    public void a(Context context, String str) {
        a(context, str, (String) null, (c.InterfaceC0017c) null);
    }

    public void a(Context context, String str, String str2, c.InterfaceC0017c interfaceC0017c) {
        if (context != null) {
            if (!f.a(str)) {
                a("Beginning load of %s...", str);
                if (interfaceC0017c == null) {
                    c(context, str, str2);
                    return;
                }
                try {
                    new Thread(new a(context, str, str2, interfaceC0017c)).start();
                    return;
                } catch (Error | Exception e) {
                    interfaceC0017c.a(e);
                    return;
                }
            }
            throw new IllegalArgumentException("Given library is either null or empty");
        }
        throw new IllegalArgumentException("Given context is null");
    }

    protected File a(Context context) {
        return context.getDir("lib", 0);
    }

    protected void a(Context context, String str, String str2) {
        File fileA = a(context);
        File fileB = b(context, str, str2);
        File[] fileArrListFiles = fileA.listFiles(new b(this.b.d(str)));
        if (fileArrListFiles == null) {
            return;
        }
        for (File file : fileArrListFiles) {
            if (this.d || !file.getAbsolutePath().equals(fileB.getAbsolutePath())) {
                try {
                    file.delete();
                } catch (SecurityException e) {
                    e.printStackTrace();
                }
            }
        }
    }

    public void a(String str, Object... objArr) {
        a(String.format(Locale.US, str, objArr));
    }
}
