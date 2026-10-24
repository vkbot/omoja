.class public final Landroidx/appcompat/app/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/widget/g;
.implements Li0/c;
.implements Ls0/d;


# static fields
.field public static f:Landroidx/appcompat/app/d;


# instance fields
.field public final synthetic b:I

.field public c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;

.field public final e:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 6

    const/4 v0, 0x2

    iput v0, p0, Landroidx/appcompat/app/d;->b:I

    .line 16
    const-class v0, Landroid/widget/AutoCompleteTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    .line 17
    iput-object v1, p0, Landroidx/appcompat/app/d;->c:Ljava/lang/Object;

    .line 18
    iput-object v1, p0, Landroidx/appcompat/app/d;->d:Ljava/lang/Object;

    .line 19
    iput-object v1, p0, Landroidx/appcompat/app/d;->e:Ljava/lang/Object;

    .line 20
    invoke-static {}, Landroidx/appcompat/app/d;->b()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    const-string v3, "doBeforeTextChanged"

    new-array v4, v1, [Ljava/lang/Class;

    .line 21
    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Landroidx/appcompat/app/d;->c:Ljava/lang/Object;

    .line 22
    invoke-virtual {v3, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    const-string v3, "doAfterTextChanged"

    new-array v4, v1, [Ljava/lang/Class;

    .line 23
    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Landroidx/appcompat/app/d;->d:Ljava/lang/Object;

    .line 24
    invoke-virtual {v3, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    const-string v3, "ensureImeVisible"

    new-array v4, v2, [Ljava/lang/Class;

    .line 25
    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    .line 26
    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/app/d;->e:Ljava/lang/Object;

    .line 27
    invoke-virtual {v0, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/location/LocationManager;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Landroidx/appcompat/app/d;->b:I

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Landroidx/appcompat/app/h0;

    invoke-direct {v0}, Landroidx/appcompat/app/h0;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/app/d;->e:Ljava/lang/Object;

    .line 10
    iput-object p1, p0, Landroidx/appcompat/app/d;->c:Ljava/lang/Object;

    .line 11
    iput-object p2, p0, Landroidx/appcompat/app/d;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/widget/y2;)V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, Landroidx/appcompat/app/d;->b:I

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/app/d;->d:Ljava/lang/Object;

    .line 6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/app/d;->e:Ljava/lang/Object;

    .line 7
    iput-object p1, p0, Landroidx/appcompat/app/d;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Landroidx/viewpager2/widget/d;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    const/16 v0, 0x8

    .line 1
    iput v0, p0, Landroidx/appcompat/app/d;->b:I

    iput-object p1, p0, Landroidx/appcompat/app/d;->c:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/appcompat/app/d;->d:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/appcompat/app/d;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lk/h;Lk/h;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Landroidx/appcompat/app/d;->b:I

    .line 2
    iput-object p1, p0, Landroidx/appcompat/app/d;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Landroidx/appcompat/app/d;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lm/g;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Landroidx/appcompat/app/d;->b:I

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/app/d;->c:Ljava/lang/Object;

    .line 14
    new-instance v0, Ln/b;

    invoke-direct {v0}, Ln/b;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/app/d;->d:Ljava/lang/Object;

    .line 15
    iput-object p1, p0, Landroidx/appcompat/app/d;->e:Ljava/lang/Object;

    return-void
.end method

.method public static b()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedClassVersionError;

    const-string v1, "This function can only be used for API Level < 29."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedClassVersionError;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a(ILm/f;Ln/h;)Z
    .locals 6

    iget-object v0, p0, Landroidx/appcompat/app/d;->d:Ljava/lang/Object;

    check-cast v0, Ln/b;

    iget-object v1, p2, Lm/f;->U:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v2, 0x0

    aget-object v3, v1, v2

    iput-object v3, v0, Ln/b;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v3, 0x1

    aget-object v1, v1, v3

    iput-object v1, v0, Ln/b;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p2}, Lm/f;->s()I

    move-result v1

    iput v1, v0, Ln/b;->c:I

    invoke-virtual {p2}, Lm/f;->m()I

    move-result v1

    iput v1, v0, Ln/b;->d:I

    iput-boolean v2, v0, Ln/b;->i:Z

    iput p1, v0, Ln/b;->j:I

    iget-object p1, v0, Ln/b;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne p1, v1, :cond_0

    move p1, v3

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    iget-object v4, v0, Ln/b;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    const/4 v4, 0x0

    if-eqz p1, :cond_2

    iget p1, p2, Lm/f;->Y:F

    cmpl-float p1, p1, v4

    if-lez p1, :cond_2

    move p1, v3

    goto :goto_2

    :cond_2
    move p1, v2

    :goto_2
    if-eqz v1, :cond_3

    iget v1, p2, Lm/f;->Y:F

    cmpl-float v1, v1, v4

    if-lez v1, :cond_3

    move v1, v3

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    const/4 v4, 0x4

    iget-object v5, p2, Lm/f;->t:[I

    if-eqz p1, :cond_4

    aget p1, v5, v2

    if-ne p1, v4, :cond_4

    sget-object p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object p1, v0, Ln/b;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    :cond_4
    if-eqz v1, :cond_5

    aget p1, v5, v3

    if-ne p1, v4, :cond_5

    sget-object p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object p1, v0, Ln/b;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    :cond_5
    invoke-virtual {p3, p2, v0}, Ln/h;->b(Lm/f;Ln/b;)V

    iget p1, v0, Ln/b;->e:I

    invoke-virtual {p2, p1}, Lm/f;->P(I)V

    iget p1, v0, Ln/b;->f:I

    invoke-virtual {p2, p1}, Lm/f;->M(I)V

    iget-boolean p1, v0, Ln/b;->h:Z

    iput-boolean p1, p2, Lm/f;->E:Z

    iget p1, v0, Ln/b;->g:I

    iput p1, p2, Lm/f;->c0:I

    if-lez p1, :cond_6

    goto :goto_4

    :cond_6
    move v3, v2

    :goto_4
    iput-boolean v3, p2, Lm/f;->E:Z

    iput v2, v0, Ln/b;->j:I

    iget-boolean p1, v0, Ln/b;->i:Z

    return p1
.end method

.method public final c()V
    .locals 0

    return-void
.end method

.method public final create(Ls0/c;)Ls0/e;
    .locals 7

    new-instance v6, Landroidx/room/x;

    iget-object v1, p1, Ls0/c;->a:Landroid/content/Context;

    iget-object v0, p0, Landroidx/appcompat/app/d;->c:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    iget-object v0, p0, Landroidx/appcompat/app/d;->d:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Ljava/io/File;

    iget-object v0, p1, Ls0/c;->c:Ls0/b;

    iget v4, v0, Ls0/b;->a:I

    iget-object v0, p0, Landroidx/appcompat/app/d;->e:Ljava/lang/Object;

    check-cast v0, Ls0/d;

    invoke-interface {v0, p1}, Ls0/d;->create(Ls0/c;)Ls0/e;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroidx/room/x;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;ILs0/e;)V

    return-object v6
.end method

.method public final d(Lm/g;III)V
    .locals 3

    iget v0, p1, Lm/f;->d0:I

    iget v1, p1, Lm/f;->e0:I

    const/4 v2, 0x0

    iput v2, p1, Lm/f;->d0:I

    iput v2, p1, Lm/f;->e0:I

    invoke-virtual {p1, p3}, Lm/f;->P(I)V

    invoke-virtual {p1, p4}, Lm/f;->M(I)V

    if-gez v0, :cond_0

    iput v2, p1, Lm/f;->d0:I

    goto :goto_0

    :cond_0
    iput v0, p1, Lm/f;->d0:I

    :goto_0
    if-gez v1, :cond_1

    iput v2, p1, Lm/f;->e0:I

    goto :goto_1

    :cond_1
    iput v1, p1, Lm/f;->e0:I

    :goto_1
    iget-object p1, p0, Landroidx/appcompat/app/d;->e:Ljava/lang/Object;

    check-cast p1, Lm/g;

    iput p2, p1, Lm/g;->x0:I

    invoke-virtual {p1}, Lm/g;->S()V

    return-void
.end method

.method public final e(Lm/g;)V
    .locals 8

    iget-object v0, p0, Landroidx/appcompat/app/d;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p1, Lm/p;->u0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_2

    iget-object v4, p1, Lm/p;->u0:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lm/f;

    iget-object v5, v4, Lm/f;->U:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v6, v5, v1

    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v6, v7, :cond_0

    aget-object v3, v5, v3

    if-ne v3, v7, :cond_1

    :cond_0
    iget-object v3, p0, Landroidx/appcompat/app/d;->c:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p1, Lm/g;->w0:Ln/e;

    iput-boolean v3, p1, Ln/e;->b:Z

    return-void
.end method

.method public final h()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/d;->e:Ljava/lang/Object;

    check-cast v0, Landroid/net/Uri;

    return-object v0
.end method

.method public final n()Landroid/content/ClipDescription;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/d;->d:Ljava/lang/Object;

    check-cast v0, Landroid/content/ClipDescription;

    return-object v0
.end method

.method public final q(Landroidx/core/widget/NestedScrollView;)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/app/d;->c:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Landroidx/appcompat/app/d;->d:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    invoke-static {p1, v0, v1}, Landroidx/appcompat/app/i;->b(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public final r()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final s()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/d;->c:Ljava/lang/Object;

    check-cast v0, Landroid/net/Uri;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Landroidx/appcompat/app/d;->b:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Landroidx/appcompat/app/d;->c:Ljava/lang/Object;

    check-cast v0, Lk/i;

    const-string v1, "[ "

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0x9

    if-ge v0, v2, :cond_0

    invoke-static {v1}, Landroidx/activity/b;->g(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroidx/appcompat/app/d;->c:Ljava/lang/Object;

    check-cast v2, Lk/i;

    iget-object v2, v2, Lk/i;->i:[F

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/appcompat/app/d;->c:Ljava/lang/Object;

    check-cast v1, Lk/i;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
