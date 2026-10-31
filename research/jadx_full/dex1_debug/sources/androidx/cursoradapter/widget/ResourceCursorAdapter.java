package androidx.cursoradapter.widget;

import android.content.Context;
import android.database.Cursor;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class ResourceCursorAdapter extends CursorAdapter {
    private int mDropDownLayout;
    private LayoutInflater mInflater;
    private int mLayout;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public ResourceCursorAdapter(Context context, int i9, Cursor cursor) {
        super(context, cursor);
        this.mDropDownLayout = i9;
        this.mLayout = i9;
        this.mInflater = (LayoutInflater) context.getSystemService("layout_inflater");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.cursoradapter.widget.CursorAdapter
    public View newDropDownView(Context context, Cursor cursor, ViewGroup viewGroup) {
        return this.mInflater.inflate(this.mDropDownLayout, viewGroup, false);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.cursoradapter.widget.CursorAdapter
    public View newView(Context context, Cursor cursor, ViewGroup viewGroup) {
        return this.mInflater.inflate(this.mLayout, viewGroup, false);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setDropDownViewResource(int i9) {
        this.mDropDownLayout = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setViewResource(int i9) {
        this.mLayout = i9;
    }

    @Deprecated
    public ResourceCursorAdapter(Context context, int i9, Cursor cursor, boolean z8) {
        super(context, cursor, z8);
        this.mDropDownLayout = i9;
        this.mLayout = i9;
        this.mInflater = (LayoutInflater) context.getSystemService("layout_inflater");
    }

    public ResourceCursorAdapter(Context context, int i9, Cursor cursor, int i10) {
        super(context, cursor, i10);
        this.mDropDownLayout = i9;
        this.mLayout = i9;
        this.mInflater = (LayoutInflater) context.getSystemService("layout_inflater");
    }
}
