.class public final Lcom/mega/engineeringmode/ui/a;
.super Landroid/app/Dialog;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mega/engineeringmode/ui/a$c;
    }
.end annotation


# static fields
.field public static o:J

.field public static p:I

.field public static q:J


# instance fields
.field public a:Landroid/widget/EditText;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/TextView;

.field public e:Landroid/widget/TextView;

.field public f:Ln2/i;

.field public g:Ljava/lang/StringBuilder;

.field public h:Ljava/lang/String;

.field public final i:Landroid/content/Context;

.field public j:Ljava/lang/String;

.field public final k:Lcom/mega/engineeringmode/ui/a$a;

.field public final l:Lcom/mega/engineeringmode/ui/a$b;

.field public m:Lg1/l;

.field public final n:Lcom/mega/engineeringmode/ui/a$c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mega/engineeringmode/ui/a$c;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/mega/engineeringmode/ui/a$a;

    invoke-direct {v0, p0}, Lcom/mega/engineeringmode/ui/a$a;-><init>(Lcom/mega/engineeringmode/ui/a;)V

    iput-object v0, p0, Lcom/mega/engineeringmode/ui/a;->k:Lcom/mega/engineeringmode/ui/a$a;

    new-instance v0, Lcom/mega/engineeringmode/ui/a$b;

    invoke-direct {v0, p0}, Lcom/mega/engineeringmode/ui/a$b;-><init>(Lcom/mega/engineeringmode/ui/a;)V

    iput-object v0, p0, Lcom/mega/engineeringmode/ui/a;->l:Lcom/mega/engineeringmode/ui/a$b;

    iput-object p1, p0, Lcom/mega/engineeringmode/ui/a;->i:Landroid/content/Context;

    iput-object p2, p0, Lcom/mega/engineeringmode/ui/a;->n:Lcom/mega/engineeringmode/ui/a$c;

    return-void
.end method

.method public static a()Z
    .locals 13

    sget-object v0, Ln2/j;->b:Landroid/content/SharedPreferences;

    const-string v1, "error_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/mega/engineeringmode/ui/a;->o:J

    new-instance v0, Landroid/icu/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-wide v6, Lcom/mega/engineeringmode/ui/a;->o:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget v6, Lcom/mega/engineeringmode/ui/a;->p:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v1, v6, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "sErrorTime = %s, sErrorCount = %s, currentTime = %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DynamicPasswordDialog"

    invoke-static {v1, v0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-wide v6, Lcom/mega/engineeringmode/ui/a;->o:J

    cmp-long v0, v6, v2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-gtz v0, :cond_0

    sput v9, Lcom/mega/engineeringmode/ui/a;->p:I

    sput-wide v2, Lcom/mega/engineeringmode/ui/a;->o:J

    invoke-static {v2, v3}, Lcom/mega/engineeringmode/ui/a;->b(J)V

    return v8

    :cond_0
    cmp-long v0, v4, v6

    if-gez v0, :cond_1

    const-string v0, "maybe reboot system before\uff0cneed recover time"

    invoke-static {v1, v0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v8

    :cond_1
    sub-long/2addr v4, v6

    const-wide/32 v0, 0xdbba0

    cmp-long v4, v4, v0

    if-gez v4, :cond_4

    sget-object v2, Lcom/mega/engineeringmode/EngineeringModeApplication;->b:Lcom/mega/engineeringmode/EngineeringModeApplication;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-wide v5, Lcom/mega/engineeringmode/ui/a;->o:J

    sub-long/2addr v3, v5

    sub-long/2addr v0, v3

    const-wide/16 v3, 0x3e8

    div-long/2addr v0, v3

    const-wide/16 v3, 0x3c

    div-long v5, v0, v3

    rem-long/2addr v0, v3

    sget-object v3, Lcom/mega/engineeringmode/EngineeringModeApplication;->b:Lcom/mega/engineeringmode/EngineeringModeApplication;

    const v4, 0x7f1201b6

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-wide/16 v10, 0xa

    cmp-long v7, v5, v10

    const-string v12, "0"

    if-gez v7, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_2
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    :goto_0
    aput-object v5, v4, v9

    cmp-long v5, v0, v10

    if-gez v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_1
    aput-object v0, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xbb8

    invoke-static {v2, v0, v1}, Lk2/d;->b(Landroid/content/Context;Ljava/lang/String;I)V

    return v9

    :cond_4
    sput-wide v2, Lcom/mega/engineeringmode/ui/a;->o:J

    invoke-static {v2, v3}, Lcom/mega/engineeringmode/ui/a;->b(J)V

    sput v9, Lcom/mega/engineeringmode/ui/a;->p:I

    return v8
.end method

.method public static b(J)V
    .locals 2

    sget-object v0, Ln2/j;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "error_time"

    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "saveErrorTime = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DynamicPasswordDialog"

    invoke-static {p1, p0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 3

    invoke-static {}, Lcom/mega/engineeringmode/EngineeringModeApplication;->a()Lcom/mega/engineeringmode/model/EngineModeViewModel;

    move-result-object v0

    iget-object v0, v0, Lcom/mega/engineeringmode/model/EngineModeViewModel;->d:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const v1, 0x7f1201b8

    if-nez v0, :cond_0

    const-string v0, "DynamicPasswordDialog"

    const-string v2, "ecu is not ready, wait for ready!"

    invoke-static {v0, v2}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mega/engineeringmode/ui/a;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v2, ""

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/mega/engineeringmode/ui/a;->i:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmega/car/MegaCarProperty;->getInstance(Landroid/content/Context;)Lmega/car/MegaCarProperty;

    move-result-object v0

    const v2, 0x33000002

    invoke-virtual {v0, v2}, Lmega/car/MegaCarProperty;->getPropertyRaw(I)Lmega/car/hardware/CarPropertyValue;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lmega/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lmega/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/mega/engineeringmode/ui/a;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "FFFFFFFFFFFFFFFFF"

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/mega/engineeringmode/ui/a;->h:Ljava/lang/String;

    :goto_1
    iput-object v0, p0, Lcom/mega/engineeringmode/ui/a;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/mega/engineeringmode/ui/a;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object p0, p0, Lcom/mega/engineeringmode/ui/a;->h:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v2, v1, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/mega/engineeringmode/EngineeringModeApplication;->d:Z

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/mega/engineeringmode/ui/a;->n:Lcom/mega/engineeringmode/ui/a$c;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/mega/engineeringmode/ui/a$c;->a()V

    :cond_0
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/mega/engineeringmode/ui/a;->o:J

    invoke-static {v0, v1}, Lcom/mega/engineeringmode/ui/a;->b(J)V

    sput p2, Lcom/mega/engineeringmode/ui/a;->p:I

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    :cond_1
    sget p1, Lcom/mega/engineeringmode/ui/a;->p:I

    add-int/lit8 p1, p1, 0x1

    sput p1, Lcom/mega/engineeringmode/ui/a;->p:I

    iget-object p1, p0, Lcom/mega/engineeringmode/ui/a;->b:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    sget p1, Lcom/mega/engineeringmode/ui/a;->p:I

    const/4 p2, 0x5

    if-ne p1, p2, :cond_2

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "15"

    const-string v1, "00"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x7f1201b6

    invoke-virtual {p2, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0xbb8

    invoke-static {p1, p2, v0}, Lk2/d;->b(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sput-wide p1, Lcom/mega/engineeringmode/ui/a;->o:J

    invoke-static {p1, p2}, Lcom/mega/engineeringmode/ui/a;->b(J)V

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/mega/engineeringmode/ui/a;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p2, Lcom/mega/engineeringmode/ui/a;->p:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const v0, 0x7f1201b4

    invoke-virtual {p0, v0, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public final onBackPressed()V
    .locals 0

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a0420

    if-ne v0, v1, :cond_7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-wide v2, Lcom/mega/engineeringmode/ui/a;->q:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-lez p1, :cond_0

    const-wide/16 v4, 0x3e8

    cmp-long p1, v2, v4

    if-gez p1, :cond_0

    return-void

    :cond_0
    sput-wide v0, Lcom/mega/engineeringmode/ui/a;->q:J

    iget-object p1, p0, Lcom/mega/engineeringmode/ui/a;->a:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    goto :goto_1

    :cond_2
    sget-object v0, Ln2/c;->a:Ljava/lang/String;

    const-string/jumbo v0, "ro.vendor.factorybuild"

    const-string v1, "false"

    invoke-static {v0, v1}, Ld/f;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "ro.build.type"

    const-string/jumbo v1, "userdebug"

    invoke-static {v0, v1}, Ld/f;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    invoke-static {}, Lb1/b;->b()Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lb1/b;->g:Ljava/lang/String;

    invoke-static {}, Lb1/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/mega/engineeringmode/ui/a;->g:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/mega/engineeringmodeso/PwdUtils;->getPassword(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/mega/engineeringmode/ui/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_6
    :goto_1
    const-string p1, ""

    iput-object p1, p0, Lcom/mega/engineeringmode/ui/a;->j:Ljava/lang/String;

    iget-object p1, p0, Lcom/mega/engineeringmode/ui/a;->f:Ln2/i;

    iget-object v0, p0, Lcom/mega/engineeringmode/ui/a;->g:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/mega/engineeringmode/ui/a;->h:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "-k "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " -v "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " -p"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "parameter"

    invoke-virtual {v1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p0, "operation"

    const-string v0, "get"

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "id"

    const-string v0, "dynamic_pwd"

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "command"

    const-string v0, "7"

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "sendDynamicPassword "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MessageCenterUtil"

    invoke-static {v1, v0}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Ln2/i;->g([B)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_9

    const-string v0, "misc_service/command/ecu_info_request"

    invoke-virtual {p1, v0, p0}, Ln2/i;->d(Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result p0

    const-string/jumbo p1, "sendDynamicPassword  "

    invoke-static {p1, p0, v1}, La4/a;->n(Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_2

    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a03f9

    if-ne p1, v0, :cond_9

    iget-object p1, p0, Lcom/mega/engineeringmode/ui/a;->n:Lcom/mega/engineeringmode/ui/a$c;

    if-eqz p1, :cond_8

    invoke-interface {p1}, Lcom/mega/engineeringmode/ui/a$c;->onCancel()V

    :cond_8
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_9
    :goto_2
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0d0099

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    const v0, 0x7f0a0420

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mega/engineeringmode/ui/a;->d:Landroid/widget/TextView;

    const v0, 0x7f0a03f9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mega/engineeringmode/ui/a;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/mega/engineeringmode/ui/a;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/mega/engineeringmode/ui/a;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0428

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mega/engineeringmode/ui/a;->c:Landroid/widget/TextView;

    const v0, 0x7f0a03c0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mega/engineeringmode/ui/a;->b:Landroid/widget/TextView;

    const v0, 0x7f0a016e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mega/engineeringmode/ui/a;->a:Landroid/widget/EditText;

    const v0, 0x7f0a0415

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    sget v0, Lcom/mega/engineeringmode/ui/a;->p:I

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/mega/engineeringmode/ui/a;->i:Landroid/content/Context;

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mega/engineeringmode/ui/a;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/mega/engineeringmode/ui/a;->b:Landroid/widget/TextView;

    const v4, 0x7f1201b4

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/mega/engineeringmode/ui/a;->p:I

    rsub-int/lit8 v5, v5, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :try_start_0
    invoke-static {}, Ljava/security/SecureRandom;->getInstanceStrong()Ljava/security/SecureRandom;

    move-result-object v0

    const/16 v4, 0x2710

    invoke-virtual {v0, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v4, p0, Lcom/mega/engineeringmode/ui/a;->g:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/mega/engineeringmode/ui/a;->g:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v4, 0x4

    if-ge v0, v4, :cond_1

    :goto_0
    rsub-int/lit8 v5, v0, 0x4

    if-ge v3, v5, :cond_1

    iget-object v5, p0, Lcom/mega/engineeringmode/ui/a;->g:Ljava/lang/StringBuilder;

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "DynamicPasswordDialog"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lmega/log/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const v0, 0x7f1201b7

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/mega/engineeringmode/ui/a;->g:Ljava/lang/StringBuilder;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/mega/engineeringmode/ui/a;->c()V

    new-instance p1, Lg1/l;

    invoke-direct {p1, v1, p0}, Lg1/l;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lcom/mega/engineeringmode/ui/a;->m:Lg1/l;

    invoke-static {}, Lcom/mega/engineeringmode/EngineeringModeApplication;->a()Lcom/mega/engineeringmode/model/EngineModeViewModel;

    move-result-object p1

    iget-object p1, p1, Lcom/mega/engineeringmode/model/EngineModeViewModel;->d:Landroidx/lifecycle/MutableLiveData;

    iget-object p0, p0, Lcom/mega/engineeringmode/ui/a;->m:Lg1/l;

    invoke-virtual {p1, p0}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/mega/engineeringmode/ui/a;->f:Ln2/i;

    iget-object p0, p0, Lcom/mega/engineeringmode/ui/a;->l:Lcom/mega/engineeringmode/ui/a$b;

    const-string v1, "misc_service/command/ecu_info_response"

    invoke-virtual {v0, v1, p0}, Ln2/i;->h(Ljava/lang/String;Lvendor/mega/message_center/V1_0/IMsgRxCallback$Stub;)V

    return-void
.end method

.method public final onStart()V
    .locals 4

    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07026e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07026c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    new-instance v0, Ln2/i;

    invoke-direct {v0}, Ln2/i;-><init>()V

    iput-object v0, p0, Lcom/mega/engineeringmode/ui/a;->f:Ln2/i;

    iget-object p0, p0, Lcom/mega/engineeringmode/ui/a;->l:Lcom/mega/engineeringmode/ui/a$b;

    const-string v1, "misc_service/command/ecu_info_response"

    invoke-virtual {v0, v1, p0}, Ln2/i;->a(Ljava/lang/String;Lvendor/mega/message_center/V1_0/IMsgRxCallback$Stub;)V

    return-void
.end method

.method public final onStop()V
    .locals 2

    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    iget-object v0, p0, Lcom/mega/engineeringmode/ui/a;->m:Lg1/l;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mega/engineeringmode/EngineeringModeApplication;->a()Lcom/mega/engineeringmode/model/EngineModeViewModel;

    move-result-object v0

    iget-object v0, v0, Lcom/mega/engineeringmode/model/EngineModeViewModel;->d:Landroidx/lifecycle/MutableLiveData;

    iget-object v1, p0, Lcom/mega/engineeringmode/ui/a;->m:Lg1/l;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    :cond_0
    invoke-static {}, Ld/f;->x()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/mega/engineeringmode/ui/a;->k:Lcom/mega/engineeringmode/ui/a$a;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final show()V
    .locals 0

    invoke-super {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method
