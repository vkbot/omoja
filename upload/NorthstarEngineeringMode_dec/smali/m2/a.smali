.class public final synthetic Lm2/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lo3/m;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lo3/m;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm2/a;->a:Landroid/content/Context;

    iput-object p2, p0, Lm2/a;->b:Lo3/m;

    iput-object p3, p0, Lm2/a;->c:Ljava/lang/String;

    iput-object p4, p0, Lm2/a;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Lm2/a;->c:Ljava/lang/String;

    iget-object v0, p0, Lm2/a;->d:Ljava/lang/String;

    sget v1, Lcom/mega/engineeringmode/ui/custom/EasyButton;->h:I

    const-string v1, "$context"

    iget-object v2, p0, Lm2/a;->a:Landroid/content/Context;

    invoke-static {v2, v1}, Lo3/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$pkg"

    iget-object p0, p0, Lm2/a;->b:Lo3/m;

    invoke-static {p0, v1}, Lo3/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v3, p0, Lo3/m;->c:Ljava/lang/Object;

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Landroid/content/ComponentName;

    iget-object p0, p0, Lo3/m;->c:Ljava/lang/Object;

    invoke-static {p0}, Lo3/h;->c(Ljava/lang/Object;)V

    check-cast p0, Ljava/lang/String;

    invoke-static {p1}, Lo3/h;->c(Ljava/lang/Object;)V

    invoke-direct {v3, p0, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmega/log/MLog;->e(Ljava/lang/String;)V

    :goto_2
    return-void
.end method
