package androidx.loader.content;

import ai.onnxruntime.b;
import android.util.Log;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;

/* JADX INFO: Add missing generic type declarations: [Result] */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ModernAsyncTask$3<Result> extends FutureTask<Result> {
    final /* synthetic */ ModernAsyncTask this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ModernAsyncTask$3(ModernAsyncTask modernAsyncTask, Callable callable) {
        super(callable);
        this.this$0 = modernAsyncTask;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.concurrent.FutureTask
    public void done() {
        try {
            this.this$0.postResultIfNotInvoked(get());
        } catch (InterruptedException e) {
            Log.w("AsyncTask", e);
        } catch (CancellationException unused) {
            this.this$0.postResultIfNotInvoked(null);
        } catch (ExecutionException e6) {
            b.o("An error occurred while executing doInBackground()", e6.getCause());
        } catch (Throwable th) {
            b.o("An error occurred while executing doInBackground()", th);
        }
    }
}
