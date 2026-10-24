.class public final Lcom/mega/engineeringmode/function/screen/ScreenFunctionActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/engineeringmode/function/screen/ScreenFunctionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/mega/engineeringmode/function/screen/ScreenFunctionActivity;


# direct methods
.method public constructor <init>(Lcom/mega/engineeringmode/function/screen/ScreenFunctionActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mega/engineeringmode/function/screen/ScreenFunctionActivity$a;->a:Lcom/mega/engineeringmode/function/screen/ScreenFunctionActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a011f

    iget-object p0, p0, Lcom/mega/engineeringmode/function/screen/ScreenFunctionActivity$a;->a:Lcom/mega/engineeringmode/function/screen/ScreenFunctionActivity;

    if-ne v0, v1, :cond_2

    iget-object p1, p0, Lcom/mega/engineeringmode/function/screen/ScreenFunctionActivity;->i:Lmega/car/MegaCarProperty;

    if-eqz p1, :cond_1

    const v0, 0x400000a

    invoke-virtual {p1, v0}, Lmega/car/MegaCarProperty;->getIntProp(I)I

    move-result p1

    const-string v0, "checkEnvironment gear "

    const-string v1, "ScreenFunctionActivity"

    invoke-static {v0, p1, v1}, La4/a;->m(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/screen/ScreenFunctionActivity;->i:Lmega/car/MegaCarProperty;

    const v2, 0x400000b

    invoke-virtual {v0, v2}, Lmega/car/MegaCarProperty;->getFloatProp(I)F

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "checkEnvironment speed  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p1}, Ld/f;->N(FI)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0, p1}, Ld/f;->I(FI)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Ld/f;->O(I)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/mega/engineeringmode/function/screen/DashBoardActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x7f1200c3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lk2/d;->a(Landroid/content/Context;II)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a0257

    if-ne v0, v1, :cond_3

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/mega/engineeringmode/function/screen/IhuStatusActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a011e

    if-ne v0, v1, :cond_4

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/mega/engineeringmode/function/screen/IcmStatusActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a0254

    if-ne v0, v1, :cond_5

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/mega/engineeringmode/function/screen/MasterScreenActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a0255

    if-ne p1, v0, :cond_6

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/mega/engineeringmode/function/screen/MasterTouchActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_6
    :goto_0
    return-void
.end method
