package e0;

import android.view.MenuItem;
import android.view.View;
import android.view.View$OnClickListener;
import android.widget.PopupMenu;
import androidx.appcompat.widget.Toolbar;
import com.example.navistart.ModernMainActivity;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class m1 implements View$OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f1899b;
    public final /* synthetic */ ModernMainActivity c;
    public final /* synthetic */ int d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ m1(ModernMainActivity modernMainActivity, int i9, int i10) {
        this.f1899b = i10;
        this.c = modernMainActivity;
        this.d = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View$OnClickListener
    public final void onClick(View view) {
        int i9 = this.f1899b;
        int i10 = this.d;
        ModernMainActivity modernMainActivity = this.c;
        switch (i9) {
            case 0:
                modernMainActivity.d0(modernMainActivity.o1.length - 1);
                modernMainActivity.e0(i10);
                break;
            case 1:
                String str = ModernMainActivity.B1;
                Toolbar toolbar = (Toolbar) modernMainActivity.findViewById(2131297660);
                MenuItem menuItemFindItem = toolbar == null ? null : toolbar.getMenu().findItem(i10);
                if (menuItemFindItem == null) {
                    View viewFindViewById = modernMainActivity.findViewById(2131296944);
                    if (viewFindViewById != null) {
                        PopupMenu popupMenu = new PopupMenu(modernMainActivity, viewFindViewById);
                        popupMenu.getMenuInflater().inflate(2131623936, popupMenu.getMenu());
                        menuItemFindItem = popupMenu.getMenu().findItem(i10);
                    }
                }
                if (menuItemFindItem != null) {
                    modernMainActivity.onOptionsItemSelected(menuItemFindItem);
                }
                break;
            default:
                String str2 = ModernMainActivity.B1;
                modernMainActivity.d0(i10);
                break;
        }
    }
}
