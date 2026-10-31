package androidx.appcompat.app;

import android.R$id;
import android.content.Context;
import android.database.Cursor;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckedTextView;
import android.widget.CursorAdapter;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class AlertController$AlertParams$2 extends CursorAdapter {
    private final int mIsCheckedIndex;
    private final int mLabelIndex;
    final /* synthetic */ AlertController$AlertParams this$0;
    final /* synthetic */ AlertController val$dialog;
    final /* synthetic */ AlertController$RecycleListView val$listView;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AlertController$AlertParams$2(AlertController$AlertParams alertController$AlertParams, Context context, Cursor cursor, boolean z8, AlertController$RecycleListView alertController$RecycleListView, AlertController alertController) {
        super(context, cursor, z8);
        this.this$0 = alertController$AlertParams;
        this.val$listView = alertController$RecycleListView;
        this.val$dialog = alertController;
        Cursor cursor2 = getCursor();
        this.mLabelIndex = cursor2.getColumnIndexOrThrow(alertController$AlertParams.mLabelColumn);
        this.mIsCheckedIndex = cursor2.getColumnIndexOrThrow(alertController$AlertParams.mIsCheckedColumn);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.CursorAdapter
    public void bindView(View view, Context context, Cursor cursor) {
        ((CheckedTextView) view.findViewById(R$id.text1)).setText(cursor.getString(this.mLabelIndex));
        this.val$listView.setItemChecked(cursor.getPosition(), cursor.getInt(this.mIsCheckedIndex) == 1);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.CursorAdapter
    public View newView(Context context, Cursor cursor, ViewGroup viewGroup) {
        return this.this$0.mInflater.inflate(this.val$dialog.mMultiChoiceItemLayout, viewGroup, false);
    }
}
