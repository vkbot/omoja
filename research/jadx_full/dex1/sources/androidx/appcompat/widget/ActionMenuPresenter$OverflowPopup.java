package androidx.appcompat.widget;

import android.content.Context;
import android.view.View;
import androidx.appcompat.R$attr;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuPopupHelper;
import androidx.core.view.GravityCompat;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ActionMenuPresenter$OverflowPopup extends MenuPopupHelper {
    final /* synthetic */ ActionMenuPresenter this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ActionMenuPresenter$OverflowPopup(ActionMenuPresenter actionMenuPresenter, Context context, MenuBuilder menuBuilder, View view, boolean z8) {
        super(context, menuBuilder, view, z8, R$attr.actionOverflowMenuStyle);
        this.this$0 = actionMenuPresenter;
        setGravity(GravityCompat.END);
        setPresenterCallback(actionMenuPresenter.mPopupPresenterCallback);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.view.menu.MenuPopupHelper
    public void onDismiss() {
        if (ActionMenuPresenter.access$000(this.this$0) != null) {
            ActionMenuPresenter.access$100(this.this$0).close();
        }
        this.this$0.mOverflowPopup = null;
        super.onDismiss();
    }
}
