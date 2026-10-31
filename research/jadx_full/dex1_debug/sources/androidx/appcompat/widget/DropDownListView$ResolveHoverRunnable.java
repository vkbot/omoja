package androidx.appcompat.widget;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class DropDownListView$ResolveHoverRunnable implements Runnable {
    final /* synthetic */ DropDownListView this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public DropDownListView$ResolveHoverRunnable(DropDownListView dropDownListView) {
        this.this$0 = dropDownListView;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void cancel() {
        DropDownListView dropDownListView = this.this$0;
        dropDownListView.mResolveHoverRunnable = null;
        dropDownListView.removeCallbacks(this);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void post() {
        this.this$0.post(this);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public void run() {
        DropDownListView dropDownListView = this.this$0;
        dropDownListView.mResolveHoverRunnable = null;
        dropDownListView.drawableStateChanged();
    }
}
