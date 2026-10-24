.class public final Landroidx/appcompat/app/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/widget/f;
.implements Lj0/b;
.implements Lt0/d;


# static fields
.field public static e:Landroidx/appcompat/app/d;


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/location/LocationManager;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Landroidx/appcompat/app/d;->a:I

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Landroidx/appcompat/app/h0;

    invoke-direct {v0}, Landroidx/appcompat/app/h0;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/app/d;->d:Ljava/lang/Object;

    .line 10
    iput-object p1, p0, Landroidx/appcompat/app/d;->b:Ljava/lang/Object;

    .line 11
    iput-object p2, p0, Landroidx/appcompat/app/d;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/widget/v2;)V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, Landroidx/appcompat/app/d;->a:I

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/app/d;->c:Ljava/lang/Object;

    .line 6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/app/d;->d:Ljava/lang/Object;

    .line 7
    iput-object p1, p0, Landroidx/appcompat/app/d;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Landroidx/viewpager2/widget/d;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    const/16 v0, 0x8

    .line 1
    iput v0, p0, Landroidx/appcompat/app/d;->a:I

    iput-object p1, p0, Landroidx/appcompat/app/d;->b:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/appcompat/app/d;->c:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/appcompat/app/d;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ll/h;Ll/h;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Landroidx/appcompat/app/d;->a:I

    .line 2
    iput-object p1, p0, Landroidx/appcompat/app/d;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Landroidx/appcompat/app/d;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ln/g;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Landroidx/appcompat/app/d;->a:I

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/app/d;->b:Ljava/lang/Object;

    .line 14
    new-instance v0, Lo/b;

    invoke-direct {v0}, Lo/b;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/app/d;->c:Ljava/lang/Object;

    .line 15
    iput-object p1, p0, Landroidx/appcompat/app/d;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(ILn/f;Lo/h;)Z
    .locals 5

    iget-object p0, p0, Landroidx/appcompat/app/d;->c:Ljava/lang/Object;

    check-cast p0, Lo/b;

    iget-object v0, p2, Ln/f;->U:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    iput-object v2, p0, Lo/b;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    iput-object v0, p0, Lo/b;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p2}, Ln/f;->s()I

    move-result v0

    iput v0, p0, Lo/b;->c:I

    invoke-virtual {p2}, Ln/f;->m()I

    move-result v0

    iput v0, p0, Lo/b;->d:I

    iput-boolean v1, p0, Lo/b;->i:Z

    iput p1, p0, Lo/b;->j:I

    iget-object p1, p0, Lo/b;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne p1, v0, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    iget-object v3, p0, Lo/b;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    const/4 v3, 0x0

    if-eqz p1, :cond_2

    iget p1, p2, Ln/f;->Y:F

    cmpl-float p1, p1, v3

    if-lez p1, :cond_2

    move p1, v2

    goto :goto_2

    :cond_2
    move p1, v1

    :goto_2
    if-eqz v0, :cond_3

    iget v0, p2, Ln/f;->Y:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_3

    move v0, v2

    goto :goto_3

    :cond_3
    move v0, v1

    :goto_3
    const/4 v3, 0x4

    iget-object v4, p2, Ln/f;->t:[I

    if-eqz p1, :cond_4

    aget p1, v4, v1

    if-ne p1, v3, :cond_4

    sget-object p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object p1, p0, Lo/b;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    :cond_4
    if-eqz v0, :cond_5

    aget p1, v4, v2

    if-ne p1, v3, :cond_5

    sget-object p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object p1, p0, Lo/b;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    :cond_5
    invoke-virtual {p3, p2, p0}, Lo/h;->b(Ln/f;Lo/b;)V

    iget p1, p0, Lo/b;->e:I

    invoke-virtual {p2, p1}, Ln/f;->P(I)V

    iget p1, p0, Lo/b;->f:I

    invoke-virtual {p2, p1}, Ln/f;->M(I)V

    iget-boolean p1, p0, Lo/b;->h:Z

    iput-boolean p1, p2, Ln/f;->E:Z

    iget p1, p0, Lo/b;->g:I

    iput p1, p2, Ln/f;->c0:I

    if-lez p1, :cond_6

    goto :goto_4

    :cond_6
    move v2, v1

    :goto_4
    iput-boolean v2, p2, Ln/f;->E:Z

    iput v1, p0, Lo/b;->j:I

    iget-boolean p0, p0, Lo/b;->i:Z

    return p0
.end method

.method public final b(Ln/g;III)V
    .locals 3

    iget v0, p1, Ln/f;->d0:I

    iget v1, p1, Ln/f;->e0:I

    const/4 v2, 0x0

    iput v2, p1, Ln/f;->d0:I

    iput v2, p1, Ln/f;->e0:I

    invoke-virtual {p1, p3}, Ln/f;->P(I)V

    invoke-virtual {p1, p4}, Ln/f;->M(I)V

    if-gez v0, :cond_0

    iput v2, p1, Ln/f;->d0:I

    goto :goto_0

    :cond_0
    iput v0, p1, Ln/f;->d0:I

    :goto_0
    if-gez v1, :cond_1

    iput v2, p1, Ln/f;->e0:I

    goto :goto_1

    :cond_1
    iput v1, p1, Ln/f;->e0:I

    :goto_1
    iget-object p0, p0, Landroidx/appcompat/app/d;->d:Ljava/lang/Object;

    check-cast p0, Ln/g;

    iput p2, p0, Ln/g;->x0:I

    invoke-virtual {p0}, Ln/g;->S()V

    return-void
.end method

.method public final c()V
    .locals 0

    return-void
.end method

.method public final create(Lt0/c;)Lt0/e;
    .locals 7

    new-instance v6, Landroidx/room/x;

    iget-object v1, p1, Lt0/c;->a:Landroid/content/Context;

    iget-object v0, p0, Landroidx/appcompat/app/d;->b:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    iget-object v0, p0, Landroidx/appcompat/app/d;->c:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Ljava/io/File;

    iget-object v0, p1, Lt0/c;->c:Lt0/b;

    iget v4, v0, Lt0/b;->a:I

    iget-object p0, p0, Landroidx/appcompat/app/d;->d:Ljava/lang/Object;

    check-cast p0, Lt0/d;

    invoke-interface {p0, p1}, Lt0/d;->create(Lt0/c;)Lt0/e;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroidx/room/x;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;ILt0/e;)V

    return-object v6
.end method

.method public final d(Ln/g;)V
    .locals 8

    iget-object v0, p0, Landroidx/appcompat/app/d;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p1, Ln/p;->u0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_2

    iget-object v4, p1, Ln/p;->u0:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ln/f;

    iget-object v5, v4, Ln/f;->U:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v6, v5, v1

    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v6, v7, :cond_0

    aget-object v3, v5, v3

    if-ne v3, v7, :cond_1

    :cond_0
    iget-object v3, p0, Landroidx/appcompat/app/d;->b:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object p0, p1, Ln/g;->w0:Lo/e;

    iput-boolean v3, p0, Lo/e;->b:Z

    return-void
.end method

.method public final h()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/app/d;->d:Ljava/lang/Object;

    check-cast p0, Landroid/net/Uri;

    return-object p0
.end method

.method public final n()Landroid/content/ClipDescription;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/app/d;->c:Ljava/lang/Object;

    check-cast p0, Landroid/content/ClipDescription;

    return-object p0
.end method

.method public final r(Landroidx/core/widget/NestedScrollView;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/d;->b:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    iget-object p0, p0, Landroidx/appcompat/app/d;->c:Ljava/lang/Object;

    check-cast p0, Landroid/view/View;

    invoke-static {p1, v0, p0}, Landroidx/appcompat/app/i;->b(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public final s()Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final t()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/app/d;->b:Ljava/lang/Object;

    check-cast p0, Landroid/net/Uri;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Landroidx/appcompat/app/d;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object v0, p0, Landroidx/appcompat/app/d;->b:Ljava/lang/Object;

    check-cast v0, Ll/i;

    const-string v1, "[ "

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0x9

    if-ge v0, v2, :cond_0

    invoke-static {v1}, La/a;->h(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroidx/appcompat/app/d;->b:Ljava/lang/Object;

    check-cast v2, Ll/i;

    iget-object v2, v2, Ll/i;->h:[F

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

    iget-object p0, p0, Landroidx/appcompat/app/d;->b:Ljava/lang/Object;

    check-cast p0, Ll/i;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
