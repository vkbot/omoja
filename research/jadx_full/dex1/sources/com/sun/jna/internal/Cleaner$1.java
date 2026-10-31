package com.sun.jna.internal;

import java.lang.ref.Reference;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class Cleaner$1 extends Thread {
    final /* synthetic */ Cleaner this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Cleaner$1(Cleaner cleaner) {
        this.this$0 = cleaner;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        while (true) {
            try {
                Reference referenceRemove = Cleaner.access$000(this.this$0).remove();
                if (referenceRemove instanceof Cleaner$CleanerRef) {
                    ((Cleaner$CleanerRef) referenceRemove).clean();
                }
            } catch (InterruptedException unused) {
                return;
            } catch (Exception e) {
                Logger.getLogger(Cleaner.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e);
            }
        }
    }
}
