.class public final synthetic Le1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic a:Le1/c;

.field public final synthetic b:Landroid/widget/ScrollView;


# direct methods
.method public synthetic constructor <init>(Le1/c;Landroid/widget/ScrollView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le1/b;->a:Le1/c;

    iput-object p2, p0, Le1/b;->b:Landroid/widget/ScrollView;

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 5

    iget-object v0, p0, Le1/b;->a:Le1/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object p0, p0, Le1/b;->b:Landroid/widget/ScrollView;

    invoke-virtual {p0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v2, v0, Le1/c;->j:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-ge v2, v1, :cond_0

    iput v1, v0, Le1/c;->j:I

    :cond_0
    iget v2, v0, Le1/c;->k:I

    if-le v2, v1, :cond_1

    iput v1, v0, Le1/c;->k:I

    :cond_1
    iget v2, v0, Le1/c;->k:I

    iget v0, v0, Le1/c;->j:I

    if-ne v2, v0, :cond_2

    goto :goto_0

    :cond_2
    const-wide/16 v3, 0x64

    if-ne v1, v2, :cond_3

    new-instance v0, Ls0/b;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Ls0/b;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v0, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_3
    if-ne v1, v0, :cond_4

    new-instance v0, Lf/c;

    const/4 v1, 0x7

    invoke-direct {v0, v1, p0}, Lf/c;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v0, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    :goto_0
    return-void
.end method
