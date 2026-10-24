.class public Lcom/mega/engineeringmode/function/presskey/KeyBtn;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mega/engineeringmode/function/presskey/KeyBtn$b;
    }
.end annotation


# instance fields
.field public final a:Landroid/widget/ImageButton;

.field public final b:Landroid/widget/ImageView;

.field public c:Lcom/mega/engineeringmode/function/presskey/KeyBtn$b;

.field public d:Lcom/mega/engineeringmode/function/presskey/KeyBtn$b;

.field public e:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object v1, Ld1/c;->b:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    invoke-virtual {p2, v0, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0d008e

    invoke-virtual {p1, p2, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a01f9

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Lcom/mega/engineeringmode/function/presskey/KeyBtn;->a:Landroid/widget/ImageButton;

    const v2, 0x7f0a01fa

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/presskey/KeyBtn;->b:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method


# virtual methods
.method public final onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/presskey/KeyBtn;->e:Ljava/util/Timer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mega/engineeringmode/function/presskey/KeyBtn;->e:Ljava/util/Timer;

    :cond_0
    return-void
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const-string/jumbo p2, "onTouch  "

    const-string v0, "KeyBtn"

    invoke-static {p2, p1, v0}, La4/a;->m(Ljava/lang/String;ILjava/lang/String;)V

    iget-object p2, p0, Lcom/mega/engineeringmode/function/presskey/KeyBtn;->c:Lcom/mega/engineeringmode/function/presskey/KeyBtn$b;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result p0

    check-cast p2, Ls0/e;

    invoke-virtual {p2, p0, v1}, Ls0/e;->c(IZ)V

    goto :goto_0

    :cond_0
    if-ne p1, v1, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result p0

    check-cast p2, Ls0/e;

    invoke-virtual {p2, p0, v0}, Ls0/e;->c(IZ)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/mega/engineeringmode/function/presskey/KeyBtn;->d:Lcom/mega/engineeringmode/function/presskey/KeyBtn$b;

    if-eqz p2, :cond_5

    if-nez p1, :cond_2

    invoke-virtual {p0, v1}, Lcom/mega/engineeringmode/function/presskey/KeyBtn;->setSelected(Z)V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/presskey/KeyBtn;->e:Ljava/util/Timer;

    if-nez p1, :cond_5

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/mega/engineeringmode/function/presskey/KeyBtn;->e:Ljava/util/Timer;

    new-instance v2, Lcom/mega/engineeringmode/function/presskey/KeyBtn$a;

    invoke-direct {v2, p0}, Lcom/mega/engineeringmode/function/presskey/KeyBtn$a;-><init>(Lcom/mega/engineeringmode/function/presskey/KeyBtn;)V

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0xc8

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_0

    :cond_2
    if-eq p1, v1, :cond_3

    const/4 p2, 0x3

    if-ne p1, p2, :cond_5

    :cond_3
    invoke-virtual {p0, v0}, Lcom/mega/engineeringmode/function/presskey/KeyBtn;->setSelected(Z)V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/presskey/KeyBtn;->e:Ljava/util/Timer;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/mega/engineeringmode/function/presskey/KeyBtn;->e:Ljava/util/Timer;

    :cond_4
    iget-object p1, p0, Lcom/mega/engineeringmode/function/presskey/KeyBtn;->d:Lcom/mega/engineeringmode/function/presskey/KeyBtn$b;

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result p0

    check-cast p1, Ls0/e;

    invoke-virtual {p1, p0, v0}, Ls0/e;->c(IZ)V

    :cond_5
    :goto_0
    return v0
.end method

.method public setIcon(I)V
    .locals 0

    iget-object p0, p0, Lcom/mega/engineeringmode/function/presskey/KeyBtn;->b:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method public setOnLongTouchListener(Lcom/mega/engineeringmode/function/presskey/KeyBtn$b;)V
    .locals 0

    iput-object p1, p0, Lcom/mega/engineeringmode/function/presskey/KeyBtn;->d:Lcom/mega/engineeringmode/function/presskey/KeyBtn$b;

    return-void
.end method

.method public setOnTouchListener(Lcom/mega/engineeringmode/function/presskey/KeyBtn$b;)V
    .locals 0

    iput-object p1, p0, Lcom/mega/engineeringmode/function/presskey/KeyBtn;->c:Lcom/mega/engineeringmode/function/presskey/KeyBtn$b;

    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    iget-object p0, p0, Lcom/mega/engineeringmode/function/presskey/KeyBtn;->a:Landroid/widget/ImageButton;

    invoke-virtual {p0, p1}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method
