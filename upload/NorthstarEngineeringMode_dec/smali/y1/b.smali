.class public final Ly1/b;
.super Lo3/i;
.source "SourceFile"

# interfaces
.implements Ln3/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo3/i;",
        "Ln3/l<",
        "Ljava/lang/Integer;",
        "Lf3/g;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/mega/engineeringmode/function/safe/FunctionSafeActivity;


# direct methods
.method public constructor <init>(Lcom/mega/engineeringmode/function/safe/FunctionSafeActivity;)V
    .locals 0

    iput-object p1, p0, Ly1/b;->r:Lcom/mega/engineeringmode/function/safe/FunctionSafeActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo3/i;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    const/4 v0, 0x1

    iget-object p0, p0, Ly1/b;->r:Lcom/mega/engineeringmode/function/safe/FunctionSafeActivity;

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
    sget p1, Lcom/mega/engineeringmode/function/safe/FunctionSafeActivity;->m:I

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f120369

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0xbb8

    invoke-static {p1, p0, v0}, Lk2/d;->b(Landroid/content/Context;Ljava/lang/String;I)V

    :goto_0
    sget-object p0, Lf3/g;->a:Lf3/g;

    return-object p0
.end method
