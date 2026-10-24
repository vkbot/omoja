.class public final Lcom/mega/engineeringmode/function/presskey/KeyBtn$a;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mega/engineeringmode/function/presskey/KeyBtn;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/mega/engineeringmode/function/presskey/KeyBtn;


# direct methods
.method public constructor <init>(Lcom/mega/engineeringmode/function/presskey/KeyBtn;)V
    .locals 0

    iput-object p1, p0, Lcom/mega/engineeringmode/function/presskey/KeyBtn$a;->c:Lcom/mega/engineeringmode/function/presskey/KeyBtn;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object p0, p0, Lcom/mega/engineeringmode/function/presskey/KeyBtn$a;->c:Lcom/mega/engineeringmode/function/presskey/KeyBtn;

    iget-object v0, p0, Lcom/mega/engineeringmode/function/presskey/KeyBtn;->d:Lcom/mega/engineeringmode/function/presskey/KeyBtn$b;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result p0

    const/4 v1, 0x1

    check-cast v0, Ls0/e;

    invoke-virtual {v0, p0, v1}, Ls0/e;->c(IZ)V

    :cond_0
    return-void
.end method
