package androidx.fragment.app;

import android.content.Context;
import android.view.View;
import android.widget.TabHost$TabContentFactory;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class FragmentTabHost$DummyTabFactory implements TabHost$TabContentFactory {
    private final Context mContext;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public FragmentTabHost$DummyTabFactory(Context context) {
        this.mContext = context;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.TabHost$TabContentFactory
    public View createTabContent(String str) {
        View view = new View(this.mContext);
        view.setMinimumWidth(0);
        view.setMinimumHeight(0);
        return view;
    }
}
