.class public Lcom/callisto/auto/gatherer/model/AppCrashBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private b_crash_app_pkg:Ljava/lang/String;

.field private b_crash_msg:Ljava/lang/String;

.field private b_crash_type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppPackage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/callisto/auto/gatherer/model/AppCrashBean;->b_crash_app_pkg:Ljava/lang/String;

    return-object v0
.end method

.method public getCrashMsg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/callisto/auto/gatherer/model/AppCrashBean;->b_crash_msg:Ljava/lang/String;

    return-object v0
.end method

.method public getCrashType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/callisto/auto/gatherer/model/AppCrashBean;->b_crash_type:Ljava/lang/String;

    return-object v0
.end method

.method public isAppCrashBeanEqual(Lcom/callisto/auto/gatherer/model/AppCrashBean;Lcom/callisto/auto/gatherer/model/AppCrashBean;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/callisto/auto/gatherer/model/AppCrashBean;->getAppPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/callisto/auto/gatherer/model/AppCrashBean;->getAppPackage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/callisto/auto/gatherer/model/AppCrashBean;->getCrashType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/callisto/auto/gatherer/model/AppCrashBean;->getCrashType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/callisto/auto/gatherer/model/AppCrashBean;->getCrashMsg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/callisto/auto/gatherer/model/AppCrashBean;->getCrashMsg()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    return v0

    :cond_2
    :goto_1
    if-ne p1, p2, :cond_3

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    return v0
.end method

.method public setAppPackage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/callisto/auto/gatherer/model/AppCrashBean;->b_crash_app_pkg:Ljava/lang/String;

    return-void
.end method

.method public setCrashMsg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/callisto/auto/gatherer/model/AppCrashBean;->b_crash_msg:Ljava/lang/String;

    return-void
.end method

.method public setCrashType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/callisto/auto/gatherer/model/AppCrashBean;->b_crash_type:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{b_crash_app_pkg=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/callisto/auto/gatherer/model/AppCrashBean;->b_crash_app_pkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', b_crash_type=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callisto/auto/gatherer/model/AppCrashBean;->b_crash_type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', b_crash_msg=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callisto/auto/gatherer/model/AppCrashBean;->b_crash_msg:Ljava/lang/String;

    const-string v2, "\'}"

    invoke-static {v0, v1, v2}, Landroidx/activity/b;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
