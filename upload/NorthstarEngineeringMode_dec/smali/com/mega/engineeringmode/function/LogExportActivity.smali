.class public Lcom/mega/engineeringmode/function/LogExportActivity;
.super Lcom/mega/engineeringmode/function/BaseFunctionActivity;
.source "SourceFile"


# static fields
.field public static final synthetic r:I


# instance fields
.field public i:Landroid/widget/TextView;

.field public j:Landroid/widget/TextView;

.field public k:Z

.field public l:Lcom/mega/logger/MegaLogManager;

.field public final m:Landroid/os/HandlerThread;

.field public n:Lcom/mega/engineeringmode/function/LogExportActivity$b;

.field public o:Ljava/lang/String;

.field public final p:Lcom/mega/engineeringmode/function/LogExportActivity$a;

.field public q:Ln2/i;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mega/engineeringmode/function/LogExportActivity;->k:Z

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "logger_thread"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mega/engineeringmode/function/LogExportActivity;->m:Landroid/os/HandlerThread;

    const-string v0, ""

    iput-object v0, p0, Lcom/mega/engineeringmode/function/LogExportActivity;->o:Ljava/lang/String;

    new-instance v0, Lcom/mega/engineeringmode/function/LogExportActivity$a;

    invoke-direct {v0, p0}, Lcom/mega/engineeringmode/function/LogExportActivity$a;-><init>(Lcom/mega/engineeringmode/function/LogExportActivity;)V

    iput-object v0, p0, Lcom/mega/engineeringmode/function/LogExportActivity;->p:Lcom/mega/engineeringmode/function/LogExportActivity$a;

    return-void
.end method

.method public static n(Lcom/mega/engineeringmode/function/LogExportActivity;ILjava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "dealSuccessExportScreen:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "path:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ";mScreenPath:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/mega/engineeringmode/function/LogExportActivity;->o:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LogExportActivity"

    invoke-static {v0, p1}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/LogExportActivity;->o:Ljava/lang/String;

    new-instance v0, Lg1/b;

    invoke-direct {v0, p0}, Lg1/b;-><init>(Lcom/mega/engineeringmode/function/LogExportActivity;)V

    invoke-static {p2, p1, v0}, Ld/f;->o(Ljava/lang/String;Ljava/lang/String;Ln3/l;)V

    return-void
.end method


# virtual methods
.method public final m(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/mega/engineeringmode/function/LogExportActivity;->i:Landroid/widget/TextView;

    const v1, 0x7f120381

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mega/engineeringmode/function/LogExportActivity;->k:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mega/engineeringmode/function/LogExportActivity;->k:Z

    iput-object p1, p0, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->c:Ljava/lang/String;

    iget-object p0, p0, Lcom/mega/engineeringmode/function/LogExportActivity;->i:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "loadExternalPublic volumeNames is: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmega/log/MLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public final o()V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120369

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0xbb8

    invoke-static {v0, p0, v1}, Lk2/d;->b(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0096

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->h()V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->a:Landroid/widget/TextView;

    const v0, 0x7f1201d2

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    :try_start_0
    new-instance p1, Lcom/mega/logger/MegaLogManager;

    invoke-direct {p1}, Lcom/mega/logger/MegaLogManager;-><init>()V

    iput-object p1, p0, Lcom/mega/engineeringmode/function/LogExportActivity;->l:Lcom/mega/logger/MegaLogManager;
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    invoke-super {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->j()V

    const p1, 0x7f0a00c6

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lg1/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lg1/c;-><init>(Lcom/mega/engineeringmode/function/LogExportActivity;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a00bd

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lg1/c;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v2}, Lg1/c;-><init>(Lcom/mega/engineeringmode/function/LogExportActivity;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a00c2

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lg1/d;

    invoke-direct {v0, p0, v2}, Lg1/d;-><init>(Lcom/mega/engineeringmode/function/LogExportActivity;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a00c4

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lg1/e;

    invoke-direct {v0, p0, v2}, Lg1/e;-><init>(Lcom/mega/engineeringmode/function/LogExportActivity;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a00bb

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lg1/c;

    const/4 v2, 0x2

    invoke-direct {v0, p0, v2}, Lg1/c;-><init>(Lcom/mega/engineeringmode/function/LogExportActivity;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a00c7

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lg1/d;

    invoke-direct {v0, p0, v2}, Lg1/d;-><init>(Lcom/mega/engineeringmode/function/LogExportActivity;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a00be

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lg1/e;

    invoke-direct {v0, p0, v2}, Lg1/e;-><init>(Lcom/mega/engineeringmode/function/LogExportActivity;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a00c3

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lg1/c;

    const/4 v2, 0x3

    invoke-direct {v0, p0, v2}, Lg1/c;-><init>(Lcom/mega/engineeringmode/function/LogExportActivity;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a00c5

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lg1/d;

    invoke-direct {v0, p0, v2}, Lg1/d;-><init>(Lcom/mega/engineeringmode/function/LogExportActivity;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a00bc

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lg1/e;

    invoke-direct {v0, p0, v2}, Lg1/e;-><init>(Lcom/mega/engineeringmode/function/LogExportActivity;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a0427

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/LogExportActivity;->i:Landroid/widget/TextView;

    const p1, 0x7f0a022b

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/LogExportActivity;->j:Landroid/widget/TextView;

    const p1, 0x7f0a00c0

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lg1/d;

    invoke-direct {v0, p0, v1}, Lg1/d;-><init>(Lcom/mega/engineeringmode/function/LogExportActivity;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a00bf

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lg1/e;

    invoke-direct {v0, p0, v1}, Lg1/e;-><init>(Lcom/mega/engineeringmode/function/LogExportActivity;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/LogExportActivity;->m:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    new-instance v0, Lcom/mega/engineeringmode/function/LogExportActivity$b;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/mega/engineeringmode/function/LogExportActivity$b;-><init>(Lcom/mega/engineeringmode/function/LogExportActivity;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mega/engineeringmode/function/LogExportActivity;->n:Lcom/mega/engineeringmode/function/LogExportActivity$b;

    new-instance p1, Ln2/i;

    invoke-direct {p1}, Ln2/i;-><init>()V

    iput-object p1, p0, Lcom/mega/engineeringmode/function/LogExportActivity;->q:Ln2/i;

    iget-object p0, p0, Lcom/mega/engineeringmode/function/LogExportActivity;->p:Lcom/mega/engineeringmode/function/LogExportActivity$a;

    const-string v0, "Screen/Log/resp"

    invoke-virtual {p1, v0, p0}, Ln2/i;->a(Ljava/lang/String;Lvendor/mega/message_center/V1_0/IMsgRxCallback$Stub;)V

    return-void

    :catch_0
    move-exception p0

    const-string p1, "LogExportActivity"

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lmega/log/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/mega/engineeringmode/function/LogExportActivity;->n:Lcom/mega/engineeringmode/function/LogExportActivity$b;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/mega/engineeringmode/function/LogExportActivity;->n:Lcom/mega/engineeringmode/function/LogExportActivity$b;

    :cond_0
    iget-object v0, p0, Lcom/mega/engineeringmode/function/LogExportActivity;->m:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    invoke-super {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->onDestroy()V

    return-void
.end method

.method public final p(I)V
    .locals 2

    const-string v0, "deleteLog "

    const-string v1, "LogExportActivity"

    invoke-static {v0, p1, v1}, La4/a;->m(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/LogExportActivity;->n:Lcom/mega/engineeringmode/function/LogExportActivity$b;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->what:I

    const/4 p1, 0x2

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object p0, p0, Lcom/mega/engineeringmode/function/LogExportActivity;->n:Lcom/mega/engineeringmode/function/LogExportActivity$b;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final q(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/mega/engineeringmode/function/LogExportActivity;->k:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x7f120193

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lk2/d;->a(Landroid/content/Context;II)V

    return-void

    :cond_0
    const/4 v0, 0x2

    if-eq p1, v0, :cond_5

    const/4 v0, 0x3

    if-eq p1, v0, :cond_4

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "ALL"

    invoke-virtual {p0, v0, p1}, Lcom/mega/engineeringmode/function/LogExportActivity;->s(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p1, "OTHER"

    invoke-virtual {p0, v0, p1}, Lcom/mega/engineeringmode/function/LogExportActivity;->s(ILjava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string p1, "OIL"

    invoke-virtual {p0, v0, p1}, Lcom/mega/engineeringmode/function/LogExportActivity;->s(ILjava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string p1, "ANDROID"

    invoke-virtual {p0, v0, p1}, Lcom/mega/engineeringmode/function/LogExportActivity;->s(ILjava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string p1, "QNX"

    invoke-virtual {p0, v0, p1}, Lcom/mega/engineeringmode/function/LogExportActivity;->s(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final r(I)V
    .locals 6

    iget-boolean v0, p0, Lcom/mega/engineeringmode/function/LogExportActivity;->k:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x7f120193

    invoke-static {p0, p1, v1}, Lk2/d;->a(Landroid/content/Context;II)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/mega/engineeringmode/function/LogExportActivity;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v2, "LogExportActivity"

    if-nez v0, :cond_1

    const-string p1, "is exporting screen log return"

    invoke-static {v2, p1}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x7f12013c

    invoke-static {p0, p1, v1}, Lk2/d;->a(Landroid/content/Context;II)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "mSdCardPath == null"

    invoke-static {v2, p0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyyMMddHHmmss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sget-object v4, Ln2/o;->a:Ljava/text/SimpleDateFormat;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/screen"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".log"

    invoke-static {v1, v0, v3}, La4/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    int-to-byte p1, p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "exportScreenLog:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",data = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mega/engineeringmode/function/LogExportActivity;->o:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "sendScreenMsg:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/mega/engineeringmode/function/LogExportActivity;->q:Ln2/i;

    const-string p1, "Screen/Log/req"

    invoke-virtual {p0, p1, v0}, Ln2/i;->d(Ljava/lang/String;Ljava/util/ArrayList;)Z

    return-void
.end method

.method public final s(ILjava/lang/String;)V
    .locals 11

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0097

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v1

    const v2, 0x7f0a00c8

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    const v4, 0x7f0a00c9

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Landroid/widget/Button;

    const v4, 0x7f0a040d

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Landroid/widget/EditText;

    const v4, 0x7f0a018a

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/TextView;

    const-string/jumbo v0, "yyyyMMddHHmmss"

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/time/LocalDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "Log_"

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v6, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p2, Lq0/a;

    const/4 v0, 0x4

    invoke-direct {p2, v0, v1}, Lq0/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p2, Lg1/f;

    move-object v4, p2

    move-object v5, p0

    move v8, p1

    move-object v9, v1

    invoke-direct/range {v4 .. v9}, Lg1/f;-><init>(Lcom/mega/engineeringmode/function/LogExportActivity;Landroid/widget/EditText;Landroid/widget/TextView;ILandroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {v10, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "LogExportActivity"

    const-string/jumbo p1, "window == null"

    invoke-static {p0, p1}, Lmega/log/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/4 p2, 0x1

    const/high16 v0, 0x44480000    # 800.0f

    invoke-static {p2, v0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    const/4 p2, -0x2

    invoke-virtual {p0, p1, p2}, Landroid/view/Window;->setLayout(II)V

    return-void
.end method
