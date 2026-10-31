package androidx.appcompat.widget;

import android.R$id;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class SuggestionsAdapter$ChildViewCache {
    public final ImageView mIcon1;
    public final ImageView mIcon2;
    public final ImageView mIconRefine;
    public final TextView mText1;
    public final TextView mText2;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public SuggestionsAdapter$ChildViewCache(View view) {
        this.mText1 = (TextView) view.findViewById(R$id.text1);
        this.mText2 = (TextView) view.findViewById(R$id.text2);
        this.mIcon1 = (ImageView) view.findViewById(R$id.icon1);
        this.mIcon2 = (ImageView) view.findViewById(R$id.icon2);
        this.mIconRefine = (ImageView) view.findViewById(androidx.appcompat.R$id.edit_query);
    }
}
