.class public final Ld0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final c:I

.field public final d:Ljava/lang/Object;

.field public final e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/util/ArrayList;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Ld0/b;->b:I

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p2, p1, v0}, Ld0/b;-><init>(Ljava/util/List;ILjava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Landroidx/emoji2/text/j;I)V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Ld0/b;->b:I

    new-array v0, v0, [Landroidx/emoji2/text/j;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 2
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ld0/b;-><init>(Ljava/util/List;ILjava/lang/Throwable;)V

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "initCallback cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;II)V
    .locals 0

    .line 1
    iput p4, p0, Ld0/b;->b:I

    iput-object p1, p0, Ld0/b;->e:Ljava/lang/Object;

    iput-object p2, p0, Ld0/b;->d:Ljava/lang/Object;

    iput p3, p0, Ld0/b;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;ILjava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Ld0/b;->b:I

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Ld0/b;->d:Ljava/lang/Object;

    .line 7
    iput p2, p0, Ld0/b;->c:I

    .line 8
    iput-object p3, p0, Ld0/b;->e:Ljava/lang/Object;

    return-void

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "initCallbacks cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Ld0/b;->b:I

    iget v1, p0, Ld0/b;->c:I

    iget-object v2, p0, Ld0/b;->d:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v3, :cond_0

    :goto_0
    if-ge v4, v0, :cond_1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/emoji2/text/j;

    invoke-virtual {v1}, Landroidx/emoji2/text/j;->a()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v4, v0, :cond_1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/emoji2/text/j;

    invoke-virtual {v1}, Landroidx/emoji2/text/j;->b()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    return-void

    :pswitch_1
    check-cast v2, Ld0/j;

    check-cast v2, Ly/e;

    iget-object v0, v2, Ly/e;->a:Lx/k;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Lx/k;->c(I)V

    :cond_2
    return-void

    :goto_2
    iget-object v0, p0, Ld0/b;->e:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    check-cast v2, Landroid/view/View;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->C(Landroid/view/View;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
