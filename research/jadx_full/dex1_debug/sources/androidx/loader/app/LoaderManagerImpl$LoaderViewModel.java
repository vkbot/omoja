package androidx.loader.app;

import androidx.annotation.NonNull;
import androidx.collection.SparseArrayCompat;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelProvider$Factory;
import androidx.lifecycle.ViewModelStore;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class LoaderManagerImpl$LoaderViewModel extends ViewModel {
    private static final ViewModelProvider$Factory FACTORY = new LoaderManagerImpl$LoaderViewModel$1();
    private SparseArrayCompat<LoaderManagerImpl$LoaderInfo> mLoaders = new SparseArrayCompat<>();
    private boolean mCreatingLoader = false;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public static LoaderManagerImpl$LoaderViewModel getInstance(ViewModelStore viewModelStore) {
        return (LoaderManagerImpl$LoaderViewModel) new ViewModelProvider(viewModelStore, FACTORY).get(LoaderManagerImpl$LoaderViewModel.class);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        if (this.mLoaders.size() > 0) {
            printWriter.print(str);
            printWriter.println("Loaders:");
            String str2 = str + "    ";
            for (int i9 = 0; i9 < this.mLoaders.size(); i9++) {
                LoaderManagerImpl$LoaderInfo loaderManagerImpl$LoaderInfoValueAt = this.mLoaders.valueAt(i9);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(this.mLoaders.keyAt(i9));
                printWriter.print(": ");
                printWriter.println(loaderManagerImpl$LoaderInfoValueAt.toString());
                loaderManagerImpl$LoaderInfoValueAt.dump(str2, fileDescriptor, printWriter, strArr);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void finishCreatingLoader() {
        this.mCreatingLoader = false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public <D> LoaderManagerImpl$LoaderInfo<D> getLoader(int i9) {
        return this.mLoaders.get(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean hasRunningLoaders() {
        int size = this.mLoaders.size();
        for (int i9 = 0; i9 < size; i9++) {
            if (this.mLoaders.valueAt(i9).isCallbackWaitingForData()) {
                return true;
            }
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isCreatingLoader() {
        return this.mCreatingLoader;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void markForRedelivery() {
        int size = this.mLoaders.size();
        for (int i9 = 0; i9 < size; i9++) {
            this.mLoaders.valueAt(i9).markForRedelivery();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.lifecycle.ViewModel
    public void onCleared() {
        super.onCleared();
        int size = this.mLoaders.size();
        int i9 = 0;
        while (true) {
            SparseArrayCompat<LoaderManagerImpl$LoaderInfo> sparseArrayCompat = this.mLoaders;
            if (i9 >= size) {
                sparseArrayCompat.clear();
                return;
            } else {
                sparseArrayCompat.valueAt(i9).destroy(true);
                i9++;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void putLoader(int i9, @NonNull LoaderManagerImpl$LoaderInfo loaderManagerImpl$LoaderInfo) {
        this.mLoaders.put(i9, loaderManagerImpl$LoaderInfo);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void removeLoader(int i9) {
        this.mLoaders.remove(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void startCreatingLoader() {
        this.mCreatingLoader = true;
    }
}
