.class public final Lcom/mega/engineeringmode/function/BaseFunctionActivity$d;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mega/engineeringmode/function/BaseFunctionActivity;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/mega/engineeringmode/function/BaseFunctionActivity;


# direct methods
.method public constructor <init>(Lcom/mega/engineeringmode/function/BaseFunctionActivity;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/mega/engineeringmode/function/BaseFunctionActivity$d;->a:Lcom/mega/engineeringmode/function/BaseFunctionActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 0
    .param p2    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo p2, "selfChange = %s, uri = %s"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "BaseFunctionActivity"

    invoke-static {p2, p1}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->h:I

    iget-object p0, p0, Lcom/mega/engineeringmode/function/BaseFunctionActivity$d;->a:Lcom/mega/engineeringmode/function/BaseFunctionActivity;

    invoke-virtual {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->l()V

    return-void
.end method
