.class public final synthetic Lg1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/l;


# instance fields
.field public final synthetic c:Lcom/mega/engineeringmode/function/LogExportActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/mega/engineeringmode/function/LogExportActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg1/b;->c:Lcom/mega/engineeringmode/function/LogExportActivity;

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/Integer;

    sget v0, Lcom/mega/engineeringmode/function/LogExportActivity;->r:I

    iget-object p0, p0, Lg1/b;->c:Lcom/mega/engineeringmode/function/LogExportActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f12036a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x1388

    invoke-static {p1, p0, v0}, Lk2/d;->b(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/mega/engineeringmode/function/LogExportActivity;->o()V

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method
