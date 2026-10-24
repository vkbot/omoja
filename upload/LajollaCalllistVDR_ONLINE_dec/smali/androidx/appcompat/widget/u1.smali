.class public final Landroidx/appcompat/widget/u1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final f:Landroid/graphics/PorterDuff$Mode;

.field public static g:Landroidx/appcompat/widget/u1;

.field public static final h:Landroidx/appcompat/widget/s1;


# instance fields
.field public a:Ljava/util/WeakHashMap;

.field public final b:Ljava/util/WeakHashMap;

.field public c:Landroid/util/TypedValue;

.field public d:Z

.field public e:Landroidx/appcompat/widget/t1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, Landroidx/appcompat/widget/u1;->f:Landroid/graphics/PorterDuff$Mode;

    new-instance v0, Landroidx/appcompat/widget/s1;

    invoke-direct {v0}, Landroidx/appcompat/widget/s1;-><init>()V

    sput-object v0, Landroidx/appcompat/widget/u1;->h:Landroidx/appcompat/widget/s1;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    iput-object v0, p0, Landroidx/appcompat/widget/u1;->b:Ljava/util/WeakHashMap;

    return-void
.end method

.method public static declared-synchronized c()Landroidx/appcompat/widget/u1;
    .locals 2

    const-class v0, Landroidx/appcompat/widget/u1;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroidx/appcompat/widget/u1;->g:Landroidx/appcompat/widget/u1;

    if-nez v1, :cond_0

    new-instance v1, Landroidx/appcompat/widget/u1;

    invoke-direct {v1}, Landroidx/appcompat/widget/u1;-><init>()V

    sput-object v1, Landroidx/appcompat/widget/u1;->g:Landroidx/appcompat/widget/u1;

    :cond_0
    sget-object v1, Landroidx/appcompat/widget/u1;->g:Landroidx/appcompat/widget/u1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized g(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 4

    const-class v0, Landroidx/appcompat/widget/u1;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroidx/appcompat/widget/u1;->h:Landroidx/appcompat/widget/s1;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v2, p0, 0x1f

    mul-int/lit8 v2, v2, 0x1f

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lj/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PorterDuffColorFilter;

    if-nez v3, :cond_0

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v3, p0, p1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, p0, v3}, Lj/e;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/PorterDuffColorFilter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-object v3

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/content/Context;JLandroid/graphics/drawable/Drawable;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p4

    if-eqz p4, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/u1;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj/d;

    if-nez v0, :cond_0

    new-instance v0, Lj/d;

    invoke-direct {v0}, Lj/d;-><init>()V

    iget-object v1, p0, Landroidx/appcompat/widget/u1;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p2, p3, p1}, Lj/d;->e(JLjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 7

    iget-object v0, p0, Landroidx/appcompat/widget/u1;->c:Landroid/util/TypedValue;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/u1;->c:Landroid/util/TypedValue;

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/u1;->c:Landroid/util/TypedValue;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p2, v0, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    iget v1, v0, Landroid/util/TypedValue;->assetCookie:I

    int-to-long v3, v1

    const/16 v1, 0x20

    shl-long/2addr v3, v1

    iget v1, v0, Landroid/util/TypedValue;->data:I

    int-to-long v5, v1

    or-long/2addr v3, v5

    invoke-virtual {p0, p1, v3, v4}, Landroidx/appcompat/widget/u1;->d(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    iget-object v1, p0, Landroidx/appcompat/widget/u1;->e:Landroidx/appcompat/widget/t1;

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    sget v1, Landroidx/appcompat/R$drawable;->abc_cab_background_top_material:I

    if-ne p2, v1, :cond_3

    new-instance p2, Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    sget v5, Landroidx/appcompat/R$drawable;->abc_cab_background_internal_bg:I

    invoke-virtual {p0, p1, v5}, Landroidx/appcompat/widget/u1;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v1, v6

    sget v5, Landroidx/appcompat/R$drawable;->abc_cab_background_top_mtrl_alpha:I

    invoke-virtual {p0, p1, v5}, Landroidx/appcompat/widget/u1;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-direct {p2, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_3
    sget v1, Landroidx/appcompat/R$drawable;->abc_ratingbar_material:I

    if-ne p2, v1, :cond_4

    sget p2, Landroidx/appcompat/R$dimen;->abc_star_big:I

    invoke-static {p0, p1, p2}, Landroidx/appcompat/widget/b0;->c(Landroidx/appcompat/widget/u1;Landroid/content/Context;I)Landroid/graphics/drawable/LayerDrawable;

    move-result-object p2

    goto :goto_1

    :cond_4
    sget v1, Landroidx/appcompat/R$drawable;->abc_ratingbar_indicator_material:I

    if-ne p2, v1, :cond_5

    sget p2, Landroidx/appcompat/R$dimen;->abc_star_medium:I

    invoke-static {p0, p1, p2}, Landroidx/appcompat/widget/b0;->c(Landroidx/appcompat/widget/u1;Landroid/content/Context;I)Landroid/graphics/drawable/LayerDrawable;

    move-result-object p2

    goto :goto_1

    :cond_5
    sget v1, Landroidx/appcompat/R$drawable;->abc_ratingbar_small_material:I

    if-ne p2, v1, :cond_6

    sget p2, Landroidx/appcompat/R$dimen;->abc_star_small:I

    invoke-static {p0, p1, p2}, Landroidx/appcompat/widget/b0;->c(Landroidx/appcompat/widget/u1;Landroid/content/Context;I)Landroid/graphics/drawable/LayerDrawable;

    move-result-object p2

    goto :goto_1

    :cond_6
    :goto_0
    const/4 p2, 0x0

    :goto_1
    if-eqz p2, :cond_7

    iget v0, v0, Landroid/util/TypedValue;->changingConfigurations:I

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    invoke-virtual {p0, p1, v3, v4, p2}, Landroidx/appcompat/widget/u1;->a(Landroid/content/Context;JLandroid/graphics/drawable/Drawable;)V

    :cond_7
    return-object p2
.end method

.method public final declared-synchronized d(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/widget/u1;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    invoke-virtual {v0, p2, p3, v1}, Lj/d;->d(JLjava/lang/Long;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable$ConstantState;

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_1
    :try_start_2
    iget-object p1, v0, Lj/d;->c:[J

    iget v2, v0, Lj/d;->e:I

    invoke-static {p1, v2, p2, p3}, Lcom/google/android/material/slider/h;->p([JIJ)I

    move-result p1

    if-ltz p1, :cond_2

    iget-object p2, v0, Lj/d;->d:[Ljava/lang/Object;

    aget-object p3, p2, p1

    sget-object v2, Lj/d;->f:Ljava/lang/Object;

    if-eq p3, v2, :cond_2

    aput-object v2, p2, p1

    const/4 p1, 0x1

    iput-boolean p1, v0, Lj/d;->b:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Landroidx/appcompat/widget/u1;->f(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized f(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;
    .locals 9

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroidx/appcompat/widget/u1;->d:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iput-boolean v2, p0, Landroidx/appcompat/widget/u1;->d:Z

    sget v0, Landroidx/appcompat/resources/R$drawable;->abc_vector_test:I

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/widget/u1;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_e

    instance-of v3, v0, Lx0/n;

    if-nez v3, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "android.graphics.drawable.VectorDrawable"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v2

    :goto_1
    if-eqz v0, :cond_e

    :goto_2
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/u1;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_3

    sget-object v0, Lw/f;->a:Ljava/lang/Object;

    invoke-static {p1, p2}, Lw/c;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_3
    if-eqz v0, :cond_c

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/u1;->h(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_7

    invoke-static {v0}, Landroidx/appcompat/widget/e1;->a(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_4
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    iget-object p1, p0, Landroidx/appcompat/widget/u1;->e:Landroidx/appcompat/widget/t1;

    if-nez p1, :cond_5

    goto :goto_3

    :cond_5
    sget p1, Landroidx/appcompat/R$drawable;->abc_switch_thumb_material:I

    if-ne p2, p1, :cond_6

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    :cond_6
    :goto_3
    if-eqz v4, :cond_c

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_5

    :catchall_0
    move-exception p1

    goto/16 :goto_6

    :cond_7
    iget-object v3, p0, Landroidx/appcompat/widget/u1;->e:Landroidx/appcompat/widget/t1;

    if-eqz v3, :cond_b

    sget v3, Landroidx/appcompat/R$drawable;->abc_seekbar_track_material:I

    const v5, 0x102000d

    const v6, 0x102000f

    const/high16 v7, 0x1020000

    if-ne p2, v3, :cond_8

    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v1, v7}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    sget v7, Landroidx/appcompat/R$attr;->colorControlNormal:I

    invoke-static {p1, v7}, Landroidx/appcompat/widget/t2;->c(Landroid/content/Context;I)I

    move-result v7

    sget-object v8, Landroidx/appcompat/widget/c0;->b:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v3, v7, v8}, Landroidx/appcompat/widget/b0;->e(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v6}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    sget v6, Landroidx/appcompat/R$attr;->colorControlNormal:I

    invoke-static {p1, v6}, Landroidx/appcompat/widget/t2;->c(Landroid/content/Context;I)I

    move-result v6

    invoke-static {v3, v6, v8}, Landroidx/appcompat/widget/b0;->e(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget v3, Landroidx/appcompat/R$attr;->colorControlActivated:I

    invoke-static {p1, v3}, Landroidx/appcompat/widget/t2;->c(Landroid/content/Context;I)I

    move-result v3

    invoke-static {v1, v3, v8}, Landroidx/appcompat/widget/b0;->e(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_4

    :cond_8
    sget v3, Landroidx/appcompat/R$drawable;->abc_ratingbar_material:I

    if-eq p2, v3, :cond_9

    sget v3, Landroidx/appcompat/R$drawable;->abc_ratingbar_indicator_material:I

    if-eq p2, v3, :cond_9

    sget v3, Landroidx/appcompat/R$drawable;->abc_ratingbar_small_material:I

    if-ne p2, v3, :cond_a

    :cond_9
    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v1, v7}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    sget v7, Landroidx/appcompat/R$attr;->colorControlNormal:I

    invoke-static {p1, v7}, Landroidx/appcompat/widget/t2;->b(Landroid/content/Context;I)I

    move-result v7

    sget-object v8, Landroidx/appcompat/widget/c0;->b:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v3, v7, v8}, Landroidx/appcompat/widget/b0;->e(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v6}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    sget v6, Landroidx/appcompat/R$attr;->colorControlActivated:I

    invoke-static {p1, v6}, Landroidx/appcompat/widget/t2;->c(Landroid/content/Context;I)I

    move-result v6

    invoke-static {v3, v6, v8}, Landroidx/appcompat/widget/b0;->e(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget v3, Landroidx/appcompat/R$attr;->colorControlActivated:I

    invoke-static {p1, v3}, Landroidx/appcompat/widget/t2;->c(Landroid/content/Context;I)I

    move-result v3

    invoke-static {v1, v3, v8}, Landroidx/appcompat/widget/b0;->e(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    :goto_4
    move v1, v2

    :cond_a
    if-eqz v1, :cond_b

    goto :goto_5

    :cond_b
    invoke-virtual {p0, p1, p2, v0}, Landroidx/appcompat/widget/u1;->i(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-nez p1, :cond_c

    if-eqz p3, :cond_c

    move-object v0, v4

    :cond_c
    :goto_5
    if-eqz v0, :cond_d

    invoke-static {v0}, Landroidx/appcompat/widget/e1;->b(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_d
    monitor-exit p0

    return-object v0

    :cond_e
    :try_start_1
    iput-boolean v1, p0, Landroidx/appcompat/widget/u1;->d:Z

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This app has been built with an incorrect configuration. Please configure your build for VectorDrawableCompat."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_6
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized h(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/widget/u1;->a:Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj/k;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2, v1}, Lj/k;->c(ILjava/lang/Integer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/ColorStateList;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_5

    iget-object v0, p0, Landroidx/appcompat/widget/u1;->e:Landroidx/appcompat/widget/t1;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    check-cast v0, Landroidx/appcompat/widget/b0;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/b0;->d(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_4

    iget-object v0, p0, Landroidx/appcompat/widget/u1;->a:Ljava/util/WeakHashMap;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/u1;->a:Ljava/util/WeakHashMap;

    :cond_2
    iget-object v0, p0, Landroidx/appcompat/widget/u1;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj/k;

    if-nez v0, :cond_3

    new-instance v0, Lj/k;

    invoke-direct {v0}, Lj/k;-><init>()V

    iget-object v2, p0, Landroidx/appcompat/widget/u1;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-virtual {v0, p2, v1}, Lj/k;->a(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    move-object v0, v1

    :cond_5
    monitor-exit p0

    return-object v0

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public final i(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z
    .locals 6

    iget-object v0, p0, Landroidx/appcompat/widget/u1;->e:Landroidx/appcompat/widget/t1;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    check-cast v0, Landroidx/appcompat/widget/b0;

    sget-object v2, Landroidx/appcompat/widget/c0;->b:Landroid/graphics/PorterDuff$Mode;

    iget-object v3, v0, Landroidx/appcompat/widget/b0;->a:Ljava/lang/Object;

    check-cast v3, [I

    invoke-static {v3, p2}, Landroidx/appcompat/widget/b0;->a([II)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, -0x1

    if-eqz v3, :cond_0

    sget p2, Landroidx/appcompat/R$attr;->colorControlNormal:I

    goto :goto_1

    :cond_0
    iget-object v3, v0, Landroidx/appcompat/widget/b0;->c:Ljava/lang/Object;

    check-cast v3, [I

    invoke-static {v3, p2}, Landroidx/appcompat/widget/b0;->a([II)Z

    move-result v3

    if-eqz v3, :cond_1

    sget p2, Landroidx/appcompat/R$attr;->colorControlActivated:I

    goto :goto_1

    :cond_1
    iget-object v0, v0, Landroidx/appcompat/widget/b0;->d:Ljava/io/Serializable;

    check-cast v0, [I

    invoke-static {v0, p2}, Landroidx/appcompat/widget/b0;->a([II)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_2
    sget v0, Landroidx/appcompat/R$drawable;->abc_list_divider_mtrl_alpha:I

    if-ne p2, v0, :cond_3

    const p2, 0x42233333    # 40.8f

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    const v0, 0x1010030

    move-object v3, v2

    move v2, v0

    move v0, p2

    move p2, v4

    goto :goto_3

    :cond_3
    sget v0, Landroidx/appcompat/R$drawable;->abc_dialog_material_background:I

    if-ne p2, v0, :cond_4

    :goto_0
    const p2, 0x1010031

    :goto_1
    move v0, p2

    move p2, v4

    goto :goto_2

    :cond_4
    move p2, v1

    move v0, p2

    :goto_2
    move-object v3, v2

    move v2, v0

    move v0, v5

    :goto_3
    if-eqz p2, :cond_7

    invoke-static {p3}, Landroidx/appcompat/widget/e1;->a(Landroid/graphics/drawable/Drawable;)Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    :cond_5
    invoke-static {p1, v2}, Landroidx/appcompat/widget/t2;->c(Landroid/content/Context;I)I

    move-result p1

    invoke-static {p1, v3}, Landroidx/appcompat/widget/c0;->c(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    if-eq v0, v5, :cond_6

    invoke-virtual {p3, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_6
    move p1, v4

    goto :goto_4

    :cond_7
    move p1, v1

    :goto_4
    if-eqz p1, :cond_8

    move v1, v4

    :cond_8
    return v1
.end method
