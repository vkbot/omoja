.class public final Landroidx/appcompat/widget/Toolbar$InspectionCompanion;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroid/view/inspector/InspectionCompanion;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1d
.end annotation

.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/view/inspector/InspectionCompanion;"
    }
.end annotation


# instance fields
.field private mCollapseContentDescriptionId:I

.field private mCollapseIconId:I

.field private mContentInsetEndId:I

.field private mContentInsetEndWithActionsId:I

.field private mContentInsetLeftId:I

.field private mContentInsetRightId:I

.field private mContentInsetStartId:I

.field private mContentInsetStartWithNavigationId:I

.field private mLogoDescriptionId:I

.field private mLogoId:I

.field private mMenuId:I

.field private mNavigationContentDescriptionId:I

.field private mNavigationIconId:I

.field private mPopupThemeId:I

.field private mPropertiesMapped:Z

.field private mSubtitleId:I

.field private mTitleId:I

.field private mTitleMarginBottomId:I

.field private mTitleMarginEndId:I

.field private mTitleMarginStartId:I

.field private mTitleMarginTopId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->mPropertiesMapped:Z

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public mapProperties(Landroid/view/inspector/PropertyMapper;)V
    .locals 1
    .param p1    # Landroid/view/inspector/PropertyMapper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget v0, Landroidx/appcompat/R$attr;->collapseContentDescription:I

    .line 2
    .line 3
    invoke-static {p1, v0}, Landroidx/appcompat/widget/d;->n(Landroid/view/inspector/PropertyMapper;I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iput v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->mCollapseContentDescriptionId:I

    .line 8
    .line 9
    sget v0, Landroidx/appcompat/R$attr;->collapseIcon:I

    .line 10
    .line 11
    invoke-static {p1, v0}, Landroidx/appcompat/widget/d;->x(Landroid/view/inspector/PropertyMapper;I)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iput v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->mCollapseIconId:I

    .line 16
    .line 17
    sget v0, Landroidx/appcompat/R$attr;->contentInsetEnd:I

    .line 18
    .line 19
    invoke-static {p1, v0}, Landroidx/appcompat/widget/d;->y(Landroid/view/inspector/PropertyMapper;I)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iput v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->mContentInsetEndId:I

    .line 24
    .line 25
    sget v0, Landroidx/appcompat/R$attr;->contentInsetEndWithActions:I

    .line 26
    .line 27
    invoke-static {p1, v0}, Landroidx/appcompat/widget/d;->z(Landroid/view/inspector/PropertyMapper;I)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    iput v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->mContentInsetEndWithActionsId:I

    .line 32
    .line 33
    sget v0, Landroidx/appcompat/R$attr;->contentInsetLeft:I

    .line 34
    .line 35
    invoke-static {p1, v0}, Landroidx/appcompat/widget/d;->A(Landroid/view/inspector/PropertyMapper;I)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    iput v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->mContentInsetLeftId:I

    .line 40
    .line 41
    sget v0, Landroidx/appcompat/R$attr;->contentInsetRight:I

    .line 42
    .line 43
    invoke-static {p1, v0}, Landroidx/appcompat/widget/d;->B(Landroid/view/inspector/PropertyMapper;I)I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    iput v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->mContentInsetRightId:I

    .line 48
    .line 49
    sget v0, Landroidx/appcompat/R$attr;->contentInsetStart:I

    .line 50
    .line 51
    invoke-static {p1, v0}, Landroidx/appcompat/widget/d;->C(Landroid/view/inspector/PropertyMapper;I)I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    iput v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->mContentInsetStartId:I

    .line 56
    .line 57
    sget v0, Landroidx/appcompat/R$attr;->contentInsetStartWithNavigation:I

    .line 58
    .line 59
    invoke-static {p1, v0}, Landroidx/appcompat/widget/d;->D(Landroid/view/inspector/PropertyMapper;I)I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    iput v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->mContentInsetStartWithNavigationId:I

    .line 64
    .line 65
    sget v0, Landroidx/appcompat/R$attr;->logo:I

    .line 66
    .line 67
    invoke-static {p1, v0}, Landroidx/appcompat/widget/d;->l(Landroid/view/inspector/PropertyMapper;I)I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    iput v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->mLogoId:I

    .line 72
    .line 73
    sget v0, Landroidx/appcompat/R$attr;->logoDescription:I

    .line 74
    .line 75
    invoke-static {p1, v0}, Landroidx/appcompat/widget/d;->m(Landroid/view/inspector/PropertyMapper;I)I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    iput v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->mLogoDescriptionId:I

    .line 80
    .line 81
    sget v0, Landroidx/appcompat/R$attr;->menu:I

    .line 82
    .line 83
    invoke-static {p1, v0}, Landroidx/appcompat/widget/d;->o(Landroid/view/inspector/PropertyMapper;I)I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    iput v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->mMenuId:I

    .line 88
    .line 89
    sget v0, Landroidx/appcompat/R$attr;->navigationContentDescription:I

    .line 90
    .line 91
    invoke-static {p1, v0}, Landroidx/appcompat/widget/d;->p(Landroid/view/inspector/PropertyMapper;I)I

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    iput v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->mNavigationContentDescriptionId:I

    .line 96
    .line 97
    sget v0, Landroidx/appcompat/R$attr;->navigationIcon:I

    .line 98
    .line 99
    invoke-static {p1, v0}, Landroidx/appcompat/widget/d;->q(Landroid/view/inspector/PropertyMapper;I)I

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    iput v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->mNavigationIconId:I

    .line 104
    .line 105
    sget v0, Landroidx/appcompat/R$attr;->popupTheme:I

    .line 106
    .line 107
    invoke-static {p1, v0}, Landroidx/appcompat/widget/d;->r(Landroid/view/inspector/PropertyMapper;I)I

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    iput v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->mPopupThemeId:I

    .line 112
    .line 113
    sget v0, Landroidx/appcompat/R$attr;->subtitle:I

    .line 114
    .line 115
    invoke-static {p1, v0}, Landroidx/appcompat/widget/d;->s(Landroid/view/inspector/PropertyMapper;I)I

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    iput v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->mSubtitleId:I

    .line 120
    .line 121
    sget v0, Landroidx/appcompat/R$attr;->title:I

    .line 122
    .line 123
    invoke-static {p1, v0}, Landroidx/appcompat/widget/d;->t(Landroid/view/inspector/PropertyMapper;I)I

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    iput v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->mTitleId:I

    .line 128
    .line 129
    sget v0, Landroidx/appcompat/R$attr;->titleMarginBottom:I

    .line 130
    .line 131
    invoke-static {p1, v0}, Landroidx/appcompat/widget/d;->u(Landroid/view/inspector/PropertyMapper;I)I

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    iput v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->mTitleMarginBottomId:I

    .line 136
    .line 137
    sget v0, Landroidx/appcompat/R$attr;->titleMarginEnd:I

    .line 138
    .line 139
    invoke-static {p1, v0}, Landroidx/appcompat/widget/d;->a(Landroid/view/inspector/PropertyMapper;I)I

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    iput v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->mTitleMarginEndId:I

    .line 144
    .line 145
    sget v0, Landroidx/appcompat/R$attr;->titleMarginStart:I

    .line 146
    .line 147
    invoke-static {p1, v0}, Landroidx/appcompat/widget/d;->i(Landroid/view/inspector/PropertyMapper;I)I

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    iput v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->mTitleMarginStartId:I

    .line 152
    .line 153
    sget v0, Landroidx/appcompat/R$attr;->titleMarginTop:I

    .line 154
    .line 155
    invoke-static {p1, v0}, Landroidx/appcompat/widget/d;->v(Landroid/view/inspector/PropertyMapper;I)I

    .line 156
    .line 157
    .line 158
    move-result p1

    .line 159
    iput p1, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->mTitleMarginTopId:I

    .line 160
    .line 161
    const/4 p1, 0x1

    .line 162
    iput-boolean p1, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->mPropertiesMapped:Z

    .line 163
    .line 164
    return-void
.end method

.method public readProperties(Landroidx/appcompat/widget/Toolbar;Landroid/view/inspector/PropertyReader;)V
    .locals 2
    .param p1    # Landroidx/appcompat/widget/Toolbar;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/inspector/PropertyReader;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->mPropertiesMapped:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->mCollapseContentDescriptionId:I

    .line 6
    .line 7
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getCollapseContentDescription()Ljava/lang/CharSequence;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-static {p2, v0, v1}, Landroidx/appcompat/widget/a;->h(Landroid/view/inspector/PropertyReader;ILjava/lang/CharSequence;)V

    .line 12
    .line 13
    .line 14
    iget v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->mCollapseIconId:I

    .line 15
    .line 16
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getCollapseIcon()Landroid/graphics/drawable/Drawable;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {p2, v0, v1}, Landroidx/appcompat/widget/a;->f(Landroid/view/inspector/PropertyReader;ILandroid/graphics/drawable/Drawable;)V

    .line 21
    .line 22
    .line 23
    iget v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->mContentInsetEndId:I

    .line 24
    .line 25
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getContentInsetEnd()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    invoke-static {p2, v0, v1}, Landroidx/activity/k;->j(Landroid/view/inspector/PropertyReader;II)V

    .line 30
    .line 31
    .line 32
    iget v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->mContentInsetEndWithActionsId:I

    .line 33
    .line 34
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getContentInsetEndWithActions()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    invoke-static {p2, v0, v1}, Landroidx/activity/k;->j(Landroid/view/inspector/PropertyReader;II)V

    .line 39
    .line 40
    .line 41
    iget v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->mContentInsetLeftId:I

    .line 42
    .line 43
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getContentInsetLeft()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    invoke-static {p2, v0, v1}, Landroidx/activity/k;->j(Landroid/view/inspector/PropertyReader;II)V

    .line 48
    .line 49
    .line 50
    iget v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->mContentInsetRightId:I

    .line 51
    .line 52
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getContentInsetRight()I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    invoke-static {p2, v0, v1}, Landroidx/activity/k;->j(Landroid/view/inspector/PropertyReader;II)V

    .line 57
    .line 58
    .line 59
    iget v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->mContentInsetStartId:I

    .line 60
    .line 61
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getContentInsetStart()I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    invoke-static {p2, v0, v1}, Landroidx/activity/k;->j(Landroid/view/inspector/PropertyReader;II)V

    .line 66
    .line 67
    .line 68
    iget v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->mContentInsetStartWithNavigationId:I

    .line 69
    .line 70
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getContentInsetStartWithNavigation()I

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    invoke-static {p2, v0, v1}, Landroidx/activity/k;->j(Landroid/view/inspector/PropertyReader;II)V

    .line 75
    .line 76
    .line 77
    iget v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->mLogoId:I

    .line 78
    .line 79
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getLogo()Landroid/graphics/drawable/Drawable;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-static {p2, v0, v1}, Landroidx/appcompat/widget/a;->f(Landroid/view/inspector/PropertyReader;ILandroid/graphics/drawable/Drawable;)V

    .line 84
    .line 85
    .line 86
    iget v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->mLogoDescriptionId:I

    .line 87
    .line 88
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getLogoDescription()Ljava/lang/CharSequence;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-static {p2, v0, v1}, Landroidx/appcompat/widget/a;->h(Landroid/view/inspector/PropertyReader;ILjava/lang/CharSequence;)V

    .line 93
    .line 94
    .line 95
    iget v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->mMenuId:I

    .line 96
    .line 97
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-static {p2, v0, v1}, Landroidx/appcompat/widget/a;->g(Landroid/view/inspector/PropertyReader;ILandroid/view/Menu;)V

    .line 102
    .line 103
    .line 104
    iget v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->mNavigationContentDescriptionId:I

    .line 105
    .line 106
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getNavigationContentDescription()Ljava/lang/CharSequence;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-static {p2, v0, v1}, Landroidx/appcompat/widget/a;->h(Landroid/view/inspector/PropertyReader;ILjava/lang/CharSequence;)V

    .line 111
    .line 112
    .line 113
    iget v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->mNavigationIconId:I

    .line 114
    .line 115
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-static {p2, v0, v1}, Landroidx/appcompat/widget/a;->f(Landroid/view/inspector/PropertyReader;ILandroid/graphics/drawable/Drawable;)V

    .line 120
    .line 121
    .line 122
    iget v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->mPopupThemeId:I

    .line 123
    .line 124
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getPopupTheme()I

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    invoke-static {p2, v0, v1}, Landroidx/appcompat/widget/d;->g(Landroid/view/inspector/PropertyReader;II)V

    .line 129
    .line 130
    .line 131
    iget v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->mSubtitleId:I

    .line 132
    .line 133
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getSubtitle()Ljava/lang/CharSequence;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    invoke-static {p2, v0, v1}, Landroidx/appcompat/widget/a;->h(Landroid/view/inspector/PropertyReader;ILjava/lang/CharSequence;)V

    .line 138
    .line 139
    .line 140
    iget v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->mTitleId:I

    .line 141
    .line 142
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    invoke-static {p2, v0, v1}, Landroidx/appcompat/widget/a;->h(Landroid/view/inspector/PropertyReader;ILjava/lang/CharSequence;)V

    .line 147
    .line 148
    .line 149
    iget v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->mTitleMarginBottomId:I

    .line 150
    .line 151
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getTitleMarginBottom()I

    .line 152
    .line 153
    .line 154
    move-result v1

    .line 155
    invoke-static {p2, v0, v1}, Landroidx/activity/k;->j(Landroid/view/inspector/PropertyReader;II)V

    .line 156
    .line 157
    .line 158
    iget v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->mTitleMarginEndId:I

    .line 159
    .line 160
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getTitleMarginEnd()I

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    invoke-static {p2, v0, v1}, Landroidx/activity/k;->j(Landroid/view/inspector/PropertyReader;II)V

    .line 165
    .line 166
    .line 167
    iget v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->mTitleMarginStartId:I

    .line 168
    .line 169
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getTitleMarginStart()I

    .line 170
    .line 171
    .line 172
    move-result v1

    .line 173
    invoke-static {p2, v0, v1}, Landroidx/activity/k;->j(Landroid/view/inspector/PropertyReader;II)V

    .line 174
    .line 175
    .line 176
    iget v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->mTitleMarginTopId:I

    .line 177
    .line 178
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getTitleMarginTop()I

    .line 179
    .line 180
    .line 181
    move-result p1

    .line 182
    invoke-static {p2, v0, p1}, Landroidx/activity/k;->j(Landroid/view/inspector/PropertyReader;II)V

    .line 183
    .line 184
    .line 185
    return-void

    .line 186
    :cond_0
    invoke-static {}, Landroidx/activity/k;->f()Landroid/view/inspector/InspectionCompanion$UninitializedPropertyMapException;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    throw p1
.end method

.method public bridge synthetic readProperties(Ljava/lang/Object;Landroid/view/inspector/PropertyReader;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/inspector/PropertyReader;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 191
    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->readProperties(Landroidx/appcompat/widget/Toolbar;Landroid/view/inspector/PropertyReader;)V

    return-void
.end method
