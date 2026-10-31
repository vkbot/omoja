package androidx.cursoradapter.widget;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.RestrictTo;
import androidx.annotation.RestrictTo$Scope;
import j1.i;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class SimpleCursorAdapter extends ResourceCursorAdapter {
    private SimpleCursorAdapter$CursorToStringConverter mCursorToStringConverter;

    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    protected int[] mFrom;
    String[] mOriginalFrom;
    private int mStringConversionColumn;

    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    protected int[] mTo;
    private SimpleCursorAdapter$ViewBinder mViewBinder;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public SimpleCursorAdapter(Context context, int i9, Cursor cursor, String[] strArr, int[] iArr) {
        super(context, i9, cursor);
        this.mStringConversionColumn = -1;
        this.mTo = iArr;
        this.mOriginalFrom = strArr;
        findColumns(cursor, strArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void findColumns(Cursor cursor, String[] strArr) {
        if (cursor == null) {
            this.mFrom = null;
            return;
        }
        int length = strArr.length;
        int[] iArr = this.mFrom;
        if (iArr == null || iArr.length != length) {
            this.mFrom = new int[length];
        }
        for (int i9 = 0; i9 < length; i9++) {
            this.mFrom[i9] = cursor.getColumnIndexOrThrow(strArr[i9]);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.cursoradapter.widget.CursorAdapter
    public void bindView(View view, Context context, Cursor cursor) {
        SimpleCursorAdapter$ViewBinder simpleCursorAdapter$ViewBinder = this.mViewBinder;
        int[] iArr = this.mTo;
        int length = iArr.length;
        int[] iArr2 = this.mFrom;
        for (int i9 = 0; i9 < length; i9++) {
            View viewFindViewById = view.findViewById(iArr[i9]);
            if (viewFindViewById != null) {
                if (simpleCursorAdapter$ViewBinder != null ? simpleCursorAdapter$ViewBinder.setViewValue(viewFindViewById, cursor, iArr2[i9]) : false) {
                    continue;
                } else {
                    String string = cursor.getString(iArr2[i9]);
                    if (string == null) {
                        string = "";
                    }
                    if (viewFindViewById instanceof TextView) {
                        setViewText((TextView) viewFindViewById, string);
                    } else {
                        if (!(viewFindViewById instanceof ImageView)) {
                            i.l(viewFindViewById.getClass().getName().concat(" is not a  view that can be bounds by this SimpleCursorAdapter"));
                            return;
                        }
                        setViewImage((ImageView) viewFindViewById, string);
                    }
                }
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void changeCursorAndColumns(Cursor cursor, String[] strArr, int[] iArr) {
        this.mOriginalFrom = strArr;
        this.mTo = iArr;
        findColumns(cursor, strArr);
        super.changeCursor(cursor);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.cursoradapter.widget.CursorAdapter, androidx.cursoradapter.widget.CursorFilter$CursorFilterClient
    public CharSequence convertToString(Cursor cursor) {
        SimpleCursorAdapter$CursorToStringConverter simpleCursorAdapter$CursorToStringConverter = this.mCursorToStringConverter;
        if (simpleCursorAdapter$CursorToStringConverter != null) {
            return simpleCursorAdapter$CursorToStringConverter.convertToString(cursor);
        }
        int i9 = this.mStringConversionColumn;
        return i9 > -1 ? cursor.getString(i9) : super.convertToString(cursor);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public SimpleCursorAdapter$CursorToStringConverter getCursorToStringConverter() {
        return this.mCursorToStringConverter;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getStringConversionColumn() {
        return this.mStringConversionColumn;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public SimpleCursorAdapter$ViewBinder getViewBinder() {
        return this.mViewBinder;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setCursorToStringConverter(SimpleCursorAdapter$CursorToStringConverter simpleCursorAdapter$CursorToStringConverter) {
        this.mCursorToStringConverter = simpleCursorAdapter$CursorToStringConverter;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setStringConversionColumn(int i9) {
        this.mStringConversionColumn = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setViewBinder(SimpleCursorAdapter$ViewBinder simpleCursorAdapter$ViewBinder) {
        this.mViewBinder = simpleCursorAdapter$ViewBinder;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setViewImage(ImageView imageView, String str) {
        try {
            imageView.setImageResource(Integer.parseInt(str));
        } catch (NumberFormatException unused) {
            imageView.setImageURI(Uri.parse(str));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setViewText(TextView textView, String str) {
        textView.setText(str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.cursoradapter.widget.CursorAdapter
    public Cursor swapCursor(Cursor cursor) {
        findColumns(cursor, this.mOriginalFrom);
        return super.swapCursor(cursor);
    }

    public SimpleCursorAdapter(Context context, int i9, Cursor cursor, String[] strArr, int[] iArr, int i10) {
        super(context, i9, cursor, i10);
        this.mStringConversionColumn = -1;
        this.mTo = iArr;
        this.mOriginalFrom = strArr;
        findColumns(cursor, strArr);
    }
}
