package androidx.appcompat.app;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView$OnItemSelectedListener;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
class NavItemSelectedListener implements AdapterView$OnItemSelectedListener {
    private final ActionBar$OnNavigationListener mListener;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public NavItemSelectedListener(ActionBar$OnNavigationListener actionBar$OnNavigationListener) {
        this.mListener = actionBar$OnNavigationListener;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.AdapterView$OnItemSelectedListener
    public void onItemSelected(AdapterView<?> adapterView, View view, int i9, long j9) {
        ActionBar$OnNavigationListener actionBar$OnNavigationListener = this.mListener;
        if (actionBar$OnNavigationListener != null) {
            actionBar$OnNavigationListener.onNavigationItemSelected(i9, j9);
        }
    }

    @Override // android.widget.AdapterView$OnItemSelectedListener
    public void onNothingSelected(AdapterView<?> adapterView) {
    }
}
