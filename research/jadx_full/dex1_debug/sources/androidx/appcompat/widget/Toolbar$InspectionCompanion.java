package androidx.appcompat.widget;

import android.view.inspector.InspectionCompanion;
import android.view.inspector.PropertyMapper;
import android.view.inspector.PropertyReader;
import androidx.activity.k;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.RestrictTo$Scope;
import androidx.appcompat.R$attr;
import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_HORIZONTAL_BIAS)
@RestrictTo({RestrictTo$Scope.LIBRARY})
public final class Toolbar$InspectionCompanion implements InspectionCompanion {
    private int mCollapseContentDescriptionId;
    private int mCollapseIconId;
    private int mContentInsetEndId;
    private int mContentInsetEndWithActionsId;
    private int mContentInsetLeftId;
    private int mContentInsetRightId;
    private int mContentInsetStartId;
    private int mContentInsetStartWithNavigationId;
    private int mLogoDescriptionId;
    private int mLogoId;
    private int mMenuId;
    private int mNavigationContentDescriptionId;
    private int mNavigationIconId;
    private int mPopupThemeId;
    private boolean mPropertiesMapped = false;
    private int mSubtitleId;
    private int mTitleId;
    private int mTitleMarginBottomId;
    private int mTitleMarginEndId;
    private int mTitleMarginStartId;
    private int mTitleMarginTopId;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void mapProperties(@NonNull PropertyMapper propertyMapper) {
        this.mCollapseContentDescriptionId = d.n(propertyMapper, R$attr.collapseContentDescription);
        this.mCollapseIconId = d.x(propertyMapper, R$attr.collapseIcon);
        this.mContentInsetEndId = d.y(propertyMapper, R$attr.contentInsetEnd);
        this.mContentInsetEndWithActionsId = d.z(propertyMapper, R$attr.contentInsetEndWithActions);
        this.mContentInsetLeftId = d.A(propertyMapper, R$attr.contentInsetLeft);
        this.mContentInsetRightId = d.B(propertyMapper, R$attr.contentInsetRight);
        this.mContentInsetStartId = d.C(propertyMapper, R$attr.contentInsetStart);
        this.mContentInsetStartWithNavigationId = d.D(propertyMapper, R$attr.contentInsetStartWithNavigation);
        this.mLogoId = d.l(propertyMapper, R$attr.logo);
        this.mLogoDescriptionId = d.m(propertyMapper, R$attr.logoDescription);
        this.mMenuId = d.o(propertyMapper, R$attr.menu);
        this.mNavigationContentDescriptionId = d.p(propertyMapper, R$attr.navigationContentDescription);
        this.mNavigationIconId = d.q(propertyMapper, R$attr.navigationIcon);
        this.mPopupThemeId = d.r(propertyMapper, R$attr.popupTheme);
        this.mSubtitleId = d.s(propertyMapper, R$attr.subtitle);
        this.mTitleId = d.t(propertyMapper, R$attr.title);
        this.mTitleMarginBottomId = d.u(propertyMapper, R$attr.titleMarginBottom);
        this.mTitleMarginEndId = d.a(propertyMapper, R$attr.titleMarginEnd);
        this.mTitleMarginStartId = d.i(propertyMapper, R$attr.titleMarginStart);
        this.mTitleMarginTopId = d.v(propertyMapper, R$attr.titleMarginTop);
        this.mPropertiesMapped = true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void readProperties(@NonNull Toolbar toolbar, @NonNull PropertyReader propertyReader) {
        if (!this.mPropertiesMapped) {
            throw k.f();
        }
        a.h(propertyReader, this.mCollapseContentDescriptionId, toolbar.getCollapseContentDescription());
        a.f(propertyReader, this.mCollapseIconId, toolbar.getCollapseIcon());
        k.j(propertyReader, this.mContentInsetEndId, toolbar.getContentInsetEnd());
        k.j(propertyReader, this.mContentInsetEndWithActionsId, toolbar.getContentInsetEndWithActions());
        k.j(propertyReader, this.mContentInsetLeftId, toolbar.getContentInsetLeft());
        k.j(propertyReader, this.mContentInsetRightId, toolbar.getContentInsetRight());
        k.j(propertyReader, this.mContentInsetStartId, toolbar.getContentInsetStart());
        k.j(propertyReader, this.mContentInsetStartWithNavigationId, toolbar.getContentInsetStartWithNavigation());
        a.f(propertyReader, this.mLogoId, toolbar.getLogo());
        a.h(propertyReader, this.mLogoDescriptionId, toolbar.getLogoDescription());
        a.g(propertyReader, this.mMenuId, toolbar.getMenu());
        a.h(propertyReader, this.mNavigationContentDescriptionId, toolbar.getNavigationContentDescription());
        a.f(propertyReader, this.mNavigationIconId, toolbar.getNavigationIcon());
        d.g(propertyReader, this.mPopupThemeId, toolbar.getPopupTheme());
        a.h(propertyReader, this.mSubtitleId, toolbar.getSubtitle());
        a.h(propertyReader, this.mTitleId, toolbar.getTitle());
        k.j(propertyReader, this.mTitleMarginBottomId, toolbar.getTitleMarginBottom());
        k.j(propertyReader, this.mTitleMarginEndId, toolbar.getTitleMarginEnd());
        k.j(propertyReader, this.mTitleMarginStartId, toolbar.getTitleMarginStart());
        k.j(propertyReader, this.mTitleMarginTopId, toolbar.getTitleMarginTop());
    }

    public /* bridge */ /* synthetic */ void readProperties(@NonNull Object obj, @NonNull PropertyReader propertyReader) {
        readProperties((Toolbar) obj, propertyReader);
    }
}
