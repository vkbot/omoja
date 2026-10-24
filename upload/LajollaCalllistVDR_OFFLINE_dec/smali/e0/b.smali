.class public final Le0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final b:I

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/util/ArrayList;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Le0/b;->a:I

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p2, p1, v0}, Le0/b;-><init>(Ljava/util/List;ILjava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Landroidx/emoji2/text/g;I)V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Le0/b;->a:I

    new-array v0, v0, [Landroidx/emoji2/text/g;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 2
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Le0/b;-><init>(Ljava/util/List;ILjava/lang/Throwable;)V

    return-void

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "initCallback cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;II)V
    .locals 0

    .line 1
    iput p4, p0, Le0/b;->a:I

    iput-object p1, p0, Le0/b;->d:Ljava/lang/Object;

    iput-object p2, p0, Le0/b;->c:Ljava/lang/Object;

    iput p3, p0, Le0/b;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;ILjava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Le0/b;->a:I

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Le0/b;->c:Ljava/lang/Object;

    .line 7
    iput p2, p0, Le0/b;->b:I

    .line 8
    iput-object p3, p0, Le0/b;->d:Ljava/lang/Object;

    return-void

    .line 9
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "initCallbacks cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Le0/b;->a:I

    iget v1, p0, Le0/b;->b:I

    iget-object v2, p0, Le0/b;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x1

    const/4 v3, 0x0

    if-eq v1, v0, :cond_0

    :goto_0
    if-ge v3, p0, :cond_1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/emoji2/text/g;

    invoke-virtual {v0}, Landroidx/emoji2/text/g;->a()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v3, p0, :cond_1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/emoji2/text/g;

    invoke-virtual {v0}, Landroidx/emoji2/text/g;->b()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-void

    :pswitch_1
    check-cast v2, Le0/j;

    check-cast v2, Lz/e;

    iget-object p0, v2, Lz/e;->a:Ly/k;

    if-eqz p0, :cond_2

    invoke-virtual {p0, v1}, Ly/k;->c(I)V

    :cond_2
    return-void

    :goto_2
    iget-object p0, p0, Le0/b;->d:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    check-cast v2, Landroid/view/View;

    invoke-virtual {p0, v2, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->C(Landroid/view/View;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
