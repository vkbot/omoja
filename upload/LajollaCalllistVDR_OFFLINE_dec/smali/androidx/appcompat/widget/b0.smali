.class public final Landroidx/appcompat/widget/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/widget/q1;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public final d:Ljava/io/Serializable;

.field public e:Ljava/lang/Object;

.field public final f:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 10

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    sget v0, Landroidx/appcompat/R$drawable;->abc_textfield_search_default_mtrl_alpha:I

    sget v1, Landroidx/appcompat/R$drawable;->abc_textfield_default_mtrl_alpha:I

    sget v2, Landroidx/appcompat/R$drawable;->abc_ab_share_pack_mtrl_alpha:I

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/b0;->a:Ljava/lang/Object;

    const/4 v0, 0x7

    new-array v1, v0, [I

    .line 8
    sget v2, Landroidx/appcompat/R$drawable;->abc_ic_commit_search_api_mtrl_alpha:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sget v2, Landroidx/appcompat/R$drawable;->abc_seekbar_tick_mark_material:I

    const/4 v4, 0x1

    aput v2, v1, v4

    sget v2, Landroidx/appcompat/R$drawable;->abc_ic_menu_share_mtrl_alpha:I

    const/4 v5, 0x2

    aput v2, v1, v5

    sget v2, Landroidx/appcompat/R$drawable;->abc_ic_menu_copy_mtrl_am_alpha:I

    const/4 v6, 0x3

    aput v2, v1, v6

    sget v2, Landroidx/appcompat/R$drawable;->abc_ic_menu_cut_mtrl_alpha:I

    const/4 v7, 0x4

    aput v2, v1, v7

    sget v2, Landroidx/appcompat/R$drawable;->abc_ic_menu_selectall_mtrl_alpha:I

    const/4 v8, 0x5

    aput v2, v1, v8

    sget v2, Landroidx/appcompat/R$drawable;->abc_ic_menu_paste_mtrl_am_alpha:I

    const/4 v9, 0x6

    aput v2, v1, v9

    iput-object v1, p0, Landroidx/appcompat/widget/b0;->b:Ljava/lang/Object;

    new-array v0, v0, [I

    .line 9
    sget v1, Landroidx/appcompat/R$drawable;->abc_textfield_activated_mtrl_alpha:I

    aput v1, v0, v3

    sget v1, Landroidx/appcompat/R$drawable;->abc_textfield_search_activated_mtrl_alpha:I

    aput v1, v0, v4

    sget v1, Landroidx/appcompat/R$drawable;->abc_cab_background_top_mtrl_alpha:I

    aput v1, v0, v5

    sget v1, Landroidx/appcompat/R$drawable;->abc_text_cursor_material:I

    aput v1, v0, v6

    sget v1, Landroidx/appcompat/R$drawable;->abc_text_select_handle_left_mtrl:I

    aput v1, v0, v7

    sget v1, Landroidx/appcompat/R$drawable;->abc_text_select_handle_middle_mtrl:I

    aput v1, v0, v8

    sget v1, Landroidx/appcompat/R$drawable;->abc_text_select_handle_right_mtrl:I

    aput v1, v0, v9

    iput-object v0, p0, Landroidx/appcompat/widget/b0;->c:Ljava/lang/Object;

    .line 10
    sget v0, Landroidx/appcompat/R$drawable;->abc_popup_background_mtrl_mult:I

    sget v1, Landroidx/appcompat/R$drawable;->abc_cab_background_internal_bg:I

    sget v2, Landroidx/appcompat/R$drawable;->abc_menu_hardkey_panel_mtrl_mult:I

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/b0;->d:Ljava/io/Serializable;

    .line 11
    sget v0, Landroidx/appcompat/R$drawable;->abc_tab_indicator_material:I

    sget v1, Landroidx/appcompat/R$drawable;->abc_textfield_search_material:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/b0;->e:Ljava/lang/Object;

    .line 12
    sget v0, Landroidx/appcompat/R$drawable;->abc_btn_check_material:I

    sget v1, Landroidx/appcompat/R$drawable;->abc_btn_radio_material:I

    sget v2, Landroidx/appcompat/R$drawable;->abc_btn_check_material_anim:I

    sget v3, Landroidx/appcompat/R$drawable;->abc_btn_radio_material_anim:I

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/b0;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/b0;->b:Ljava/lang/Object;

    const-string v0, "ViewTransitionController"

    .line 3
    iput-object v0, p0, Landroidx/appcompat/widget/b0;->d:Ljava/io/Serializable;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/b0;->f:Ljava/lang/Object;

    .line 5
    iput-object p1, p0, Landroidx/appcompat/widget/b0;->a:Ljava/lang/Object;

    return-void
.end method

.method public static a([II)Z
    .locals 4

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p0, v2

    if-ne v3, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 5

    const/4 v0, 0x4

    new-array v0, v0, [[I

    sget v1, Landroidx/appcompat/R$attr;->colorControlHighlight:I

    invoke-static {p0, v1}, Landroidx/appcompat/widget/q2;->c(Landroid/content/Context;I)I

    move-result v1

    sget v2, Landroidx/appcompat/R$attr;->colorButtonNormal:I

    invoke-static {p0, v2}, Landroidx/appcompat/widget/q2;->b(Landroid/content/Context;I)I

    move-result p0

    sget-object v2, Landroidx/appcompat/widget/q2;->b:[I

    const/4 v3, 0x0

    aput-object v2, v0, v3

    sget-object v2, Landroidx/appcompat/widget/q2;->d:[I

    const/4 v3, 0x1

    aput-object v2, v0, v3

    invoke-static {v1, p1}, Lz/a;->b(II)I

    move-result v2

    sget-object v3, Landroidx/appcompat/widget/q2;->c:[I

    const/4 v4, 0x2

    aput-object v3, v0, v4

    invoke-static {v1, p1}, Lz/a;->b(II)I

    move-result v1

    sget-object v3, Landroidx/appcompat/widget/q2;->f:[I

    const/4 v4, 0x3

    aput-object v3, v0, v4

    filled-new-array {p0, v2, v1, p1}, [I

    move-result-object p0

    new-instance p1, Landroid/content/res/ColorStateList;

    invoke-direct {p1, v0, p0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object p1
.end method

.method public static c(Landroidx/appcompat/widget/r1;Landroid/content/Context;I)Landroid/graphics/drawable/LayerDrawable;
    .locals 4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    sget v0, Landroidx/appcompat/R$drawable;->abc_star_black_48dp:I

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/widget/r1;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget v1, Landroidx/appcompat/R$drawable;->abc_star_half_black_48dp:I

    invoke-virtual {p0, p1, v1}, Landroidx/appcompat/widget/r1;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    instance-of p1, v0, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    if-ne p1, p2, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    if-ne p1, p2, :cond_0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {p1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_0
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p2, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1, v1, p2, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    move-object p1, v2

    :goto_0
    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeX(Landroid/graphics/Shader$TileMode;)V

    instance-of v2, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    if-ne v2, p2, :cond_1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    if-ne v2, p2, :cond_1

    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_1

    :cond_1
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p2, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v1, v1, p2, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    new-instance p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    :goto_1
    new-instance p2, Landroid/graphics/drawable/LayerDrawable;

    const/4 v2, 0x3

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    aput-object v0, v2, v1

    const/4 v0, 0x1

    aput-object p0, v2, v0

    const/4 p0, 0x2

    aput-object p1, v2, p0

    invoke-direct {p2, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    const/high16 p1, 0x1020000

    invoke-virtual {p2, v1, p1}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    const p1, 0x102000f

    invoke-virtual {p2, v0, p1}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    const p1, 0x102000d

    invoke-virtual {p2, p0, p1}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    return-object p2
.end method

.method public static e(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V
    .locals 1

    invoke-static {p0}, Landroidx/appcompat/widget/b1;->a(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    :cond_0
    if-nez p2, :cond_1

    sget-object p2, Landroidx/appcompat/widget/c0;->b:Landroid/graphics/PorterDuff$Mode;

    :cond_1
    invoke-static {p1, p2}, Landroidx/appcompat/widget/c0;->c(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method


# virtual methods
.method public final d(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 5

    sget v0, Landroidx/appcompat/R$drawable;->abc_edit_text_material:I

    if-ne p2, v0, :cond_0

    sget p0, Landroidx/appcompat/R$color;->abc_tint_edittext:I

    invoke-static {p1, p0}, Ly1/l;->g0(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0

    :cond_0
    sget v0, Landroidx/appcompat/R$drawable;->abc_switch_track_mtrl_alpha:I

    if-ne p2, v0, :cond_1

    sget p0, Landroidx/appcompat/R$color;->abc_tint_switch_track:I

    invoke-static {p1, p0}, Ly1/l;->g0(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0

    :cond_1
    sget v0, Landroidx/appcompat/R$drawable;->abc_switch_thumb_material:I

    const/4 v1, 0x0

    if-ne p2, v0, :cond_3

    const/4 p0, 0x3

    new-array p2, p0, [[I

    new-array p0, p0, [I

    sget v0, Landroidx/appcompat/R$attr;->colorSwitchThumbNormal:I

    invoke-static {p1, v0}, Landroidx/appcompat/widget/q2;->d(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Landroidx/appcompat/widget/q2;->b:[I

    aput-object v4, p2, v1

    invoke-virtual {v0, v4, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v4

    aput v4, p0, v1

    sget-object v1, Landroidx/appcompat/widget/q2;->e:[I

    aput-object v1, p2, v3

    sget v1, Landroidx/appcompat/R$attr;->colorControlActivated:I

    invoke-static {p1, v1}, Landroidx/appcompat/widget/q2;->c(Landroid/content/Context;I)I

    move-result p1

    aput p1, p0, v3

    sget-object p1, Landroidx/appcompat/widget/q2;->f:[I

    aput-object p1, p2, v2

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

    aput p1, p0, v2

    goto :goto_0

    :cond_2
    sget-object v0, Landroidx/appcompat/widget/q2;->b:[I

    aput-object v0, p2, v1

    sget v0, Landroidx/appcompat/R$attr;->colorSwitchThumbNormal:I

    invoke-static {p1, v0}, Landroidx/appcompat/widget/q2;->b(Landroid/content/Context;I)I

    move-result v0

    aput v0, p0, v1

    sget-object v0, Landroidx/appcompat/widget/q2;->e:[I

    aput-object v0, p2, v3

    sget v0, Landroidx/appcompat/R$attr;->colorControlActivated:I

    invoke-static {p1, v0}, Landroidx/appcompat/widget/q2;->c(Landroid/content/Context;I)I

    move-result v0

    aput v0, p0, v3

    sget-object v0, Landroidx/appcompat/widget/q2;->f:[I

    aput-object v0, p2, v2

    sget v0, Landroidx/appcompat/R$attr;->colorSwitchThumbNormal:I

    invoke-static {p1, v0}, Landroidx/appcompat/widget/q2;->c(Landroid/content/Context;I)I

    move-result p1

    aput p1, p0, v2

    :goto_0
    new-instance p1, Landroid/content/res/ColorStateList;

    invoke-direct {p1, p2, p0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object p1

    :cond_3
    sget v0, Landroidx/appcompat/R$drawable;->abc_btn_default_mtrl_shape:I

    if-ne p2, v0, :cond_4

    sget p0, Landroidx/appcompat/R$attr;->colorButtonNormal:I

    invoke-static {p1, p0}, Landroidx/appcompat/widget/q2;->c(Landroid/content/Context;I)I

    move-result p0

    invoke-static {p1, p0}, Landroidx/appcompat/widget/b0;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0

    :cond_4
    sget v0, Landroidx/appcompat/R$drawable;->abc_btn_borderless_material:I

    if-ne p2, v0, :cond_5

    invoke-static {p1, v1}, Landroidx/appcompat/widget/b0;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0

    :cond_5
    sget v0, Landroidx/appcompat/R$drawable;->abc_btn_colored_material:I

    if-ne p2, v0, :cond_6

    sget p0, Landroidx/appcompat/R$attr;->colorAccent:I

    invoke-static {p1, p0}, Landroidx/appcompat/widget/q2;->c(Landroid/content/Context;I)I

    move-result p0

    invoke-static {p1, p0}, Landroidx/appcompat/widget/b0;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0

    :cond_6
    sget v0, Landroidx/appcompat/R$drawable;->abc_spinner_mtrl_am_alpha:I

    if-eq p2, v0, :cond_c

    sget v0, Landroidx/appcompat/R$drawable;->abc_spinner_textfield_background_material:I

    if-ne p2, v0, :cond_7

    goto :goto_1

    :cond_7
    iget-object v0, p0, Landroidx/appcompat/widget/b0;->b:Ljava/lang/Object;

    check-cast v0, [I

    invoke-static {v0, p2}, Landroidx/appcompat/widget/b0;->a([II)Z

    move-result v0

    if-eqz v0, :cond_8

    sget p0, Landroidx/appcompat/R$attr;->colorControlNormal:I

    invoke-static {p1, p0}, Landroidx/appcompat/widget/q2;->d(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0

    :cond_8
    iget-object v0, p0, Landroidx/appcompat/widget/b0;->e:Ljava/lang/Object;

    check-cast v0, [I

    invoke-static {v0, p2}, Landroidx/appcompat/widget/b0;->a([II)Z

    move-result v0

    if-eqz v0, :cond_9

    sget p0, Landroidx/appcompat/R$color;->abc_tint_default:I

    invoke-static {p1, p0}, Ly1/l;->g0(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0

    :cond_9
    iget-object p0, p0, Landroidx/appcompat/widget/b0;->f:Ljava/lang/Object;

    check-cast p0, [I

    invoke-static {p0, p2}, Landroidx/appcompat/widget/b0;->a([II)Z

    move-result p0

    if-eqz p0, :cond_a

    sget p0, Landroidx/appcompat/R$color;->abc_tint_btn_checkable:I

    invoke-static {p1, p0}, Ly1/l;->g0(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0

    :cond_a
    sget p0, Landroidx/appcompat/R$drawable;->abc_seekbar_thumb_material:I

    if-ne p2, p0, :cond_b

    sget p0, Landroidx/appcompat/R$color;->abc_tint_seek_thumb:I

    invoke-static {p1, p0}, Ly1/l;->g0(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0

    :cond_c
    :goto_1
    sget p0, Landroidx/appcompat/R$color;->abc_tint_spinner:I

    invoke-static {p1, p0}, Ly1/l;->g0(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method
