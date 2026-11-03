package org.extra.tools;

import android.app.Fragment;
import java.util.Collections;
import java.util.Set;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes2.dex */
public class c extends Fragment {
    private final Set a = Collections.newSetFromMap(new WeakHashMap());
    private final Object b = new Object();

    public void a(d dVar) {
        synchronized (this.b) {
            this.a.add(dVar);
        }
    }

    @Override // android.app.Fragment
    public void onResume() {
        super.onResume();
        synchronized (this.b) {
            for (d dVar : this.a) {
                if (dVar != null) {
                    dVar.onResume();
                }
            }
        }
    }
}
