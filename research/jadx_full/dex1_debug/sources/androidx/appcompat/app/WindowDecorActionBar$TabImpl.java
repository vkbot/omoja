package androidx.appcompat.app;

import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.RestrictTo;
import androidx.annotation.RestrictTo$Scope;
import androidx.appcompat.content.res.AppCompatResources;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
public class WindowDecorActionBar$TabImpl extends ActionBar$Tab {
    private ActionBar$TabListener mCallback;
    private CharSequence mContentDesc;
    private View mCustomView;
    private Drawable mIcon;
    private int mPosition = -1;
    private Object mTag;
    private CharSequence mText;
    final /* synthetic */ WindowDecorActionBar this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public WindowDecorActionBar$TabImpl(WindowDecorActionBar windowDecorActionBar) {
        this.this$0 = windowDecorActionBar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ActionBar$TabListener getCallback() {
        return this.mCallback;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.app.ActionBar$Tab
    public CharSequence getContentDescription() {
        return this.mContentDesc;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.app.ActionBar$Tab
    public View getCustomView() {
        return this.mCustomView;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.app.ActionBar$Tab
    public Drawable getIcon() {
        return this.mIcon;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.app.ActionBar$Tab
    public int getPosition() {
        return this.mPosition;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.app.ActionBar$Tab
    public Object getTag() {
        return this.mTag;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.app.ActionBar$Tab
    public CharSequence getText() {
        return this.mText;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.app.ActionBar$Tab
    public void select() {
        this.this$0.selectTab(this);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.app.ActionBar$Tab
    public ActionBar$Tab setContentDescription(int i9) {
        return setContentDescription(this.this$0.mContext.getResources().getText(i9));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.app.ActionBar$Tab
    public ActionBar$Tab setCustomView(int i9) {
        return setCustomView(LayoutInflater.from(this.this$0.getThemedContext()).inflate(i9, (ViewGroup) null));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.app.ActionBar$Tab
    public ActionBar$Tab setIcon(Drawable drawable) {
        this.mIcon = drawable;
        int i9 = this.mPosition;
        if (i9 >= 0) {
            this.this$0.mTabScrollView.updateTab(i9);
        }
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setPosition(int i9) {
        this.mPosition = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.app.ActionBar$Tab
    public ActionBar$Tab setTabListener(ActionBar$TabListener actionBar$TabListener) {
        this.mCallback = actionBar$TabListener;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.app.ActionBar$Tab
    public ActionBar$Tab setTag(Object obj) {
        this.mTag = obj;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.app.ActionBar$Tab
    public ActionBar$Tab setText(int i9) {
        return setText(this.this$0.mContext.getResources().getText(i9));
    }

    @Override // androidx.appcompat.app.ActionBar$Tab
    public ActionBar$Tab setIcon(int i9) {
        return setIcon(AppCompatResources.getDrawable(this.this$0.mContext, i9));
    }

    @Override // androidx.appcompat.app.ActionBar$Tab
    public ActionBar$Tab setContentDescription(CharSequence charSequence) {
        this.mContentDesc = charSequence;
        int i9 = this.mPosition;
        if (i9 >= 0) {
            this.this$0.mTabScrollView.updateTab(i9);
        }
        return this;
    }

    @Override // androidx.appcompat.app.ActionBar$Tab
    public ActionBar$Tab setText(CharSequence charSequence) {
        this.mText = charSequence;
        int i9 = this.mPosition;
        if (i9 >= 0) {
            this.this$0.mTabScrollView.updateTab(i9);
        }
        return this;
    }

    @Override // androidx.appcompat.app.ActionBar$Tab
    public ActionBar$Tab setCustomView(View view) {
        this.mCustomView = view;
        int i9 = this.mPosition;
        if (i9 >= 0) {
            this.this$0.mTabScrollView.updateTab(i9);
        }
        return this;
    }
}
