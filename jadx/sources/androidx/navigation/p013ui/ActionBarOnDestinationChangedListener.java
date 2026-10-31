package androidx.navigation.p013ui;

import android.content.Context;
import android.graphics.drawable.Drawable;
import androidx.annotation.StringRes;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.ActionBarDrawerToggle;
import androidx.appcompat.app.AppCompatActivity;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.navigation.C0674b;
import kotlin.Metadata;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m3158d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\r\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u001c\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\n2\b\b\u0001\u0010\u000b\u001a\u00020\fH\u0014J\u0012\u0010\r\u001a\u00020\b2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0014R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0010"}, m3159d2 = {"Landroidx/navigation/ui/ActionBarOnDestinationChangedListener;", "Landroidx/navigation/ui/AbstractAppBarOnDestinationChangedListener;", "activity", "Landroidx/appcompat/app/AppCompatActivity;", "configuration", "Landroidx/navigation/ui/AppBarConfiguration;", "(Landroidx/appcompat/app/AppCompatActivity;Landroidx/navigation/ui/AppBarConfiguration;)V", "setNavigationIcon", "", "icon", "Landroid/graphics/drawable/Drawable;", "contentDescription", "", "setTitle", "title", "", "navigation-ui_release"}, m3160k = 1, m3161mv = {1, 8, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class ActionBarOnDestinationChangedListener extends AbstractAppBarOnDestinationChangedListener {
    private final AppCompatActivity activity;

    /* JADX WARN: Illegal instructions before constructor call */
    public ActionBarOnDestinationChangedListener(AppCompatActivity appCompatActivity, AppBarConfiguration appBarConfiguration) {
        appCompatActivity.getClass();
        appBarConfiguration.getClass();
        ActionBarDrawerToggle.Delegate drawerToggleDelegate = appCompatActivity.getDrawerToggleDelegate();
        if (drawerToggleDelegate == null) {
            C0674b.m839f(appCompatActivity, "Activity ", " does not have a DrawerToggleDelegate set");
            throw null;
        }
        Context actionBarThemedContext = drawerToggleDelegate.getActionBarThemedContext();
        actionBarThemedContext.getClass();
        super(actionBarThemedContext, appBarConfiguration);
        this.activity = appCompatActivity;
    }

    @Override // androidx.navigation.p013ui.AbstractAppBarOnDestinationChangedListener
    public void setNavigationIcon(Drawable icon, @StringRes int contentDescription) {
        ActionBar supportActionBar = this.activity.getSupportActionBar();
        if (supportActionBar == null) {
            C0674b.m839f(this.activity, "Activity ", " does not have an ActionBar set via setSupportActionBar()");
            return;
        }
        supportActionBar.setDisplayHomeAsUpEnabled(icon != null);
        ActionBarDrawerToggle.Delegate drawerToggleDelegate = this.activity.getDrawerToggleDelegate();
        if (drawerToggleDelegate != null) {
            drawerToggleDelegate.setActionBarUpIndicator(icon, contentDescription);
        } else {
            C0674b.m839f(this.activity, "Activity ", " does not have a DrawerToggleDelegate set");
        }
    }

    @Override // androidx.navigation.p013ui.AbstractAppBarOnDestinationChangedListener
    public void setTitle(CharSequence title) {
        ActionBar supportActionBar = this.activity.getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setTitle(title);
        } else {
            C0674b.m839f(this.activity, "Activity ", " does not have an ActionBar set via setSupportActionBar()");
        }
    }
}
