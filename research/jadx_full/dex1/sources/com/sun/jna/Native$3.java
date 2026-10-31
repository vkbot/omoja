package com.sun.jna;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class Native$3 implements InvocationHandler {
    final /* synthetic */ Library$Handler val$handler;
    final /* synthetic */ Library val$library;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Native$3(Library$Handler library$Handler, Library library) {
        this.val$handler = library$Handler;
        this.val$library = library;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.reflect.InvocationHandler
    public Object invoke(Object obj, Method method, Object[] objArr) {
        Object objInvoke;
        synchronized (this.val$handler.getNativeLibrary()) {
            objInvoke = this.val$handler.invoke(this.val$library, method, objArr);
        }
        return objInvoke;
    }
}
